module FSM_tx(
    input  wire       CLK,
    input  wire       RST,
    input  wire       Data_Valid,
    input  wire       PAR_EN,
    input  wire       ser_done,
    output reg        ser_en,
    output reg  [1:0] mux_sel,
    output reg        busy
);

localparam [1:0]
    I0 = 2'b00, 
    I1 = 2'b01, 
    I2 = 2'b10, 
    I3 = 2'b11; 
                     
typedef enum bit [2:0] {
    IDLE   = 3'b000,
    START  = 3'b001,
    DATA   = 3'b011,
    PARITY = 3'b010,
    STOP   = 3'b110
} state_e;

state_e cs, ns; // Current state, Next State 

    // *********** State Transition ********** //
    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            cs <= IDLE;
        end else begin
            cs <= ns;
        end
    end
    
    // ********** Next State Logic ********** //
    always @(*) begin
        case (cs)
            IDLE: begin
                if (Data_Valid)
                    ns = START;
                else
                    ns = IDLE;
            end
            
            START: begin
                ns = DATA;
            end
     
            DATA: begin
                if (ser_done) begin
                    if (PAR_EN)
                        ns = PARITY;
                    else
                        ns = STOP;
                end else begin
                    ns = DATA;
                end
            end

            PARITY: begin
                ns = STOP;
            end     
     
            STOP: begin
                ns = IDLE;   // always drop busy for >=1 cycle so PULSE_GEN sees a rising edge
            end

            default: ns = IDLE;
        endcase
    end     
   
    // ********** Output Logic ********** //
    always @(*) begin
        // Default values to prevent latches
        busy    = 1'b1;  
        ser_en  = 1'b0;
        mux_sel = I1;
        
        case (cs)
            IDLE: begin
                busy    = 1'b0;
                ser_en  = 1'b0;
                mux_sel = I1;
            end

            START: begin
                busy    = 1'b1;
                ser_en  = 1'b0;
                mux_sel = I0;
            end
         
            DATA: begin
                busy    = 1'b1;
                mux_sel = I2;
                if (ser_done) begin
                    ser_en = 1'b0;
                end else begin
                    ser_en = 1'b1;
                end
            end
         
            PARITY: begin
                busy    = 1'b1;
                ser_en  = 1'b0;
                mux_sel = I3;
            end
           
            STOP: begin
                busy    = 1'b1;
                ser_en  = 1'b0;
                mux_sel = I1;
            end
            
            default: begin
                busy    = 1'b0;
                ser_en  = 1'b0; 
            
                mux_sel = I1;
            end
        endcase
    end

endmodule