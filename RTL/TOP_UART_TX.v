module TOP_UART_TX #(parameter PARALLEL_DATA_WIDTH = 8) (
    input  wire [PARALLEL_DATA_WIDTH - 1:0] P_DATA,
    input  wire        Data_Valid,
    input  wire     PAR_EN, 
    input  wire      PAR_TYP,
    input  wire    clk, 
    input  wire    rst,
    output wire    TX_OUT, 
    output wire  busy
);

localparam START_BIT = 1'b0, 
          STOP_BIT  = 1'b1;
// Internal WIRES
wire   ser_en, ser_done, ser_data, parity_bit;

wire [1:0] mux_sel;


/////// Serializer Instance

SERIALIZER #(.DATA_WIDTH(PARALLEL_DATA_WIDTH)) ser_u0 (
.P_DATA(P_DATA),
.ser_en(ser_en),
.Data_Valid(Data_Valid),
.RST(rst),
.CLK(clk),
.ser_done(ser_done),
.ser_data(ser_data)
  );


///////////// FSM Instance 
FSM_tx fsm_u0 (
.Data_Valid(Data_Valid),
.PAR_EN(PAR_EN),
.ser_done(ser_done),
.RST(rst),
.CLK(clk),
.mux_sel(mux_sel),
.ser_en(ser_en),
.busy(busy)
);


////////Parity Calculator Instance 
PARITY parity_u0 (
 .CLK(clk),
.RST(rst),
.P_DATA(P_DATA),
 .Data_Valid(Data_Valid ),
.PAR_TYP(PAR_TYP),
.par_bit(parity_bit)
    );
    
    
////////MUX Instance 
MUX mux_u0 (
.mux_sel(mux_sel),
.start_bit(START_BIT),
.ser_data(ser_data),
.par_bit(parity_bit),
.stop_bit(STOP_BIT),
.TX_OUT(TX_OUT)
    );

endmodule
    
