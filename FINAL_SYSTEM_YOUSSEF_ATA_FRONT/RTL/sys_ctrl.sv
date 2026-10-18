
module sys_ctrl #(
parameter DATA_WIDTH = 8,
  parameter ADDR_WIDTH = 4,
  parameter ALU_FUN_WD = 4
)(
    input  wire                  CLK,
    input  wire                  RST,
    // UART RX Interface
    input  wire [DATA_WIDTH-1:0] RX_P_DATA,
    input  wire                  RX_D_VLD,

    // RegFile Interface Inputs
    input  wire [DATA_WIDTH-1:0] RdData,
    input  wire                  RdData_Valid,
    // ALU Interface Inputs
    input  wire [2*DATA_WIDTH-1:0] ALU_OUT,
    input  wire                  OUT_Valid,
    // ASYNC FIFO Inputs
    input  wire                  FIFO_FULL,

    // RegFile Interface Outputs
    output reg  [ADDR_WIDTH-1:0] Address,
    output reg                   WrEn,
    output reg                   RdEn,
    output reg  [DATA_WIDTH-1:0] WrData,
    // ALU Interface Outputs
    output reg  [ALU_FUN_WD-1:0] ALU_FUN,
    output reg                   EN,
    output reg                   CLK_EN,
    // ASYNC FIFO Outputs
    output reg  [DATA_WIDTH-1:0] TX_P_DATA,
    output reg                   TX_D_VLD,

    // Clock Divider Output
    output wire clk_div_en
);

// Constant Commands Definition
localparam WR_CMD         = 8'hAA;
localparam RD_CMD         = 8'hBB;
localparam ALU_OPER_W_OP  = 8'hCC;
localparam ALU_OPER_W_NOP = 8'hDD;

// FSM State Encoding using typedef enum
typedef enum bit [3:0] {
    IDLE         = 4'd0,
    WR_ADDR      = 4'd1,
    WR_DATA      = 4'd2,
    RD_ADDR      = 4'd3,
    WAIT_RD_VLD  = 4'd4,
    WR_OP_A      = 4'd5,
    WR_OP_B      = 4'd6,
    ALU_FUN_OP   = 4'd7,
    WAIT_ALU_VLD = 4'd8,
    SEND_FIFO_L  = 4'd9,
    SEND_FIFO_H  = 4'd10
} state_e;

state_e current_state, next_state;
reg [ADDR_WIDTH-1:0]    addr_reg;
reg [2*DATA_WIDTH-1:0] alu_out_reg;

// Clock divider enable is always ON
assign clk_div_en = 1'b1;

////////////// State transition ///////////////////////////
always @(posedge CLK or negedge RST) begin
    if (!RST) begin
        current_state <= IDLE;
    end else begin
        current_state <= next_state;
    end
end

/////////////// Next State Logic ////////////////////////////
always @(*) begin
    next_state = current_state;
    case (current_state)
        IDLE: begin
            if (RX_D_VLD) begin
                case (RX_P_DATA)
                    WR_CMD:         next_state = WR_ADDR;
                    RD_CMD:         next_state = RD_ADDR;
                    ALU_OPER_W_OP:  next_state = WR_OP_A;
                    ALU_OPER_W_NOP: next_state = ALU_FUN_OP;
                    default:        next_state = IDLE;
                endcase
            end
        end

        // Write Command Flow
        WR_ADDR: if (RX_D_VLD) next_state = WR_DATA;
        WR_DATA: if (RX_D_VLD) next_state = IDLE; 

        // Read Command Flow
        RD_ADDR:     if (RX_D_VLD) next_state = WAIT_RD_VLD;
        WAIT_RD_VLD: if (RdData_Valid && !FIFO_FULL) next_state = IDLE; 

        // ALU with Operands Flow
        WR_OP_A:     if (RX_D_VLD) next_state = WR_OP_B;
        WR_OP_B:     if (RX_D_VLD) next_state = ALU_FUN_OP;
        ALU_FUN_OP:  if (RX_D_VLD) next_state = WAIT_ALU_VLD;
       WAIT_ALU_VLD: begin
            if (OUT_Valid) 
                next_state = SEND_FIFO_L;
            else 
                next_state = WAIT_ALU_VLD; 
        end

        SEND_FIFO_L: if (!FIFO_FULL) next_state = SEND_FIFO_H;
        SEND_FIFO_H: if (!FIFO_FULL) next_state = IDLE;

        default: next_state = IDLE;
    endcase
end

////////////////// Output Logic ////////////////////
always @(posedge CLK or negedge RST) begin
    if (!RST) begin
        Address     <= {ADDR_WIDTH{1'b0}};
        WrEn        <= 1'b0;
        RdEn        <= 1'b0;
        WrData      <= {DATA_WIDTH{1'b0}};
        ALU_FUN     <= {ALU_FUN_WD{1'b0}};
        EN          <= 1'b0;
        CLK_EN      <= 1'b0;
        TX_P_DATA   <= {DATA_WIDTH{1'b0}};
        TX_D_VLD    <= 1'b0;
        addr_reg    <= {ADDR_WIDTH{1'b0}};
        alu_out_reg <= {(2*DATA_WIDTH){1'b0}};
    end else begin
        // Default pulse signals reset
        WrEn     <= 1'b0;
        RdEn     <= 1'b0;
        TX_D_VLD <= 1'b0;

        case (current_state)
            IDLE: begin
                CLK_EN <= 1'b0;
                EN     <= 1'b0;
            end

            WR_ADDR: begin
                if (RX_D_VLD) begin
                    addr_reg <= RX_P_DATA[ADDR_WIDTH-1:0];
                end
            end

            WR_DATA: begin
                if (RX_D_VLD) begin
                    Address <= addr_reg;
                    WrData  <= RX_P_DATA;
                    WrEn    <= 1'b1;
                end
            end

            RD_ADDR: begin
                if (RX_D_VLD) begin
                    Address <= RX_P_DATA[ADDR_WIDTH-1:0];
                    RdEn    <= 1'b1;
                end
            end

            WAIT_RD_VLD: begin
                if (RdData_Valid && !FIFO_FULL) begin
                    TX_P_DATA <= RdData;
                    TX_D_VLD  <= 1'b1;
                end
            end

            WR_OP_A: begin
                if (RX_D_VLD) begin
                    Address <= 4'h0; // REG0
                    WrData  <= RX_P_DATA;
                    WrEn    <= 1'b1;
                end
            end

            WR_OP_B: begin
                if (RX_D_VLD) begin
                    Address <= 4'h1; // REG1
                    WrData  <= RX_P_DATA;
                    WrEn    <= 1'b1 ;
                end
            end

            ALU_FUN_OP: begin
                if (RX_D_VLD) begin
                    ALU_FUN <= RX_P_DATA[ALU_FUN_WD-1:0];
                    CLK_EN  <= 1'b1;
                    EN      <= 1'b1;
                end
            end

          WAIT_ALU_VLD: begin
                CLK_EN <= 1'b1;
                EN     <= 1'b1;
                if (OUT_Valid) begin
                    alu_out_reg <= ALU_OUT; // latch the output only when valid
                end
            end

            SEND_FIFO_L: begin
                CLK_EN <= 1'b1;
                EN     <= 1'b0; 
                if (!FIFO_FULL) begin
                    TX_D_VLD  <= 1'b1;
                    TX_P_DATA <= alu_out_reg[7:0]; 
                end
            end

            SEND_FIFO_H: begin
                EN <= 1'b0;
                if (!FIFO_FULL) begin
                    TX_D_VLD  <= 1'b1;
                    TX_P_DATA <= alu_out_reg[15:8];
                    CLK_EN    <= 1'b0;
                end
            end
        endcase
    end
end

endmodule

