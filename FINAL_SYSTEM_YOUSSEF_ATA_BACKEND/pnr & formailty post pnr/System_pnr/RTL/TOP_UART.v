module TOP_UART #(
    parameter PARALLEL_DATA_WIDTH = 8,
    parameter Prescale_width = 6
)
(
    input  wire [PARALLEL_DATA_WIDTH-1:0] TX_P_DATA,
    input  wire                           TX_Data_Valid,
    input   wire                          parity_enable,
    input   wire                          parity_type,
    input  wire                           TX_CLK,
    input  wire                           RST_TX,   // reset synced to TX_CLK domain

    input  wire                           RX_CLK,
    input  wire                           RST_RX,   // reset synced to RX_CLK domain
  
    input  wire                           RX_IN,
    input  wire [Prescale_width-1:0]      Prescale,
   

    output wire                           TX_OUT,
    output wire                           busy,

    output wire [7:0]                     RX_P_DATA,
    output wire                           RX_data_valid,
    output wire                           Parity_Error,
    output wire                          Stop_Error
);

TOP_UART_TX #(
    .PARALLEL_DATA_WIDTH(PARALLEL_DATA_WIDTH)
)
U0_UART_TX
(
    .P_DATA(TX_P_DATA),
    .Data_Valid(TX_Data_Valid),
    .PAR_EN(parity_enable),
    .PAR_TYP( parity_type),
    .clk(TX_CLK),
    .rst(RST_TX),
    .TX_OUT(TX_OUT),
    .busy(busy)
);



TOP_UART_RX #(
    .Prescale_width(Prescale_width)
)
U0_UART_RX
(
    .CLK(RX_CLK),
    .RST(RST_RX),
    .RX_IN(RX_IN),
    .Prescale(Prescale),
    .PAR_EN(parity_enable),
    .PAR_TYP(parity_type),
    .P_DATA(RX_P_DATA),
    .data_valid(RX_data_valid),
    .Parity_Error(Parity_Error),
    .Stop_Error(Stop_Error)
);

endmodule