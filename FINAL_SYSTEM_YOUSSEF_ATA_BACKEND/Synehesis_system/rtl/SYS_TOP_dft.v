module SYS_TOP_dft # (parameter DATA_WIDTH = 8 ,NUM_OF_CHAINS=5 )

(
// -------- DFT Ports Added --------
   input  wire                      scan_clk,
   input  wire                      scan_rst,
   input  wire                      test_mode,
   input  wire                      SE,
   input  wire [NUM_OF_CHAINS-1:0]  SI,
   output wire [NUM_OF_CHAINS-1:0]  SO,
  // ---------------------------------
 input   wire                          RST_N,
 input   wire                          UART_CLK,
 input   wire                          REF_CLK,
 input   wire                          UART_RX_IN,
 output  wire                          UART_TX_O,
 output  wire                          parity_error,
 output  wire                          STOP_error
);
wire   SYNC_UART_RST;
wire    SYNC_REF_RST;
wire SYNC_TX_RST;
wire SYNC_RX_RST;
									   
wire		UART_TX_CLK;
wire		UART_RX_CLK;


wire [DATA_WIDTH-1:0] Operand_A;
wire [DATA_WIDTH-1:0] Operand_B;
wire [DATA_WIDTH-1:0] UART_Config;
wire [DATA_WIDTH-1:0] DIV_RATIO;
									   
wire  [DATA_WIDTH-1:0] DIV_RATIO_RX;
									   
wire      [DATA_WIDTH-1:0]  UART_RX_OUT;
wire UART_RX_V_OUT;
wire   [DATA_WIDTH-1:0]		 UART_RX_SYNC;
wire    UART_RX_V_SYNC;

wire [DATA_WIDTH-1:0]    UART_TX_IN;
wire   UART_TX_VLD;
wire      [DATA_WIDTH-1:0] UART_TX_SYNC;
wire  UART_TX_V_SYNC;

wire       UART_TX_Busy;	
wire     UART_TX_Busy_PULSE;	
									   
wire                                   RF_WrEn;
wire                                   RF_RdEn;
wire      [3:0]                RF_Address;
wire      [DATA_WIDTH-1:0]             RF_WrData;
wire      [DATA_WIDTH-1:0]             RF_RdData;
wire                                   RF_RdData_VLD;									   

wire                                   CLKG_EN;
wire                                   ALU_EN;
wire      [3:0]                        ALU_FUN; 
wire      [DATA_WIDTH*2-1:0]           ALU_OUT;
wire                                   ALU_OUT_VLD; 
									   
wire                                   ALU_CLK ;								   

wire                                   FIFO_FULL ;
	
wire                                   CLKDIV_EN ;
///////////////////////////////////////////////////////////
// ------------ Internal Muxed Clock & Reset Wires --
wire REF_CLK_M;
wire UART_CLK_M;
wire RST_N_M;
wire SYNC_UART_RST_S;   
wire SYNC_REF_RST_S;
wire SYNC_TX_RST_S;
wire SYNC_RX_RST_S;
wire UART_TX_CLK_DIV;  
wire UART_RX_CLK_DIV;   
wire CLKG_EN_M;         
// -------------------------------------------------------------

/////////////////////// Clock & Reset Muxes ///////////
// 1. Mux for REF_CLK
mux2X1 U0_ref_clk_mux (
    .IN_0(REF_CLK),
    .IN_1(scan_clk),
    .SEL(test_mode),
    .OUT(REF_CLK_M)
);

// 2. Mux for UART_CLK
mux2X1 U0_uart_clk_mux (
    .IN_0(UART_CLK),
    .IN_1(scan_clk),
    .SEL(test_mode),
    .OUT(UART_CLK_M)
);

// 3. Mux for RST_N
mux2X1 U0_rst_mux (
    .IN_0(RST_N),
    .IN_1(scan_rst),
    .SEL(test_mode),
    .OUT(RST_N_M)
);
/////////////////////////////////////////////////////////////////
//////////////////// Reset synchronizers /////////////////////
RST_SYNC #(.NUM_STAGES(2)) U0_RST_SYNC (
    .RST(RST_N_M),
    .CLK(UART_CLK_M),
    .SYNC_RST(SYNC_UART_RST_S)
);

RST_SYNC #(.NUM_STAGES(2)) U1_RST_SYNC (
    .RST(RST_N_M),
    .CLK(REF_CLK_M),
    .SYNC_RST(SYNC_REF_RST_S)
);



mux2X1 U1_sync_uart_rst_mux (
    .IN_0(SYNC_UART_RST_S),
    .IN_1(scan_rst),
    .SEL(test_mode),
    .OUT(SYNC_UART_RST)
);

mux2X1 U1_sync_ref_rst_mux (
    .IN_0(SYNC_REF_RST_S),
    .IN_1(scan_rst),
    .SEL(test_mode),
    .OUT(SYNC_REF_RST)
);

// TX and RX clock-domain reset synchronizers
RST_SYNC #(.NUM_STAGES(2)) U2_RST_SYNC (
    .RST(RST_N_M), .CLK(UART_TX_CLK), .SYNC_RST(SYNC_TX_RST_S)
);
RST_SYNC #(.NUM_STAGES(2)) U3_RST_SYNC (
    .RST(RST_N_M), .CLK(UART_RX_CLK), .SYNC_RST(SYNC_RX_RST_S)
);

mux2X1 U2_sync_tx_rst_mux (
    .IN_0(SYNC_TX_RST_S), .IN_1(scan_rst), .SEL(test_mode), .OUT(SYNC_TX_RST)
);
mux2X1 U3_sync_rx_rst_mux (
    .IN_0(SYNC_RX_RST_S), .IN_1(scan_rst), .SEL(test_mode), .OUT(SYNC_RX_RST)
);
///////////////////////////////////////////////////////////////


////////////////////// Data Synchronizer /////////////////////
DATA_SYNC #(.NUM_STAGES(2), .BUS_WIDTH(8)) U0_ref_sync (
    .CLK(REF_CLK_M),
    .RST(SYNC_REF_RST),
    .unsync_bus(UART_RX_OUT),
    .bus_enable(UART_RX_V_OUT),
    .sync_bus(UART_RX_SYNC),
    .enable_pulse(UART_RX_V_SYNC)
);
////////////////////////////////////////////////////////////////


///////////////////////// Async FIFO /////////////////////////
ASYNC_FIFO_TOP #(.DATA_WIDTH(8), .ADDRSIZE(4)) U0_FIFO (
    .W_CLK(REF_CLK_M),
    .W_RST(SYNC_REF_RST),  
    .W_INC(UART_TX_VLD),
    .WR_DATA(UART_TX_IN),             
    .R_CLK(UART_TX_CLK),              
    .R_RST(SYNC_TX_RST),              
    .R_INC(UART_TX_Busy_PULSE),              
    .RD_DATA(UART_TX_SYNC),             
    .FULL(FIFO_FULL),                
    .EMPTY(UART_TX_V_SYNC)                
);
//////////////////////////////////////////////////////////////////////


//////////////////////// Pulse Generator ///////////////////////////
pulse_gen U0_PULSE_GEN (
    .clk(UART_TX_CLK),
    .rst(SYNC_TX_RST),
    .lvl_sig(UART_TX_Busy),
    .pulse_sig(UART_TX_Busy_PULSE)
);
//////////////////////////////////////////////////////////////////

//////////// Clock Divider for UART_TX Clock ///////////////////////
CLK_DIV U0_ClkDiv (
    .i_ref_clk(UART_CLK_M),              
    .i_rst_n(SYNC_UART_RST),                  
    .i_clk_en(CLKDIV_EN),                
    .i_div_ratio(DIV_RATIO),            
    .o_div_clk(UART_TX_CLK_DIV)              
);


mux2X1 U0_tx_clk_mux (
    .IN_0(UART_TX_CLK_DIV),
    .IN_1(scan_clk),
    .SEL(test_mode),
    .OUT(UART_TX_CLK)
);
///////////////////////////////////////////////////////////////////////


///////////////////////  Mux Clock /////////////////////////////////////
CLOCK_DIV_MUX U0_CLKDIV_MUX (
    .IN(UART_Config[7:2]),
    .OUT(DIV_RATIO_RX)
);
///////////////////////////////////////////////////////////////////////


//////////// Clock Divider for UART_RX Clock /////////////////////////
CLK_DIV U1_ClkDiv (
    .i_ref_clk(UART_CLK_M),              
    .i_rst_n(SYNC_UART_RST),                  
    .i_clk_en(CLKDIV_EN),                
    .i_div_ratio(DIV_RATIO_RX),            
    .o_div_clk(UART_RX_CLK_DIV)              
);


mux2X1 U0_rx_clk_mux (
    .IN_0(UART_RX_CLK_DIV),
    .IN_1(scan_clk),
    .SEL(test_mode),
    .OUT(UART_RX_CLK)
);
/////////////////////////////////////////////////////////////////////

////////////////////////// UART ///////////////////////////////////////////
TOP_UART U0_UART (
    .RST_TX(SYNC_TX_RST),
    .RST_RX(SYNC_RX_RST),
    .TX_CLK(UART_TX_CLK),
    .RX_CLK(UART_RX_CLK),
    .parity_enable(UART_Config[0]),
    .parity_type(UART_Config[1]),
    .Prescale(UART_Config[7:2]),
    .RX_IN(UART_RX_IN),
    .RX_P_DATA(UART_RX_OUT),                      
    .RX_data_valid(UART_RX_V_OUT),                      
    .TX_P_DATA(UART_TX_SYNC), 
    .TX_Data_Valid(!UART_TX_V_SYNC), 
    .TX_OUT(UART_TX_O),
    .busy(UART_TX_Busy),
    .Parity_Error(parity_error),
    .Stop_Error(STOP_error)                  
);
//////////////////////////////////////////////////////////////////////////

//////////////////// System Controller /////////////////////////////////
sys_ctrl U0_SYS_CTRL (
    .CLK(REF_CLK_M),
    .RST(SYNC_REF_RST),
    .RdData(RF_RdData),
    .RdData_Valid(RF_RdData_VLD),
    .WrEn(RF_WrEn),
    .RdEn(RF_RdEn),
    .Address(RF_Address),
    .WrData(RF_WrData),
    .EN(ALU_EN),
    .ALU_FUN(ALU_FUN), 
    .ALU_OUT(ALU_OUT),
    .OUT_Valid(ALU_OUT_VLD),  
    .CLK_EN(CLKG_EN), 
    .clk_div_en(CLKDIV_EN),   
    .FIFO_FULL(FIFO_FULL),
    .RX_P_DATA(UART_RX_SYNC), 
    .RX_D_VLD(UART_RX_V_SYNC),
    .TX_P_DATA(UART_TX_IN), 
    .TX_D_VLD(UART_TX_VLD)
);
/////////////////////////////////////////////////////////////////////

/////////////////////// Register File /////////////////////////////////////
reg_file_edit U0_RegFile (
    .CLK(REF_CLK_M),
    .RST(SYNC_REF_RST),
    .WrEn(RF_WrEn),
    .RdEn(RF_RdEn),
    .Address(RF_Address),
    .WrData(RF_WrData),
    .RdData(RF_RdData),
    .RdData_VLD(RF_RdData_VLD),
    .REG0(Operand_A),
    .REG1(Operand_B),
    .REG2(UART_Config),
    .REG3(DIV_RATIO)
);
/////////////////////////////////////////////////////////////////////////////


//////////////////////////// ALU //////////////////////////////////////////////
alu_edit U0_ALU (
    .CLK(ALU_CLK),
    .RST(SYNC_REF_RST),  
    .A(Operand_A), 
    .B(Operand_B),
    .EN(ALU_EN),
    .ALU_FUN(ALU_FUN),
    .ALU_OUT(ALU_OUT),
    .OUT_VALID(ALU_OUT_VLD)
);
/////////////////////////////////////////////////////////////////////////////////////

///////////////////////// Clock Gating //////////////////////////////////////////

assign CLKG_EN_M = CLKG_EN | test_mode;

CLK_GATE U0_CLK_GATE (
    .CLK_EN(CLKG_EN_M),
    .CLK(REF_CLK_M),
    .GATED_CLK(ALU_CLK)
);
////////////////////////////////////////////////////////////////////////////////////////

endmodule

