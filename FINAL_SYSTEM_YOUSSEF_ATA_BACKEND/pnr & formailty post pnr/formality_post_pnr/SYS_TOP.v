module SYS_TOP_dft (
	scan_clk, 
	scan_rst, 
	test_mode, 
	SE, 
	SI, 
	SO, 
	RST_N, 
	UART_CLK, 
	REF_CLK, 
	UART_RX_IN, 
	UART_TX_O, 
	parity_error, 
	STOP_error);
   input scan_clk;
   input scan_rst;
   input test_mode;
   input SE;
   input [4:0] SI;
   output [4:0] SO;
   input RST_N;
   input UART_CLK;
   input REF_CLK;
   input UART_RX_IN;
   output UART_TX_O;
   output parity_error;
   output STOP_error;

   // Internal wires
   wire REF_CLK__L2_N0;
   wire REF_CLK__L1_N0;
   wire UART_CLK__L2_N0;
   wire UART_CLK__L1_N0;
   wire scan_clk__L11_N1;
   wire scan_clk__L11_N0;
   wire scan_clk__L10_N1;
   wire scan_clk__L10_N0;
   wire scan_clk__L9_N0;
   wire scan_clk__L8_N0;
   wire scan_clk__L7_N1;
   wire scan_clk__L7_N0;
   wire scan_clk__L6_N1;
   wire scan_clk__L6_N0;
   wire scan_clk__L5_N1;
   wire scan_clk__L5_N0;
   wire scan_clk__L4_N0;
   wire scan_clk__L3_N0;
   wire scan_clk__L2_N1;
   wire scan_clk__L2_N0;
   wire scan_clk__L1_N0;
   wire REF_CLK_M__L7_N19;
   wire REF_CLK_M__L7_N18;
   wire REF_CLK_M__L7_N17;
   wire REF_CLK_M__L7_N16;
   wire REF_CLK_M__L7_N15;
   wire REF_CLK_M__L7_N14;
   wire REF_CLK_M__L7_N13;
   wire REF_CLK_M__L7_N12;
   wire REF_CLK_M__L7_N11;
   wire REF_CLK_M__L7_N10;
   wire REF_CLK_M__L7_N9;
   wire REF_CLK_M__L7_N8;
   wire REF_CLK_M__L7_N7;
   wire REF_CLK_M__L7_N6;
   wire REF_CLK_M__L7_N5;
   wire REF_CLK_M__L7_N4;
   wire REF_CLK_M__L7_N3;
   wire REF_CLK_M__L7_N2;
   wire REF_CLK_M__L7_N1;
   wire REF_CLK_M__L7_N0;
   wire REF_CLK_M__L6_N5;
   wire REF_CLK_M__L6_N4;
   wire REF_CLK_M__L6_N3;
   wire REF_CLK_M__L6_N2;
   wire REF_CLK_M__L6_N1;
   wire REF_CLK_M__L6_N0;
   wire REF_CLK_M__L5_N1;
   wire REF_CLK_M__L5_N0;
   wire REF_CLK_M__L4_N0;
   wire REF_CLK_M__L3_N0;
   wire REF_CLK_M__L2_N1;
   wire REF_CLK_M__L2_N0;
   wire REF_CLK_M__L1_N1;
   wire REF_CLK_M__L1_N0;
   wire ALU_CLK__L3_N0;
   wire ALU_CLK__L2_N0;
   wire ALU_CLK__L1_N0;
   wire UART_CLK_M__L10_N1;
   wire UART_CLK_M__L10_N0;
   wire UART_CLK_M__L9_N1;
   wire UART_CLK_M__L9_N0;
   wire UART_CLK_M__L8_N0;
   wire UART_CLK_M__L7_N0;
   wire UART_CLK_M__L6_N0;
   wire UART_CLK_M__L5_N0;
   wire UART_CLK_M__L4_N1;
   wire UART_CLK_M__L4_N0;
   wire UART_CLK_M__L3_N1;
   wire UART_CLK_M__L3_N0;
   wire UART_CLK_M__L2_N0;
   wire UART_CLK_M__L1_N0;
   wire n23__Exclude_0_NET;
   wire UART_TX_CLK_DIV__L1_N0;
   wire n8__Exclude_0_NET;
   wire UART_TX_CLK__L3_N3;
   wire UART_TX_CLK__L3_N2;
   wire UART_TX_CLK__L3_N1;
   wire UART_TX_CLK__L3_N0;
   wire UART_TX_CLK__L2_N0;
   wire UART_TX_CLK__L1_N0;
   wire UART_RX_CLK__L3_N1;
   wire UART_RX_CLK__L3_N0;
   wire UART_RX_CLK__L2_N0;
   wire UART_RX_CLK__L1_N0;
   wire FE_OFN1_SYNC_REF_RST;
   wire FE_OFN0_SYNC_REF_RST;
   wire REF_CLK_M;
   wire UART_CLK_M;
   wire RST_N_M;
   wire SYNC_UART_RST_S;
   wire SYNC_REF_RST_S;
   wire SYNC_UART_RST;
   wire SYNC_REF_RST;
   wire UART_TX_CLK;
   wire SYNC_TX_RST_S;
   wire UART_RX_CLK;
   wire SYNC_RX_RST_S;
   wire SYNC_TX_RST;
   wire SYNC_RX_RST;
   wire UART_RX_V_OUT;
   wire UART_RX_V_SYNC;
   wire UART_TX_VLD;
   wire UART_TX_Busy_PULSE;
   wire FIFO_FULL;
   wire UART_TX_V_SYNC;
   wire UART_TX_Busy;
   wire UART_TX_CLK_DIV;
   wire UART_RX_CLK_DIV;
   wire RF_RdData_VLD;
   wire RF_WrEn;
   wire RF_RdEn;
   wire ALU_EN;
   wire ALU_OUT_VLD;
   wire CLKG_EN;
   wire ALU_CLK;
   wire CLKG_EN_M;
   wire n1;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n14;
   wire n17;
   wire n18;
   wire n23;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire SYNOPSYS_UNCONNECTED_1;
   wire SYNOPSYS_UNCONNECTED_2;
   wire SYNOPSYS_UNCONNECTED_3;
   wire SYNOPSYS_UNCONNECTED_4;
   wire [7:0] UART_RX_OUT;
   wire [7:0] UART_RX_SYNC;
   wire [7:0] UART_TX_IN;
   wire [7:0] UART_TX_SYNC;
   wire [7:0] DIV_RATIO;
   wire [7:0] UART_Config;
   wire [7:0] DIV_RATIO_RX;
   wire [7:0] RF_RdData;
   wire [3:0] RF_Address;
   wire [7:0] RF_WrData;
   wire [3:0] ALU_FUN;
   wire [15:0] ALU_OUT;
   wire [7:0] Operand_A;
   wire [7:0] Operand_B;

   CLKINVX40M REF_CLK__L2_I0 (.Y(REF_CLK__L2_N0), 
	.A(REF_CLK__L1_N0));
   CLKINVX40M REF_CLK__L1_I0 (.Y(REF_CLK__L1_N0), 
	.A(REF_CLK));
   CLKINVX40M UART_CLK__L2_I0 (.Y(UART_CLK__L2_N0), 
	.A(UART_CLK__L1_N0));
   CLKINVX40M UART_CLK__L1_I0 (.Y(UART_CLK__L1_N0), 
	.A(UART_CLK));
   CLKINVX6M scan_clk__L11_I1 (.Y(scan_clk__L11_N1), 
	.A(scan_clk__L10_N1));
   CLKINVX6M scan_clk__L11_I0 (.Y(scan_clk__L11_N0), 
	.A(scan_clk__L10_N0));
   CLKINVX40M scan_clk__L10_I1 (.Y(scan_clk__L10_N1), 
	.A(scan_clk__L9_N0));
   CLKINVX40M scan_clk__L10_I0 (.Y(scan_clk__L10_N0), 
	.A(scan_clk__L9_N0));
   CLKINVX40M scan_clk__L9_I0 (.Y(scan_clk__L9_N0), 
	.A(scan_clk__L8_N0));
   CLKBUFX40M scan_clk__L8_I0 (.Y(scan_clk__L8_N0), 
	.A(scan_clk__L7_N0));
   CLKINVX6M scan_clk__L7_I1 (.Y(scan_clk__L7_N1), 
	.A(scan_clk__L6_N1));
   CLKBUFX40M scan_clk__L7_I0 (.Y(scan_clk__L7_N0), 
	.A(scan_clk__L6_N0));
   CLKBUFX20M scan_clk__L6_I1 (.Y(scan_clk__L6_N1), 
	.A(scan_clk__L5_N1));
   CLKBUFX20M scan_clk__L6_I0 (.Y(scan_clk__L6_N0), 
	.A(scan_clk__L5_N0));
   CLKBUFX20M scan_clk__L5_I1 (.Y(scan_clk__L5_N1), 
	.A(scan_clk__L4_N0));
   CLKBUFX20M scan_clk__L5_I0 (.Y(scan_clk__L5_N0), 
	.A(scan_clk__L4_N0));
   CLKBUFX20M scan_clk__L4_I0 (.Y(scan_clk__L4_N0), 
	.A(scan_clk__L3_N0));
   CLKBUFX20M scan_clk__L3_I0 (.Y(scan_clk__L3_N0), 
	.A(scan_clk__L2_N0));
   CLKINVX6M scan_clk__L2_I1 (.Y(scan_clk__L2_N1), 
	.A(scan_clk__L1_N0));
   CLKBUFX20M scan_clk__L2_I0 (.Y(scan_clk__L2_N0), 
	.A(scan_clk__L1_N0));
   CLKINVX40M scan_clk__L1_I0 (.Y(scan_clk__L1_N0), 
	.A(scan_clk));
   CLKINVX32M REF_CLK_M__L7_I19 (.Y(REF_CLK_M__L7_N19), 
	.A(REF_CLK_M__L6_N5));
   CLKINVX32M REF_CLK_M__L7_I18 (.Y(REF_CLK_M__L7_N18), 
	.A(REF_CLK_M__L6_N5));
   CLKINVX32M REF_CLK_M__L7_I17 (.Y(REF_CLK_M__L7_N17), 
	.A(REF_CLK_M__L6_N5));
   CLKINVX32M REF_CLK_M__L7_I16 (.Y(REF_CLK_M__L7_N16), 
	.A(REF_CLK_M__L6_N4));
   CLKINVX32M REF_CLK_M__L7_I15 (.Y(REF_CLK_M__L7_N15), 
	.A(REF_CLK_M__L6_N4));
   CLKINVX32M REF_CLK_M__L7_I14 (.Y(REF_CLK_M__L7_N14), 
	.A(REF_CLK_M__L6_N4));
   CLKINVX32M REF_CLK_M__L7_I13 (.Y(REF_CLK_M__L7_N13), 
	.A(REF_CLK_M__L6_N4));
   CLKINVX32M REF_CLK_M__L7_I12 (.Y(REF_CLK_M__L7_N12), 
	.A(REF_CLK_M__L6_N3));
   CLKINVX32M REF_CLK_M__L7_I11 (.Y(REF_CLK_M__L7_N11), 
	.A(REF_CLK_M__L6_N3));
   CLKINVX32M REF_CLK_M__L7_I10 (.Y(REF_CLK_M__L7_N10), 
	.A(REF_CLK_M__L6_N3));
   CLKINVX32M REF_CLK_M__L7_I9 (.Y(REF_CLK_M__L7_N9), 
	.A(REF_CLK_M__L6_N2));
   CLKINVX32M REF_CLK_M__L7_I8 (.Y(REF_CLK_M__L7_N8), 
	.A(REF_CLK_M__L6_N2));
   CLKINVX32M REF_CLK_M__L7_I7 (.Y(REF_CLK_M__L7_N7), 
	.A(REF_CLK_M__L6_N2));
   CLKINVX32M REF_CLK_M__L7_I6 (.Y(REF_CLK_M__L7_N6), 
	.A(REF_CLK_M__L6_N1));
   CLKINVX32M REF_CLK_M__L7_I5 (.Y(REF_CLK_M__L7_N5), 
	.A(REF_CLK_M__L6_N1));
   CLKINVX32M REF_CLK_M__L7_I4 (.Y(REF_CLK_M__L7_N4), 
	.A(REF_CLK_M__L6_N1));
   CLKINVX32M REF_CLK_M__L7_I3 (.Y(REF_CLK_M__L7_N3), 
	.A(REF_CLK_M__L6_N1));
   CLKINVX32M REF_CLK_M__L7_I2 (.Y(REF_CLK_M__L7_N2), 
	.A(REF_CLK_M__L6_N0));
   CLKINVX32M REF_CLK_M__L7_I1 (.Y(REF_CLK_M__L7_N1), 
	.A(REF_CLK_M__L6_N0));
   CLKINVX32M REF_CLK_M__L7_I0 (.Y(REF_CLK_M__L7_N0), 
	.A(REF_CLK_M__L6_N0));
   CLKINVX40M REF_CLK_M__L6_I5 (.Y(REF_CLK_M__L6_N5), 
	.A(REF_CLK_M__L5_N1));
   CLKINVX40M REF_CLK_M__L6_I4 (.Y(REF_CLK_M__L6_N4), 
	.A(REF_CLK_M__L5_N1));
   CLKINVX40M REF_CLK_M__L6_I3 (.Y(REF_CLK_M__L6_N3), 
	.A(REF_CLK_M__L5_N1));
   CLKINVX40M REF_CLK_M__L6_I2 (.Y(REF_CLK_M__L6_N2), 
	.A(REF_CLK_M__L5_N0));
   CLKINVX40M REF_CLK_M__L6_I1 (.Y(REF_CLK_M__L6_N1), 
	.A(REF_CLK_M__L5_N0));
   CLKINVX40M REF_CLK_M__L6_I0 (.Y(REF_CLK_M__L6_N0), 
	.A(REF_CLK_M__L5_N0));
   CLKINVX40M REF_CLK_M__L5_I1 (.Y(REF_CLK_M__L5_N1), 
	.A(REF_CLK_M__L4_N0));
   CLKINVX40M REF_CLK_M__L5_I0 (.Y(REF_CLK_M__L5_N0), 
	.A(REF_CLK_M__L4_N0));
   CLKINVX40M REF_CLK_M__L4_I0 (.Y(REF_CLK_M__L4_N0), 
	.A(REF_CLK_M__L3_N0));
   CLKINVX32M REF_CLK_M__L3_I0 (.Y(REF_CLK_M__L3_N0), 
	.A(REF_CLK_M__L2_N1));
   CLKINVX32M REF_CLK_M__L2_I1 (.Y(REF_CLK_M__L2_N1), 
	.A(REF_CLK_M__L1_N1));
   CLKINVX32M REF_CLK_M__L2_I0 (.Y(REF_CLK_M__L2_N0), 
	.A(REF_CLK_M__L1_N0));
   BUFX8M REF_CLK_M__L1_I1 (.Y(REF_CLK_M__L1_N1), 
	.A(REF_CLK_M));
   CLKINVX6M REF_CLK_M__L1_I0 (.Y(REF_CLK_M__L1_N0), 
	.A(REF_CLK_M));
   CLKINVX32M ALU_CLK__L3_I0 (.Y(ALU_CLK__L3_N0), 
	.A(ALU_CLK__L2_N0));
   BUFX18M ALU_CLK__L2_I0 (.Y(ALU_CLK__L2_N0), 
	.A(ALU_CLK__L1_N0));
   CLKINVX6M ALU_CLK__L1_I0 (.Y(ALU_CLK__L1_N0), 
	.A(ALU_CLK));
   CLKINVX40M UART_CLK_M__L10_I1 (.Y(UART_CLK_M__L10_N1), 
	.A(UART_CLK_M__L9_N1));
   CLKINVX40M UART_CLK_M__L10_I0 (.Y(UART_CLK_M__L10_N0), 
	.A(UART_CLK_M__L9_N0));
   CLKINVX40M UART_CLK_M__L9_I1 (.Y(UART_CLK_M__L9_N1), 
	.A(UART_CLK_M__L8_N0));
   CLKINVX40M UART_CLK_M__L9_I0 (.Y(UART_CLK_M__L9_N0), 
	.A(UART_CLK_M__L8_N0));
   CLKBUFX20M UART_CLK_M__L8_I0 (.Y(UART_CLK_M__L8_N0), 
	.A(UART_CLK_M__L7_N0));
   CLKBUFX24M UART_CLK_M__L7_I0 (.Y(UART_CLK_M__L7_N0), 
	.A(UART_CLK_M__L6_N0));
   CLKBUFX24M UART_CLK_M__L6_I0 (.Y(UART_CLK_M__L6_N0), 
	.A(UART_CLK_M__L5_N0));
   CLKBUFX24M UART_CLK_M__L5_I0 (.Y(UART_CLK_M__L5_N0), 
	.A(UART_CLK_M__L4_N1));
   CLKBUFX24M UART_CLK_M__L4_I1 (.Y(UART_CLK_M__L4_N1), 
	.A(UART_CLK_M__L3_N1));
   CLKINVX40M UART_CLK_M__L4_I0 (.Y(UART_CLK_M__L4_N0), 
	.A(UART_CLK_M__L3_N0));
   CLKBUFX40M UART_CLK_M__L3_I1 (.Y(UART_CLK_M__L3_N1), 
	.A(UART_CLK_M__L2_N0));
   CLKINVX40M UART_CLK_M__L3_I0 (.Y(UART_CLK_M__L3_N0), 
	.A(UART_CLK_M__L2_N0));
   CLKBUFX12M UART_CLK_M__L2_I0 (.Y(UART_CLK_M__L2_N0), 
	.A(UART_CLK_M__L1_N0));
   CLKBUFX24M UART_CLK_M__L1_I0 (.Y(UART_CLK_M__L1_N0), 
	.A(UART_CLK_M));
   BUFX8M n23__Exclude_0 (.Y(n23__Exclude_0_NET), 
	.A(n23));
   CLKBUFX12M UART_TX_CLK_DIV__L1_I0 (.Y(UART_TX_CLK_DIV__L1_N0), 
	.A(UART_TX_CLK_DIV));
   BUFX8M n8__Exclude_0 (.Y(n8__Exclude_0_NET), 
	.A(n8));
   CLKINVX24M UART_TX_CLK__L3_I3 (.Y(UART_TX_CLK__L3_N3), 
	.A(UART_TX_CLK__L2_N0));
   CLKINVX24M UART_TX_CLK__L3_I2 (.Y(UART_TX_CLK__L3_N2), 
	.A(UART_TX_CLK__L2_N0));
   CLKINVX24M UART_TX_CLK__L3_I1 (.Y(UART_TX_CLK__L3_N1), 
	.A(UART_TX_CLK__L2_N0));
   CLKINVX24M UART_TX_CLK__L3_I0 (.Y(UART_TX_CLK__L3_N0), 
	.A(UART_TX_CLK__L2_N0));
   CLKINVX40M UART_TX_CLK__L2_I0 (.Y(UART_TX_CLK__L2_N0), 
	.A(UART_TX_CLK__L1_N0));
   BUFX16M UART_TX_CLK__L1_I0 (.Y(UART_TX_CLK__L1_N0), 
	.A(UART_TX_CLK));
   CLKINVX32M UART_RX_CLK__L3_I1 (.Y(UART_RX_CLK__L3_N1), 
	.A(UART_RX_CLK__L2_N0));
   CLKINVX32M UART_RX_CLK__L3_I0 (.Y(UART_RX_CLK__L3_N0), 
	.A(UART_RX_CLK__L2_N0));
   CLKINVX32M UART_RX_CLK__L2_I0 (.Y(UART_RX_CLK__L2_N0), 
	.A(UART_RX_CLK__L1_N0));
   BUFX16M UART_RX_CLK__L1_I0 (.Y(UART_RX_CLK__L1_N0), 
	.A(UART_RX_CLK));
   BUFX8M FE_OFC1_SYNC_REF_RST (.Y(FE_OFN1_SYNC_REF_RST), 
	.A(FE_OFN0_SYNC_REF_RST));
   CLKBUFX8M FE_OFC0_SYNC_REF_RST (.Y(FE_OFN0_SYNC_REF_RST), 
	.A(SYNC_REF_RST));
   INVX2M U6 (.Y(n1), 
	.A(UART_TX_V_SYNC));
   OR2X2M U8 (.Y(CLKG_EN_M), 
	.B(test_mode), 
	.A(CLKG_EN));
   DLY1X1M U16 (.Y(n27), 
	.A(n37));
   DLY1X1M U17 (.Y(n28), 
	.A(n34));
   DLY1X1M U18 (.Y(n29), 
	.A(n68));
   DLY1X1M U19 (.Y(n30), 
	.A(n36));
   DLY1X1M U20 (.Y(n31), 
	.A(n27));
   DLY1X1M U21 (.Y(n32), 
	.A(n27));
   INVXLM U22 (.Y(n33), 
	.A(n29));
   DLY1X1M U23 (.Y(n34), 
	.A(SE));
   DLY1X1M U24 (.Y(n36), 
	.A(n33));
   INVXLM U25 (.Y(n35), 
	.A(n36));
   INVXLM U26 (.Y(n68), 
	.A(n34));
   INVXLM U27 (.Y(n37), 
	.A(n29));
   DLY1X1M U28 (.Y(n38), 
	.A(n41));
   DLY1X1M U29 (.Y(n39), 
	.A(n48));
   DLY1X1M U30 (.Y(n40), 
	.A(n49));
   DLY1X1M U31 (.Y(n41), 
	.A(n50));
   DLY1X1M U32 (.Y(n42), 
	.A(n35));
   DLY1X1M U33 (.Y(n43), 
	.A(n70));
   DLY1X1M U34 (.Y(n44), 
	.A(n64));
   DLY1X1M U35 (.Y(n45), 
	.A(n58));
   DLY1X1M U36 (.Y(n46), 
	.A(n63));
   DLY1X1M U37 (.Y(n47), 
	.A(n66));
   INVXLM U38 (.Y(n48), 
	.A(n56));
   INVXLM U39 (.Y(n49), 
	.A(n39));
   INVXLM U40 (.Y(n50), 
	.A(n39));
   INVXLM U41 (.Y(n51), 
	.A(n61));
   INVXLM U42 (.Y(n52), 
	.A(n51));
   INVXLM U43 (.Y(n53), 
	.A(n69));
   DLY1X1M U44 (.Y(n54), 
	.A(n72));
   DLY1X1M U45 (.Y(n55), 
	.A(n32));
   INVXLM U46 (.Y(n56), 
	.A(n73));
   INVXLM U47 (.Y(n57), 
	.A(n40));
   INVXLM U48 (.Y(n58), 
	.A(n40));
   DLY1X1M U49 (.Y(n59), 
	.A(n65));
   DLY1X1M U50 (.Y(n60), 
	.A(n62));
   INVXLM U51 (.Y(n61), 
	.A(n67));
   INVXLM U52 (.Y(n62), 
	.A(n42));
   INVXLM U53 (.Y(n63), 
	.A(n38));
   INVXLM U54 (.Y(n64), 
	.A(n52));
   INVXLM U55 (.Y(n65), 
	.A(n41));
   INVXLM U56 (.Y(n66), 
	.A(n53));
   INVXLM U57 (.Y(n67), 
	.A(n38));
   DLY1X1M U58 (.Y(n69), 
	.A(n71));
   INVXLM U59 (.Y(n70), 
	.A(n57));
   INVXLM U60 (.Y(n71), 
	.A(n43));
   INVXLM U61 (.Y(n72), 
	.A(n43));
   INVXLM U62 (.Y(n73), 
	.A(n42));
   mux2X1_1 U0_ref_clk_mux (.IN_0(REF_CLK__L2_N0), 
	.IN_1(scan_clk__L7_N1), 
	.SEL(test_mode), 
	.OUT(REF_CLK_M));
   mux2X1_4 U0_uart_clk_mux (.IN_0(UART_CLK__L2_N0), 
	.IN_1(scan_clk__L2_N1), 
	.SEL(test_mode), 
	.OUT(UART_CLK_M));
   mux2X1_0 U0_rst_mux (.IN_0(RST_N), 
	.IN_1(scan_rst), 
	.SEL(test_mode), 
	.OUT(RST_N_M));
   RST_SYNC_NUM_STAGES2_test_0 U0_RST_SYNC (.CLK(UART_CLK_M__L10_N0), 
	.RST(RST_N_M), 
	.SYNC_RST(SYNC_UART_RST_S), 
	.test_si(n17), 
	.test_se(n44), 
	.UART_CLK_M__L10_N1(UART_CLK_M__L10_N1));
   RST_SYNC_NUM_STAGES2_test_1 U1_RST_SYNC (.CLK(REF_CLK_M__L7_N1), 
	.RST(RST_N_M), 
	.SYNC_RST(SYNC_REF_RST_S), 
	.test_si(n8__Exclude_0_NET), 
	.test_se(n46));
   mux2X1_8 U1_sync_uart_rst_mux (.IN_0(SYNC_UART_RST_S), 
	.IN_1(scan_rst), 
	.SEL(test_mode), 
	.OUT(SYNC_UART_RST));
   mux2X1_7 U1_sync_ref_rst_mux (.IN_0(SYNC_REF_RST_S), 
	.IN_1(scan_rst), 
	.SEL(test_mode), 
	.OUT(SYNC_REF_RST));
   RST_SYNC_NUM_STAGES2_test_2 U2_RST_SYNC (.CLK(UART_TX_CLK__L3_N3), 
	.RST(RST_N_M), 
	.SYNC_RST(SYNC_TX_RST_S), 
	.test_si(SYNC_REF_RST_S), 
	.test_se(n47));
   RST_SYNC_NUM_STAGES2_test_3 U3_RST_SYNC (.CLK(UART_RX_CLK__L3_N0), 
	.RST(RST_N_M), 
	.SYNC_RST(SYNC_RX_RST_S), 
	.test_si(SYNC_TX_RST_S), 
	.test_se(n45));
   mux2X1_6 U2_sync_tx_rst_mux (.IN_0(SYNC_TX_RST_S), 
	.IN_1(scan_rst), 
	.SEL(test_mode), 
	.OUT(SYNC_TX_RST));
   mux2X1_5 U3_sync_rx_rst_mux (.IN_0(SYNC_RX_RST_S), 
	.IN_1(scan_rst), 
	.SEL(test_mode), 
	.OUT(SYNC_RX_RST));
   DATA_SYNC_NUM_STAGES2_BUS_WIDTH8_test_1 U0_ref_sync (.CLK(REF_CLK_M__L7_N7), 
	.RST(SYNC_REF_RST), 
	.unsync_bus({ UART_RX_OUT[7],
		UART_RX_OUT[6],
		UART_RX_OUT[5],
		UART_RX_OUT[4],
		UART_RX_OUT[3],
		UART_RX_OUT[2],
		UART_RX_OUT[1],
		UART_RX_OUT[0] }), 
	.bus_enable(UART_RX_V_OUT), 
	.sync_bus({ UART_RX_SYNC[7],
		UART_RX_SYNC[6],
		UART_RX_SYNC[5],
		UART_RX_SYNC[4],
		UART_RX_SYNC[3],
		UART_RX_SYNC[2],
		UART_RX_SYNC[1],
		UART_RX_SYNC[0] }), 
	.enable_pulse(UART_RX_V_SYNC), 
	.test_si(n10), 
	.test_so(n9), 
	.test_se(n55), 
	.REF_CLK_M__L7_N9(REF_CLK_M__L7_N9));
   ASYNC_FIFO_TOP_DATA_WIDTH8_ADDRSIZE4_test_1 U0_FIFO (.R_CLK(UART_TX_CLK__L3_N0), 
	.W_CLK(REF_CLK_M__L7_N0), 
	.W_RST(SYNC_REF_RST), 
	.W_INC(UART_TX_VLD), 
	.WR_DATA({ UART_TX_IN[7],
		UART_TX_IN[6],
		UART_TX_IN[5],
		UART_TX_IN[4],
		UART_TX_IN[3],
		UART_TX_IN[2],
		UART_TX_IN[1],
		UART_TX_IN[0] }), 
	.R_RST(SYNC_TX_RST), 
	.R_INC(UART_TX_Busy_PULSE), 
	.FULL(FIFO_FULL), 
	.RD_DATA({ UART_TX_SYNC[7],
		UART_TX_SYNC[6],
		UART_TX_SYNC[5],
		UART_TX_SYNC[4],
		UART_TX_SYNC[3],
		UART_TX_SYNC[2],
		UART_TX_SYNC[1],
		UART_TX_SYNC[0] }), 
	.EMPTY(UART_TX_V_SYNC), 
	.test_si3(SI[2]), 
	.test_si2(SI[3]), 
	.test_si1(n23__Exclude_0_NET), 
	.test_so3(n18), 
	.test_so2(SO[3]), 
	.test_so1(SO[4]), 
	.test_se(SE), 
	.UART_TX_CLK__L3_N2(UART_TX_CLK__L3_N2), 
	.REF_CLK_M__L7_N1(REF_CLK_M__L7_N1), 
	.REF_CLK_M__L7_N10(REF_CLK_M__L7_N10), 
	.REF_CLK_M__L7_N11(REF_CLK_M__L7_N11), 
	.REF_CLK_M__L7_N12(REF_CLK_M__L7_N12), 
	.REF_CLK_M__L7_N19(REF_CLK_M__L7_N19), 
	.REF_CLK_M__L7_N2(REF_CLK_M__L7_N2), 
	.REF_CLK_M__L7_N8(REF_CLK_M__L7_N8), 
	.REF_CLK_M__L7_N9(REF_CLK_M__L7_N9));
   pulse_gen_test_1 U0_PULSE_GEN (.clk(UART_TX_CLK__L3_N0), 
	.rst(SYNC_TX_RST), 
	.lvl_sig(UART_TX_Busy), 
	.pulse_sig(UART_TX_Busy_PULSE), 
	.test_si(n18), 
	.test_so(n17), 
	.test_se(n59), 
	.UART_TX_CLK__L3_N3(UART_TX_CLK__L3_N3));
   CLK_DIV_test_0 U0_ClkDiv (.i_ref_clk(UART_CLK_M), 
	.i_rst_n(SYNC_UART_RST), 
	.i_clk_en(1'b1), 
	.i_div_ratio({ DIV_RATIO[7],
		DIV_RATIO[6],
		DIV_RATIO[5],
		DIV_RATIO[4],
		DIV_RATIO[3],
		DIV_RATIO[2],
		DIV_RATIO[1],
		DIV_RATIO[0] }), 
	.o_div_clk(UART_TX_CLK_DIV), 
	.test_si(ALU_OUT_VLD), 
	.test_so(n23), 
	.test_se(n60), 
	.n23__Exclude_0_NET(n23__Exclude_0_NET), 
	.UART_CLK_M__L10_N1(UART_CLK_M__L10_N1), 
	.UART_CLK_M__L4_N0(UART_CLK_M__L4_N0));
   mux2X1_3 U0_tx_clk_mux (.IN_0(UART_TX_CLK_DIV__L1_N0), 
	.IN_1(scan_clk__L11_N1), 
	.SEL(test_mode), 
	.OUT(UART_TX_CLK));
   CLOCK_DIV_MUX U0_CLKDIV_MUX (.IN({ UART_Config[7],
		UART_Config[6],
		UART_Config[5],
		UART_Config[4],
		UART_Config[3],
		UART_Config[2] }), 
	.OUT({ SYNOPSYS_UNCONNECTED_1,
		SYNOPSYS_UNCONNECTED_2,
		SYNOPSYS_UNCONNECTED_3,
		SYNOPSYS_UNCONNECTED_4,
		DIV_RATIO_RX[3],
		DIV_RATIO_RX[2],
		DIV_RATIO_RX[1],
		DIV_RATIO_RX[0] }));
   CLK_DIV_test_1 U1_ClkDiv (.i_ref_clk(UART_CLK_M), 
	.i_rst_n(SYNC_UART_RST), 
	.i_clk_en(1'b1), 
	.i_div_ratio({ 1'b0,
		1'b0,
		1'b0,
		1'b0,
		DIV_RATIO_RX[3],
		DIV_RATIO_RX[2],
		DIV_RATIO_RX[1],
		DIV_RATIO_RX[0] }), 
	.o_div_clk(UART_RX_CLK_DIV), 
	.test_si(n9), 
	.test_so(n8), 
	.test_se(n54), 
	.n8__Exclude_0_NET(n8__Exclude_0_NET), 
	.UART_CLK_M__L10_N0(UART_CLK_M__L10_N0), 
	.UART_CLK_M__L4_N0(UART_CLK_M__L4_N0));
   mux2X1_2 U0_rx_clk_mux (.IN_0(UART_RX_CLK_DIV), 
	.IN_1(scan_clk__L11_N0), 
	.SEL(test_mode), 
	.OUT(UART_RX_CLK));
   TOP_UART_test_1 U0_UART (.TX_P_DATA({ UART_TX_SYNC[7],
		UART_TX_SYNC[6],
		UART_TX_SYNC[5],
		UART_TX_SYNC[4],
		UART_TX_SYNC[3],
		UART_TX_SYNC[2],
		UART_TX_SYNC[1],
		UART_TX_SYNC[0] }), 
	.TX_Data_Valid(n1), 
	.parity_enable(UART_Config[0]), 
	.parity_type(UART_Config[1]), 
	.TX_CLK(UART_TX_CLK__L3_N1), 
	.RST_TX(SYNC_TX_RST), 
	.RX_CLK(UART_RX_CLK__L3_N0), 
	.RST_RX(SYNC_RX_RST), 
	.RX_IN(UART_RX_IN), 
	.Prescale({ UART_Config[7],
		UART_Config[6],
		UART_Config[5],
		UART_Config[4],
		UART_Config[3],
		UART_Config[2] }), 
	.TX_OUT(UART_TX_O), 
	.busy(UART_TX_Busy), 
	.RX_P_DATA({ UART_RX_OUT[7],
		UART_RX_OUT[6],
		UART_RX_OUT[5],
		UART_RX_OUT[4],
		UART_RX_OUT[3],
		UART_RX_OUT[2],
		UART_RX_OUT[1],
		UART_RX_OUT[0] }), 
	.RX_data_valid(UART_RX_V_OUT), 
	.Parity_Error(parity_error), 
	.Stop_Error(SO[0]), 
	.test_si2(SYNC_RX_RST_S), 
	.test_si1(n11), 
	.test_so1(n10), 
	.test_se(n31), 
	.UART_RX_CLK__L3_N1(UART_RX_CLK__L3_N1), 
	.UART_TX_CLK__L3_N3(UART_TX_CLK__L3_N3));
   sys_ctrl_test_1 U0_SYS_CTRL (.CLK(REF_CLK_M__L7_N3), 
	.RST(SYNC_REF_RST), 
	.RX_P_DATA({ UART_RX_SYNC[7],
		UART_RX_SYNC[6],
		UART_RX_SYNC[5],
		UART_RX_SYNC[4],
		UART_RX_SYNC[3],
		UART_RX_SYNC[2],
		UART_RX_SYNC[1],
		UART_RX_SYNC[0] }), 
	.RX_D_VLD(UART_RX_V_SYNC), 
	.RdData({ RF_RdData[7],
		RF_RdData[6],
		RF_RdData[5],
		RF_RdData[4],
		RF_RdData[3],
		RF_RdData[2],
		RF_RdData[1],
		RF_RdData[0] }), 
	.RdData_Valid(RF_RdData_VLD), 
	.ALU_OUT({ ALU_OUT[15],
		ALU_OUT[14],
		ALU_OUT[13],
		ALU_OUT[12],
		ALU_OUT[11],
		ALU_OUT[10],
		ALU_OUT[9],
		ALU_OUT[8],
		ALU_OUT[7],
		ALU_OUT[6],
		ALU_OUT[5],
		ALU_OUT[4],
		ALU_OUT[3],
		ALU_OUT[2],
		ALU_OUT[1],
		ALU_OUT[0] }), 
	.OUT_Valid(ALU_OUT_VLD), 
	.FIFO_FULL(FIFO_FULL), 
	.Address({ RF_Address[3],
		RF_Address[2],
		RF_Address[1],
		RF_Address[0] }), 
	.WrEn(RF_WrEn), 
	.RdEn(RF_RdEn), 
	.WrData({ RF_WrData[7],
		RF_WrData[6],
		RF_WrData[5],
		RF_WrData[4],
		RF_WrData[3],
		RF_WrData[2],
		RF_WrData[1],
		RF_WrData[0] }), 
	.ALU_FUN({ ALU_FUN[3],
		ALU_FUN[2],
		ALU_FUN[1],
		ALU_FUN[0] }), 
	.EN(ALU_EN), 
	.CLK_EN(CLKG_EN), 
	.TX_P_DATA({ UART_TX_IN[7],
		UART_TX_IN[6],
		UART_TX_IN[5],
		UART_TX_IN[4],
		UART_TX_IN[3],
		UART_TX_IN[2],
		UART_TX_IN[1],
		UART_TX_IN[0] }), 
	.TX_D_VLD(UART_TX_VLD), 
	.test_si2(SI[0]), 
	.test_si1(n14), 
	.test_so2(n11), 
	.test_so1(SO[1]), 
	.test_se(n32), 
	.FE_OFN0_SYNC_REF_RST(FE_OFN0_SYNC_REF_RST), 
	.FE_OFN1_SYNC_REF_RST(FE_OFN1_SYNC_REF_RST), 
	.REF_CLK_M__L7_N4(REF_CLK_M__L7_N4), 
	.REF_CLK_M__L7_N5(REF_CLK_M__L7_N5), 
	.REF_CLK_M__L7_N7(REF_CLK_M__L7_N7), 
	.REF_CLK_M__L7_N8(REF_CLK_M__L7_N8), 
	.REF_CLK_M__L7_N9(REF_CLK_M__L7_N9));
   reg_file_edit_test_1 U0_RegFile (.CLK(REF_CLK_M__L7_N13), 
	.RST(FE_OFN0_SYNC_REF_RST), 
	.WrEn(RF_WrEn), 
	.RdEn(RF_RdEn), 
	.Address({ RF_Address[3],
		RF_Address[2],
		RF_Address[1],
		RF_Address[0] }), 
	.WrData({ RF_WrData[7],
		RF_WrData[6],
		RF_WrData[5],
		RF_WrData[4],
		RF_WrData[3],
		RF_WrData[2],
		RF_WrData[1],
		RF_WrData[0] }), 
	.RdData({ RF_RdData[7],
		RF_RdData[6],
		RF_RdData[5],
		RF_RdData[4],
		RF_RdData[3],
		RF_RdData[2],
		RF_RdData[1],
		RF_RdData[0] }), 
	.RdData_VLD(RF_RdData_VLD), 
	.REG0({ Operand_A[7],
		Operand_A[6],
		Operand_A[5],
		Operand_A[4],
		Operand_A[3],
		Operand_A[2],
		Operand_A[1],
		Operand_A[0] }), 
	.REG1({ Operand_B[7],
		Operand_B[6],
		Operand_B[5],
		Operand_B[4],
		Operand_B[3],
		Operand_B[2],
		Operand_B[1],
		Operand_B[0] }), 
	.REG2({ UART_Config[7],
		UART_Config[6],
		UART_Config[5],
		UART_Config[4],
		UART_Config[3],
		UART_Config[2],
		UART_Config[1],
		UART_Config[0] }), 
	.REG3({ DIV_RATIO[7],
		DIV_RATIO[6],
		DIV_RATIO[5],
		DIV_RATIO[4],
		DIV_RATIO[3],
		DIV_RATIO[2],
		DIV_RATIO[1],
		DIV_RATIO[0] }), 
	.test_si2(SI[1]), 
	.test_si1(SYNC_UART_RST_S), 
	.test_so2(n14), 
	.test_so1(SO[2]), 
	.test_se(n30), 
	.FE_OFN1_SYNC_REF_RST(FE_OFN1_SYNC_REF_RST), 
	.REF_CLK_M__L7_N14(REF_CLK_M__L7_N14), 
	.REF_CLK_M__L7_N15(REF_CLK_M__L7_N15), 
	.REF_CLK_M__L7_N16(REF_CLK_M__L7_N16), 
	.REF_CLK_M__L7_N17(REF_CLK_M__L7_N17), 
	.REF_CLK_M__L7_N18(REF_CLK_M__L7_N18), 
	.REF_CLK_M__L7_N4(REF_CLK_M__L7_N4), 
	.REF_CLK_M__L7_N5(REF_CLK_M__L7_N5), 
	.REF_CLK_M__L7_N6(REF_CLK_M__L7_N6));
   alu_edit_test_1 U0_ALU (.A({ Operand_A[7],
		Operand_A[6],
		Operand_A[5],
		Operand_A[4],
		Operand_A[3],
		Operand_A[2],
		Operand_A[1],
		Operand_A[0] }), 
	.B({ Operand_B[7],
		Operand_B[6],
		Operand_B[5],
		Operand_B[4],
		Operand_B[3],
		Operand_B[2],
		Operand_B[1],
		Operand_B[0] }), 
	.EN(ALU_EN), 
	.ALU_FUN({ ALU_FUN[3],
		ALU_FUN[2],
		ALU_FUN[1],
		ALU_FUN[0] }), 
	.CLK(ALU_CLK__L3_N0), 
	.RST(FE_OFN0_SYNC_REF_RST), 
	.ALU_OUT({ ALU_OUT[15],
		ALU_OUT[14],
		ALU_OUT[13],
		ALU_OUT[12],
		ALU_OUT[11],
		ALU_OUT[10],
		ALU_OUT[9],
		ALU_OUT[8],
		ALU_OUT[7],
		ALU_OUT[6],
		ALU_OUT[5],
		ALU_OUT[4],
		ALU_OUT[3],
		ALU_OUT[2],
		ALU_OUT[1],
		ALU_OUT[0] }), 
	.OUT_VALID(ALU_OUT_VLD), 
	.test_si(SI[4]), 
	.test_se(n28));
   CLK_GATE U0_CLK_GATE (.CLK_EN(CLKG_EN_M), 
	.CLK(REF_CLK_M__L2_N0), 
	.GATED_CLK(ALU_CLK));
   BUFX2M U15 (.Y(STOP_error), 
	.A(SO[0]));
endmodule

/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Tue Oct  6 16:13:49 2026
/////////////////////////////////////////////////////////////
module mux2X1_1 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   MX2X6M U1 (.Y(OUT), 
	.S0(SEL), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_4 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   MX2X6M U1 (.Y(OUT), 
	.S0(SEL), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_0 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire FE_PHN7_scan_rst;
   wire FE_PHN2_scan_rst;
   wire FE_PHN1_RST_N;
   wire FE_PHN0_RST_N;

   DLY4X1M FE_PHC7_scan_rst (.Y(FE_PHN7_scan_rst), 
	.A(FE_PHN2_scan_rst));
   DLY4X1M FE_PHC2_scan_rst (.Y(FE_PHN2_scan_rst), 
	.A(IN_1));
   DLY4X1M FE_PHC1_RST_N (.Y(FE_PHN1_RST_N), 
	.A(FE_PHN0_RST_N));
   DLY4X1M FE_PHC0_RST_N (.Y(FE_PHN0_RST_N), 
	.A(IN_0));
   MX2X2M U1 (.Y(OUT), 
	.S0(SEL), 
	.B(FE_PHN7_scan_rst), 
	.A(FE_PHN1_RST_N));
endmodule

module RST_SYNC_NUM_STAGES2_test_0 (
	CLK, 
	RST, 
	SYNC_RST, 
	test_si, 
	test_se, 
	UART_CLK_M__L10_N1);
   input CLK;
   input RST;
   output SYNC_RST;
   input test_si;
   input test_se;
   input UART_CLK_M__L10_N1;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire sync_reg_0_;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX1M sync_reg_reg_1_ (.SI(sync_reg_0_), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC_RST), 
	.D(sync_reg_0_), 
	.CK(UART_CLK_M__L10_N1));
   SDFFRQX1M sync_reg_reg_0_ (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_reg_0_), 
	.D(HTIE_LTIEHI_NET), 
	.CK(CLK));
endmodule

module RST_SYNC_NUM_STAGES2_test_1 (
	CLK, 
	RST, 
	SYNC_RST, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   output SYNC_RST;
   input test_si;
   input test_se;

   // Internal wires
   wire FE_PHN12_n8__Exclude_0_NET;
   wire HTIE_LTIEHI_NET;
   wire sync_reg_0_;

   DLY4X1M FE_PHC12_n8__Exclude_0_NET (.Y(FE_PHN12_n8__Exclude_0_NET), 
	.A(test_si));
   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M sync_reg_reg_1_ (.SI(sync_reg_0_), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC_RST), 
	.D(sync_reg_0_), 
	.CK(CLK));
   SDFFRQX2M sync_reg_reg_0_ (.SI(FE_PHN12_n8__Exclude_0_NET), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_reg_0_), 
	.D(HTIE_LTIEHI_NET), 
	.CK(CLK));
endmodule

module mux2X1_8 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire FE_PHN10_scan_rst;
   wire FE_PHN5_scan_rst;

   DLY4X1M FE_PHC10_scan_rst (.Y(FE_PHN10_scan_rst), 
	.A(FE_PHN5_scan_rst));
   DLY4X1M FE_PHC5_scan_rst (.Y(FE_PHN5_scan_rst), 
	.A(IN_1));
   MX2X3M U1 (.Y(OUT), 
	.S0(SEL), 
	.B(FE_PHN10_scan_rst), 
	.A(IN_0));
endmodule

module mux2X1_7 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire FE_PHN11_scan_rst;
   wire FE_PHN6_scan_rst;

   DLY4X1M FE_PHC11_scan_rst (.Y(FE_PHN11_scan_rst), 
	.A(FE_PHN6_scan_rst));
   DLY4X1M FE_PHC6_scan_rst (.Y(FE_PHN6_scan_rst), 
	.A(IN_1));
   MX2X6M U1 (.Y(OUT), 
	.S0(SEL), 
	.B(FE_PHN11_scan_rst), 
	.A(IN_0));
endmodule

module RST_SYNC_NUM_STAGES2_test_2 (
	CLK, 
	RST, 
	SYNC_RST, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   output SYNC_RST;
   input test_si;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire sync_reg_0_;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M sync_reg_reg_1_ (.SI(sync_reg_0_), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC_RST), 
	.D(sync_reg_0_), 
	.CK(CLK));
   SDFFRQX2M sync_reg_reg_0_ (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_reg_0_), 
	.D(HTIE_LTIEHI_NET), 
	.CK(CLK));
endmodule

module RST_SYNC_NUM_STAGES2_test_3 (
	CLK, 
	RST, 
	SYNC_RST, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   output SYNC_RST;
   input test_si;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire sync_reg_0_;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M sync_reg_reg_1_ (.SI(sync_reg_0_), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC_RST), 
	.D(sync_reg_0_), 
	.CK(CLK));
   SDFFRQX2M sync_reg_reg_0_ (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_reg_0_), 
	.D(HTIE_LTIEHI_NET), 
	.CK(CLK));
endmodule

module mux2X1_6 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire FE_PHN9_scan_rst;
   wire FE_PHN4_scan_rst;

   DLY4X1M FE_PHC9_scan_rst (.Y(FE_PHN9_scan_rst), 
	.A(FE_PHN4_scan_rst));
   DLY4X1M FE_PHC4_scan_rst (.Y(FE_PHN4_scan_rst), 
	.A(IN_1));
   MX2X4M U1 (.Y(OUT), 
	.S0(SEL), 
	.B(FE_PHN9_scan_rst), 
	.A(IN_0));
endmodule

module mux2X1_5 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire FE_PHN8_scan_rst;
   wire FE_PHN3_scan_rst;

   DLY4X1M FE_PHC8_scan_rst (.Y(FE_PHN8_scan_rst), 
	.A(FE_PHN3_scan_rst));
   DLY4X1M FE_PHC3_scan_rst (.Y(FE_PHN3_scan_rst), 
	.A(IN_1));
   CLKMX2X4M U1 (.Y(OUT), 
	.S0(SEL), 
	.B(FE_PHN8_scan_rst), 
	.A(IN_0));
endmodule

module DATA_SYNC_NUM_STAGES2_BUS_WIDTH8_test_1 (
	CLK, 
	RST, 
	unsync_bus, 
	bus_enable, 
	sync_bus, 
	enable_pulse, 
	test_si, 
	test_so, 
	test_se, 
	REF_CLK_M__L7_N9);
   input CLK;
   input RST;
   input [7:0] unsync_bus;
   input bus_enable;
   output [7:0] sync_bus;
   output enable_pulse;
   input test_si;
   output test_so;
   input test_se;
   input REF_CLK_M__L7_N9;

   // Internal wires
   wire sync_reg_0_;
   wire pulse_gen_ff;
   wire n1;
   wire n3;
   wire n5;
   wire n7;
   wire n9;
   wire n11;
   wire n13;
   wire n15;
   wire n17;
   wire n25;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;

   SDFFRQX2M pulse_gen_ff_reg (.SI(enable_pulse), 
	.SE(n35), 
	.RN(RST), 
	.Q(pulse_gen_ff), 
	.D(test_so), 
	.CK(REF_CLK_M__L7_N9));
   SDFFRQX2M sync_reg_reg_1_ (.SI(sync_reg_0_), 
	.SE(n34), 
	.RN(RST), 
	.Q(test_so), 
	.D(sync_reg_0_), 
	.CK(REF_CLK_M__L7_N9));
   SDFFRQX2M sync_bus_reg_6_ (.SI(sync_bus[5]), 
	.SE(n31), 
	.RN(RST), 
	.Q(sync_bus[6]), 
	.D(n15), 
	.CK(CLK));
   SDFFRQX2M sync_bus_reg_2_ (.SI(sync_bus[1]), 
	.SE(n30), 
	.RN(RST), 
	.Q(sync_bus[2]), 
	.D(n7), 
	.CK(CLK));
   SDFFRQX2M sync_bus_reg_3_ (.SI(sync_bus[2]), 
	.SE(n31), 
	.RN(RST), 
	.Q(sync_bus[3]), 
	.D(n9), 
	.CK(CLK));
   SDFFRQX2M sync_bus_reg_7_ (.SI(sync_bus[6]), 
	.SE(n30), 
	.RN(RST), 
	.Q(sync_bus[7]), 
	.D(n17), 
	.CK(CLK));
   SDFFRQX2M sync_reg_reg_0_ (.SI(sync_bus[7]), 
	.SE(n37), 
	.RN(RST), 
	.Q(sync_reg_0_), 
	.D(bus_enable), 
	.CK(REF_CLK_M__L7_N9));
   SDFFRQX2M sync_bus_reg_4_ (.SI(sync_bus[3]), 
	.SE(n36), 
	.RN(RST), 
	.Q(sync_bus[4]), 
	.D(n11), 
	.CK(REF_CLK_M__L7_N9));
   CLKINVX2M U3 (.Y(n25), 
	.A(n1));
   NAND2BX2M U7 (.Y(n1), 
	.B(test_so), 
	.AN(pulse_gen_ff));
   AO22X1M U8 (.Y(n3), 
	.B1(n1), 
	.B0(sync_bus[0]), 
	.A1(n25), 
	.A0(unsync_bus[0]));
   AO22X1M U9 (.Y(n5), 
	.B1(n1), 
	.B0(sync_bus[1]), 
	.A1(n25), 
	.A0(unsync_bus[1]));
   AO22X1M U10 (.Y(n13), 
	.B1(n1), 
	.B0(sync_bus[5]), 
	.A1(n25), 
	.A0(unsync_bus[5]));
   AO22X1M U11 (.Y(n11), 
	.B1(n1), 
	.B0(sync_bus[4]), 
	.A1(n25), 
	.A0(unsync_bus[4]));
   AO22X1M U12 (.Y(n15), 
	.B1(n1), 
	.B0(sync_bus[6]), 
	.A1(n25), 
	.A0(unsync_bus[6]));
   AO22X1M U25 (.Y(n17), 
	.B1(n1), 
	.B0(sync_bus[7]), 
	.A1(n25), 
	.A0(unsync_bus[7]));
   AO22X1M U26 (.Y(n7), 
	.B1(n1), 
	.B0(sync_bus[2]), 
	.A1(n25), 
	.A0(unsync_bus[2]));
   AO22X1M U27 (.Y(n9), 
	.B1(n1), 
	.B0(sync_bus[3]), 
	.A1(n25), 
	.A0(unsync_bus[3]));
   DLY1X1M U28 (.Y(n28), 
	.A(n32));
   DLY1X1M U29 (.Y(n29), 
	.A(n33));
   DLY1X1M U30 (.Y(n30), 
	.A(n33));
   DLY1X1M U31 (.Y(n31), 
	.A(n32));
   DLY1X1M U32 (.Y(n32), 
	.A(test_se));
   DLY1X1M U33 (.Y(n33), 
	.A(test_se));
   DLY1X1M U34 (.Y(n34), 
	.A(n29));
   DLY1X1M U36 (.Y(n36), 
	.A(n29));
   DLY1X1M U37 (.Y(n37), 
	.A(n28));
   SDFFRQX4M sync_bus_reg_0_ (.SI(pulse_gen_ff), 
	.SE(n36), 
	.RN(RST), 
	.Q(sync_bus[0]), 
	.D(n3), 
	.CK(REF_CLK_M__L7_N9));
   SDFFRQX4M sync_bus_reg_1_ (.SI(sync_bus[0]), 
	.SE(n37), 
	.RN(RST), 
	.Q(sync_bus[1]), 
	.D(n5), 
	.CK(REF_CLK_M__L7_N9));
   SDFFRQX4M enable_pulse_reg (.SI(test_si), 
	.SE(n35), 
	.RN(RST), 
	.Q(enable_pulse), 
	.D(n25), 
	.CK(REF_CLK_M__L7_N9));
   SDFFRQX4M sync_bus_reg_5_ (.SI(sync_bus[4]), 
	.SE(n34), 
	.RN(RST), 
	.Q(sync_bus[5]), 
	.D(n13), 
	.CK(REF_CLK_M__L7_N9));
   BUFX2M U13 (.Y(n35), 
	.A(n28));
endmodule

module FIFO_WR_ADDRSIZE4_test_1 (
	wclk, 
	wrst_n, 
	winc, 
	wq2_rptr, 
	wfull, 
	waddr, 
	wptr, 
	test_si, 
	test_se, 
	REF_CLK_M__L7_N9);
   input wclk;
   input wrst_n;
   input winc;
   input [4:0] wq2_rptr;
   output wfull;
   output [3:0] waddr;
   output [4:0] wptr;
   input test_si;
   input test_se;
   input REF_CLK_M__L7_N9;

   // Internal wires
   wire wbin_4_;
   wire N1;
   wire wfull_val;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire [4:0] wbinnext;
   wire [3:0] wgraynext;
   wire [4:1] add_30_carry;

   SDFFRQX2M wbin_reg_4_ (.SI(waddr[3]), 
	.SE(n32), 
	.RN(wrst_n), 
	.Q(wbin_4_), 
	.D(wbinnext[4]), 
	.CK(wclk));
   SDFFRQX2M wptr_reg_0_ (.SI(wfull), 
	.SE(n26), 
	.RN(wrst_n), 
	.Q(wptr[0]), 
	.D(wgraynext[0]), 
	.CK(wclk));
   SDFFRQX2M wptr_reg_1_ (.SI(wptr[0]), 
	.SE(n27), 
	.RN(wrst_n), 
	.Q(wptr[1]), 
	.D(wgraynext[1]), 
	.CK(wclk));
   SDFFRQX2M wptr_reg_2_ (.SI(wptr[1]), 
	.SE(n33), 
	.RN(wrst_n), 
	.Q(wptr[2]), 
	.D(wgraynext[2]), 
	.CK(wclk));
   SDFFRQX2M wptr_reg_4_ (.SI(wptr[3]), 
	.SE(n27), 
	.RN(wrst_n), 
	.Q(wptr[4]), 
	.D(wbinnext[4]), 
	.CK(wclk));
   SDFFRQX2M wptr_reg_3_ (.SI(wptr[2]), 
	.SE(n26), 
	.RN(wrst_n), 
	.Q(wptr[3]), 
	.D(wgraynext[3]), 
	.CK(wclk));
   SDFFRQX2M wbin_reg_3_ (.SI(waddr[2]), 
	.SE(n30), 
	.RN(wrst_n), 
	.Q(waddr[3]), 
	.D(wbinnext[3]), 
	.CK(wclk));
   CLKXOR2X2M U16 (.Y(wgraynext[3]), 
	.B(wbinnext[4]), 
	.A(wbinnext[3]));
   CLKXOR2X2M U17 (.Y(wgraynext[2]), 
	.B(wbinnext[3]), 
	.A(wbinnext[2]));
   CLKXOR2X2M U18 (.Y(wgraynext[1]), 
	.B(wbinnext[2]), 
	.A(wbinnext[1]));
   CLKXOR2X2M U19 (.Y(wgraynext[0]), 
	.B(wbinnext[0]), 
	.A(wbinnext[1]));
   XNOR2X2M U20 (.Y(n15), 
	.B(wq2_rptr[3]), 
	.A(wgraynext[3]));
   NOR4X1M U21 (.Y(wfull_val), 
	.D(n15), 
	.C(n14), 
	.B(n13), 
	.A(n12));
   NAND2X2M U22 (.Y(n12), 
	.B(n17), 
	.A(n16));
   CLKXOR2X2M U23 (.Y(n13), 
	.B(wgraynext[2]), 
	.A(wq2_rptr[2]));
   XNOR2X2M U24 (.Y(n14), 
	.B(wq2_rptr[4]), 
	.A(wbinnext[4]));
   NOR2BX2M U25 (.Y(N1), 
	.B(wfull), 
	.AN(winc));
   XNOR2X2M U26 (.Y(n17), 
	.B(wq2_rptr[1]), 
	.A(wgraynext[1]));
   XNOR2X2M U27 (.Y(n16), 
	.B(wq2_rptr[0]), 
	.A(wgraynext[0]));
   CLKXOR2X2M U28 (.Y(wbinnext[4]), 
	.B(add_30_carry[4]), 
	.A(wbin_4_));
   AND2X1M U29 (.Y(add_30_carry[4]), 
	.B(add_30_carry[3]), 
	.A(waddr[3]));
   CLKXOR2X2M U30 (.Y(wbinnext[3]), 
	.B(add_30_carry[3]), 
	.A(waddr[3]));
   AND2X1M U31 (.Y(add_30_carry[3]), 
	.B(add_30_carry[2]), 
	.A(waddr[2]));
   CLKXOR2X2M U32 (.Y(wbinnext[2]), 
	.B(add_30_carry[2]), 
	.A(waddr[2]));
   AND2X1M U33 (.Y(add_30_carry[2]), 
	.B(add_30_carry[1]), 
	.A(waddr[1]));
   CLKXOR2X2M U34 (.Y(wbinnext[1]), 
	.B(add_30_carry[1]), 
	.A(waddr[1]));
   AND2X1M U35 (.Y(add_30_carry[1]), 
	.B(waddr[0]), 
	.A(N1));
   CLKXOR2X2M U36 (.Y(wbinnext[0]), 
	.B(waddr[0]), 
	.A(N1));
   DLY1X1M U37 (.Y(n22), 
	.A(n24));
   DLY1X1M U38 (.Y(n23), 
	.A(n22));
   DLY1X1M U39 (.Y(n24), 
	.A(test_se));
   INVXLM U40 (.Y(n28), 
	.A(n22));
   INVXLM U41 (.Y(n25), 
	.A(n28));
   DLY1X1M U42 (.Y(n26), 
	.A(n31));
   DLY1X1M U43 (.Y(n27), 
	.A(n23));
   DLY1X1M U44 (.Y(n29), 
	.A(n24));
   SDFFRQX4M wfull_reg (.SI(wbin_4_), 
	.SE(n30), 
	.RN(wrst_n), 
	.Q(wfull), 
	.D(wfull_val), 
	.CK(REF_CLK_M__L7_N9));
   SDFFRQX4M wbin_reg_2_ (.SI(waddr[1]), 
	.SE(n33), 
	.RN(wrst_n), 
	.Q(waddr[2]), 
	.D(wbinnext[2]), 
	.CK(wclk));
   SDFFRQX4M wbin_reg_1_ (.SI(waddr[0]), 
	.SE(n31), 
	.RN(wrst_n), 
	.Q(waddr[1]), 
	.D(wbinnext[1]), 
	.CK(wclk));
   SDFFRQX4M wbin_reg_0_ (.SI(test_si), 
	.SE(n32), 
	.RN(wrst_n), 
	.Q(waddr[0]), 
	.D(wbinnext[0]), 
	.CK(wclk));
   BUFX2M U3 (.Y(n32), 
	.A(n23));
   BUFX2M U4 (.Y(n31), 
	.A(n29));
   BUFX2M U5 (.Y(n33), 
	.A(n29));
   BUFX2M U6 (.Y(n30), 
	.A(n25));
endmodule

module FIFO_RD_ADDRSIZE4_test_1 (
	rclk, 
	rrst_n, 
	rinc, 
	rq2_wptr, 
	rempty, 
	raddr, 
	rptr, 
	test_si, 
	test_se);
   input rclk;
   input rrst_n;
   input rinc;
   input [4:0] rq2_wptr;
   output rempty;
   output [3:0] raddr;
   output [4:0] rptr;
   input test_si;
   input test_se;

   // Internal wires
   wire rbin_4_;
   wire N1;
   wire rempty_val;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire [4:0] rbinnext;
   wire [3:0] rgraynext;
   wire [4:1] add_31_carry;

   SDFFRQX2M rbin_reg_4_ (.SI(raddr[3]), 
	.SE(n26), 
	.RN(rrst_n), 
	.Q(rbin_4_), 
	.D(rbinnext[4]), 
	.CK(rclk));
   SDFFSQX2M rempty_reg (.SN(rrst_n), 
	.SI(rbin_4_), 
	.SE(n33), 
	.Q(rempty), 
	.D(rempty_val), 
	.CK(rclk));
   SDFFRQX2M rptr_reg_0_ (.SI(rempty), 
	.SE(n27), 
	.RN(rrst_n), 
	.Q(rptr[0]), 
	.D(rgraynext[0]), 
	.CK(rclk));
   SDFFRQX2M rptr_reg_1_ (.SI(rptr[0]), 
	.SE(n28), 
	.RN(rrst_n), 
	.Q(rptr[1]), 
	.D(rgraynext[1]), 
	.CK(rclk));
   SDFFRQX2M rptr_reg_2_ (.SI(rptr[1]), 
	.SE(n34), 
	.RN(rrst_n), 
	.Q(rptr[2]), 
	.D(rgraynext[2]), 
	.CK(rclk));
   SDFFRQX2M rptr_reg_4_ (.SI(rptr[3]), 
	.SE(n26), 
	.RN(rrst_n), 
	.Q(rptr[4]), 
	.D(rbinnext[4]), 
	.CK(rclk));
   SDFFRQX2M rptr_reg_3_ (.SI(rptr[2]), 
	.SE(n27), 
	.RN(rrst_n), 
	.Q(rptr[3]), 
	.D(rgraynext[3]), 
	.CK(rclk));
   NOR2BX2M U14 (.Y(n15), 
	.B(rq2_wptr[0]), 
	.AN(rgraynext[0]));
   NOR2BX2M U15 (.Y(n14), 
	.B(rgraynext[0]), 
	.AN(rq2_wptr[0]));
   CLKXOR2X2M U18 (.Y(rgraynext[3]), 
	.B(rbinnext[3]), 
	.A(rbinnext[4]));
   CLKXOR2X2M U19 (.Y(rgraynext[1]), 
	.B(rbinnext[1]), 
	.A(rbinnext[2]));
   CLKXOR2X2M U20 (.Y(rgraynext[0]), 
	.B(rbinnext[0]), 
	.A(rbinnext[1]));
   CLKXOR2X2M U21 (.Y(rgraynext[2]), 
	.B(rbinnext[2]), 
	.A(rbinnext[3]));
   NOR2BX2M U22 (.Y(N1), 
	.B(rempty), 
	.AN(rinc));
   CLKXOR2X2M U23 (.Y(rbinnext[4]), 
	.B(add_31_carry[4]), 
	.A(rbin_4_));
   AND2X1M U24 (.Y(add_31_carry[4]), 
	.B(add_31_carry[3]), 
	.A(raddr[3]));
   CLKXOR2X2M U25 (.Y(rbinnext[3]), 
	.B(add_31_carry[3]), 
	.A(raddr[3]));
   AND2X1M U26 (.Y(add_31_carry[3]), 
	.B(add_31_carry[2]), 
	.A(raddr[2]));
   CLKXOR2X2M U27 (.Y(rbinnext[2]), 
	.B(add_31_carry[2]), 
	.A(raddr[2]));
   AND2X1M U28 (.Y(add_31_carry[2]), 
	.B(add_31_carry[1]), 
	.A(raddr[1]));
   CLKXOR2X2M U29 (.Y(rbinnext[1]), 
	.B(add_31_carry[1]), 
	.A(raddr[1]));
   AND2X1M U30 (.Y(add_31_carry[1]), 
	.B(raddr[0]), 
	.A(N1));
   CLKXOR2X2M U31 (.Y(rbinnext[0]), 
	.B(raddr[0]), 
	.A(N1));
   CLKXOR2X2M U32 (.Y(n21), 
	.B(rgraynext[2]), 
	.A(rq2_wptr[2]));
   OAI2B2X1M U33 (.Y(n17), 
	.B1(n14), 
	.B0(rq2_wptr[1]), 
	.A1N(rgraynext[1]), 
	.A0(n14));
   OAI2B2X1M U34 (.Y(n16), 
	.B1(n15), 
	.B0(rgraynext[1]), 
	.A1N(rq2_wptr[1]), 
	.A0(n15));
   CLKNAND2X2M U35 (.Y(n20), 
	.B(n16), 
	.A(n17));
   CLKXOR2X2M U36 (.Y(n19), 
	.B(rgraynext[3]), 
	.A(rq2_wptr[3]));
   CLKXOR2X2M U37 (.Y(n18), 
	.B(rbinnext[4]), 
	.A(rq2_wptr[4]));
   NOR4X1M U38 (.Y(rempty_val), 
	.D(n18), 
	.C(n19), 
	.B(n20), 
	.A(n21));
   DLY1X1M U39 (.Y(n24), 
	.A(n30));
   DLY1X1M U40 (.Y(n25), 
	.A(test_se));
   DLY1X1M U41 (.Y(n26), 
	.A(n31));
   DLY1X1M U42 (.Y(n27), 
	.A(n32));
   DLY1X1M U43 (.Y(n28), 
	.A(n33));
   INVXLM U44 (.Y(n29), 
	.A(test_se));
   INVXLM U45 (.Y(n30), 
	.A(n29));
   DLY1X1M U46 (.Y(n31), 
	.A(n24));
   DLY1X1M U47 (.Y(n32), 
	.A(n25));
   DLY1X1M U48 (.Y(n33), 
	.A(n24));
   DLY1X1M U49 (.Y(n34), 
	.A(n25));
   SDFFRQX4M rbin_reg_2_ (.SI(raddr[1]), 
	.SE(n32), 
	.RN(rrst_n), 
	.Q(raddr[2]), 
	.D(rbinnext[2]), 
	.CK(rclk));
   SDFFRQX4M rbin_reg_3_ (.SI(raddr[2]), 
	.SE(n31), 
	.RN(rrst_n), 
	.Q(raddr[3]), 
	.D(rbinnext[3]), 
	.CK(rclk));
   SDFFRQX4M rbin_reg_1_ (.SI(raddr[0]), 
	.SE(n28), 
	.RN(rrst_n), 
	.Q(raddr[1]), 
	.D(rbinnext[1]), 
	.CK(rclk));
   SDFFRQX4M rbin_reg_0_ (.SI(test_si), 
	.SE(n34), 
	.RN(rrst_n), 
	.Q(raddr[0]), 
	.D(rbinnext[0]), 
	.CK(rclk));
endmodule

module FIFO_MEM_CNTRL_DATA_WIDTH8_ADDRSIZE4_test_1 (
	wclk, 
	winc, 
	wfull, 
	waddr, 
	raddr, 
	wdata, 
	rdata, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	REF_CLK_M__L7_N10, 
	REF_CLK_M__L7_N11, 
	REF_CLK_M__L7_N12, 
	REF_CLK_M__L7_N19, 
	REF_CLK_M__L7_N2, 
	REF_CLK_M__L7_N8);
   input wclk;
   input winc;
   input wfull;
   input [3:0] waddr;
   input [3:0] raddr;
   input [7:0] wdata;
   output [7:0] rdata;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input REF_CLK_M__L7_N10;
   input REF_CLK_M__L7_N11;
   input REF_CLK_M__L7_N12;
   input REF_CLK_M__L7_N19;
   input REF_CLK_M__L7_N2;
   input REF_CLK_M__L7_N8;

   // Internal wires
   wire FE_PHN14_n23__Exclude_0_NET;
   wire FE_PHN13_n23__Exclude_0_NET;
   wire FE_OFN8_n380;
   wire FE_OFN7_n379;
   wire FE_OFN6_n378;
   wire mem_0__7_;
   wire mem_0__6_;
   wire mem_0__5_;
   wire mem_0__4_;
   wire mem_0__3_;
   wire mem_0__2_;
   wire mem_0__1_;
   wire mem_0__0_;
   wire mem_1__7_;
   wire mem_1__6_;
   wire mem_1__5_;
   wire mem_1__4_;
   wire mem_1__3_;
   wire mem_1__2_;
   wire mem_1__1_;
   wire mem_1__0_;
   wire mem_2__7_;
   wire mem_2__6_;
   wire mem_2__5_;
   wire mem_2__4_;
   wire mem_2__3_;
   wire mem_2__2_;
   wire mem_2__1_;
   wire mem_2__0_;
   wire mem_3__7_;
   wire mem_3__6_;
   wire mem_3__5_;
   wire mem_3__4_;
   wire mem_3__3_;
   wire mem_3__2_;
   wire mem_3__1_;
   wire mem_3__0_;
   wire mem_4__7_;
   wire mem_4__6_;
   wire mem_4__5_;
   wire mem_4__4_;
   wire mem_4__3_;
   wire mem_4__2_;
   wire mem_4__1_;
   wire mem_4__0_;
   wire mem_5__7_;
   wire mem_5__6_;
   wire mem_5__5_;
   wire mem_5__4_;
   wire mem_5__3_;
   wire mem_5__2_;
   wire mem_5__1_;
   wire mem_5__0_;
   wire mem_6__7_;
   wire mem_6__6_;
   wire mem_6__5_;
   wire mem_6__4_;
   wire mem_6__3_;
   wire mem_6__2_;
   wire mem_6__1_;
   wire mem_6__0_;
   wire mem_7__7_;
   wire mem_7__6_;
   wire mem_7__5_;
   wire mem_7__4_;
   wire mem_7__3_;
   wire mem_7__2_;
   wire mem_7__1_;
   wire mem_7__0_;
   wire mem_8__7_;
   wire mem_8__6_;
   wire mem_8__5_;
   wire mem_8__4_;
   wire mem_8__3_;
   wire mem_8__2_;
   wire mem_8__1_;
   wire mem_8__0_;
   wire mem_9__7_;
   wire mem_9__6_;
   wire mem_9__5_;
   wire mem_9__4_;
   wire mem_9__3_;
   wire mem_9__2_;
   wire mem_9__1_;
   wire mem_9__0_;
   wire mem_10__7_;
   wire mem_10__6_;
   wire mem_10__5_;
   wire mem_10__4_;
   wire mem_10__3_;
   wire mem_10__2_;
   wire mem_10__1_;
   wire mem_10__0_;
   wire mem_11__7_;
   wire mem_11__6_;
   wire mem_11__5_;
   wire mem_11__4_;
   wire mem_11__3_;
   wire mem_11__2_;
   wire mem_11__1_;
   wire mem_11__0_;
   wire mem_12__7_;
   wire mem_12__6_;
   wire mem_12__5_;
   wire mem_12__4_;
   wire mem_12__3_;
   wire mem_12__2_;
   wire mem_12__1_;
   wire mem_12__0_;
   wire mem_13__7_;
   wire mem_13__6_;
   wire mem_13__5_;
   wire mem_13__4_;
   wire mem_13__3_;
   wire mem_13__2_;
   wire mem_13__1_;
   wire mem_13__0_;
   wire mem_14__7_;
   wire mem_14__6_;
   wire mem_14__5_;
   wire mem_14__4_;
   wire mem_14__3_;
   wire mem_14__2_;
   wire mem_14__1_;
   wire mem_14__0_;
   wire mem_15__6_;
   wire mem_15__5_;
   wire mem_15__4_;
   wire mem_15__3_;
   wire mem_15__2_;
   wire mem_15__1_;
   wire mem_15__0_;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;
   wire n189;
   wire n190;
   wire n191;
   wire n192;
   wire n193;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n203;
   wire n204;
   wire n205;
   wire n206;
   wire n207;
   wire n208;
   wire n209;
   wire n210;
   wire n211;
   wire n212;
   wire n213;
   wire n214;
   wire n215;
   wire n216;
   wire n217;
   wire n218;
   wire n219;
   wire n220;
   wire n221;
   wire n222;
   wire n223;
   wire n224;
   wire n225;
   wire n226;
   wire n227;
   wire n228;
   wire n229;
   wire n230;
   wire n231;
   wire n232;
   wire n233;
   wire n234;
   wire n235;
   wire n236;
   wire n237;
   wire n238;
   wire n239;
   wire n240;
   wire n241;
   wire n242;
   wire n243;
   wire n244;
   wire n245;
   wire n246;
   wire n247;
   wire n248;
   wire n249;
   wire n250;
   wire n251;
   wire n252;
   wire n253;
   wire n254;
   wire n255;
   wire n256;
   wire n257;
   wire n258;
   wire n259;
   wire n260;
   wire n261;
   wire n262;
   wire n263;
   wire n264;
   wire n265;
   wire n266;
   wire n267;
   wire n268;
   wire n269;
   wire n270;
   wire n271;
   wire n272;
   wire n273;
   wire n274;
   wire n275;
   wire n276;
   wire n277;
   wire n278;
   wire n279;
   wire n280;
   wire n281;
   wire n282;
   wire n283;
   wire n284;
   wire n285;
   wire n286;
   wire n287;
   wire n288;
   wire n289;
   wire n290;
   wire n291;
   wire n292;
   wire n293;
   wire n294;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n295;
   wire n296;
   wire n297;
   wire n298;
   wire n299;
   wire n300;
   wire n301;
   wire n302;
   wire n303;
   wire n304;
   wire n305;
   wire n306;
   wire n307;
   wire n308;
   wire n309;
   wire n310;
   wire n311;
   wire n312;
   wire n313;
   wire n314;
   wire n315;
   wire n316;
   wire n317;
   wire n318;
   wire n319;
   wire n320;
   wire n321;
   wire n322;
   wire n323;
   wire n324;
   wire n325;
   wire n326;
   wire n327;
   wire n328;
   wire n329;
   wire n330;
   wire n331;
   wire n332;
   wire n333;
   wire n334;
   wire n335;
   wire n336;
   wire n337;
   wire n338;
   wire n339;
   wire n340;
   wire n341;
   wire n342;
   wire n343;
   wire n344;
   wire n345;
   wire n346;
   wire n347;
   wire n348;
   wire n349;
   wire n350;
   wire n351;
   wire n352;
   wire n353;
   wire n354;
   wire n355;
   wire n356;
   wire n357;
   wire n358;
   wire n359;
   wire n360;
   wire n361;
   wire n362;
   wire n363;
   wire n364;
   wire n365;
   wire n366;
   wire n367;
   wire n368;
   wire n369;
   wire n370;
   wire n371;
   wire n372;
   wire n373;
   wire n374;
   wire n375;
   wire n376;
   wire n377;
   wire n378;
   wire n379;
   wire n380;
   wire n381;
   wire n382;
   wire n383;
   wire n384;
   wire n385;
   wire n386;
   wire n387;
   wire n388;
   wire n389;
   wire n390;
   wire n391;
   wire n440;
   wire n441;
   wire n442;
   wire n443;
   wire n444;
   wire n445;
   wire n446;
   wire n447;
   wire n448;
   wire n449;
   wire n450;
   wire n454;
   wire n455;
   wire n456;
   wire n457;
   wire n458;
   wire n459;
   wire n460;
   wire n461;
   wire n462;
   wire n463;
   wire n464;
   wire n465;
   wire n466;
   wire n467;
   wire n468;
   wire n469;
   wire n470;
   wire n473;
   wire n474;
   wire n475;
   wire n476;
   wire n477;
   wire n478;
   wire n479;
   wire n480;
   wire n481;
   wire n482;
   wire n483;
   wire n484;
   wire n485;
   wire n486;
   wire n487;
   wire n488;
   wire n489;
   wire n490;
   wire n491;
   wire n492;
   wire n493;
   wire n494;
   wire n495;
   wire n496;
   wire n497;
   wire n498;
   wire n499;
   wire n500;
   wire n501;
   wire n502;
   wire n503;
   wire n504;
   wire n505;
   wire n506;
   wire n507;
   wire n508;
   wire n509;
   wire n510;
   wire n511;
   wire n512;
   wire n513;
   wire n514;
   wire n515;
   wire n516;
   wire n517;
   wire n518;
   wire n519;
   wire n520;
   wire n521;
   wire n522;
   wire n523;
   wire n524;
   wire n525;
   wire n526;
   wire n527;
   wire n528;
   wire n529;
   wire n530;
   wire n531;
   wire n532;
   wire n533;
   wire n534;
   wire n535;
   wire n536;
   wire n537;
   wire n538;
   wire n539;
   wire n540;
   wire n541;
   wire n542;
   wire n543;
   wire n544;
   wire n545;
   wire n546;
   wire n547;
   wire n548;
   wire n549;
   wire n550;
   wire n551;
   wire n552;
   wire n553;
   wire n554;
   wire n555;
   wire n556;
   wire n557;
   wire n558;
   wire n559;
   wire n560;
   wire n561;
   wire n562;
   wire n563;
   wire n564;
   wire n565;
   wire n566;
   wire n567;
   wire n568;
   wire n569;
   wire n570;
   wire n571;
   wire n572;
   wire n573;
   wire n574;
   wire n575;
   wire n576;
   wire n577;
   wire n578;
   wire n579;
   wire n580;
   wire n581;
   wire n582;
   wire n583;
   wire n584;
   wire n585;
   wire n586;
   wire n587;
   wire n588;
   wire n589;
   wire n590;
   wire n591;
   wire n592;
   wire n593;
   wire n594;
   wire n595;
   wire n596;
   wire n597;
   wire n1;

   DLY4X1M FE_PHC14_n23__Exclude_0_NET (.Y(FE_PHN14_n23__Exclude_0_NET), 
	.A(FE_PHN13_n23__Exclude_0_NET));
   DLY4X1M FE_PHC13_n23__Exclude_0_NET (.Y(FE_PHN13_n23__Exclude_0_NET), 
	.A(test_si1));
   BUFX4M FE_OFC8_n380 (.Y(FE_OFN8_n380), 
	.A(n380));
   BUFX2M FE_OFC7_n379 (.Y(FE_OFN7_n379), 
	.A(n379));
   BUFX2M FE_OFC6_n378 (.Y(FE_OFN6_n378), 
	.A(n378));
   SDFFQX2M mem_reg_1__7_ (.SI(mem_1__6_), 
	.SE(n492), 
	.Q(mem_1__7_), 
	.D(n286), 
	.CK(REF_CLK_M__L7_N10));
   SDFFQX2M mem_reg_1__6_ (.SI(mem_1__5_), 
	.SE(n470), 
	.Q(mem_1__6_), 
	.D(n285), 
	.CK(REF_CLK_M__L7_N10));
   SDFFQX2M mem_reg_1__5_ (.SI(mem_1__4_), 
	.SE(n556), 
	.Q(mem_1__5_), 
	.D(n284), 
	.CK(REF_CLK_M__L7_N10));
   SDFFQX2M mem_reg_1__4_ (.SI(mem_1__3_), 
	.SE(n493), 
	.Q(mem_1__4_), 
	.D(n283), 
	.CK(REF_CLK_M__L7_N10));
   SDFFQX2M mem_reg_1__3_ (.SI(mem_1__2_), 
	.SE(n493), 
	.Q(mem_1__3_), 
	.D(n282), 
	.CK(REF_CLK_M__L7_N19));
   SDFFQX2M mem_reg_1__2_ (.SI(mem_1__1_), 
	.SE(n597), 
	.Q(mem_1__2_), 
	.D(n281), 
	.CK(REF_CLK_M__L7_N10));
   SDFFQX2M mem_reg_1__1_ (.SI(mem_1__0_), 
	.SE(n534), 
	.Q(mem_1__1_), 
	.D(n280), 
	.CK(REF_CLK_M__L7_N19));
   SDFFQX2M mem_reg_1__0_ (.SI(mem_0__7_), 
	.SE(n534), 
	.Q(mem_1__0_), 
	.D(n279), 
	.CK(REF_CLK_M__L7_N10));
   SDFFQX2M mem_reg_3__7_ (.SI(mem_3__6_), 
	.SE(n596), 
	.Q(mem_3__7_), 
	.D(n270), 
	.CK(REF_CLK_M__L7_N11));
   SDFFQX2M mem_reg_3__6_ (.SI(mem_3__5_), 
	.SE(n533), 
	.Q(mem_3__6_), 
	.D(n269), 
	.CK(REF_CLK_M__L7_N19));
   SDFFQX2M mem_reg_3__5_ (.SI(mem_3__4_), 
	.SE(n533), 
	.Q(mem_3__5_), 
	.D(n268), 
	.CK(REF_CLK_M__L7_N19));
   SDFFQX2M mem_reg_3__4_ (.SI(mem_3__3_), 
	.SE(n595), 
	.Q(mem_3__4_), 
	.D(n267), 
	.CK(REF_CLK_M__L7_N19));
   SDFFQX2M mem_reg_3__3_ (.SI(mem_3__2_), 
	.SE(n532), 
	.Q(mem_3__3_), 
	.D(n266), 
	.CK(REF_CLK_M__L7_N19));
   SDFFQX2M mem_reg_3__2_ (.SI(mem_3__1_), 
	.SE(n532), 
	.Q(mem_3__2_), 
	.D(n265), 
	.CK(REF_CLK_M__L7_N19));
   SDFFQX2M mem_reg_3__1_ (.SI(mem_3__0_), 
	.SE(n594), 
	.Q(mem_3__1_), 
	.D(n264), 
	.CK(REF_CLK_M__L7_N19));
   SDFFQX2M mem_reg_3__0_ (.SI(mem_2__7_), 
	.SE(n531), 
	.Q(mem_3__0_), 
	.D(n263), 
	.CK(REF_CLK_M__L7_N11));
   SDFFQX2M mem_reg_5__7_ (.SI(mem_5__6_), 
	.SE(n531), 
	.Q(mem_5__7_), 
	.D(n254), 
	.CK(REF_CLK_M__L7_N11));
   SDFFQX2M mem_reg_5__6_ (.SI(mem_5__5_), 
	.SE(n593), 
	.Q(mem_5__6_), 
	.D(n253), 
	.CK(REF_CLK_M__L7_N12));
   SDFFQX2M mem_reg_5__5_ (.SI(mem_5__4_), 
	.SE(n530), 
	.Q(mem_5__5_), 
	.D(n252), 
	.CK(REF_CLK_M__L7_N12));
   SDFFQX2M mem_reg_5__4_ (.SI(mem_5__3_), 
	.SE(n530), 
	.Q(mem_5__4_), 
	.D(n251), 
	.CK(REF_CLK_M__L7_N12));
   SDFFQX2M mem_reg_5__3_ (.SI(mem_5__2_), 
	.SE(n592), 
	.Q(mem_5__3_), 
	.D(n250), 
	.CK(REF_CLK_M__L7_N12));
   SDFFQX2M mem_reg_5__2_ (.SI(mem_5__1_), 
	.SE(n529), 
	.Q(mem_5__2_), 
	.D(n249), 
	.CK(REF_CLK_M__L7_N12));
   SDFFQX2M mem_reg_5__1_ (.SI(mem_5__0_), 
	.SE(n529), 
	.Q(mem_5__1_), 
	.D(n248), 
	.CK(REF_CLK_M__L7_N12));
   SDFFQX2M mem_reg_5__0_ (.SI(mem_4__7_), 
	.SE(n591), 
	.Q(mem_5__0_), 
	.D(n247), 
	.CK(REF_CLK_M__L7_N12));
   SDFFQX2M mem_reg_7__7_ (.SI(mem_7__6_), 
	.SE(n528), 
	.Q(mem_7__7_), 
	.D(n238), 
	.CK(REF_CLK_M__L7_N11));
   SDFFQX2M mem_reg_7__6_ (.SI(mem_7__5_), 
	.SE(n528), 
	.Q(mem_7__6_), 
	.D(n237), 
	.CK(REF_CLK_M__L7_N11));
   SDFFQX2M mem_reg_7__5_ (.SI(mem_7__4_), 
	.SE(n590), 
	.Q(mem_7__5_), 
	.D(n236), 
	.CK(REF_CLK_M__L7_N11));
   SDFFQX2M mem_reg_7__4_ (.SI(mem_7__3_), 
	.SE(n527), 
	.Q(mem_7__4_), 
	.D(n235), 
	.CK(REF_CLK_M__L7_N11));
   SDFFQX2M mem_reg_7__3_ (.SI(mem_7__2_), 
	.SE(n527), 
	.Q(mem_7__3_), 
	.D(n234), 
	.CK(REF_CLK_M__L7_N11));
   SDFFQX2M mem_reg_7__2_ (.SI(mem_7__1_), 
	.SE(n589), 
	.Q(mem_7__2_), 
	.D(n233), 
	.CK(REF_CLK_M__L7_N11));
   SDFFQX2M mem_reg_7__1_ (.SI(mem_7__0_), 
	.SE(n526), 
	.Q(mem_7__1_), 
	.D(n232), 
	.CK(REF_CLK_M__L7_N11));
   SDFFQX2M mem_reg_7__0_ (.SI(mem_6__7_), 
	.SE(n526), 
	.Q(mem_7__0_), 
	.D(n231), 
	.CK(REF_CLK_M__L7_N11));
   SDFFQX2M mem_reg_9__7_ (.SI(mem_9__6_), 
	.SE(n588), 
	.Q(mem_9__7_), 
	.D(n222), 
	.CK(REF_CLK_M__L7_N12));
   SDFFQX2M mem_reg_9__6_ (.SI(mem_9__5_), 
	.SE(n525), 
	.Q(mem_9__6_), 
	.D(n221), 
	.CK(REF_CLK_M__L7_N12));
   SDFFQX2M mem_reg_9__5_ (.SI(mem_9__4_), 
	.SE(n525), 
	.Q(mem_9__5_), 
	.D(n220), 
	.CK(REF_CLK_M__L7_N12));
   SDFFQX2M mem_reg_9__4_ (.SI(mem_9__3_), 
	.SE(n587), 
	.Q(mem_9__4_), 
	.D(n219), 
	.CK(REF_CLK_M__L7_N12));
   SDFFQX2M mem_reg_9__3_ (.SI(mem_9__2_), 
	.SE(n524), 
	.Q(mem_9__3_), 
	.D(n218), 
	.CK(REF_CLK_M__L7_N12));
   SDFFQX2M mem_reg_9__2_ (.SI(mem_9__1_), 
	.SE(n524), 
	.Q(mem_9__2_), 
	.D(n217), 
	.CK(REF_CLK_M__L7_N12));
   SDFFQX2M mem_reg_9__1_ (.SI(mem_9__0_), 
	.SE(n586), 
	.Q(mem_9__1_), 
	.D(n216), 
	.CK(REF_CLK_M__L7_N12));
   SDFFQX2M mem_reg_9__0_ (.SI(mem_8__7_), 
	.SE(n523), 
	.Q(mem_9__0_), 
	.D(n215), 
	.CK(REF_CLK_M__L7_N2));
   SDFFQX2M mem_reg_11__7_ (.SI(mem_11__6_), 
	.SE(n523), 
	.Q(mem_11__7_), 
	.D(n206), 
	.CK(REF_CLK_M__L7_N2));
   SDFFQX2M mem_reg_11__6_ (.SI(mem_11__5_), 
	.SE(n585), 
	.Q(mem_11__6_), 
	.D(n205), 
	.CK(REF_CLK_M__L7_N2));
   SDFFQX2M mem_reg_11__5_ (.SI(mem_11__4_), 
	.SE(n522), 
	.Q(mem_11__5_), 
	.D(n204), 
	.CK(REF_CLK_M__L7_N2));
   SDFFQX2M mem_reg_11__4_ (.SI(mem_11__3_), 
	.SE(n522), 
	.Q(mem_11__4_), 
	.D(n203), 
	.CK(REF_CLK_M__L7_N2));
   SDFFQX2M mem_reg_11__3_ (.SI(mem_11__2_), 
	.SE(n584), 
	.Q(mem_11__3_), 
	.D(n202), 
	.CK(REF_CLK_M__L7_N2));
   SDFFQX2M mem_reg_11__2_ (.SI(mem_11__1_), 
	.SE(n521), 
	.Q(mem_11__2_), 
	.D(n201), 
	.CK(REF_CLK_M__L7_N2));
   SDFFQX2M mem_reg_11__1_ (.SI(mem_11__0_), 
	.SE(n521), 
	.Q(mem_11__1_), 
	.D(n200), 
	.CK(REF_CLK_M__L7_N2));
   SDFFQX2M mem_reg_11__0_ (.SI(mem_10__7_), 
	.SE(n583), 
	.Q(mem_11__0_), 
	.D(n199), 
	.CK(REF_CLK_M__L7_N2));
   SDFFQX2M mem_reg_13__7_ (.SI(mem_13__6_), 
	.SE(n520), 
	.Q(mem_13__7_), 
	.D(n190), 
	.CK(REF_CLK_M__L7_N8));
   SDFFQX2M mem_reg_13__6_ (.SI(mem_13__5_), 
	.SE(n520), 
	.Q(mem_13__6_), 
	.D(n189), 
	.CK(wclk));
   SDFFQX2M mem_reg_13__5_ (.SI(mem_13__4_), 
	.SE(n582), 
	.Q(mem_13__5_), 
	.D(n188), 
	.CK(wclk));
   SDFFQX2M mem_reg_13__4_ (.SI(mem_13__3_), 
	.SE(n519), 
	.Q(mem_13__4_), 
	.D(n187), 
	.CK(wclk));
   SDFFQX2M mem_reg_13__3_ (.SI(mem_13__2_), 
	.SE(n519), 
	.Q(mem_13__3_), 
	.D(n186), 
	.CK(wclk));
   SDFFQX2M mem_reg_13__2_ (.SI(mem_13__1_), 
	.SE(n581), 
	.Q(mem_13__2_), 
	.D(n185), 
	.CK(wclk));
   SDFFQX2M mem_reg_13__1_ (.SI(mem_13__0_), 
	.SE(n518), 
	.Q(mem_13__1_), 
	.D(n184), 
	.CK(REF_CLK_M__L7_N8));
   SDFFQX2M mem_reg_13__0_ (.SI(mem_12__7_), 
	.SE(n518), 
	.Q(mem_13__0_), 
	.D(n183), 
	.CK(wclk));
   SDFFQX2M mem_reg_15__7_ (.SI(mem_15__6_), 
	.SE(n580), 
	.Q(test_so2), 
	.D(n174), 
	.CK(REF_CLK_M__L7_N8));
   SDFFQX2M mem_reg_15__6_ (.SI(mem_15__5_), 
	.SE(n517), 
	.Q(mem_15__6_), 
	.D(n173), 
	.CK(REF_CLK_M__L7_N8));
   SDFFQX2M mem_reg_15__5_ (.SI(mem_15__4_), 
	.SE(n517), 
	.Q(mem_15__5_), 
	.D(n172), 
	.CK(REF_CLK_M__L7_N8));
   SDFFQX2M mem_reg_15__4_ (.SI(mem_15__3_), 
	.SE(n579), 
	.Q(mem_15__4_), 
	.D(n171), 
	.CK(REF_CLK_M__L7_N8));
   SDFFQX2M mem_reg_15__3_ (.SI(mem_15__2_), 
	.SE(n516), 
	.Q(mem_15__3_), 
	.D(n170), 
	.CK(REF_CLK_M__L7_N8));
   SDFFQX2M mem_reg_15__2_ (.SI(mem_15__1_), 
	.SE(n516), 
	.Q(mem_15__2_), 
	.D(n169), 
	.CK(REF_CLK_M__L7_N8));
   SDFFQX2M mem_reg_15__1_ (.SI(mem_15__0_), 
	.SE(n578), 
	.Q(mem_15__1_), 
	.D(n168), 
	.CK(REF_CLK_M__L7_N10));
   SDFFQX2M mem_reg_15__0_ (.SI(mem_14__7_), 
	.SE(n515), 
	.Q(mem_15__0_), 
	.D(n167), 
	.CK(wclk));
   SDFFQX2M mem_reg_0__7_ (.SI(mem_0__6_), 
	.SE(n515), 
	.Q(mem_0__7_), 
	.D(n294), 
	.CK(REF_CLK_M__L7_N10));
   SDFFQX2M mem_reg_0__6_ (.SI(mem_0__5_), 
	.SE(n577), 
	.Q(mem_0__6_), 
	.D(n293), 
	.CK(REF_CLK_M__L7_N10));
   SDFFQX2M mem_reg_0__5_ (.SI(mem_0__4_), 
	.SE(n514), 
	.Q(mem_0__5_), 
	.D(n292), 
	.CK(REF_CLK_M__L7_N10));
   SDFFQX2M mem_reg_0__4_ (.SI(mem_0__3_), 
	.SE(n514), 
	.Q(mem_0__4_), 
	.D(n291), 
	.CK(REF_CLK_M__L7_N10));
   SDFFQX2M mem_reg_0__3_ (.SI(mem_0__2_), 
	.SE(n576), 
	.Q(mem_0__3_), 
	.D(n290), 
	.CK(REF_CLK_M__L7_N19));
   SDFFQX2M mem_reg_0__2_ (.SI(mem_0__1_), 
	.SE(n513), 
	.Q(mem_0__2_), 
	.D(n289), 
	.CK(REF_CLK_M__L7_N19));
   SDFFQX2M mem_reg_0__1_ (.SI(mem_0__0_), 
	.SE(n513), 
	.Q(mem_0__1_), 
	.D(n288), 
	.CK(REF_CLK_M__L7_N19));
   SDFFQX2M mem_reg_0__0_ (.SI(FE_PHN14_n23__Exclude_0_NET), 
	.SE(n575), 
	.Q(mem_0__0_), 
	.D(n287), 
	.CK(REF_CLK_M__L7_N19));
   SDFFQX2M mem_reg_2__7_ (.SI(mem_2__6_), 
	.SE(n512), 
	.Q(mem_2__7_), 
	.D(n278), 
	.CK(REF_CLK_M__L7_N19));
   SDFFQX2M mem_reg_2__6_ (.SI(mem_2__5_), 
	.SE(n512), 
	.Q(mem_2__6_), 
	.D(n277), 
	.CK(REF_CLK_M__L7_N19));
   SDFFQX2M mem_reg_2__5_ (.SI(mem_2__4_), 
	.SE(n574), 
	.Q(mem_2__5_), 
	.D(n276), 
	.CK(REF_CLK_M__L7_N19));
   SDFFQX2M mem_reg_2__4_ (.SI(mem_2__3_), 
	.SE(n511), 
	.Q(mem_2__4_), 
	.D(n275), 
	.CK(REF_CLK_M__L7_N19));
   SDFFQX2M mem_reg_2__3_ (.SI(mem_2__2_), 
	.SE(n511), 
	.Q(mem_2__3_), 
	.D(n274), 
	.CK(REF_CLK_M__L7_N19));
   SDFFQX2M mem_reg_2__2_ (.SI(mem_2__1_), 
	.SE(n573), 
	.Q(mem_2__2_), 
	.D(n273), 
	.CK(REF_CLK_M__L7_N19));
   SDFFQX2M mem_reg_2__1_ (.SI(mem_2__0_), 
	.SE(n510), 
	.Q(mem_2__1_), 
	.D(n272), 
	.CK(REF_CLK_M__L7_N19));
   SDFFQX2M mem_reg_2__0_ (.SI(mem_1__7_), 
	.SE(n510), 
	.Q(mem_2__0_), 
	.D(n271), 
	.CK(REF_CLK_M__L7_N10));
   SDFFQX2M mem_reg_4__7_ (.SI(mem_4__6_), 
	.SE(n572), 
	.Q(mem_4__7_), 
	.D(n262), 
	.CK(REF_CLK_M__L7_N11));
   SDFFQX2M mem_reg_4__6_ (.SI(mem_4__5_), 
	.SE(n509), 
	.Q(mem_4__6_), 
	.D(n261), 
	.CK(REF_CLK_M__L7_N11));
   SDFFQX2M mem_reg_4__5_ (.SI(mem_4__4_), 
	.SE(n509), 
	.Q(mem_4__5_), 
	.D(n260), 
	.CK(REF_CLK_M__L7_N11));
   SDFFQX2M mem_reg_4__4_ (.SI(mem_4__3_), 
	.SE(n571), 
	.Q(mem_4__4_), 
	.D(n259), 
	.CK(REF_CLK_M__L7_N11));
   SDFFQX2M mem_reg_4__3_ (.SI(mem_4__2_), 
	.SE(n508), 
	.Q(mem_4__3_), 
	.D(n258), 
	.CK(REF_CLK_M__L7_N12));
   SDFFQX2M mem_reg_4__2_ (.SI(mem_4__1_), 
	.SE(n508), 
	.Q(mem_4__2_), 
	.D(n257), 
	.CK(REF_CLK_M__L7_N11));
   SDFFQX2M mem_reg_4__1_ (.SI(mem_4__0_), 
	.SE(n570), 
	.Q(mem_4__1_), 
	.D(n256), 
	.CK(REF_CLK_M__L7_N12));
   SDFFQX2M mem_reg_4__0_ (.SI(mem_3__7_), 
	.SE(n507), 
	.Q(mem_4__0_), 
	.D(n255), 
	.CK(REF_CLK_M__L7_N11));
   SDFFQX2M mem_reg_6__7_ (.SI(mem_6__6_), 
	.SE(n507), 
	.Q(mem_6__7_), 
	.D(n246), 
	.CK(REF_CLK_M__L7_N11));
   SDFFQX2M mem_reg_6__6_ (.SI(mem_6__5_), 
	.SE(n569), 
	.Q(mem_6__6_), 
	.D(n245), 
	.CK(REF_CLK_M__L7_N11));
   SDFFQX2M mem_reg_6__5_ (.SI(mem_6__4_), 
	.SE(n506), 
	.Q(mem_6__5_), 
	.D(n244), 
	.CK(REF_CLK_M__L7_N10));
   SDFFQX2M mem_reg_6__4_ (.SI(mem_6__3_), 
	.SE(n506), 
	.Q(mem_6__4_), 
	.D(n243), 
	.CK(REF_CLK_M__L7_N11));
   SDFFQX2M mem_reg_6__3_ (.SI(mem_6__2_), 
	.SE(n568), 
	.Q(mem_6__3_), 
	.D(n242), 
	.CK(REF_CLK_M__L7_N10));
   SDFFQX2M mem_reg_6__2_ (.SI(mem_6__1_), 
	.SE(n505), 
	.Q(mem_6__2_), 
	.D(n241), 
	.CK(REF_CLK_M__L7_N10));
   SDFFQX2M mem_reg_6__1_ (.SI(mem_6__0_), 
	.SE(n505), 
	.Q(mem_6__1_), 
	.D(n240), 
	.CK(REF_CLK_M__L7_N10));
   SDFFQX2M mem_reg_6__0_ (.SI(mem_5__7_), 
	.SE(n567), 
	.Q(mem_6__0_), 
	.D(n239), 
	.CK(REF_CLK_M__L7_N12));
   SDFFQX2M mem_reg_8__7_ (.SI(mem_8__6_), 
	.SE(n504), 
	.Q(mem_8__7_), 
	.D(n230), 
	.CK(REF_CLK_M__L7_N2));
   SDFFQX2M mem_reg_8__6_ (.SI(mem_8__5_), 
	.SE(n504), 
	.Q(mem_8__6_), 
	.D(n229), 
	.CK(REF_CLK_M__L7_N2));
   SDFFQX2M mem_reg_8__5_ (.SI(mem_8__4_), 
	.SE(n566), 
	.Q(mem_8__5_), 
	.D(n228), 
	.CK(REF_CLK_M__L7_N2));
   SDFFQX2M mem_reg_8__4_ (.SI(mem_8__3_), 
	.SE(n503), 
	.Q(mem_8__4_), 
	.D(n227), 
	.CK(REF_CLK_M__L7_N2));
   SDFFQX2M mem_reg_8__3_ (.SI(test_si2), 
	.SE(n503), 
	.Q(mem_8__3_), 
	.D(n226), 
	.CK(REF_CLK_M__L7_N2));
   SDFFQX2M mem_reg_8__2_ (.SI(mem_8__1_), 
	.SE(n565), 
	.Q(mem_8__2_), 
	.D(n225), 
	.CK(REF_CLK_M__L7_N12));
   SDFFQX2M mem_reg_8__1_ (.SI(mem_8__0_), 
	.SE(n502), 
	.Q(mem_8__1_), 
	.D(n224), 
	.CK(REF_CLK_M__L7_N12));
   SDFFQX2M mem_reg_8__0_ (.SI(mem_7__7_), 
	.SE(n502), 
	.Q(mem_8__0_), 
	.D(n223), 
	.CK(REF_CLK_M__L7_N12));
   SDFFQX2M mem_reg_10__7_ (.SI(mem_10__6_), 
	.SE(n564), 
	.Q(mem_10__7_), 
	.D(n214), 
	.CK(REF_CLK_M__L7_N2));
   SDFFQX2M mem_reg_10__6_ (.SI(mem_10__5_), 
	.SE(n501), 
	.Q(mem_10__6_), 
	.D(n213), 
	.CK(REF_CLK_M__L7_N2));
   SDFFQX2M mem_reg_10__5_ (.SI(mem_10__4_), 
	.SE(n501), 
	.Q(mem_10__5_), 
	.D(n212), 
	.CK(REF_CLK_M__L7_N2));
   SDFFQX2M mem_reg_10__4_ (.SI(mem_10__3_), 
	.SE(n563), 
	.Q(mem_10__4_), 
	.D(n211), 
	.CK(REF_CLK_M__L7_N2));
   SDFFQX2M mem_reg_10__3_ (.SI(mem_10__2_), 
	.SE(n500), 
	.Q(mem_10__3_), 
	.D(n210), 
	.CK(REF_CLK_M__L7_N2));
   SDFFQX2M mem_reg_10__2_ (.SI(mem_10__1_), 
	.SE(n500), 
	.Q(mem_10__2_), 
	.D(n209), 
	.CK(REF_CLK_M__L7_N2));
   SDFFQX2M mem_reg_10__1_ (.SI(mem_10__0_), 
	.SE(n562), 
	.Q(mem_10__1_), 
	.D(n208), 
	.CK(REF_CLK_M__L7_N2));
   SDFFQX2M mem_reg_10__0_ (.SI(mem_9__7_), 
	.SE(n499), 
	.Q(mem_10__0_), 
	.D(n207), 
	.CK(wclk));
   SDFFQX2M mem_reg_12__7_ (.SI(mem_12__6_), 
	.SE(n499), 
	.Q(mem_12__7_), 
	.D(n198), 
	.CK(wclk));
   SDFFQX2M mem_reg_12__6_ (.SI(mem_12__5_), 
	.SE(n561), 
	.Q(mem_12__6_), 
	.D(n197), 
	.CK(wclk));
   SDFFQX2M mem_reg_12__5_ (.SI(mem_12__4_), 
	.SE(n498), 
	.Q(mem_12__5_), 
	.D(n196), 
	.CK(wclk));
   SDFFQX2M mem_reg_12__4_ (.SI(mem_12__3_), 
	.SE(n498), 
	.Q(mem_12__4_), 
	.D(n195), 
	.CK(wclk));
   SDFFQX2M mem_reg_12__3_ (.SI(mem_12__2_), 
	.SE(n560), 
	.Q(mem_12__3_), 
	.D(n194), 
	.CK(wclk));
   SDFFQX2M mem_reg_12__2_ (.SI(mem_12__1_), 
	.SE(n497), 
	.Q(mem_12__2_), 
	.D(n193), 
	.CK(wclk));
   SDFFQX2M mem_reg_12__1_ (.SI(mem_12__0_), 
	.SE(n497), 
	.Q(mem_12__1_), 
	.D(n192), 
	.CK(wclk));
   SDFFQX2M mem_reg_12__0_ (.SI(mem_11__7_), 
	.SE(n559), 
	.Q(mem_12__0_), 
	.D(n191), 
	.CK(wclk));
   SDFFQX2M mem_reg_14__7_ (.SI(mem_14__6_), 
	.SE(n496), 
	.Q(mem_14__7_), 
	.D(n182), 
	.CK(REF_CLK_M__L7_N8));
   SDFFQX2M mem_reg_14__6_ (.SI(mem_14__5_), 
	.SE(n496), 
	.Q(mem_14__6_), 
	.D(n181), 
	.CK(REF_CLK_M__L7_N8));
   SDFFQX2M mem_reg_14__5_ (.SI(mem_14__4_), 
	.SE(n558), 
	.Q(mem_14__5_), 
	.D(n180), 
	.CK(REF_CLK_M__L7_N8));
   SDFFQX2M mem_reg_14__4_ (.SI(mem_14__3_), 
	.SE(n495), 
	.Q(mem_14__4_), 
	.D(n179), 
	.CK(REF_CLK_M__L7_N8));
   SDFFQX2M mem_reg_14__3_ (.SI(mem_14__2_), 
	.SE(n495), 
	.Q(mem_14__3_), 
	.D(n178), 
	.CK(REF_CLK_M__L7_N8));
   SDFFQX2M mem_reg_14__2_ (.SI(mem_14__1_), 
	.SE(n557), 
	.Q(mem_14__2_), 
	.D(n177), 
	.CK(REF_CLK_M__L7_N8));
   SDFFQX2M mem_reg_14__1_ (.SI(mem_14__0_), 
	.SE(n494), 
	.Q(mem_14__1_), 
	.D(n176), 
	.CK(REF_CLK_M__L7_N10));
   SDFFQX2M mem_reg_14__0_ (.SI(mem_13__7_), 
	.SE(n494), 
	.Q(mem_14__0_), 
	.D(n175), 
	.CK(REF_CLK_M__L7_N10));
   NOR2X4M U130 (.Y(n377), 
	.B(n391), 
	.A(n390));
   NOR2X2M U131 (.Y(n379), 
	.B(raddr[1]), 
	.A(n391));
   NOR2X2M U132 (.Y(n378), 
	.B(raddr[0]), 
	.A(n390));
   CLKNAND2X2M U134 (.Y(n381), 
	.B(n388), 
	.A(raddr[2]));
   CLKNAND2X2M U135 (.Y(n368), 
	.B(n389), 
	.A(raddr[3]));
   CLKINVX1M U136 (.Y(n389), 
	.A(raddr[2]));
   CLKNAND2X2M U137 (.Y(n371), 
	.B(raddr[2]), 
	.A(raddr[3]));
   CLKNAND2X2M U138 (.Y(n374), 
	.B(n388), 
	.A(n389));
   CLKINVX1M U139 (.Y(n388), 
	.A(raddr[3]));
   NOR2X2M U140 (.Y(n141), 
	.B(n441), 
	.A(n442));
   AND2X2M U141 (.Y(n157), 
	.B(waddr[0]), 
	.A(n165));
   AND2X2M U142 (.Y(n142), 
	.B(waddr[0]), 
	.A(n153));
   NOR2X2M U143 (.Y(n146), 
	.B(waddr[1]), 
	.A(n442));
   NOR2X2M U144 (.Y(n149), 
	.B(waddr[2]), 
	.A(n441));
   NOR2X2M U145 (.Y(n152), 
	.B(waddr[2]), 
	.A(waddr[1]));
   CLKINVX2M U146 (.Y(n450), 
	.A(wdata[0]));
   CLKINVX2M U147 (.Y(n449), 
	.A(wdata[1]));
   CLKINVX2M U148 (.Y(n448), 
	.A(wdata[2]));
   CLKINVX2M U149 (.Y(n447), 
	.A(wdata[3]));
   CLKINVX2M U150 (.Y(n446), 
	.A(wdata[4]));
   CLKINVX2M U151 (.Y(n445), 
	.A(wdata[5]));
   CLKINVX2M U152 (.Y(n444), 
	.A(wdata[6]));
   CLKINVX2M U153 (.Y(n443), 
	.A(wdata[7]));
   NAND2X2M U182 (.Y(n143), 
	.B(n141), 
	.A(n144));
   NAND2X2M U183 (.Y(n158), 
	.B(n141), 
	.A(n159));
   AND2X2M U204 (.Y(n144), 
	.B(n440), 
	.A(n153));
   AND2X2M U205 (.Y(n159), 
	.B(n440), 
	.A(n165));
   NAND2X2M U206 (.Y(n140), 
	.B(n142), 
	.A(n141));
   NAND2X2M U207 (.Y(n145), 
	.B(n142), 
	.A(n146));
   NAND2X2M U208 (.Y(n147), 
	.B(n144), 
	.A(n146));
   NAND2X2M U209 (.Y(n148), 
	.B(n142), 
	.A(n149));
   NAND2X2M U210 (.Y(n150), 
	.B(n144), 
	.A(n149));
   NAND2X2M U211 (.Y(n151), 
	.B(n142), 
	.A(n152));
   NAND2X2M U212 (.Y(n154), 
	.B(n144), 
	.A(n152));
   NAND2X2M U213 (.Y(n156), 
	.B(n141), 
	.A(n157));
   NAND2X2M U214 (.Y(n160), 
	.B(n146), 
	.A(n157));
   NAND2X2M U215 (.Y(n161), 
	.B(n146), 
	.A(n159));
   NAND2X2M U216 (.Y(n162), 
	.B(n149), 
	.A(n157));
   NAND2X2M U217 (.Y(n163), 
	.B(n149), 
	.A(n159));
   NAND2X2M U218 (.Y(n164), 
	.B(n152), 
	.A(n157));
   NAND2X2M U219 (.Y(n166), 
	.B(n152), 
	.A(n159));
   INVX2M U220 (.Y(n390), 
	.A(raddr[1]));
   INVX2M U221 (.Y(n391), 
	.A(raddr[0]));
   NOR2BX2M U222 (.Y(n155), 
	.B(wfull), 
	.AN(winc));
   NOR2BX2M U223 (.Y(n165), 
	.B(waddr[3]), 
	.AN(n155));
   OAI2BB2X1M U224 (.Y(n167), 
	.B1(n450), 
	.B0(n140), 
	.A1N(n140), 
	.A0N(mem_15__0_));
   OAI2BB2X1M U225 (.Y(n168), 
	.B1(n449), 
	.B0(n140), 
	.A1N(n140), 
	.A0N(mem_15__1_));
   OAI2BB2X1M U226 (.Y(n169), 
	.B1(n448), 
	.B0(n140), 
	.A1N(n140), 
	.A0N(mem_15__2_));
   OAI2BB2X1M U227 (.Y(n170), 
	.B1(n447), 
	.B0(n140), 
	.A1N(n140), 
	.A0N(mem_15__3_));
   OAI2BB2X1M U228 (.Y(n171), 
	.B1(n446), 
	.B0(n140), 
	.A1N(n140), 
	.A0N(mem_15__4_));
   OAI2BB2X1M U229 (.Y(n172), 
	.B1(n445), 
	.B0(n140), 
	.A1N(n140), 
	.A0N(mem_15__5_));
   OAI2BB2X1M U230 (.Y(n173), 
	.B1(n444), 
	.B0(n140), 
	.A1N(n140), 
	.A0N(mem_15__6_));
   OAI2BB2X1M U231 (.Y(n174), 
	.B1(n443), 
	.B0(n140), 
	.A1N(n140), 
	.A0N(test_so2));
   OAI2BB2X1M U232 (.Y(n175), 
	.B1(n143), 
	.B0(n450), 
	.A1N(n143), 
	.A0N(mem_14__0_));
   OAI2BB2X1M U233 (.Y(n176), 
	.B1(n143), 
	.B0(n449), 
	.A1N(n143), 
	.A0N(mem_14__1_));
   OAI2BB2X1M U234 (.Y(n177), 
	.B1(n143), 
	.B0(n448), 
	.A1N(n143), 
	.A0N(mem_14__2_));
   OAI2BB2X1M U235 (.Y(n178), 
	.B1(n143), 
	.B0(n447), 
	.A1N(n143), 
	.A0N(mem_14__3_));
   OAI2BB2X1M U236 (.Y(n179), 
	.B1(n143), 
	.B0(n446), 
	.A1N(n143), 
	.A0N(mem_14__4_));
   OAI2BB2X1M U237 (.Y(n180), 
	.B1(n143), 
	.B0(n445), 
	.A1N(n143), 
	.A0N(mem_14__5_));
   OAI2BB2X1M U238 (.Y(n181), 
	.B1(n143), 
	.B0(n444), 
	.A1N(n143), 
	.A0N(mem_14__6_));
   OAI2BB2X1M U239 (.Y(n182), 
	.B1(n143), 
	.B0(n443), 
	.A1N(n143), 
	.A0N(mem_14__7_));
   OAI2BB2X1M U240 (.Y(n183), 
	.B1(n145), 
	.B0(n450), 
	.A1N(n145), 
	.A0N(mem_13__0_));
   OAI2BB2X1M U241 (.Y(n184), 
	.B1(n145), 
	.B0(n449), 
	.A1N(n145), 
	.A0N(mem_13__1_));
   OAI2BB2X1M U242 (.Y(n185), 
	.B1(n145), 
	.B0(n448), 
	.A1N(n145), 
	.A0N(mem_13__2_));
   OAI2BB2X1M U243 (.Y(n186), 
	.B1(n145), 
	.B0(n447), 
	.A1N(n145), 
	.A0N(mem_13__3_));
   OAI2BB2X1M U244 (.Y(n187), 
	.B1(n145), 
	.B0(n446), 
	.A1N(n145), 
	.A0N(mem_13__4_));
   OAI2BB2X1M U245 (.Y(n188), 
	.B1(n145), 
	.B0(n445), 
	.A1N(n145), 
	.A0N(mem_13__5_));
   OAI2BB2X1M U246 (.Y(n189), 
	.B1(n145), 
	.B0(n444), 
	.A1N(n145), 
	.A0N(mem_13__6_));
   OAI2BB2X1M U247 (.Y(n190), 
	.B1(n145), 
	.B0(n443), 
	.A1N(n145), 
	.A0N(mem_13__7_));
   OAI2BB2X1M U248 (.Y(n191), 
	.B1(n147), 
	.B0(n450), 
	.A1N(n147), 
	.A0N(mem_12__0_));
   OAI2BB2X1M U249 (.Y(n192), 
	.B1(n147), 
	.B0(n449), 
	.A1N(n147), 
	.A0N(mem_12__1_));
   OAI2BB2X1M U250 (.Y(n193), 
	.B1(n147), 
	.B0(n448), 
	.A1N(n147), 
	.A0N(mem_12__2_));
   OAI2BB2X1M U251 (.Y(n194), 
	.B1(n147), 
	.B0(n447), 
	.A1N(n147), 
	.A0N(mem_12__3_));
   OAI2BB2X1M U252 (.Y(n195), 
	.B1(n147), 
	.B0(n446), 
	.A1N(n147), 
	.A0N(mem_12__4_));
   OAI2BB2X1M U253 (.Y(n196), 
	.B1(n147), 
	.B0(n445), 
	.A1N(n147), 
	.A0N(mem_12__5_));
   OAI2BB2X1M U254 (.Y(n197), 
	.B1(n147), 
	.B0(n444), 
	.A1N(n147), 
	.A0N(mem_12__6_));
   OAI2BB2X1M U255 (.Y(n198), 
	.B1(n147), 
	.B0(n443), 
	.A1N(n147), 
	.A0N(mem_12__7_));
   OAI2BB2X1M U256 (.Y(n199), 
	.B1(n148), 
	.B0(n450), 
	.A1N(n148), 
	.A0N(mem_11__0_));
   OAI2BB2X1M U257 (.Y(n200), 
	.B1(n148), 
	.B0(n449), 
	.A1N(n148), 
	.A0N(mem_11__1_));
   OAI2BB2X1M U258 (.Y(n201), 
	.B1(n148), 
	.B0(n448), 
	.A1N(n148), 
	.A0N(mem_11__2_));
   OAI2BB2X1M U259 (.Y(n202), 
	.B1(n148), 
	.B0(n447), 
	.A1N(n148), 
	.A0N(mem_11__3_));
   OAI2BB2X1M U260 (.Y(n203), 
	.B1(n148), 
	.B0(n446), 
	.A1N(n148), 
	.A0N(mem_11__4_));
   OAI2BB2X1M U261 (.Y(n204), 
	.B1(n148), 
	.B0(n445), 
	.A1N(n148), 
	.A0N(mem_11__5_));
   OAI2BB2X1M U262 (.Y(n205), 
	.B1(n148), 
	.B0(n444), 
	.A1N(n148), 
	.A0N(mem_11__6_));
   OAI2BB2X1M U263 (.Y(n206), 
	.B1(n148), 
	.B0(n443), 
	.A1N(n148), 
	.A0N(mem_11__7_));
   OAI2BB2X1M U264 (.Y(n207), 
	.B1(n150), 
	.B0(n450), 
	.A1N(n150), 
	.A0N(mem_10__0_));
   OAI2BB2X1M U265 (.Y(n208), 
	.B1(n150), 
	.B0(n449), 
	.A1N(n150), 
	.A0N(mem_10__1_));
   OAI2BB2X1M U266 (.Y(n209), 
	.B1(n150), 
	.B0(n448), 
	.A1N(n150), 
	.A0N(mem_10__2_));
   OAI2BB2X1M U267 (.Y(n210), 
	.B1(n150), 
	.B0(n447), 
	.A1N(n150), 
	.A0N(mem_10__3_));
   OAI2BB2X1M U268 (.Y(n211), 
	.B1(n150), 
	.B0(n446), 
	.A1N(n150), 
	.A0N(mem_10__4_));
   OAI2BB2X1M U269 (.Y(n212), 
	.B1(n150), 
	.B0(n445), 
	.A1N(n150), 
	.A0N(mem_10__5_));
   OAI2BB2X1M U270 (.Y(n213), 
	.B1(n150), 
	.B0(n444), 
	.A1N(n150), 
	.A0N(mem_10__6_));
   OAI2BB2X1M U271 (.Y(n214), 
	.B1(n150), 
	.B0(n443), 
	.A1N(n150), 
	.A0N(mem_10__7_));
   OAI2BB2X1M U272 (.Y(n215), 
	.B1(n151), 
	.B0(n450), 
	.A1N(n151), 
	.A0N(mem_9__0_));
   OAI2BB2X1M U273 (.Y(n216), 
	.B1(n151), 
	.B0(n449), 
	.A1N(n151), 
	.A0N(mem_9__1_));
   OAI2BB2X1M U274 (.Y(n217), 
	.B1(n151), 
	.B0(n448), 
	.A1N(n151), 
	.A0N(mem_9__2_));
   OAI2BB2X1M U275 (.Y(n218), 
	.B1(n151), 
	.B0(n447), 
	.A1N(n151), 
	.A0N(mem_9__3_));
   OAI2BB2X1M U276 (.Y(n219), 
	.B1(n151), 
	.B0(n446), 
	.A1N(n151), 
	.A0N(mem_9__4_));
   OAI2BB2X1M U277 (.Y(n220), 
	.B1(n151), 
	.B0(n445), 
	.A1N(n151), 
	.A0N(mem_9__5_));
   OAI2BB2X1M U278 (.Y(n221), 
	.B1(n151), 
	.B0(n444), 
	.A1N(n151), 
	.A0N(mem_9__6_));
   OAI2BB2X1M U279 (.Y(n222), 
	.B1(n151), 
	.B0(n443), 
	.A1N(n151), 
	.A0N(mem_9__7_));
   OAI2BB2X1M U280 (.Y(n223), 
	.B1(n154), 
	.B0(n450), 
	.A1N(n154), 
	.A0N(mem_8__0_));
   OAI2BB2X1M U281 (.Y(n224), 
	.B1(n154), 
	.B0(n449), 
	.A1N(n154), 
	.A0N(mem_8__1_));
   OAI2BB2X1M U282 (.Y(n225), 
	.B1(n154), 
	.B0(n448), 
	.A1N(n154), 
	.A0N(test_so1));
   OAI2BB2X1M U283 (.Y(n226), 
	.B1(n154), 
	.B0(n447), 
	.A1N(n154), 
	.A0N(mem_8__3_));
   OAI2BB2X1M U284 (.Y(n227), 
	.B1(n154), 
	.B0(n446), 
	.A1N(n154), 
	.A0N(mem_8__4_));
   OAI2BB2X1M U285 (.Y(n228), 
	.B1(n154), 
	.B0(n445), 
	.A1N(n154), 
	.A0N(mem_8__5_));
   OAI2BB2X1M U286 (.Y(n229), 
	.B1(n154), 
	.B0(n444), 
	.A1N(n154), 
	.A0N(mem_8__6_));
   OAI2BB2X1M U287 (.Y(n230), 
	.B1(n154), 
	.B0(n443), 
	.A1N(n154), 
	.A0N(mem_8__7_));
   OAI2BB2X1M U288 (.Y(n231), 
	.B1(n156), 
	.B0(n450), 
	.A1N(n156), 
	.A0N(mem_7__0_));
   OAI2BB2X1M U289 (.Y(n232), 
	.B1(n156), 
	.B0(n449), 
	.A1N(n156), 
	.A0N(mem_7__1_));
   OAI2BB2X1M U290 (.Y(n233), 
	.B1(n156), 
	.B0(n448), 
	.A1N(n156), 
	.A0N(mem_7__2_));
   OAI2BB2X1M U291 (.Y(n234), 
	.B1(n156), 
	.B0(n447), 
	.A1N(n156), 
	.A0N(mem_7__3_));
   OAI2BB2X1M U292 (.Y(n235), 
	.B1(n156), 
	.B0(n446), 
	.A1N(n156), 
	.A0N(mem_7__4_));
   OAI2BB2X1M U293 (.Y(n236), 
	.B1(n156), 
	.B0(n445), 
	.A1N(n156), 
	.A0N(mem_7__5_));
   OAI2BB2X1M U294 (.Y(n237), 
	.B1(n156), 
	.B0(n444), 
	.A1N(n156), 
	.A0N(mem_7__6_));
   OAI2BB2X1M U295 (.Y(n238), 
	.B1(n156), 
	.B0(n443), 
	.A1N(n156), 
	.A0N(mem_7__7_));
   OAI2BB2X1M U296 (.Y(n239), 
	.B1(n158), 
	.B0(n450), 
	.A1N(n158), 
	.A0N(mem_6__0_));
   OAI2BB2X1M U297 (.Y(n240), 
	.B1(n158), 
	.B0(n449), 
	.A1N(n158), 
	.A0N(mem_6__1_));
   OAI2BB2X1M U298 (.Y(n241), 
	.B1(n158), 
	.B0(n448), 
	.A1N(n158), 
	.A0N(mem_6__2_));
   OAI2BB2X1M U299 (.Y(n242), 
	.B1(n158), 
	.B0(n447), 
	.A1N(n158), 
	.A0N(mem_6__3_));
   OAI2BB2X1M U300 (.Y(n243), 
	.B1(n158), 
	.B0(n446), 
	.A1N(n158), 
	.A0N(mem_6__4_));
   OAI2BB2X1M U301 (.Y(n244), 
	.B1(n158), 
	.B0(n445), 
	.A1N(n158), 
	.A0N(mem_6__5_));
   OAI2BB2X1M U302 (.Y(n245), 
	.B1(n158), 
	.B0(n444), 
	.A1N(n158), 
	.A0N(mem_6__6_));
   OAI2BB2X1M U303 (.Y(n246), 
	.B1(n158), 
	.B0(n443), 
	.A1N(n158), 
	.A0N(mem_6__7_));
   OAI2BB2X1M U304 (.Y(n247), 
	.B1(n160), 
	.B0(n450), 
	.A1N(n160), 
	.A0N(mem_5__0_));
   OAI2BB2X1M U305 (.Y(n248), 
	.B1(n160), 
	.B0(n449), 
	.A1N(n160), 
	.A0N(mem_5__1_));
   OAI2BB2X1M U306 (.Y(n249), 
	.B1(n160), 
	.B0(n448), 
	.A1N(n160), 
	.A0N(mem_5__2_));
   OAI2BB2X1M U307 (.Y(n250), 
	.B1(n160), 
	.B0(n447), 
	.A1N(n160), 
	.A0N(mem_5__3_));
   OAI2BB2X1M U308 (.Y(n251), 
	.B1(n160), 
	.B0(n446), 
	.A1N(n160), 
	.A0N(mem_5__4_));
   OAI2BB2X1M U309 (.Y(n252), 
	.B1(n160), 
	.B0(n445), 
	.A1N(n160), 
	.A0N(mem_5__5_));
   OAI2BB2X1M U310 (.Y(n253), 
	.B1(n160), 
	.B0(n444), 
	.A1N(n160), 
	.A0N(mem_5__6_));
   OAI2BB2X1M U311 (.Y(n254), 
	.B1(n160), 
	.B0(n443), 
	.A1N(n160), 
	.A0N(mem_5__7_));
   OAI2BB2X1M U312 (.Y(n255), 
	.B1(n161), 
	.B0(n450), 
	.A1N(n161), 
	.A0N(mem_4__0_));
   OAI2BB2X1M U313 (.Y(n256), 
	.B1(n161), 
	.B0(n449), 
	.A1N(n161), 
	.A0N(mem_4__1_));
   OAI2BB2X1M U314 (.Y(n257), 
	.B1(n161), 
	.B0(n448), 
	.A1N(n161), 
	.A0N(mem_4__2_));
   OAI2BB2X1M U315 (.Y(n258), 
	.B1(n161), 
	.B0(n447), 
	.A1N(n161), 
	.A0N(mem_4__3_));
   OAI2BB2X1M U316 (.Y(n259), 
	.B1(n161), 
	.B0(n446), 
	.A1N(n161), 
	.A0N(mem_4__4_));
   OAI2BB2X1M U317 (.Y(n260), 
	.B1(n161), 
	.B0(n445), 
	.A1N(n161), 
	.A0N(mem_4__5_));
   OAI2BB2X1M U318 (.Y(n261), 
	.B1(n161), 
	.B0(n444), 
	.A1N(n161), 
	.A0N(mem_4__6_));
   OAI2BB2X1M U319 (.Y(n262), 
	.B1(n161), 
	.B0(n443), 
	.A1N(n161), 
	.A0N(mem_4__7_));
   OAI2BB2X1M U320 (.Y(n263), 
	.B1(n162), 
	.B0(n450), 
	.A1N(n162), 
	.A0N(mem_3__0_));
   OAI2BB2X1M U321 (.Y(n264), 
	.B1(n162), 
	.B0(n449), 
	.A1N(n162), 
	.A0N(mem_3__1_));
   OAI2BB2X1M U322 (.Y(n265), 
	.B1(n162), 
	.B0(n448), 
	.A1N(n162), 
	.A0N(mem_3__2_));
   OAI2BB2X1M U323 (.Y(n266), 
	.B1(n162), 
	.B0(n447), 
	.A1N(n162), 
	.A0N(mem_3__3_));
   OAI2BB2X1M U324 (.Y(n267), 
	.B1(n162), 
	.B0(n446), 
	.A1N(n162), 
	.A0N(mem_3__4_));
   OAI2BB2X1M U325 (.Y(n268), 
	.B1(n162), 
	.B0(n445), 
	.A1N(n162), 
	.A0N(mem_3__5_));
   OAI2BB2X1M U326 (.Y(n269), 
	.B1(n162), 
	.B0(n444), 
	.A1N(n162), 
	.A0N(mem_3__6_));
   OAI2BB2X1M U327 (.Y(n270), 
	.B1(n162), 
	.B0(n443), 
	.A1N(n162), 
	.A0N(mem_3__7_));
   OAI2BB2X1M U328 (.Y(n271), 
	.B1(n163), 
	.B0(n450), 
	.A1N(n163), 
	.A0N(mem_2__0_));
   OAI2BB2X1M U329 (.Y(n272), 
	.B1(n163), 
	.B0(n449), 
	.A1N(n163), 
	.A0N(mem_2__1_));
   OAI2BB2X1M U330 (.Y(n273), 
	.B1(n163), 
	.B0(n448), 
	.A1N(n163), 
	.A0N(mem_2__2_));
   OAI2BB2X1M U331 (.Y(n274), 
	.B1(n163), 
	.B0(n447), 
	.A1N(n163), 
	.A0N(mem_2__3_));
   OAI2BB2X1M U332 (.Y(n275), 
	.B1(n163), 
	.B0(n446), 
	.A1N(n163), 
	.A0N(mem_2__4_));
   OAI2BB2X1M U333 (.Y(n276), 
	.B1(n163), 
	.B0(n445), 
	.A1N(n163), 
	.A0N(mem_2__5_));
   OAI2BB2X1M U334 (.Y(n277), 
	.B1(n163), 
	.B0(n444), 
	.A1N(n163), 
	.A0N(mem_2__6_));
   OAI2BB2X1M U335 (.Y(n278), 
	.B1(n163), 
	.B0(n443), 
	.A1N(n163), 
	.A0N(mem_2__7_));
   OAI2BB2X1M U336 (.Y(n279), 
	.B1(n164), 
	.B0(n450), 
	.A1N(n164), 
	.A0N(mem_1__0_));
   OAI2BB2X1M U337 (.Y(n280), 
	.B1(n164), 
	.B0(n449), 
	.A1N(n164), 
	.A0N(mem_1__1_));
   OAI2BB2X1M U338 (.Y(n281), 
	.B1(n164), 
	.B0(n448), 
	.A1N(n164), 
	.A0N(mem_1__2_));
   OAI2BB2X1M U339 (.Y(n282), 
	.B1(n164), 
	.B0(n447), 
	.A1N(n164), 
	.A0N(mem_1__3_));
   OAI2BB2X1M U340 (.Y(n283), 
	.B1(n164), 
	.B0(n446), 
	.A1N(n164), 
	.A0N(mem_1__4_));
   OAI2BB2X1M U341 (.Y(n284), 
	.B1(n164), 
	.B0(n445), 
	.A1N(n164), 
	.A0N(mem_1__5_));
   OAI2BB2X1M U342 (.Y(n285), 
	.B1(n164), 
	.B0(n444), 
	.A1N(n164), 
	.A0N(mem_1__6_));
   OAI2BB2X1M U343 (.Y(n286), 
	.B1(n164), 
	.B0(n443), 
	.A1N(n164), 
	.A0N(mem_1__7_));
   OAI2BB2X1M U344 (.Y(n287), 
	.B1(n166), 
	.B0(n450), 
	.A1N(n166), 
	.A0N(mem_0__0_));
   OAI2BB2X1M U345 (.Y(n288), 
	.B1(n166), 
	.B0(n449), 
	.A1N(n166), 
	.A0N(mem_0__1_));
   OAI2BB2X1M U346 (.Y(n289), 
	.B1(n166), 
	.B0(n448), 
	.A1N(n166), 
	.A0N(mem_0__2_));
   OAI2BB2X1M U347 (.Y(n290), 
	.B1(n166), 
	.B0(n447), 
	.A1N(n166), 
	.A0N(mem_0__3_));
   OAI2BB2X1M U348 (.Y(n291), 
	.B1(n166), 
	.B0(n446), 
	.A1N(n166), 
	.A0N(mem_0__4_));
   OAI2BB2X1M U349 (.Y(n292), 
	.B1(n166), 
	.B0(n445), 
	.A1N(n166), 
	.A0N(mem_0__5_));
   OAI2BB2X1M U350 (.Y(n293), 
	.B1(n166), 
	.B0(n444), 
	.A1N(n166), 
	.A0N(mem_0__6_));
   OAI2BB2X1M U351 (.Y(n294), 
	.B1(n166), 
	.B0(n443), 
	.A1N(n166), 
	.A0N(mem_0__7_));
   INVX2M U352 (.Y(n442), 
	.A(waddr[2]));
   INVX2M U353 (.Y(n441), 
	.A(waddr[1]));
   INVX2M U354 (.Y(n440), 
	.A(waddr[0]));
   AND2X2M U355 (.Y(n153), 
	.B(n155), 
	.A(waddr[3]));
   AOI22X1M U356 (.Y(n130), 
	.B1(n377), 
	.B0(mem_11__0_), 
	.A1(FE_OFN6_n378), 
	.A0(mem_10__0_));
   AOI22X1M U357 (.Y(n129), 
	.B1(FE_OFN7_n379), 
	.B0(mem_9__0_), 
	.A1(FE_OFN8_n380), 
	.A0(mem_8__0_));
   AOI21X1M U358 (.Y(n295), 
	.B0(n368), 
	.A1(n129), 
	.A0(n130));
   AOI22X1M U359 (.Y(n132), 
	.B1(n377), 
	.B0(mem_15__0_), 
	.A1(FE_OFN6_n378), 
	.A0(mem_14__0_));
   AOI22X1M U360 (.Y(n131), 
	.B1(FE_OFN7_n379), 
	.B0(mem_13__0_), 
	.A1(FE_OFN8_n380), 
	.A0(mem_12__0_));
   AOI21X1M U361 (.Y(n139), 
	.B0(n371), 
	.A1(n131), 
	.A0(n132));
   AOI22X1M U362 (.Y(n134), 
	.B1(n377), 
	.B0(mem_3__0_), 
	.A1(FE_OFN6_n378), 
	.A0(mem_2__0_));
   AOI22X1M U363 (.Y(n133), 
	.B1(FE_OFN7_n379), 
	.B0(mem_1__0_), 
	.A1(FE_OFN8_n380), 
	.A0(mem_0__0_));
   AOI21X1M U364 (.Y(n138), 
	.B0(n374), 
	.A1(n133), 
	.A0(n134));
   AOI22X1M U365 (.Y(n136), 
	.B1(n377), 
	.B0(mem_7__0_), 
	.A1(FE_OFN6_n378), 
	.A0(mem_6__0_));
   AOI22X1M U366 (.Y(n135), 
	.B1(FE_OFN7_n379), 
	.B0(mem_5__0_), 
	.A1(FE_OFN8_n380), 
	.A0(mem_4__0_));
   AOI21X1M U367 (.Y(n137), 
	.B0(n381), 
	.A1(n135), 
	.A0(n136));
   OR4X1M U368 (.Y(rdata[0]), 
	.D(n137), 
	.C(n138), 
	.B(n139), 
	.A(n295));
   AOI22X1M U369 (.Y(n297), 
	.B1(n377), 
	.B0(mem_11__1_), 
	.A1(FE_OFN6_n378), 
	.A0(mem_10__1_));
   AOI22X1M U370 (.Y(n296), 
	.B1(FE_OFN7_n379), 
	.B0(mem_9__1_), 
	.A1(FE_OFN8_n380), 
	.A0(mem_8__1_));
   AOI21X1M U371 (.Y(n307), 
	.B0(n368), 
	.A1(n296), 
	.A0(n297));
   AOI22X1M U372 (.Y(n299), 
	.B1(n377), 
	.B0(mem_15__1_), 
	.A1(FE_OFN6_n378), 
	.A0(mem_14__1_));
   AOI22X1M U373 (.Y(n298), 
	.B1(FE_OFN7_n379), 
	.B0(mem_13__1_), 
	.A1(FE_OFN8_n380), 
	.A0(mem_12__1_));
   AOI21X1M U374 (.Y(n306), 
	.B0(n371), 
	.A1(n298), 
	.A0(n299));
   AOI22X1M U375 (.Y(n301), 
	.B1(n377), 
	.B0(mem_3__1_), 
	.A1(FE_OFN6_n378), 
	.A0(mem_2__1_));
   AOI22X1M U376 (.Y(n300), 
	.B1(FE_OFN7_n379), 
	.B0(mem_1__1_), 
	.A1(FE_OFN8_n380), 
	.A0(mem_0__1_));
   AOI21X1M U377 (.Y(n305), 
	.B0(n374), 
	.A1(n300), 
	.A0(n301));
   AOI22X1M U378 (.Y(n303), 
	.B1(n377), 
	.B0(mem_7__1_), 
	.A1(FE_OFN6_n378), 
	.A0(mem_6__1_));
   AOI22X1M U379 (.Y(n302), 
	.B1(FE_OFN7_n379), 
	.B0(mem_5__1_), 
	.A1(FE_OFN8_n380), 
	.A0(mem_4__1_));
   AOI21X1M U380 (.Y(n304), 
	.B0(n381), 
	.A1(n302), 
	.A0(n303));
   OR4X1M U381 (.Y(rdata[1]), 
	.D(n304), 
	.C(n305), 
	.B(n306), 
	.A(n307));
   AOI22X1M U382 (.Y(n309), 
	.B1(n377), 
	.B0(mem_11__2_), 
	.A1(FE_OFN6_n378), 
	.A0(mem_10__2_));
   AOI22X1M U383 (.Y(n308), 
	.B1(FE_OFN7_n379), 
	.B0(mem_9__2_), 
	.A1(FE_OFN8_n380), 
	.A0(test_so1));
   AOI21X1M U384 (.Y(n319), 
	.B0(n368), 
	.A1(n308), 
	.A0(n309));
   AOI22X1M U385 (.Y(n311), 
	.B1(n377), 
	.B0(mem_15__2_), 
	.A1(FE_OFN6_n378), 
	.A0(mem_14__2_));
   AOI22X1M U386 (.Y(n310), 
	.B1(FE_OFN7_n379), 
	.B0(mem_13__2_), 
	.A1(FE_OFN8_n380), 
	.A0(mem_12__2_));
   AOI21X1M U387 (.Y(n318), 
	.B0(n371), 
	.A1(n310), 
	.A0(n311));
   AOI22X1M U388 (.Y(n313), 
	.B1(n377), 
	.B0(mem_3__2_), 
	.A1(FE_OFN6_n378), 
	.A0(mem_2__2_));
   AOI22X1M U389 (.Y(n312), 
	.B1(FE_OFN7_n379), 
	.B0(mem_1__2_), 
	.A1(FE_OFN8_n380), 
	.A0(mem_0__2_));
   AOI21X1M U390 (.Y(n317), 
	.B0(n374), 
	.A1(n312), 
	.A0(n313));
   AOI22X1M U391 (.Y(n315), 
	.B1(n377), 
	.B0(mem_7__2_), 
	.A1(FE_OFN6_n378), 
	.A0(mem_6__2_));
   AOI22X1M U392 (.Y(n314), 
	.B1(FE_OFN7_n379), 
	.B0(mem_5__2_), 
	.A1(FE_OFN8_n380), 
	.A0(mem_4__2_));
   AOI21X1M U393 (.Y(n316), 
	.B0(n381), 
	.A1(n314), 
	.A0(n315));
   OR4X1M U394 (.Y(rdata[2]), 
	.D(n316), 
	.C(n317), 
	.B(n318), 
	.A(n319));
   AOI22X1M U395 (.Y(n321), 
	.B1(n377), 
	.B0(mem_11__3_), 
	.A1(FE_OFN6_n378), 
	.A0(mem_10__3_));
   AOI22X1M U396 (.Y(n320), 
	.B1(FE_OFN7_n379), 
	.B0(mem_9__3_), 
	.A1(FE_OFN8_n380), 
	.A0(mem_8__3_));
   AOI21X1M U397 (.Y(n331), 
	.B0(n368), 
	.A1(n320), 
	.A0(n321));
   AOI22X1M U398 (.Y(n323), 
	.B1(n377), 
	.B0(mem_15__3_), 
	.A1(FE_OFN6_n378), 
	.A0(mem_14__3_));
   AOI22X1M U399 (.Y(n322), 
	.B1(FE_OFN7_n379), 
	.B0(mem_13__3_), 
	.A1(FE_OFN8_n380), 
	.A0(mem_12__3_));
   AOI21X1M U400 (.Y(n330), 
	.B0(n371), 
	.A1(n322), 
	.A0(n323));
   AOI22X1M U401 (.Y(n325), 
	.B1(n377), 
	.B0(mem_3__3_), 
	.A1(FE_OFN6_n378), 
	.A0(mem_2__3_));
   AOI22X1M U402 (.Y(n324), 
	.B1(FE_OFN7_n379), 
	.B0(mem_1__3_), 
	.A1(FE_OFN8_n380), 
	.A0(mem_0__3_));
   AOI21X1M U403 (.Y(n329), 
	.B0(n374), 
	.A1(n324), 
	.A0(n325));
   AOI22X1M U404 (.Y(n327), 
	.B1(n377), 
	.B0(mem_7__3_), 
	.A1(FE_OFN6_n378), 
	.A0(mem_6__3_));
   AOI22X1M U405 (.Y(n326), 
	.B1(FE_OFN7_n379), 
	.B0(mem_5__3_), 
	.A1(FE_OFN8_n380), 
	.A0(mem_4__3_));
   AOI21X1M U406 (.Y(n328), 
	.B0(n381), 
	.A1(n326), 
	.A0(n327));
   OR4X1M U407 (.Y(rdata[3]), 
	.D(n328), 
	.C(n329), 
	.B(n330), 
	.A(n331));
   AOI22X1M U408 (.Y(n333), 
	.B1(n377), 
	.B0(mem_11__4_), 
	.A1(FE_OFN6_n378), 
	.A0(mem_10__4_));
   AOI22X1M U409 (.Y(n332), 
	.B1(FE_OFN7_n379), 
	.B0(mem_9__4_), 
	.A1(FE_OFN8_n380), 
	.A0(mem_8__4_));
   AOI21X1M U410 (.Y(n343), 
	.B0(n368), 
	.A1(n332), 
	.A0(n333));
   AOI22X1M U411 (.Y(n335), 
	.B1(n377), 
	.B0(mem_15__4_), 
	.A1(FE_OFN6_n378), 
	.A0(mem_14__4_));
   AOI22X1M U412 (.Y(n334), 
	.B1(FE_OFN7_n379), 
	.B0(mem_13__4_), 
	.A1(FE_OFN8_n380), 
	.A0(mem_12__4_));
   AOI21X1M U413 (.Y(n342), 
	.B0(n371), 
	.A1(n334), 
	.A0(n335));
   AOI22X1M U414 (.Y(n337), 
	.B1(n377), 
	.B0(mem_3__4_), 
	.A1(FE_OFN6_n378), 
	.A0(mem_2__4_));
   AOI22X1M U415 (.Y(n336), 
	.B1(FE_OFN7_n379), 
	.B0(mem_1__4_), 
	.A1(FE_OFN8_n380), 
	.A0(mem_0__4_));
   AOI21X1M U416 (.Y(n341), 
	.B0(n374), 
	.A1(n336), 
	.A0(n337));
   AOI22X1M U417 (.Y(n339), 
	.B1(n377), 
	.B0(mem_7__4_), 
	.A1(FE_OFN6_n378), 
	.A0(mem_6__4_));
   AOI22X1M U418 (.Y(n338), 
	.B1(FE_OFN7_n379), 
	.B0(mem_5__4_), 
	.A1(FE_OFN8_n380), 
	.A0(mem_4__4_));
   AOI21X1M U419 (.Y(n340), 
	.B0(n381), 
	.A1(n338), 
	.A0(n339));
   OR4X1M U420 (.Y(rdata[4]), 
	.D(n340), 
	.C(n341), 
	.B(n342), 
	.A(n343));
   AOI22X1M U421 (.Y(n345), 
	.B1(n377), 
	.B0(mem_11__5_), 
	.A1(FE_OFN6_n378), 
	.A0(mem_10__5_));
   AOI22X1M U422 (.Y(n344), 
	.B1(FE_OFN7_n379), 
	.B0(mem_9__5_), 
	.A1(FE_OFN8_n380), 
	.A0(mem_8__5_));
   AOI21X1M U423 (.Y(n355), 
	.B0(n368), 
	.A1(n344), 
	.A0(n345));
   AOI22X1M U424 (.Y(n347), 
	.B1(n377), 
	.B0(mem_15__5_), 
	.A1(FE_OFN6_n378), 
	.A0(mem_14__5_));
   AOI22X1M U425 (.Y(n346), 
	.B1(FE_OFN7_n379), 
	.B0(mem_13__5_), 
	.A1(FE_OFN8_n380), 
	.A0(mem_12__5_));
   AOI21X1M U426 (.Y(n354), 
	.B0(n371), 
	.A1(n346), 
	.A0(n347));
   AOI22X1M U427 (.Y(n349), 
	.B1(n377), 
	.B0(mem_3__5_), 
	.A1(FE_OFN6_n378), 
	.A0(mem_2__5_));
   AOI22X1M U428 (.Y(n348), 
	.B1(FE_OFN7_n379), 
	.B0(mem_1__5_), 
	.A1(FE_OFN8_n380), 
	.A0(mem_0__5_));
   AOI21X1M U429 (.Y(n353), 
	.B0(n374), 
	.A1(n348), 
	.A0(n349));
   AOI22X1M U430 (.Y(n351), 
	.B1(n377), 
	.B0(mem_7__5_), 
	.A1(FE_OFN6_n378), 
	.A0(mem_6__5_));
   AOI22X1M U431 (.Y(n350), 
	.B1(FE_OFN7_n379), 
	.B0(mem_5__5_), 
	.A1(FE_OFN8_n380), 
	.A0(mem_4__5_));
   AOI21X1M U432 (.Y(n352), 
	.B0(n381), 
	.A1(n350), 
	.A0(n351));
   OR4X1M U433 (.Y(rdata[5]), 
	.D(n352), 
	.C(n353), 
	.B(n354), 
	.A(n355));
   AOI22X1M U434 (.Y(n357), 
	.B1(n377), 
	.B0(mem_11__6_), 
	.A1(FE_OFN6_n378), 
	.A0(mem_10__6_));
   AOI22X1M U435 (.Y(n356), 
	.B1(FE_OFN7_n379), 
	.B0(mem_9__6_), 
	.A1(FE_OFN8_n380), 
	.A0(mem_8__6_));
   AOI21X1M U436 (.Y(n367), 
	.B0(n368), 
	.A1(n356), 
	.A0(n357));
   AOI22X1M U437 (.Y(n359), 
	.B1(n377), 
	.B0(mem_15__6_), 
	.A1(FE_OFN6_n378), 
	.A0(mem_14__6_));
   AOI22X1M U438 (.Y(n358), 
	.B1(FE_OFN7_n379), 
	.B0(mem_13__6_), 
	.A1(FE_OFN8_n380), 
	.A0(mem_12__6_));
   AOI21X1M U439 (.Y(n366), 
	.B0(n371), 
	.A1(n358), 
	.A0(n359));
   AOI22X1M U440 (.Y(n361), 
	.B1(n377), 
	.B0(mem_3__6_), 
	.A1(FE_OFN6_n378), 
	.A0(mem_2__6_));
   AOI22X1M U441 (.Y(n360), 
	.B1(FE_OFN7_n379), 
	.B0(mem_1__6_), 
	.A1(FE_OFN8_n380), 
	.A0(mem_0__6_));
   AOI21X1M U442 (.Y(n365), 
	.B0(n374), 
	.A1(n360), 
	.A0(n361));
   AOI22X1M U443 (.Y(n363), 
	.B1(n377), 
	.B0(mem_7__6_), 
	.A1(FE_OFN6_n378), 
	.A0(mem_6__6_));
   AOI22X1M U444 (.Y(n362), 
	.B1(FE_OFN7_n379), 
	.B0(mem_5__6_), 
	.A1(FE_OFN8_n380), 
	.A0(mem_4__6_));
   AOI21X1M U445 (.Y(n364), 
	.B0(n381), 
	.A1(n362), 
	.A0(n363));
   OR4X1M U446 (.Y(rdata[6]), 
	.D(n364), 
	.C(n365), 
	.B(n366), 
	.A(n367));
   AOI22X1M U447 (.Y(n370), 
	.B1(n377), 
	.B0(mem_11__7_), 
	.A1(FE_OFN6_n378), 
	.A0(mem_10__7_));
   AOI22X1M U448 (.Y(n369), 
	.B1(FE_OFN7_n379), 
	.B0(mem_9__7_), 
	.A1(FE_OFN8_n380), 
	.A0(mem_8__7_));
   AOI21X1M U449 (.Y(n387), 
	.B0(n368), 
	.A1(n369), 
	.A0(n370));
   AOI22X1M U450 (.Y(n373), 
	.B1(n377), 
	.B0(test_so2), 
	.A1(FE_OFN6_n378), 
	.A0(mem_14__7_));
   AOI22X1M U451 (.Y(n372), 
	.B1(FE_OFN7_n379), 
	.B0(mem_13__7_), 
	.A1(FE_OFN8_n380), 
	.A0(mem_12__7_));
   AOI21X1M U452 (.Y(n386), 
	.B0(n371), 
	.A1(n372), 
	.A0(n373));
   AOI22X1M U453 (.Y(n376), 
	.B1(n377), 
	.B0(mem_3__7_), 
	.A1(FE_OFN6_n378), 
	.A0(mem_2__7_));
   AOI22X1M U454 (.Y(n375), 
	.B1(FE_OFN7_n379), 
	.B0(mem_1__7_), 
	.A1(FE_OFN8_n380), 
	.A0(mem_0__7_));
   AOI21X1M U455 (.Y(n385), 
	.B0(n374), 
	.A1(n375), 
	.A0(n376));
   AOI22X1M U456 (.Y(n383), 
	.B1(n377), 
	.B0(mem_7__7_), 
	.A1(FE_OFN6_n378), 
	.A0(mem_6__7_));
   AOI22X1M U457 (.Y(n382), 
	.B1(FE_OFN7_n379), 
	.B0(mem_5__7_), 
	.A1(FE_OFN8_n380), 
	.A0(mem_4__7_));
   AOI21X1M U458 (.Y(n384), 
	.B0(n381), 
	.A1(n382), 
	.A0(n383));
   OR4X1M U459 (.Y(rdata[7]), 
	.D(n384), 
	.C(n385), 
	.B(n386), 
	.A(n387));
   DLY1X1M U460 (.Y(n454), 
	.A(n473));
   DLY1X1M U461 (.Y(n455), 
	.A(n536));
   DLY1X1M U462 (.Y(n456), 
	.A(n535));
   DLY1X1M U463 (.Y(n457), 
	.A(n537));
   DLY1X1M U464 (.Y(n458), 
	.A(n540));
   DLY1X1M U465 (.Y(n459), 
	.A(n552));
   DLY1X1M U466 (.Y(n460), 
	.A(n539));
   DLY1X1M U467 (.Y(n461), 
	.A(n474));
   DLY1X1M U468 (.Y(n462), 
	.A(n454));
   DLY1X1M U469 (.Y(n463), 
	.A(n537));
   DLY1X1M U470 (.Y(n464), 
	.A(n488));
   DLY1X1M U471 (.Y(n465), 
	.A(n489));
   DLY1X1M U472 (.Y(n466), 
	.A(n490));
   DLY1X1M U473 (.Y(n467), 
	.A(n455));
   DLY1X1M U474 (.Y(n468), 
	.A(n491));
   DLY1X1M U475 (.Y(n469), 
	.A(n456));
   DLY1X1M U476 (.Y(n470), 
	.A(n458));
   DLY1X1M U479 (.Y(n473), 
	.A(n540));
   INVXLM U480 (.Y(n552), 
	.A(n473));
   INVXLM U481 (.Y(n474), 
	.A(n459));
   INVXLM U482 (.Y(n475), 
	.A(n459));
   INVXLM U483 (.Y(n554), 
	.A(n454));
   INVXLM U484 (.Y(n476), 
	.A(n554));
   DLY1X1M U485 (.Y(n477), 
	.A(test_se));
   DLY1X1M U486 (.Y(n478), 
	.A(n545));
   DLY1X1M U487 (.Y(n479), 
	.A(n546));
   DLY1X1M U488 (.Y(n480), 
	.A(n547));
   DLY1X1M U489 (.Y(n481), 
	.A(n548));
   DLY1X1M U490 (.Y(n482), 
	.A(n549));
   DLY1X1M U491 (.Y(n483), 
	.A(n550));
   DLY1X1M U492 (.Y(n484), 
	.A(n551));
   DLY1X1M U493 (.Y(n485), 
	.A(n553));
   INVXLM U494 (.Y(n538), 
	.A(n457));
   INVXLM U495 (.Y(n486), 
	.A(n538));
   DLY1X1M U496 (.Y(n487), 
	.A(n544));
   INVXLM U497 (.Y(n539), 
	.A(n536));
   INVXLM U498 (.Y(n488), 
	.A(n460));
   INVXLM U499 (.Y(n489), 
	.A(n460));
   INVXLM U500 (.Y(n542), 
	.A(n455));
   INVXLM U501 (.Y(n490), 
	.A(n542));
   INVXLM U502 (.Y(n543), 
	.A(n456));
   INVXLM U503 (.Y(n491), 
	.A(n543));
   INVXLM U504 (.Y(n555), 
	.A(n458));
   INVXLM U505 (.Y(n492), 
	.A(n555));
   DLY1X1M U506 (.Y(n493), 
	.A(n597));
   DLY1X1M U507 (.Y(n494), 
	.A(n556));
   DLY1X1M U508 (.Y(n495), 
	.A(n557));
   DLY1X1M U509 (.Y(n496), 
	.A(n558));
   DLY1X1M U510 (.Y(n497), 
	.A(n559));
   DLY1X1M U511 (.Y(n498), 
	.A(n560));
   DLY1X1M U512 (.Y(n499), 
	.A(n561));
   DLY1X1M U513 (.Y(n500), 
	.A(n562));
   DLY1X1M U514 (.Y(n501), 
	.A(n563));
   DLY1X1M U515 (.Y(n502), 
	.A(n564));
   DLY1X1M U516 (.Y(n503), 
	.A(n565));
   DLY1X1M U517 (.Y(n504), 
	.A(n566));
   DLY1X1M U518 (.Y(n505), 
	.A(n567));
   DLY1X1M U519 (.Y(n506), 
	.A(n568));
   DLY1X1M U520 (.Y(n507), 
	.A(n569));
   DLY1X1M U521 (.Y(n508), 
	.A(n570));
   DLY1X1M U522 (.Y(n509), 
	.A(n571));
   DLY1X1M U523 (.Y(n510), 
	.A(n572));
   DLY1X1M U524 (.Y(n511), 
	.A(n573));
   DLY1X1M U525 (.Y(n512), 
	.A(n574));
   DLY1X1M U526 (.Y(n513), 
	.A(n575));
   DLY1X1M U527 (.Y(n514), 
	.A(n576));
   DLY1X1M U528 (.Y(n515), 
	.A(n577));
   DLY1X1M U529 (.Y(n516), 
	.A(n578));
   DLY1X1M U530 (.Y(n517), 
	.A(n579));
   DLY1X1M U531 (.Y(n518), 
	.A(n580));
   DLY1X1M U532 (.Y(n519), 
	.A(n581));
   DLY1X1M U533 (.Y(n520), 
	.A(n582));
   DLY1X1M U534 (.Y(n521), 
	.A(n583));
   DLY1X1M U535 (.Y(n522), 
	.A(n584));
   DLY1X1M U536 (.Y(n523), 
	.A(n585));
   DLY1X1M U537 (.Y(n524), 
	.A(n586));
   DLY1X1M U538 (.Y(n525), 
	.A(n587));
   DLY1X1M U539 (.Y(n526), 
	.A(n588));
   DLY1X1M U540 (.Y(n527), 
	.A(n589));
   DLY1X1M U541 (.Y(n528), 
	.A(n590));
   DLY1X1M U542 (.Y(n529), 
	.A(n591));
   DLY1X1M U543 (.Y(n530), 
	.A(n592));
   DLY1X1M U544 (.Y(n531), 
	.A(n593));
   DLY1X1M U545 (.Y(n532), 
	.A(n594));
   DLY1X1M U546 (.Y(n533), 
	.A(n595));
   DLY1X1M U547 (.Y(n534), 
	.A(n596));
   DLY1X1M U548 (.Y(n535), 
	.A(n477));
   DLY1X1M U549 (.Y(n536), 
	.A(n477));
   DLY1X1M U550 (.Y(n537), 
	.A(test_se));
   DLY1X1M U551 (.Y(n540), 
	.A(n535));
   DLY1X1M U552 (.Y(n541), 
	.A(n457));
   DLY1X1M U553 (.Y(n544), 
	.A(n541));
   DLY1X1M U554 (.Y(n545), 
	.A(n463));
   DLY1X1M U555 (.Y(n546), 
	.A(n463));
   DLY1X1M U556 (.Y(n547), 
	.A(n468));
   DLY1X1M U557 (.Y(n548), 
	.A(n464));
   DLY1X1M U558 (.Y(n549), 
	.A(n468));
   DLY1X1M U559 (.Y(n550), 
	.A(n464));
   DLY1X1M U560 (.Y(n551), 
	.A(n466));
   DLY1X1M U561 (.Y(n553), 
	.A(n466));
   DLY1X1M U562 (.Y(n556), 
	.A(n467));
   DLY1X1M U563 (.Y(n557), 
	.A(n469));
   DLY1X1M U564 (.Y(n558), 
	.A(n541));
   DLY1X1M U565 (.Y(n559), 
	.A(n465));
   DLY1X1M U566 (.Y(n560), 
	.A(n486));
   DLY1X1M U567 (.Y(n561), 
	.A(n544));
   DLY1X1M U568 (.Y(n562), 
	.A(n487));
   DLY1X1M U569 (.Y(n563), 
	.A(n487));
   DLY1X1M U570 (.Y(n564), 
	.A(n545));
   DLY1X1M U571 (.Y(n565), 
	.A(n478));
   DLY1X1M U572 (.Y(n566), 
	.A(n478));
   DLY1X1M U573 (.Y(n567), 
	.A(n465));
   DLY1X1M U574 (.Y(n568), 
	.A(n467));
   DLY1X1M U575 (.Y(n569), 
	.A(n469));
   DLY1X1M U576 (.Y(n570), 
	.A(n546));
   DLY1X1M U577 (.Y(n571), 
	.A(n479));
   DLY1X1M U578 (.Y(n572), 
	.A(n479));
   DLY1X1M U579 (.Y(n573), 
	.A(n547));
   DLY1X1M U580 (.Y(n574), 
	.A(n480));
   DLY1X1M U581 (.Y(n575), 
	.A(n480));
   DLY1X1M U582 (.Y(n576), 
	.A(n548));
   DLY1X1M U583 (.Y(n577), 
	.A(n481));
   DLY1X1M U584 (.Y(n578), 
	.A(n481));
   DLY1X1M U585 (.Y(n579), 
	.A(n549));
   DLY1X1M U586 (.Y(n580), 
	.A(n482));
   DLY1X1M U587 (.Y(n581), 
	.A(n482));
   DLY1X1M U588 (.Y(n582), 
	.A(n550));
   DLY1X1M U589 (.Y(n583), 
	.A(n483));
   DLY1X1M U590 (.Y(n584), 
	.A(n483));
   DLY1X1M U591 (.Y(n585), 
	.A(n551));
   DLY1X1M U592 (.Y(n586), 
	.A(n484));
   DLY1X1M U593 (.Y(n587), 
	.A(n484));
   DLY1X1M U594 (.Y(n588), 
	.A(n461));
   DLY1X1M U595 (.Y(n589), 
	.A(n475));
   DLY1X1M U596 (.Y(n590), 
	.A(n461));
   DLY1X1M U597 (.Y(n591), 
	.A(n553));
   DLY1X1M U598 (.Y(n592), 
	.A(n485));
   DLY1X1M U599 (.Y(n593), 
	.A(n485));
   DLY1X1M U600 (.Y(n594), 
	.A(n462));
   DLY1X1M U601 (.Y(n595), 
	.A(n476));
   DLY1X1M U602 (.Y(n596), 
	.A(n462));
   DLY1X1M U603 (.Y(n597), 
	.A(n470));
   INVXLM U2 (.Y(n1), 
	.A(mem_8__2_));
   INVX2M U3 (.Y(test_so1), 
	.A(n1));
   NOR2X2M U4 (.Y(n380), 
	.B(raddr[1]), 
	.A(raddr[0]));
endmodule

module DF_SYNC_PTR_WIDTH5_test_0 (
	CLK, 
	RST, 
	async_ptr, 
	sync_ptr, 
	test_si, 
	test_so, 
	test_se, 
	REF_CLK_M__L7_N1);
   input CLK;
   input RST;
   input [4:0] async_ptr;
   output [4:0] sync_ptr;
   input test_si;
   output test_so;
   input test_se;
   input REF_CLK_M__L7_N1;

   // Internal wires
   wire sync_reg_3_;
   wire sync_reg_2_;
   wire sync_reg_1_;
   wire sync_reg_0_;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;

   SDFFRQX2M sync_ptr_reg_2_ (.SI(sync_ptr[1]), 
	.SE(n21), 
	.RN(RST), 
	.Q(sync_ptr[2]), 
	.D(sync_reg_2_), 
	.CK(CLK));
   SDFFRQX2M sync_ptr_reg_4_ (.SI(sync_ptr[3]), 
	.SE(n15), 
	.RN(RST), 
	.Q(sync_ptr[4]), 
	.D(test_so), 
	.CK(REF_CLK_M__L7_N1));
   SDFFRQX2M sync_ptr_reg_3_ (.SI(sync_ptr[2]), 
	.SE(n23), 
	.RN(RST), 
	.Q(sync_ptr[3]), 
	.D(sync_reg_3_), 
	.CK(CLK));
   SDFFRQX2M sync_ptr_reg_1_ (.SI(sync_ptr[0]), 
	.SE(n24), 
	.RN(RST), 
	.Q(sync_ptr[1]), 
	.D(sync_reg_1_), 
	.CK(REF_CLK_M__L7_N1));
   SDFFRQX2M sync_ptr_reg_0_ (.SI(test_si), 
	.SE(n18), 
	.RN(RST), 
	.Q(sync_ptr[0]), 
	.D(sync_reg_0_), 
	.CK(REF_CLK_M__L7_N1));
   SDFFRQX2M sync_reg_reg_3_ (.SI(sync_reg_2_), 
	.SE(n23), 
	.RN(RST), 
	.Q(sync_reg_3_), 
	.D(async_ptr[3]), 
	.CK(REF_CLK_M__L7_N1));
   SDFFRQX2M sync_reg_reg_2_ (.SI(sync_reg_1_), 
	.SE(n24), 
	.RN(RST), 
	.Q(sync_reg_2_), 
	.D(async_ptr[2]), 
	.CK(REF_CLK_M__L7_N1));
   SDFFRQX2M sync_reg_reg_1_ (.SI(sync_reg_0_), 
	.SE(n18), 
	.RN(RST), 
	.Q(sync_reg_1_), 
	.D(async_ptr[1]), 
	.CK(REF_CLK_M__L7_N1));
   SDFFRQX2M sync_reg_reg_0_ (.SI(sync_ptr[4]), 
	.SE(n22), 
	.RN(RST), 
	.Q(sync_reg_0_), 
	.D(async_ptr[0]), 
	.CK(REF_CLK_M__L7_N1));
   DLY1X1M U15 (.Y(n15), 
	.A(test_se));
   DLY1X1M U16 (.Y(n16), 
	.A(n20));
   DLY1X1M U17 (.Y(n17), 
	.A(n15));
   DLY1X1M U18 (.Y(n18), 
	.A(n21));
   INVXLM U19 (.Y(n19), 
	.A(test_se));
   INVXLM U20 (.Y(n20), 
	.A(n19));
   DLY1X1M U21 (.Y(n21), 
	.A(n17));
   DLY1X1M U23 (.Y(n23), 
	.A(n17));
   DLY1X1M U24 (.Y(n24), 
	.A(n16));
   SDFFRQX4M sync_reg_reg_4_ (.SI(sync_reg_3_), 
	.SE(n22), 
	.RN(RST), 
	.Q(test_so), 
	.D(async_ptr[4]), 
	.CK(REF_CLK_M__L7_N1));
   BUFX2M U3 (.Y(n22), 
	.A(n16));
endmodule

module DF_SYNC_PTR_WIDTH5_test_1 (
	CLK, 
	RST, 
	async_ptr, 
	sync_ptr, 
	test_si, 
	test_so, 
	test_se);
   input CLK;
   input RST;
   input [4:0] async_ptr;
   output [4:0] sync_ptr;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire sync_reg_3_;
   wire sync_reg_2_;
   wire sync_reg_1_;
   wire sync_reg_0_;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;

   SDFFRQX2M sync_ptr_reg_4_ (.SI(sync_ptr[3]), 
	.SE(n30), 
	.RN(RST), 
	.Q(sync_ptr[4]), 
	.D(test_so), 
	.CK(CLK));
   SDFFRQX2M sync_ptr_reg_3_ (.SI(sync_ptr[2]), 
	.SE(n32), 
	.RN(RST), 
	.Q(sync_ptr[3]), 
	.D(sync_reg_3_), 
	.CK(CLK));
   SDFFRQX2M sync_ptr_reg_2_ (.SI(sync_ptr[1]), 
	.SE(n29), 
	.RN(RST), 
	.Q(sync_ptr[2]), 
	.D(sync_reg_2_), 
	.CK(CLK));
   SDFFRQX2M sync_ptr_reg_0_ (.SI(test_si), 
	.SE(n31), 
	.RN(RST), 
	.Q(sync_ptr[0]), 
	.D(sync_reg_0_), 
	.CK(CLK));
   SDFFRQX2M sync_ptr_reg_1_ (.SI(sync_ptr[0]), 
	.SE(n31), 
	.RN(RST), 
	.Q(sync_ptr[1]), 
	.D(sync_reg_1_), 
	.CK(CLK));
   SDFFRQX2M sync_reg_reg_4_ (.SI(sync_reg_3_), 
	.SE(n33), 
	.RN(RST), 
	.Q(test_so), 
	.D(async_ptr[4]), 
	.CK(CLK));
   SDFFRQX2M sync_reg_reg_3_ (.SI(sync_reg_2_), 
	.SE(n29), 
	.RN(RST), 
	.Q(sync_reg_3_), 
	.D(async_ptr[3]), 
	.CK(CLK));
   SDFFRQX2M sync_reg_reg_2_ (.SI(sync_reg_1_), 
	.SE(n33), 
	.RN(RST), 
	.Q(sync_reg_2_), 
	.D(async_ptr[2]), 
	.CK(CLK));
   SDFFRQX2M sync_reg_reg_1_ (.SI(sync_reg_0_), 
	.SE(n30), 
	.RN(RST), 
	.Q(sync_reg_1_), 
	.D(async_ptr[1]), 
	.CK(CLK));
   SDFFRQX2M sync_reg_reg_0_ (.SI(sync_ptr[4]), 
	.SE(n32), 
	.RN(RST), 
	.Q(sync_reg_0_), 
	.D(async_ptr[0]), 
	.CK(CLK));
   DLY1X1M U15 (.Y(n25), 
	.A(test_se));
   DLY1X1M U16 (.Y(n26), 
	.A(n35));
   DLY1X1M U17 (.Y(n27), 
	.A(n36));
   DLY1X1M U18 (.Y(n28), 
	.A(n37));
   DLY1X1M U19 (.Y(n29), 
	.A(n38));
   DLY1X1M U20 (.Y(n30), 
	.A(n27));
   DLY1X1M U21 (.Y(n31), 
	.A(n27));
   DLY1X1M U22 (.Y(n32), 
	.A(n28));
   DLY1X1M U23 (.Y(n33), 
	.A(n28));
   INVXLM U24 (.Y(n34), 
	.A(n25));
   INVXLM U25 (.Y(n35), 
	.A(n25));
   INVXLM U26 (.Y(n36), 
	.A(n26));
   INVXLM U27 (.Y(n37), 
	.A(n34));
   INVXLM U28 (.Y(n38), 
	.A(n26));
endmodule

module ASYNC_FIFO_TOP_DATA_WIDTH8_ADDRSIZE4_test_1 (
	R_CLK, 
	W_CLK, 
	W_RST, 
	W_INC, 
	WR_DATA, 
	R_RST, 
	R_INC, 
	FULL, 
	RD_DATA, 
	EMPTY, 
	test_si3, 
	test_si2, 
	test_si1, 
	test_so3, 
	test_so2, 
	test_so1, 
	test_se, 
	UART_TX_CLK__L3_N2, 
	REF_CLK_M__L7_N1, 
	REF_CLK_M__L7_N10, 
	REF_CLK_M__L7_N11, 
	REF_CLK_M__L7_N12, 
	REF_CLK_M__L7_N19, 
	REF_CLK_M__L7_N2, 
	REF_CLK_M__L7_N8, 
	REF_CLK_M__L7_N9);
   input R_CLK;
   input W_CLK;
   input W_RST;
   input W_INC;
   input [7:0] WR_DATA;
   input R_RST;
   input R_INC;
   output FULL;
   output [7:0] RD_DATA;
   output EMPTY;
   input test_si3;
   input test_si2;
   input test_si1;
   output test_so3;
   output test_so2;
   output test_so1;
   input test_se;
   input UART_TX_CLK__L3_N2;
   input REF_CLK_M__L7_N1;
   input REF_CLK_M__L7_N10;
   input REF_CLK_M__L7_N11;
   input REF_CLK_M__L7_N12;
   input REF_CLK_M__L7_N19;
   input REF_CLK_M__L7_N2;
   input REF_CLK_M__L7_N8;
   input REF_CLK_M__L7_N9;

   // Internal wires
   wire n8;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire [4:0] wq2_rptr;
   wire [3:0] waddr;
   wire [4:0] wptr;
   wire [4:0] rq2_wptr;
   wire [3:0] raddr;
   wire [4:0] rptr;

   DLY1X1M U5 (.Y(n13), 
	.A(test_se));
   DLY1X1M U6 (.Y(n14), 
	.A(n16));
   DLY1X1M U7 (.Y(n15), 
	.A(n16));
   DLY1X1M U8 (.Y(n16), 
	.A(test_se));
   DLY1X1M U9 (.Y(n17), 
	.A(test_se));
   FIFO_WR_ADDRSIZE4_test_1 fifo_wr (.wclk(REF_CLK_M__L7_N1), 
	.wrst_n(W_RST), 
	.winc(W_INC), 
	.wq2_rptr({ wq2_rptr[4],
		wq2_rptr[3],
		wq2_rptr[2],
		wq2_rptr[1],
		wq2_rptr[0] }), 
	.wfull(FULL), 
	.waddr({ waddr[3],
		waddr[2],
		waddr[1],
		waddr[0] }), 
	.wptr({ wptr[4],
		wptr[3],
		wptr[2],
		wptr[1],
		wptr[0] }), 
	.test_si(rptr[4]), 
	.test_se(n17), 
	.REF_CLK_M__L7_N9(REF_CLK_M__L7_N9));
   FIFO_RD_ADDRSIZE4_test_1 fifo_rd (.rclk(UART_TX_CLK__L3_N2), 
	.rrst_n(R_RST), 
	.rinc(R_INC), 
	.rq2_wptr({ rq2_wptr[4],
		rq2_wptr[3],
		rq2_wptr[2],
		rq2_wptr[1],
		rq2_wptr[0] }), 
	.rempty(EMPTY), 
	.raddr({ raddr[3],
		raddr[2],
		raddr[1],
		raddr[0] }), 
	.rptr({ rptr[4],
		rptr[3],
		rptr[2],
		rptr[1],
		rptr[0] }), 
	.test_si(n8), 
	.test_se(n13));
   FIFO_MEM_CNTRL_DATA_WIDTH8_ADDRSIZE4_test_1 fifo_mem (.wclk(W_CLK), 
	.winc(W_INC), 
	.wfull(FULL), 
	.waddr({ waddr[3],
		waddr[2],
		waddr[1],
		waddr[0] }), 
	.raddr({ raddr[3],
		raddr[2],
		raddr[1],
		raddr[0] }), 
	.wdata({ WR_DATA[7],
		WR_DATA[6],
		WR_DATA[5],
		WR_DATA[4],
		WR_DATA[3],
		WR_DATA[2],
		WR_DATA[1],
		WR_DATA[0] }), 
	.rdata({ RD_DATA[7],
		RD_DATA[6],
		RD_DATA[5],
		RD_DATA[4],
		RD_DATA[3],
		RD_DATA[2],
		RD_DATA[1],
		RD_DATA[0] }), 
	.test_si2(test_si2), 
	.test_si1(test_si1), 
	.test_so2(n8), 
	.test_so1(test_so1), 
	.test_se(n15), 
	.REF_CLK_M__L7_N10(REF_CLK_M__L7_N10), 
	.REF_CLK_M__L7_N11(REF_CLK_M__L7_N11), 
	.REF_CLK_M__L7_N12(REF_CLK_M__L7_N12), 
	.REF_CLK_M__L7_N19(REF_CLK_M__L7_N19), 
	.REF_CLK_M__L7_N2(REF_CLK_M__L7_N2), 
	.REF_CLK_M__L7_N8(REF_CLK_M__L7_N8));
   DF_SYNC_PTR_WIDTH5_test_0 sync_r2w (.CLK(W_CLK), 
	.RST(W_RST), 
	.async_ptr({ rptr[4],
		rptr[3],
		rptr[2],
		rptr[1],
		rptr[0] }), 
	.sync_ptr({ wq2_rptr[4],
		wq2_rptr[3],
		wq2_rptr[2],
		wq2_rptr[1],
		wq2_rptr[0] }), 
	.test_si(wptr[4]), 
	.test_so(test_so2), 
	.test_se(n14), 
	.REF_CLK_M__L7_N1(REF_CLK_M__L7_N1));
   DF_SYNC_PTR_WIDTH5_test_1 sync_w2r (.CLK(R_CLK), 
	.RST(R_RST), 
	.async_ptr({ wptr[4],
		wptr[3],
		wptr[2],
		wptr[1],
		wptr[0] }), 
	.sync_ptr({ rq2_wptr[4],
		rq2_wptr[3],
		rq2_wptr[2],
		rq2_wptr[1],
		rq2_wptr[0] }), 
	.test_si(test_si3), 
	.test_so(test_so3), 
	.test_se(n17));
endmodule

module pulse_gen_test_1 (
	clk, 
	rst, 
	lvl_sig, 
	pulse_sig, 
	test_si, 
	test_so, 
	test_se, 
	UART_TX_CLK__L3_N3);
   input clk;
   input rst;
   input lvl_sig;
   output pulse_sig;
   input test_si;
   output test_so;
   input test_se;
   input UART_TX_CLK__L3_N3;

   // Internal wires
   wire pls_flop;

   SDFFRQX2M pls_flop_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(pls_flop), 
	.D(test_so), 
	.CK(clk));
   SDFFRQX2M rcv_flop_reg (.SI(pls_flop), 
	.SE(test_se), 
	.RN(rst), 
	.Q(test_so), 
	.D(lvl_sig), 
	.CK(UART_TX_CLK__L3_N3));
   NOR2BX2M U5 (.Y(pulse_sig), 
	.B(pls_flop), 
	.AN(test_so));
endmodule

module CLK_DIV_0_DW01_inc_0 (
	A, 
	SUM);
   input [7:0] A;
   output [7:0] SUM;

   // Internal wires
   wire [7:2] carry;

   ADDHX1M U1_1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.B(carry[6]), 
	.A(A[6]));
   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   CLKXOR2X2M U1 (.Y(SUM[7]), 
	.B(A[7]), 
	.A(carry[7]));
endmodule

module CLK_DIV_test_0 (
	i_ref_clk, 
	i_rst_n, 
	i_clk_en, 
	i_div_ratio, 
	o_div_clk, 
	test_si, 
	test_so, 
	test_se, 
	n23__Exclude_0_NET, 
	UART_CLK_M__L10_N1, 
	UART_CLK_M__L4_N0);
   input i_ref_clk;
   input i_rst_n;
   input i_clk_en;
   input [7:0] i_div_ratio;
   output o_div_clk;
   input test_si;
   output test_so;
   input test_se;
   input n23__Exclude_0_NET;
   input UART_CLK_M__L10_N1;
   input UART_CLK_M__L4_N0;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire FE_UNCONNECTED_0;
   wire N1;
   wire N6;
   wire N7;
   wire N8;
   wire N9;
   wire N10;
   wire N11;
   wire N12;
   wire N13;
   wire N14;
   wire N15;
   wire N16;
   wire N18;
   wire N19;
   wire N20;
   wire N21;
   wire N22;
   wire N23;
   wire N24;
   wire N30;
   wire N31;
   wire N32;
   wire N33;
   wire N34;
   wire N35;
   wire N36;
   wire N45;
   wire N46;
   wire N47;
   wire N48;
   wire N49;
   wire N50;
   wire N51;
   wire N52;
   wire n18;
   wire n19;
   wire n22;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n20;
   wire n21;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire [7:0] counter;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M counter_reg_4_ (.SI(counter[3]), 
	.SE(n57), 
	.RN(i_rst_n), 
	.Q(counter[4]), 
	.D(N49), 
	.CK(UART_CLK_M__L10_N1));
   SDFFRQX2M counter_reg_3_ (.SI(counter[2]), 
	.SE(n56), 
	.RN(i_rst_n), 
	.Q(counter[3]), 
	.D(N48), 
	.CK(UART_CLK_M__L10_N1));
   SDFFRQX2M counter_reg_7_ (.SI(counter[6]), 
	.SE(n55), 
	.RN(i_rst_n), 
	.Q(counter[7]), 
	.D(N52), 
	.CK(UART_CLK_M__L10_N1));
   SDFFRQX2M counter_reg_2_ (.SI(counter[1]), 
	.SE(n60), 
	.RN(i_rst_n), 
	.Q(counter[2]), 
	.D(N47), 
	.CK(UART_CLK_M__L10_N1));
   SDFFRQX2M counter_reg_6_ (.SI(counter[5]), 
	.SE(n56), 
	.RN(i_rst_n), 
	.Q(counter[6]), 
	.D(N51), 
	.CK(UART_CLK_M__L10_N1));
   SDFFRQX2M counter_reg_5_ (.SI(counter[4]), 
	.SE(n55), 
	.RN(i_rst_n), 
	.Q(counter[5]), 
	.D(N50), 
	.CK(UART_CLK_M__L10_N1));
   NOR2X2M U6 (.Y(N14), 
	.B(i_div_ratio[7]), 
	.A(n27));
   OR4X1M U7 (.Y(N15), 
	.D(n48), 
	.C(n49), 
	.B(n50), 
	.A(n51));
   INVX2M U8 (.Y(n2), 
	.A(N15));
   NOR3X2M U10 (.Y(n36), 
	.C(counter[7]), 
	.B(N23), 
	.A(n30));
   NOR2X2M U18 (.Y(n28), 
	.B(N16), 
	.A(n39));
   OR2X2M U19 (.Y(n27), 
	.B(i_div_ratio[6]), 
	.A(n26));
   OR2X2M U20 (.Y(n23), 
	.B(i_div_ratio[2]), 
	.A(n21));
   OR2X2M U21 (.Y(n24), 
	.B(i_div_ratio[3]), 
	.A(n23));
   OR2X2M U22 (.Y(n25), 
	.B(i_div_ratio[4]), 
	.A(n24));
   OR2X2M U23 (.Y(n26), 
	.B(i_div_ratio[5]), 
	.A(n25));
   OAI2BB1XLM U24 (.Y(N12), 
	.B0(n27), 
	.A1N(i_div_ratio[6]), 
	.A0N(n26));
   NAND3BXLM U25 (.Y(n50), 
	.C(n46), 
	.B(n47), 
	.AN(N14));
   OAI2BB1XLM U26 (.Y(N11), 
	.B0(n26), 
	.A1N(i_div_ratio[5]), 
	.A0N(n25));
   OR2X2M U27 (.Y(n8), 
	.B(i_div_ratio[5]), 
	.A(n7));
   OR2X2M U28 (.Y(n6), 
	.B(i_div_ratio[3]), 
	.A(n5));
   OR2X2M U29 (.Y(n7), 
	.B(i_div_ratio[4]), 
	.A(n6));
   OAI2BB1XLM U30 (.Y(N10), 
	.B0(n25), 
	.A1N(i_div_ratio[4]), 
	.A0N(n24));
   OAI2BB1XLM U31 (.Y(N9), 
	.B0(n24), 
	.A1N(i_div_ratio[3]), 
	.A0N(n23));
   OAI2BB1XLM U32 (.Y(N20), 
	.B0(n8), 
	.A1N(i_div_ratio[5]), 
	.A0N(n7));
   NOR2BX2M U33 (.Y(n44), 
	.B(counter[0]), 
	.AN(N6));
   NOR2BX2M U34 (.Y(n45), 
	.B(N6), 
	.AN(counter[0]));
   OAI2BB1XLM U35 (.Y(N19), 
	.B0(n7), 
	.A1N(i_div_ratio[4]), 
	.A0N(n6));
   OAI2BB1XLM U36 (.Y(N8), 
	.B0(n23), 
	.A1N(i_div_ratio[2]), 
	.A0N(n21));
   OAI2BB1XLM U37 (.Y(N18), 
	.B0(n6), 
	.A1N(i_div_ratio[3]), 
	.A0N(n5));
   NAND2BX2M U38 (.Y(n19), 
	.B(N1), 
	.AN(n2));
   NOR2BX2M U39 (.Y(N46), 
	.B(n19), 
	.AN(N30));
   NOR2BX2M U40 (.Y(N47), 
	.B(n19), 
	.AN(N31));
   NOR2BX2M U41 (.Y(N48), 
	.B(n19), 
	.AN(N32));
   NOR2BX2M U42 (.Y(N49), 
	.B(n19), 
	.AN(N33));
   NOR2BX2M U43 (.Y(N50), 
	.B(n19), 
	.AN(N34));
   NOR2BX2M U44 (.Y(N51), 
	.B(n19), 
	.AN(N35));
   OR2X2M U45 (.Y(n21), 
	.B(i_div_ratio[0]), 
	.A(i_div_ratio[1]));
   XNOR2X2M U46 (.Y(n22), 
	.B(n18), 
	.A(n23__Exclude_0_NET));
   AOI22X1M U47 (.Y(n18), 
	.B1(N1), 
	.B0(N24), 
	.A1(N1), 
	.A0(n2));
   NOR2BX2M U48 (.Y(N52), 
	.B(n19), 
	.AN(N36));
   NOR2BX2M U49 (.Y(N45), 
	.B(n19), 
	.AN(n39));
   OR2X2M U50 (.Y(n5), 
	.B(i_div_ratio[1]), 
	.A(i_div_ratio[2]));
   INVX2M U51 (.Y(n39), 
	.A(counter[0]));
   OA21X2M U52 (.Y(N1), 
	.B0(HTIE_LTIEHI_NET), 
	.A1(n4), 
	.A0(n3));
   OR4X1M U54 (.Y(n4), 
	.D(i_div_ratio[4]), 
	.C(i_div_ratio[5]), 
	.B(i_div_ratio[6]), 
	.A(i_div_ratio[7]));
   MX2XLM U55 (.Y(o_div_clk), 
	.S0(N1), 
	.B(test_so), 
	.A(UART_CLK_M__L4_N0));
   CLKINVX1M U56 (.Y(N16), 
	.A(i_div_ratio[1]));
   XNOR2X1M U57 (.Y(N21), 
	.B(n8), 
	.A(i_div_ratio[6]));
   OAI21X1M U58 (.Y(n20), 
	.B0(i_div_ratio[7]), 
	.A1(n8), 
	.A0(i_div_ratio[6]));
   NAND2BX1M U59 (.Y(N22), 
	.B(n20), 
	.AN(N23));
   CLKINVX1M U60 (.Y(N6), 
	.A(i_div_ratio[0]));
   OAI2BB1X1M U61 (.Y(N7), 
	.B0(n21), 
	.A1N(i_div_ratio[1]), 
	.A0N(i_div_ratio[0]));
   AO21XLM U62 (.Y(N13), 
	.B0(N14), 
	.A1(i_div_ratio[7]), 
	.A0(n27));
   XNOR2X1M U63 (.Y(n38), 
	.B(counter[2]), 
	.A(N18));
   OAI22X1M U64 (.Y(n37), 
	.B1(n1), 
	.B0(n28), 
	.A1(n28), 
	.A0(counter[1]));
   CLKNAND2X2M U65 (.Y(n29), 
	.B(n39), 
	.A(N16));
   AOI22X1M U66 (.Y(n30), 
	.B1(counter[1]), 
	.B0(n29), 
	.A1(n1), 
	.A0(n29));
   CLKXOR2X2M U67 (.Y(n34), 
	.B(counter[3]), 
	.A(N19));
   CLKXOR2X2M U68 (.Y(n33), 
	.B(counter[4]), 
	.A(N20));
   CLKXOR2X2M U69 (.Y(n32), 
	.B(counter[5]), 
	.A(N21));
   CLKXOR2X2M U70 (.Y(n31), 
	.B(counter[6]), 
	.A(N22));
   NOR4X1M U71 (.Y(n35), 
	.D(n31), 
	.C(n32), 
	.B(n33), 
	.A(n34));
   AND4X1M U72 (.Y(N24), 
	.D(n35), 
	.C(n36), 
	.B(n37), 
	.A(n38));
   XNOR2X1M U73 (.Y(n43), 
	.B(counter[6]), 
	.A(N12));
   XNOR2X1M U74 (.Y(n42), 
	.B(counter[5]), 
	.A(N11));
   XNOR2X1M U75 (.Y(n41), 
	.B(counter[4]), 
	.A(N10));
   XNOR2X1M U76 (.Y(n40), 
	.B(counter[3]), 
	.A(N9));
   NAND4X1M U77 (.Y(n51), 
	.D(n40), 
	.C(n41), 
	.B(n42), 
	.A(n43));
   OAI2B2X1M U78 (.Y(n47), 
	.B1(n44), 
	.B0(N7), 
	.A1N(counter[1]), 
	.A0(n44));
   OAI2B2X1M U79 (.Y(n46), 
	.B1(n45), 
	.B0(counter[1]), 
	.A1N(N7), 
	.A0(n45));
   CLKXOR2X2M U80 (.Y(n49), 
	.B(counter[7]), 
	.A(N13));
   CLKXOR2X2M U81 (.Y(n48), 
	.B(counter[2]), 
	.A(N8));
   DLY1X1M U82 (.Y(n54), 
	.A(test_se));
   DLY1X1M U83 (.Y(n55), 
	.A(n58));
   DLY1X1M U84 (.Y(n56), 
	.A(n59));
   DLY1X1M U85 (.Y(n57), 
	.A(n60));
   DLY1X1M U86 (.Y(n58), 
	.A(n54));
   DLY1X1M U87 (.Y(n59), 
	.A(n54));
   DLY1X1M U88 (.Y(n60), 
	.A(test_se));
   CLK_DIV_0_DW01_inc_0 r67 (.A({ counter[7],
		counter[6],
		counter[5],
		counter[4],
		counter[3],
		counter[2],
		counter[1],
		counter[0] }), 
	.SUM({ N36,
		N35,
		N34,
		N33,
		N32,
		N31,
		N30,
		FE_UNCONNECTED_0 }));
   SDFFRQX2M div_clk_reg_reg (.SI(counter[7]), 
	.SE(n57), 
	.RN(i_rst_n), 
	.Q(test_so), 
	.D(n22), 
	.CK(i_ref_clk));
   SDFFRQX4M counter_reg_0_ (.SI(test_si), 
	.SE(n59), 
	.RN(i_rst_n), 
	.Q(counter[0]), 
	.D(N45), 
	.CK(UART_CLK_M__L10_N1));
   SDFFRQX4M counter_reg_1_ (.SI(counter[0]), 
	.SE(n58), 
	.RN(i_rst_n), 
	.Q(counter[1]), 
	.D(N46), 
	.CK(UART_CLK_M__L10_N1));
   OR3X1M U3 (.Y(n3), 
	.C(i_div_ratio[2]), 
	.B(i_div_ratio[3]), 
	.A(i_div_ratio[1]));
   NOR3X2M U4 (.Y(N23), 
	.C(n8), 
	.B(i_div_ratio[7]), 
	.A(i_div_ratio[6]));
   AOI21BX1M U5 (.Y(n1), 
	.B0N(n5), 
	.A1(i_div_ratio[2]), 
	.A0(i_div_ratio[1]));
endmodule

module mux2X1_3 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   MX2X6M U1 (.Y(OUT), 
	.S0(SEL), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module CLOCK_DIV_MUX (
	IN, 
	OUT);
   input [5:0] IN;
   output [7:0] OUT;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n14;
   wire n15;
   wire n16;
   wire n17;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   NOR3X1M U5 (.Y(OUT[2]), 
	.C(IN[0]), 
	.B(IN[1]), 
	.A(n6));
   NOR3X2M U6 (.Y(OUT[1]), 
	.C(IN[0]), 
	.B(IN[1]), 
	.A(n7));
   NAND4BX1M U13 (.Y(n7), 
	.D(n14), 
	.C(n15), 
	.B(IN[4]), 
	.AN(IN[3]));
   NAND4BX1M U14 (.Y(n6), 
	.D(n14), 
	.C(n15), 
	.B(IN[3]), 
	.AN(IN[4]));
   OAI211X2M U15 (.Y(OUT[0]), 
	.C0(n16), 
	.B0(n17), 
	.A1(n9), 
	.A0(n8));
   NOR4X1M U16 (.Y(n8), 
	.D(n15), 
	.C(IN[3]), 
	.B(IN[4]), 
	.A(IN[5]));
   NAND2X2M U17 (.Y(n9), 
	.B(n6), 
	.A(n7));
   INVX2M U18 (.Y(n15), 
	.A(IN[2]));
   INVX2M U19 (.Y(n14), 
	.A(IN[5]));
   INVX2M U20 (.Y(n16), 
	.A(IN[1]));
   INVX2M U21 (.Y(n17), 
	.A(IN[0]));
   NOR4X1M U22 (.Y(OUT[3]), 
	.D(IN[4]), 
	.C(IN[5]), 
	.B(IN[3]), 
	.A(n5));
   NAND3X2M U23 (.Y(n5), 
	.C(IN[2]), 
	.B(n16), 
	.A(n17));
   INVX2M U3 (.Y(OUT[7]), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U7 (.Y(OUT[6]), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U9 (.Y(OUT[5]), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U11 (.Y(OUT[4]), 
	.A(HTIE_LTIEHI_NET));
endmodule

module CLK_DIV_1_DW01_inc_0 (
	A, 
	SUM);
   input [7:0] A;
   output [7:0] SUM;

   // Internal wires
   wire [7:2] carry;

   ADDHX1M U1_1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.B(carry[6]), 
	.A(A[6]));
   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   CLKXOR2X2M U1 (.Y(SUM[7]), 
	.B(A[7]), 
	.A(carry[7]));
   CLKINVX1M U2 (.Y(SUM[0]), 
	.A(A[0]));
endmodule

module CLK_DIV_test_1 (
	i_ref_clk, 
	i_rst_n, 
	i_clk_en, 
	i_div_ratio, 
	o_div_clk, 
	test_si, 
	test_so, 
	test_se, 
	n8__Exclude_0_NET, 
	UART_CLK_M__L10_N0, 
	UART_CLK_M__L4_N0);
   input i_ref_clk;
   input i_rst_n;
   input i_clk_en;
   input [7:0] i_div_ratio;
   output o_div_clk;
   input test_si;
   output test_so;
   input test_se;
   input n8__Exclude_0_NET;
   input UART_CLK_M__L10_N0;
   input UART_CLK_M__L4_N0;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire LTIE_LTIELO_NET;
   wire N1;
   wire N6;
   wire N7;
   wire N8;
   wire N9;
   wire N10;
   wire N11;
   wire N12;
   wire N13;
   wire N14;
   wire N15;
   wire N16;
   wire N18;
   wire N19;
   wire N20;
   wire N21;
   wire N22;
   wire N23;
   wire N24;
   wire N29;
   wire N30;
   wire N31;
   wire N32;
   wire N33;
   wire N34;
   wire N35;
   wire N36;
   wire N45;
   wire N46;
   wire N47;
   wire N48;
   wire N49;
   wire N50;
   wire N51;
   wire N52;
   wire n1;
   wire n28;
   wire n29;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire [7:0] counter;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   SDFFRQX1M div_clk_reg_reg (.SI(counter[7]), 
	.SE(n92), 
	.RN(i_rst_n), 
	.Q(test_so), 
	.D(n75), 
	.CK(i_ref_clk));
   SDFFRQX1M counter_reg_7_ (.SI(counter[6]), 
	.SE(n91), 
	.RN(i_rst_n), 
	.Q(counter[7]), 
	.D(N52), 
	.CK(UART_CLK_M__L10_N0));
   SDFFRQX1M counter_reg_6_ (.SI(counter[5]), 
	.SE(n90), 
	.RN(i_rst_n), 
	.Q(counter[6]), 
	.D(N51), 
	.CK(UART_CLK_M__L10_N0));
   SDFFRQX1M counter_reg_5_ (.SI(counter[4]), 
	.SE(n92), 
	.RN(i_rst_n), 
	.Q(counter[5]), 
	.D(N50), 
	.CK(UART_CLK_M__L10_N0));
   SDFFRQX1M counter_reg_4_ (.SI(counter[3]), 
	.SE(n91), 
	.RN(i_rst_n), 
	.Q(counter[4]), 
	.D(N49), 
	.CK(UART_CLK_M__L10_N0));
   SDFFRQX1M counter_reg_3_ (.SI(counter[2]), 
	.SE(n90), 
	.RN(i_rst_n), 
	.Q(counter[3]), 
	.D(N48), 
	.CK(UART_CLK_M__L10_N0));
   SDFFRQX1M counter_reg_2_ (.SI(counter[1]), 
	.SE(n95), 
	.RN(i_rst_n), 
	.Q(counter[2]), 
	.D(N47), 
	.CK(UART_CLK_M__L10_N0));
   SDFFRQX1M counter_reg_1_ (.SI(counter[0]), 
	.SE(n94), 
	.RN(i_rst_n), 
	.Q(counter[1]), 
	.D(N46), 
	.CK(UART_CLK_M__L10_N0));
   SDFFRQX1M counter_reg_0_ (.SI(test_si), 
	.SE(n93), 
	.RN(i_rst_n), 
	.Q(counter[0]), 
	.D(N45), 
	.CK(UART_CLK_M__L10_N0));
   AOI21BX2M U5 (.Y(n1), 
	.B0N(n41), 
	.A1(i_div_ratio[2]), 
	.A0(i_div_ratio[1]));
   INVX2M U6 (.Y(n29), 
	.A(n28));
   INVX2M U7 (.Y(n28), 
	.A(counter[0]));
   NOR2BX2M U38 (.Y(n67), 
	.B(n29), 
	.AN(N6));
   NOR4X1M U39 (.Y(N15), 
	.D(n71), 
	.C(n72), 
	.B(n73), 
	.A(n74));
   NOR2BX2M U40 (.Y(n68), 
	.B(N6), 
	.AN(n29));
   INVX2M U41 (.Y(N6), 
	.A(i_div_ratio[0]));
   NOR3X2M U42 (.Y(n60), 
	.C(counter[7]), 
	.B(N23), 
	.A(n54));
   NOR3X2M U43 (.Y(N23), 
	.C(n44), 
	.B(LTIE_LTIELO_NET), 
	.A(LTIE_LTIELO_NET));
   OR2X2M U44 (.Y(n48), 
	.B(i_div_ratio[3]), 
	.A(n47));
   OR2X2M U45 (.Y(n47), 
	.B(i_div_ratio[2]), 
	.A(n46));
   OR2X2M U46 (.Y(n42), 
	.B(i_div_ratio[3]), 
	.A(n41));
   OAI2BB1XLM U47 (.Y(N9), 
	.B0(n48), 
	.A1N(i_div_ratio[3]), 
	.A0N(n47));
   OAI2BB1XLM U48 (.Y(N8), 
	.B0(n47), 
	.A1N(i_div_ratio[2]), 
	.A0N(n46));
   NOR2X2M U49 (.Y(n52), 
	.B(N16), 
	.A(n28));
   NOR2X2M U50 (.Y(N14), 
	.B(LTIE_LTIELO_NET), 
	.A(n51));
   OR2X2M U51 (.Y(n51), 
	.B(LTIE_LTIELO_NET), 
	.A(n50));
   OR2X2M U52 (.Y(n49), 
	.B(LTIE_LTIELO_NET), 
	.A(n48));
   OR2X2M U53 (.Y(n50), 
	.B(LTIE_LTIELO_NET), 
	.A(n49));
   OAI2BB1XLM U54 (.Y(N12), 
	.B0(n51), 
	.A1N(LTIE_LTIELO_NET), 
	.A0N(n50));
   OAI2BB1XLM U55 (.Y(N11), 
	.B0(n50), 
	.A1N(LTIE_LTIELO_NET), 
	.A0N(n49));
   OR2X2M U56 (.Y(n44), 
	.B(LTIE_LTIELO_NET), 
	.A(n43));
   OR2X2M U57 (.Y(n43), 
	.B(LTIE_LTIELO_NET), 
	.A(n42));
   OAI2BB1XLM U58 (.Y(N10), 
	.B0(n49), 
	.A1N(LTIE_LTIELO_NET), 
	.A0N(n48));
   OAI2BB1XLM U59 (.Y(N20), 
	.B0(n44), 
	.A1N(LTIE_LTIELO_NET), 
	.A0N(n43));
   OAI2BB1XLM U60 (.Y(N19), 
	.B0(n43), 
	.A1N(LTIE_LTIELO_NET), 
	.A0N(n42));
   OAI2BB1XLM U61 (.Y(N18), 
	.B0(n42), 
	.A1N(i_div_ratio[3]), 
	.A0N(n41));
   OR2X2M U62 (.Y(n46), 
	.B(i_div_ratio[0]), 
	.A(i_div_ratio[1]));
   NAND2BX2M U63 (.Y(n76), 
	.B(N1), 
	.AN(N15));
   NOR2BX2M U64 (.Y(N46), 
	.B(n76), 
	.AN(N30));
   NOR2BX2M U65 (.Y(N47), 
	.B(n76), 
	.AN(N31));
   NOR2BX2M U66 (.Y(N48), 
	.B(n76), 
	.AN(N32));
   NOR2BX2M U67 (.Y(N49), 
	.B(n76), 
	.AN(N33));
   NOR2BX2M U68 (.Y(N50), 
	.B(n76), 
	.AN(N34));
   NOR2BX2M U69 (.Y(N51), 
	.B(n76), 
	.AN(N35));
   OR2X2M U70 (.Y(n41), 
	.B(i_div_ratio[1]), 
	.A(i_div_ratio[2]));
   XNOR2X2M U71 (.Y(n75), 
	.B(n77), 
	.A(n8__Exclude_0_NET));
   AOI22X1M U72 (.Y(n77), 
	.B1(N1), 
	.B0(N24), 
	.A1(N1), 
	.A0(N15));
   NOR2BX2M U73 (.Y(N52), 
	.B(n76), 
	.AN(N36));
   NOR2BX2M U74 (.Y(N45), 
	.B(n76), 
	.AN(N29));
   OA21X2M U75 (.Y(N1), 
	.B0(HTIE_LTIEHI_NET), 
	.A1(n40), 
	.A0(n39));
   OR3X2M U76 (.Y(n39), 
	.C(i_div_ratio[2]), 
	.B(i_div_ratio[3]), 
	.A(i_div_ratio[1]));
   OR4X1M U77 (.Y(n40), 
	.D(LTIE_LTIELO_NET), 
	.C(LTIE_LTIELO_NET), 
	.B(LTIE_LTIELO_NET), 
	.A(LTIE_LTIELO_NET));
   MX2XLM U78 (.Y(o_div_clk), 
	.S0(N1), 
	.B(test_so), 
	.A(UART_CLK_M__L4_N0));
   CLKINVX1M U79 (.Y(N16), 
	.A(i_div_ratio[1]));
   XNOR2X1M U80 (.Y(N21), 
	.B(n44), 
	.A(LTIE_LTIELO_NET));
   OAI21X1M U81 (.Y(n45), 
	.B0(LTIE_LTIELO_NET), 
	.A1(n44), 
	.A0(LTIE_LTIELO_NET));
   NAND2BX1M U82 (.Y(N22), 
	.B(n45), 
	.AN(N23));
   OAI2BB1X1M U83 (.Y(N7), 
	.B0(n46), 
	.A1N(i_div_ratio[1]), 
	.A0N(i_div_ratio[0]));
   AO21XLM U84 (.Y(N13), 
	.B0(N14), 
	.A1(LTIE_LTIELO_NET), 
	.A0(n51));
   XNOR2X1M U85 (.Y(n62), 
	.B(counter[2]), 
	.A(N18));
   OAI22X1M U86 (.Y(n61), 
	.B1(n1), 
	.B0(n52), 
	.A1(n52), 
	.A0(counter[1]));
   CLKNAND2X2M U87 (.Y(n53), 
	.B(n28), 
	.A(N16));
   AOI22X1M U88 (.Y(n54), 
	.B1(counter[1]), 
	.B0(n53), 
	.A1(n1), 
	.A0(n53));
   CLKXOR2X2M U89 (.Y(n58), 
	.B(counter[3]), 
	.A(N19));
   CLKXOR2X2M U90 (.Y(n57), 
	.B(counter[4]), 
	.A(N20));
   CLKXOR2X2M U91 (.Y(n56), 
	.B(counter[5]), 
	.A(N21));
   CLKXOR2X2M U92 (.Y(n55), 
	.B(counter[6]), 
	.A(N22));
   NOR4X1M U93 (.Y(n59), 
	.D(n55), 
	.C(n56), 
	.B(n57), 
	.A(n58));
   AND4X1M U94 (.Y(N24), 
	.D(n59), 
	.C(n60), 
	.B(n61), 
	.A(n62));
   XNOR2X1M U95 (.Y(n66), 
	.B(counter[6]), 
	.A(N12));
   XNOR2X1M U96 (.Y(n65), 
	.B(counter[5]), 
	.A(N11));
   XNOR2X1M U97 (.Y(n64), 
	.B(counter[4]), 
	.A(N10));
   XNOR2X1M U98 (.Y(n63), 
	.B(counter[3]), 
	.A(N9));
   NAND4X1M U99 (.Y(n74), 
	.D(n63), 
	.C(n64), 
	.B(n65), 
	.A(n66));
   OAI2B2X1M U100 (.Y(n70), 
	.B1(n67), 
	.B0(N7), 
	.A1N(counter[1]), 
	.A0(n67));
   OAI2B2X1M U101 (.Y(n69), 
	.B1(n68), 
	.B0(counter[1]), 
	.A1N(N7), 
	.A0(n68));
   NAND3BX1M U102 (.Y(n73), 
	.C(n69), 
	.B(n70), 
	.AN(N14));
   CLKXOR2X2M U103 (.Y(n72), 
	.B(counter[7]), 
	.A(N13));
   CLKXOR2X2M U104 (.Y(n71), 
	.B(counter[2]), 
	.A(N8));
   DLY1X1M U105 (.Y(n89), 
	.A(test_se));
   DLY1X1M U106 (.Y(n90), 
	.A(n93));
   DLY1X1M U107 (.Y(n91), 
	.A(n94));
   DLY1X1M U108 (.Y(n92), 
	.A(n95));
   DLY1X1M U109 (.Y(n93), 
	.A(n89));
   DLY1X1M U110 (.Y(n94), 
	.A(n89));
   DLY1X1M U111 (.Y(n95), 
	.A(test_se));
   CLK_DIV_1_DW01_inc_0 r67 (.A({ counter[7],
		counter[6],
		counter[5],
		counter[4],
		counter[3],
		counter[2],
		counter[1],
		n29 }), 
	.SUM({ N36,
		N35,
		N34,
		N33,
		N32,
		N31,
		N30,
		N29 }));
endmodule

module mux2X1_2 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   MX2X6M U1 (.Y(OUT), 
	.S0(SEL), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module SERIALIZER_DATA_WIDTH8_test_1 (
	CLK, 
	RST, 
	P_DATA, 
	ser_en, 
	Data_Valid, 
	ser_data, 
	ser_done, 
	test_si, 
	test_so, 
	test_se, 
	UART_TX_CLK__L3_N3);
   input CLK;
   input RST;
   input [7:0] P_DATA;
   input ser_en;
   input Data_Valid;
   output ser_data;
   output ser_done;
   input test_si;
   output test_so;
   input test_se;
   input UART_TX_CLK__L3_N3;

   // Internal wires
   wire shift_reg_6_;
   wire shift_reg_5_;
   wire shift_reg_4_;
   wire shift_reg_3_;
   wire shift_reg_2_;
   wire shift_reg_1_;
   wire N19;
   wire N20;
   wire N21;
   wire N22;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire [2:0] counter;

   SDFFRQX2M shift_reg_reg_6_ (.SI(shift_reg_5_), 
	.SE(n50), 
	.RN(RST), 
	.Q(shift_reg_6_), 
	.D(n29), 
	.CK(CLK));
   SDFFRQX2M shift_reg_reg_5_ (.SI(shift_reg_4_), 
	.SE(n50), 
	.RN(RST), 
	.Q(shift_reg_5_), 
	.D(n30), 
	.CK(CLK));
   SDFFRQX2M shift_reg_reg_4_ (.SI(shift_reg_3_), 
	.SE(n49), 
	.RN(RST), 
	.Q(shift_reg_4_), 
	.D(n31), 
	.CK(CLK));
   SDFFRQX2M shift_reg_reg_3_ (.SI(shift_reg_2_), 
	.SE(n49), 
	.RN(RST), 
	.Q(shift_reg_3_), 
	.D(n32), 
	.CK(CLK));
   SDFFRQX2M shift_reg_reg_2_ (.SI(shift_reg_1_), 
	.SE(n42), 
	.RN(RST), 
	.Q(shift_reg_2_), 
	.D(n33), 
	.CK(CLK));
   SDFFRQX2M shift_reg_reg_1_ (.SI(ser_data), 
	.SE(n41), 
	.RN(RST), 
	.Q(shift_reg_1_), 
	.D(n34), 
	.CK(UART_TX_CLK__L3_N3));
   SDFFRQX2M shift_reg_reg_0_ (.SI(ser_done), 
	.SE(n48), 
	.RN(RST), 
	.Q(ser_data), 
	.D(n27), 
	.CK(CLK));
   SDFFRQX2M shift_reg_reg_7_ (.SI(shift_reg_6_), 
	.SE(n47), 
	.RN(RST), 
	.Q(test_so), 
	.D(n28), 
	.CK(CLK));
   SDFFRQX2M counter_reg_1_ (.SI(counter[0]), 
	.SE(n42), 
	.RN(RST), 
	.Q(counter[1]), 
	.D(N20), 
	.CK(CLK));
   SDFFRQX2M counter_reg_2_ (.SI(counter[1]), 
	.SE(n41), 
	.RN(RST), 
	.Q(counter[2]), 
	.D(N21), 
	.CK(CLK));
   SDFFRQX2M ser_done_reg (.SI(counter[2]), 
	.SE(n48), 
	.RN(RST), 
	.Q(ser_done), 
	.D(N22), 
	.CK(CLK));
   SDFFRQX2M counter_reg_0_ (.SI(test_si), 
	.SE(n47), 
	.RN(RST), 
	.Q(counter[0]), 
	.D(N19), 
	.CK(CLK));
   NOR2XLM U17 (.Y(n16), 
	.B(n18), 
	.A(ser_en));
   AND2X2M U18 (.Y(n18), 
	.B(n35), 
	.A(Data_Valid));
   CLKINVX2M U19 (.Y(n35), 
	.A(ser_en));
   OAI2BB1X2M U20 (.Y(n29), 
	.B0(n19), 
	.A1N(shift_reg_6_), 
	.A0N(n16));
   AOI22X1M U21 (.Y(n19), 
	.B1(n18), 
	.B0(P_DATA[6]), 
	.A1(ser_en), 
	.A0(test_so));
   OAI2BB1X2M U22 (.Y(n33), 
	.B0(n23), 
	.A1N(shift_reg_2_), 
	.A0N(n16));
   AOI22X1M U23 (.Y(n23), 
	.B1(n18), 
	.B0(P_DATA[2]), 
	.A1(ser_en), 
	.A0(shift_reg_3_));
   OAI2BB1X2M U24 (.Y(n32), 
	.B0(n22), 
	.A1N(shift_reg_3_), 
	.A0N(n16));
   AOI22X1M U25 (.Y(n22), 
	.B1(n18), 
	.B0(P_DATA[3]), 
	.A1(ser_en), 
	.A0(shift_reg_4_));
   OAI2BB1X2M U26 (.Y(n27), 
	.B0(n17), 
	.A1N(n16), 
	.A0N(ser_data));
   AOI22X1M U27 (.Y(n17), 
	.B1(n18), 
	.B0(P_DATA[0]), 
	.A1(ser_en), 
	.A0(shift_reg_1_));
   OAI2BB1X2M U28 (.Y(n31), 
	.B0(n21), 
	.A1N(shift_reg_4_), 
	.A0N(n16));
   AOI22X1M U29 (.Y(n21), 
	.B1(n18), 
	.B0(P_DATA[4]), 
	.A1(ser_en), 
	.A0(shift_reg_5_));
   OAI2BB1X2M U30 (.Y(n34), 
	.B0(n24), 
	.A1N(n16), 
	.A0N(shift_reg_1_));
   AOI22X1M U31 (.Y(n24), 
	.B1(n18), 
	.B0(P_DATA[1]), 
	.A1(ser_en), 
	.A0(shift_reg_2_));
   OAI2BB1X2M U32 (.Y(n30), 
	.B0(n20), 
	.A1N(shift_reg_5_), 
	.A0N(n16));
   AOI22X1M U33 (.Y(n20), 
	.B1(n18), 
	.B0(P_DATA[5]), 
	.A1(ser_en), 
	.A0(shift_reg_6_));
   AO22X1M U34 (.Y(n28), 
	.B1(n18), 
	.B0(P_DATA[7]), 
	.A1(test_so), 
	.A0(n16));
   NOR2X2M U36 (.Y(N19), 
	.B(counter[0]), 
	.A(n35));
   OAI2BB2X1M U37 (.Y(N21), 
	.B1(n35), 
	.B0(n25), 
	.A1N(N19), 
	.A0N(counter[2]));
   AOI32X1M U38 (.Y(n25), 
	.B1(n36), 
	.B0(counter[2]), 
	.A2(counter[0]), 
	.A1(n37), 
	.A0(counter[1]));
   NOR4X1M U39 (.Y(N22), 
	.D(n37), 
	.C(n36), 
	.B(n35), 
	.A(counter[0]));
   NOR2X2M U40 (.Y(N20), 
	.B(n35), 
	.A(n26));
   CLKXOR2X2M U41 (.Y(n26), 
	.B(n36), 
	.A(counter[0]));
   INVX2M U42 (.Y(n36), 
	.A(counter[1]));
   INVX2M U43 (.Y(n37), 
	.A(counter[2]));
   DLY1X1M U44 (.Y(n40), 
	.A(test_se));
   DLY1X1M U45 (.Y(n41), 
	.A(n45));
   DLY1X1M U46 (.Y(n42), 
	.A(n46));
   DLY1X1M U47 (.Y(n43), 
	.A(n40));
   DLY1X1M U48 (.Y(n44), 
	.A(n40));
   DLY1X1M U49 (.Y(n45), 
	.A(n44));
   DLY1X1M U50 (.Y(n46), 
	.A(n43));
   DLY1X1M U51 (.Y(n47), 
	.A(n44));
   DLY1X1M U52 (.Y(n48), 
	.A(n43));
   DLY1X1M U53 (.Y(n49), 
	.A(n45));
   DLY1X1M U54 (.Y(n50), 
	.A(n46));
endmodule

module FSM_tx_test_1 (
	CLK, 
	RST, 
	Data_Valid, 
	PAR_EN, 
	ser_done, 
	ser_en, 
	mux_sel, 
	busy, 
	test_si, 
	test_so, 
	test_se);
   input CLK;
   input RST;
   input Data_Valid;
   input PAR_EN;
   input ser_done;
   output ser_en;
   output [1:0] mux_sel;
   output busy;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n6;
   wire n12;
   wire n15;
   wire n16;
   wire [2:0] cs;
   wire [2:0] ns;

   SDFFRQX2M cs_reg_0_ (.SI(test_si), 
	.SE(n15), 
	.RN(RST), 
	.Q(cs[0]), 
	.D(ns[0]), 
	.CK(CLK));
   SDFFRQX2M cs_reg_1_ (.SI(cs[0]), 
	.SE(n16), 
	.RN(RST), 
	.Q(cs[1]), 
	.D(ns[1]), 
	.CK(CLK));
   SDFFRQX2M cs_reg_2_ (.SI(cs[1]), 
	.SE(n15), 
	.RN(RST), 
	.Q(test_so), 
	.D(ns[2]), 
	.CK(CLK));
   NOR2X2M U6 (.Y(mux_sel[1]), 
	.B(test_so), 
	.A(n12));
   NAND2X2M U8 (.Y(n7), 
	.B(n9), 
	.A(mux_sel[1]));
   INVX2M U10 (.Y(mux_sel[0]), 
	.A(n11));
   NOR2X2M U11 (.Y(ser_en), 
	.B(n7), 
	.A(ser_done));
   INVX2M U12 (.Y(n12), 
	.A(cs[1]));
   XNOR2X2M U13 (.Y(n9), 
	.B(cs[1]), 
	.A(cs[0]));
   NOR2X2M U14 (.Y(n11), 
	.B(test_so), 
	.A(n6));
   OAI22X1M U15 (.Y(ns[0]), 
	.B1(n10), 
	.B0(cs[1]), 
	.A1(mux_sel[0]), 
	.A0(ser_done));
   AOI2B1X1M U16 (.Y(n10), 
	.B0(n11), 
	.A1N(test_so), 
	.A0(Data_Valid));
   OAI21X2M U17 (.Y(ns[1]), 
	.B0(n7), 
	.A1(n9), 
	.A0(test_so));
   INVX2M U18 (.Y(n6), 
	.A(cs[0]));
   OAI21X2M U19 (.Y(busy), 
	.B0(mux_sel[0]), 
	.A1(n12), 
	.A0(cs[0]));
   NOR2BX2M U20 (.Y(ns[2]), 
	.B(n8), 
	.AN(mux_sel[1]));
   AOI2B1X1M U21 (.Y(n8), 
	.B0(n6), 
	.A1N(PAR_EN), 
	.A0(ser_done));
   DLY1X1M U22 (.Y(n15), 
	.A(test_se));
   DLY1X1M U23 (.Y(n16), 
	.A(test_se));
endmodule

module PARITY_test_1 (
	CLK, 
	RST, 
	P_DATA, 
	Data_Valid, 
	PAR_TYP, 
	par_bit, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   input [7:0] P_DATA;
   input Data_Valid;
   input PAR_TYP;
   output par_bit;
   input test_si;
   input test_se;

   // Internal wires
   wire n1;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n8;
   wire n2;

   SDFFRQX2M par_bit_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(par_bit), 
	.D(n8), 
	.CK(CLK));
   XNOR2X2M U2 (.Y(n5), 
	.B(P_DATA[2]), 
	.A(P_DATA[3]));
   XOR3XLM U3 (.Y(n3), 
	.C(n6), 
	.B(P_DATA[4]), 
	.A(P_DATA[5]));
   CLKXOR2X2M U4 (.Y(n6), 
	.B(P_DATA[6]), 
	.A(P_DATA[7]));
   OAI2BB2X1M U5 (.Y(n8), 
	.B1(n2), 
	.B0(n1), 
	.A1N(n2), 
	.A0N(par_bit));
   INVX2M U6 (.Y(n2), 
	.A(Data_Valid));
   XOR3XLM U7 (.Y(n1), 
	.C(n4), 
	.B(PAR_TYP), 
	.A(n3));
   XOR3XLM U8 (.Y(n4), 
	.C(n5), 
	.B(P_DATA[0]), 
	.A(P_DATA[1]));
endmodule

module MUX (
	mux_sel, 
	ser_data, 
	par_bit, 
	start_bit, 
	stop_bit, 
	TX_OUT);
   input [1:0] mux_sel;
   input ser_data;
   input par_bit;
   input start_bit;
   input stop_bit;
   output TX_OUT;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire LTIE_LTIELO_NET;
   wire n2;
   wire n3;
   wire n1;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   OAI2B2X1M U1 (.Y(TX_OUT), 
	.B1(n3), 
	.B0(mux_sel[1]), 
	.A1N(mux_sel[1]), 
	.A0(n2));
   AOI22X1M U2 (.Y(n3), 
	.B1(mux_sel[0]), 
	.B0(HTIE_LTIEHI_NET), 
	.A1(n1), 
	.A0(LTIE_LTIELO_NET));
   AOI22X1M U3 (.Y(n2), 
	.B1(mux_sel[0]), 
	.B0(par_bit), 
	.A1(n1), 
	.A0(ser_data));
   INVX2M U4 (.Y(n1), 
	.A(mux_sel[0]));
endmodule

module TOP_UART_TX_PARALLEL_DATA_WIDTH8_test_1 (
	P_DATA, 
	Data_Valid, 
	PAR_EN, 
	PAR_TYP, 
	clk, 
	rst, 
	TX_OUT, 
	busy, 
	test_si, 
	test_so, 
	test_se, 
	UART_TX_CLK__L3_N3);
   input [7:0] P_DATA;
   input Data_Valid;
   input PAR_EN;
   input PAR_TYP;
   input clk;
   input rst;
   output TX_OUT;
   output busy;
   input test_si;
   output test_so;
   input test_se;
   input UART_TX_CLK__L3_N3;

   // Internal wires
   wire ser_en;
   wire ser_done;
   wire ser_data;
   wire parity_bit;
   wire n5;
   wire n7;
   wire n8;
   wire n9;
   wire [1:0] mux_sel;

   DLY1X1M U5 (.Y(n7), 
	.A(test_se));
   DLY1X1M U6 (.Y(n8), 
	.A(n7));
   DLY1X1M U7 (.Y(n9), 
	.A(n7));
   SERIALIZER_DATA_WIDTH8_test_1 ser_u0 (.CLK(clk), 
	.RST(rst), 
	.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.ser_en(ser_en), 
	.Data_Valid(Data_Valid), 
	.ser_data(ser_data), 
	.ser_done(ser_done), 
	.test_si(parity_bit), 
	.test_so(test_so), 
	.test_se(n8), 
	.UART_TX_CLK__L3_N3(UART_TX_CLK__L3_N3));
   FSM_tx_test_1 fsm_u0 (.CLK(UART_TX_CLK__L3_N3), 
	.RST(rst), 
	.Data_Valid(Data_Valid), 
	.PAR_EN(PAR_EN), 
	.ser_done(ser_done), 
	.ser_en(ser_en), 
	.mux_sel({ mux_sel[1],
		mux_sel[0] }), 
	.busy(busy), 
	.test_si(test_si), 
	.test_so(n5), 
	.test_se(n9));
   PARITY_test_1 parity_u0 (.CLK(UART_TX_CLK__L3_N3), 
	.RST(rst), 
	.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.Data_Valid(Data_Valid), 
	.PAR_TYP(PAR_TYP), 
	.par_bit(parity_bit), 
	.test_si(n5), 
	.test_se(n8));
   MUX mux_u0 (.mux_sel({ mux_sel[1],
		mux_sel[0] }), 
	.ser_data(ser_data), 
	.par_bit(parity_bit), 
	.start_bit(1'b0), 
	.stop_bit(1'b1), 
	.TX_OUT(TX_OUT));
endmodule

module Data_Sampling_Prescale_width6_test_1 (
	CLK, 
	RST, 
	RX_IN, 
	Prescale, 
	edge_cnt, 
	dat_samp_en, 
	sampled_bit, 
	test_so, 
	test_se);
   input CLK;
   input RST;
   input RX_IN;
   input [5:0] Prescale;
   input [5:0] edge_cnt;
   input dat_samp_en;
   output sampled_bit;
   output test_so;
   input test_se;

   // Internal wires
   wire samples_0_;
   wire N6;
   wire N7;
   wire N8;
   wire N9;
   wire N10;
   wire N11;
   wire N12;
   wire N15;
   wire N16;
   wire N17;
   wire N18;
   wire N19;
   wire n23;
   wire n24;
   wire n25;
   wire n1;
   wire n2;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n45;
   wire n46;
   wire [4:2] add_29_carry;

   SDFFRQX2M samples_reg_1_ (.SI(samples_0_), 
	.SE(n45), 
	.RN(RST), 
	.Q(test_so), 
	.D(n25), 
	.CK(CLK));
   SDFFRQX2M samples_reg_0_ (.SI(sampled_bit), 
	.SE(n46), 
	.RN(RST), 
	.Q(samples_0_), 
	.D(n24), 
	.CK(CLK));
   OR4X1M U5 (.Y(n1), 
	.D(n27), 
	.C(n26), 
	.B(n22), 
	.A(n21));
   INVX2M U6 (.Y(N6), 
	.A(Prescale[1]));
   INVXLM U7 (.Y(n2), 
	.A(n1));
   NOR4X1M U8 (.Y(N12), 
	.D(n15), 
	.C(n16), 
	.B(n17), 
	.A(n18));
   NOR3X2M U11 (.Y(N11), 
	.C(n6), 
	.B(Prescale[5]), 
	.A(Prescale[4]));
   INVX1M U12 (.Y(n19), 
	.A(dat_samp_en));
   OR2X2M U13 (.Y(n6), 
	.B(Prescale[3]), 
	.A(n5));
   NOR2BX2M U14 (.Y(n9), 
	.B(edge_cnt[0]), 
	.AN(N6));
   OAI2BB1XLM U15 (.Y(N8), 
	.B0(n6), 
	.A1N(Prescale[3]), 
	.A0N(n5));
   MX2XLM U16 (.Y(n23), 
	.S0(n31), 
	.B(n30), 
	.A(sampled_bit));
   NOR2BX2M U17 (.Y(n8), 
	.B(N6), 
	.AN(edge_cnt[0]));
   XNOR2X2M U18 (.Y(n28), 
	.B(Prescale[4]), 
	.A(edge_cnt[3]));
   OR2X2M U20 (.Y(n5), 
	.B(Prescale[1]), 
	.A(Prescale[2]));
   ADDHX1M U21 (.S(N17), 
	.CO(add_29_carry[4]), 
	.B(add_29_carry[3]), 
	.A(Prescale[4]));
   ADDHX1M U22 (.S(N16), 
	.CO(add_29_carry[3]), 
	.B(add_29_carry[2]), 
	.A(Prescale[3]));
   ADDHX1M U23 (.S(N15), 
	.CO(add_29_carry[2]), 
	.B(Prescale[1]), 
	.A(Prescale[2]));
   ADDHX1M U24 (.S(N18), 
	.CO(N19), 
	.B(add_29_carry[4]), 
	.A(Prescale[5]));
   OAI2BB1X1M U25 (.Y(N7), 
	.B0(n5), 
	.A1N(Prescale[2]), 
	.A0N(Prescale[1]));
   XNOR2X1M U26 (.Y(N9), 
	.B(n6), 
	.A(Prescale[4]));
   OAI21X1M U27 (.Y(n7), 
	.B0(Prescale[5]), 
	.A1(n6), 
	.A0(Prescale[4]));
   NAND2BX1M U28 (.Y(N10), 
	.B(n7), 
	.AN(N11));
   OAI2B2X1M U29 (.Y(n14), 
	.B1(n8), 
	.B0(edge_cnt[1]), 
	.A1N(N7), 
	.A0(n8));
   OAI2B2X1M U30 (.Y(n10), 
	.B1(n9), 
	.B0(N7), 
	.A1N(edge_cnt[1]), 
	.A0(n9));
   NAND4BBX1M U31 (.Y(n18), 
	.D(n10), 
	.C(n14), 
	.BN(edge_cnt[5]), 
	.AN(N11));
   CLKXOR2X2M U34 (.Y(n15), 
	.B(edge_cnt[3]), 
	.A(N9));
   NOR2X1M U35 (.Y(n25), 
	.B(n20), 
	.A(n19));
   MXI2X1M U36 (.Y(n20), 
	.S0(n2), 
	.B(RX_IN), 
	.A(test_so));
   NAND2BX1M U37 (.Y(n22), 
	.B(n28), 
	.AN(N12));
   NOR2X1M U38 (.Y(n24), 
	.B(n29), 
	.A(n19));
   MXI2X1M U39 (.Y(n29), 
	.S0(N12), 
	.B(RX_IN), 
	.A(samples_0_));
   NOR4X1M U40 (.Y(n31), 
	.D(n35), 
	.C(n34), 
	.B(n33), 
	.A(n32));
   CLKXOR2X2M U41 (.Y(n35), 
	.B(N15), 
	.A(edge_cnt[1]));
   CLKXOR2X2M U42 (.Y(n34), 
	.B(N6), 
	.A(edge_cnt[0]));
   OR3X1M U43 (.Y(n33), 
	.C(n19), 
	.B(N12), 
	.A(n36));
   NAND3BX1M U46 (.Y(n26), 
	.C(n38), 
	.B(n37), 
	.AN(edge_cnt[5]));
   XNOR2X1M U47 (.Y(n38), 
	.B(Prescale[1]), 
	.A(edge_cnt[0]));
   XNOR2X1M U48 (.Y(n37), 
	.B(Prescale[2]), 
	.A(edge_cnt[1]));
   NAND4X1M U50 (.Y(n32), 
	.D(n42), 
	.C(n41), 
	.B(n40), 
	.A(n39));
   XNOR2X1M U52 (.Y(n41), 
	.B(N17), 
	.A(edge_cnt[3]));
   XNOR2X1M U54 (.Y(n39), 
	.B(N19), 
	.A(edge_cnt[5]));
   ADDFX1M U55 (.CO(n30), 
	.CI(RX_IN), 
	.B(test_so), 
	.A(samples_0_));
   DLY1X1M U58 (.Y(n46), 
	.A(test_se));
   SDFFRQX4M sampled_bit_reg (.SI(RX_IN), 
	.SE(n45), 
	.RN(RST), 
	.Q(sampled_bit), 
	.D(n23), 
	.CK(CLK));
   XNOR2X2M U3 (.Y(n42), 
	.B(N16), 
	.A(edge_cnt[2]));
   XNOR2X2M U4 (.Y(n40), 
	.B(N18), 
	.A(edge_cnt[4]));
   CLKXOR2X2M U10 (.Y(n17), 
	.B(edge_cnt[4]), 
	.A(N10));
   CLKXOR2X2M U32 (.Y(n16), 
	.B(edge_cnt[2]), 
	.A(N8));
   NOR4BX1M U33 (.Y(n36), 
	.D(n21), 
	.C(n26), 
	.B(n27), 
	.AN(n28));
   CLKXOR2X2M U44 (.Y(n21), 
	.B(Prescale[5]), 
	.A(edge_cnt[4]));
   CLKXOR2X2M U45 (.Y(n27), 
	.B(Prescale[3]), 
	.A(edge_cnt[2]));
   BUFX2M U49 (.Y(n45), 
	.A(n46));
endmodule

module edge_bit_counter_Prescale_width6_test_1 (
	CLK, 
	RST, 
	enable, 
	Prescale, 
	edge_cnt, 
	bit_cnt, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   input enable;
   input [5:0] Prescale;
   output [5:0] edge_cnt;
   output [3:0] bit_cnt;
   input test_si;
   input test_se;

   // Internal wires
   wire n9;
   wire n54;
   wire N7;
   wire N8;
   wire N9;
   wire N10;
   wire N11;
   wire N12;
   wire N13;
   wire N14;
   wire N21;
   wire N22;
   wire N23;
   wire N24;
   wire N37;
   wire N38;
   wire N39;
   wire N40;
   wire N41;
   wire N42;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n1;
   wire n4;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n7;
   wire [5:2] add_25_carry;

   SDFFRQX2M bit_cnt_reg_3_ (.SI(bit_cnt[2]), 
	.SE(n44), 
	.RN(RST), 
	.Q(bit_cnt[3]), 
	.D(n28), 
	.CK(CLK));
   SDFFRQX2M bit_cnt_reg_2_ (.SI(n54), 
	.SE(n48), 
	.RN(RST), 
	.Q(bit_cnt[2]), 
	.D(n25), 
	.CK(CLK));
   SDFFRQX2M bit_cnt_reg_1_ (.SI(bit_cnt[0]), 
	.SE(n48), 
	.RN(RST), 
	.Q(n54), 
	.D(n26), 
	.CK(CLK));
   NOR2X2M U7 (.Y(N13), 
	.B(Prescale[5]), 
	.A(n17));
   NOR2BX2M U8 (.Y(n18), 
	.B(edge_cnt[0]), 
	.AN(N7));
   NOR2BX2M U15 (.Y(n29), 
	.B(N7), 
	.AN(edge_cnt[0]));
   INVX2M U16 (.Y(N7), 
	.A(Prescale[0]));
   OR2X2M U18 (.Y(n17), 
	.B(Prescale[4]), 
	.A(n16));
   OR2X2M U19 (.Y(n16), 
	.B(Prescale[3]), 
	.A(n15));
   OR2X2M U20 (.Y(n15), 
	.B(Prescale[2]), 
	.A(n4));
   OAI2BB1XLM U21 (.Y(N11), 
	.B0(n17), 
	.A1N(Prescale[4]), 
	.A0N(n16));
   OAI2BB1XLM U22 (.Y(N10), 
	.B0(n16), 
	.A1N(Prescale[3]), 
	.A0N(n15));
   OAI2BB1XLM U23 (.Y(N9), 
	.B0(n15), 
	.A1N(Prescale[2]), 
	.A0N(n4));
   CLKINVX2M U24 (.Y(n37), 
	.A(n22));
   NOR2X2M U27 (.Y(n22), 
	.B(N14), 
	.A(n38));
   NOR2BX2M U28 (.Y(N38), 
	.B(n37), 
	.AN(N21));
   NOR2BX2M U29 (.Y(N39), 
	.B(n37), 
	.AN(N22));
   NOR2BX2M U30 (.Y(N40), 
	.B(n37), 
	.AN(N23));
   NOR2BX2M U31 (.Y(N41), 
	.B(n37), 
	.AN(N24));
   CLKINVX2M U32 (.Y(n38), 
	.A(enable));
   OR2X2M U33 (.Y(n4), 
	.B(Prescale[0]), 
	.A(Prescale[1]));
   OAI22X1M U34 (.Y(n26), 
	.B1(n38), 
	.B0(n21), 
	.A1(n37), 
	.A0(n40));
   AOI32X1M U35 (.Y(n21), 
	.B1(n39), 
	.B0(n54), 
	.A2(bit_cnt[0]), 
	.A1(n40), 
	.A0(n37));
   INVX2M U36 (.Y(n40), 
	.A(n54));
   OAI32X1M U37 (.Y(n27), 
	.B1(n37), 
	.B0(n39), 
	.A2(n22), 
	.A1(bit_cnt[0]), 
	.A0(n38));
   AND3X1M U38 (.Y(n20), 
	.C(bit_cnt[0]), 
	.B(n54), 
	.A(N14));
   NOR2X2M U39 (.Y(n28), 
	.B(n38), 
	.A(n23));
   CLKXOR2X2M U40 (.Y(n23), 
	.B(bit_cnt[3]), 
	.A(n24));
   NAND2X2M U41 (.Y(n24), 
	.B(bit_cnt[2]), 
	.A(n20));
   NOR2X2M U42 (.Y(n25), 
	.B(n38), 
	.A(n19));
   XNOR2X2M U43 (.Y(n19), 
	.B(bit_cnt[2]), 
	.A(n20));
   NOR2X2M U44 (.Y(N37), 
	.B(n37), 
	.A(edge_cnt[0]));
   NOR2X2M U45 (.Y(N42), 
	.B(n37), 
	.A(n1));
   XNOR2X2M U46 (.Y(n1), 
	.B(edge_cnt[5]), 
	.A(add_25_carry[5]));
   ADDHX1M U47 (.S(N21), 
	.CO(add_25_carry[2]), 
	.B(edge_cnt[0]), 
	.A(edge_cnt[1]));
   ADDHX1M U48 (.S(N22), 
	.CO(add_25_carry[3]), 
	.B(add_25_carry[2]), 
	.A(edge_cnt[2]));
   ADDHX1M U49 (.S(N23), 
	.CO(add_25_carry[4]), 
	.B(add_25_carry[3]), 
	.A(edge_cnt[3]));
   ADDHX1M U50 (.S(N24), 
	.CO(add_25_carry[5]), 
	.B(add_25_carry[4]), 
	.A(edge_cnt[4]));
   INVX2M U51 (.Y(n39), 
	.A(bit_cnt[0]));
   OAI2BB1X1M U52 (.Y(N8), 
	.B0(n4), 
	.A1N(Prescale[1]), 
	.A0N(Prescale[0]));
   AO21XLM U53 (.Y(N12), 
	.B0(N13), 
	.A1(Prescale[5]), 
	.A0(n17));
   OAI2B2X1M U54 (.Y(n32), 
	.B1(n18), 
	.B0(N8), 
	.A1N(edge_cnt[1]), 
	.A0(n18));
   XNOR2X1M U55 (.Y(n31), 
	.B(edge_cnt[5]), 
	.A(N12));
   OAI2B2X1M U56 (.Y(n30), 
	.B1(n29), 
	.B0(edge_cnt[1]), 
	.A1N(N8), 
	.A0(n29));
   NAND4BX1M U57 (.Y(n36), 
	.D(n30), 
	.C(n31), 
	.B(n32), 
	.AN(N13));
   CLKXOR2X2M U60 (.Y(n33), 
	.B(edge_cnt[3]), 
	.A(N10));
   DLY1X1M U62 (.Y(n44), 
	.A(n51));
   DLY1X1M U63 (.Y(n45), 
	.A(test_se));
   DLY1X1M U64 (.Y(n46), 
	.A(n45));
   DLY1X1M U65 (.Y(n47), 
	.A(n45));
   DLY1X1M U66 (.Y(n48), 
	.A(n47));
   DLY1X1M U67 (.Y(n49), 
	.A(n46));
   DLY1X1M U69 (.Y(n51), 
	.A(n46));
   INVXLM U70 (.Y(bit_cnt[1]), 
	.A(n40));
   SDFFRQX2M edge_cnt_reg_0_ (.SI(bit_cnt[3]), 
	.SE(n49), 
	.RN(RST), 
	.Q(n9), 
	.D(N37), 
	.CK(CLK));
   SDFFRQX4M edge_cnt_reg_1_ (.SI(edge_cnt[0]), 
	.SE(n50), 
	.RN(RST), 
	.Q(edge_cnt[1]), 
	.D(N38), 
	.CK(CLK));
   SDFFRQX4M edge_cnt_reg_4_ (.SI(edge_cnt[3]), 
	.SE(n51), 
	.RN(RST), 
	.Q(edge_cnt[4]), 
	.D(N41), 
	.CK(CLK));
   SDFFRQX4M edge_cnt_reg_5_ (.SI(edge_cnt[4]), 
	.SE(n44), 
	.RN(RST), 
	.Q(edge_cnt[5]), 
	.D(N42), 
	.CK(CLK));
   SDFFRQX4M edge_cnt_reg_2_ (.SI(edge_cnt[1]), 
	.SE(n49), 
	.RN(RST), 
	.Q(edge_cnt[2]), 
	.D(N39), 
	.CK(CLK));
   SDFFRQX4M edge_cnt_reg_3_ (.SI(edge_cnt[2]), 
	.SE(n43), 
	.RN(RST), 
	.Q(edge_cnt[3]), 
	.D(N40), 
	.CK(CLK));
   SDFFRQX4M bit_cnt_reg_0_ (.SI(test_si), 
	.SE(n43), 
	.RN(RST), 
	.Q(bit_cnt[0]), 
	.D(n27), 
	.CK(CLK));
   NOR4X1M U3 (.Y(N14), 
	.D(n33), 
	.C(n34), 
	.B(n35), 
	.A(n36));
   CLKXOR2X2M U4 (.Y(n35), 
	.B(edge_cnt[4]), 
	.A(N11));
   CLKXOR2X2M U5 (.Y(n34), 
	.B(edge_cnt[2]), 
	.A(N9));
   BUFX2M U6 (.Y(n43), 
	.A(n50));
   BUFX2M U11 (.Y(n50), 
	.A(n47));
   INVXLM U12 (.Y(n7), 
	.A(n9));
   CLKINVX1M U13 (.Y(edge_cnt[0]), 
	.A(n7));
endmodule

module Deserializer_test_1 (
	CLK, 
	RST, 
	deser_en, 
	sampled_bit, 
	P_DATA, 
	test_si, 
	test_se, 
	UART_RX_CLK__L3_N1);
   input CLK;
   input RST;
   input deser_en;
   input sampled_bit;
   output [7:0] P_DATA;
   input test_si;
   input test_se;
   input UART_RX_CLK__L3_N1;

   // Internal wires
   wire n10;
   wire n12;
   wire n14;
   wire n16;
   wire n18;
   wire n20;
   wire n22;
   wire n24;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n25;
   wire n26;
   wire n27;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;

   SDFFRQX2M P_DATA_reg_0_ (.SI(test_si), 
	.SE(n36), 
	.RN(RST), 
	.Q(P_DATA[0]), 
	.D(n10), 
	.CK(UART_RX_CLK__L3_N1));
   SDFFRQX2M P_DATA_reg_5_ (.SI(P_DATA[4]), 
	.SE(n35), 
	.RN(RST), 
	.Q(P_DATA[5]), 
	.D(n20), 
	.CK(CLK));
   SDFFRQX2M P_DATA_reg_1_ (.SI(P_DATA[0]), 
	.SE(n34), 
	.RN(RST), 
	.Q(P_DATA[1]), 
	.D(n12), 
	.CK(CLK));
   SDFFRQX2M P_DATA_reg_4_ (.SI(P_DATA[3]), 
	.SE(n33), 
	.RN(RST), 
	.Q(P_DATA[4]), 
	.D(n18), 
	.CK(CLK));
   SDFFRQX2M P_DATA_reg_7_ (.SI(P_DATA[6]), 
	.SE(n36), 
	.RN(RST), 
	.Q(P_DATA[7]), 
	.D(n24), 
	.CK(UART_RX_CLK__L3_N1));
   SDFFRQX2M P_DATA_reg_3_ (.SI(P_DATA[2]), 
	.SE(n35), 
	.RN(RST), 
	.Q(P_DATA[3]), 
	.D(n16), 
	.CK(CLK));
   SDFFRQX2M P_DATA_reg_6_ (.SI(P_DATA[5]), 
	.SE(n34), 
	.RN(RST), 
	.Q(P_DATA[6]), 
	.D(n22), 
	.CK(CLK));
   SDFFRQX2M P_DATA_reg_2_ (.SI(P_DATA[1]), 
	.SE(n33), 
	.RN(RST), 
	.Q(P_DATA[2]), 
	.D(n14), 
	.CK(CLK));
   CLKINVX2M U4 (.Y(n4), 
	.A(deser_en));
   OAI22X1M U5 (.Y(n12), 
	.B1(n27), 
	.B0(deser_en), 
	.A1(n26), 
	.A0(n4));
   OAI22X1M U6 (.Y(n14), 
	.B1(n26), 
	.B0(deser_en), 
	.A1(n25), 
	.A0(n4));
   OAI22X1M U7 (.Y(n16), 
	.B1(n25), 
	.B0(deser_en), 
	.A1(n8), 
	.A0(n4));
   OAI22X1M U8 (.Y(n18), 
	.B1(n8), 
	.B0(deser_en), 
	.A1(n7), 
	.A0(n4));
   OAI22X1M U9 (.Y(n20), 
	.B1(n7), 
	.B0(deser_en), 
	.A1(n6), 
	.A0(n4));
   OAI22X1M U10 (.Y(n22), 
	.B1(n6), 
	.B0(deser_en), 
	.A1(n5), 
	.A0(n4));
   OAI2BB2X1M U11 (.Y(n10), 
	.B1(n4), 
	.B0(n27), 
	.A1N(n4), 
	.A0N(P_DATA[0]));
   OAI2BB2X1M U12 (.Y(n24), 
	.B1(n5), 
	.B0(deser_en), 
	.A1N(deser_en), 
	.A0N(sampled_bit));
   INVX2M U14 (.Y(n26), 
	.A(P_DATA[2]));
   INVX2M U15 (.Y(n6), 
	.A(P_DATA[6]));
   INVX2M U16 (.Y(n5), 
	.A(P_DATA[7]));
   INVX2M U17 (.Y(n25), 
	.A(P_DATA[3]));
   INVX2M U26 (.Y(n27), 
	.A(P_DATA[1]));
   INVX2M U27 (.Y(n8), 
	.A(P_DATA[4]));
   INVX2M U28 (.Y(n7), 
	.A(P_DATA[5]));
   DLY1X1M U29 (.Y(n30), 
	.A(test_se));
   DLY1X1M U30 (.Y(n31), 
	.A(n30));
   DLY1X1M U31 (.Y(n32), 
	.A(n30));
   DLY1X1M U32 (.Y(n33), 
	.A(n32));
   DLY1X1M U33 (.Y(n34), 
	.A(n31));
   DLY1X1M U34 (.Y(n35), 
	.A(n32));
   DLY1X1M U35 (.Y(n36), 
	.A(n31));
endmodule

module Parity_Check_test_1 (
	CLK, 
	RST, 
	par_chk_en, 
	PAR_TYP, 
	sampled_bit, 
	P_DATA, 
	par_err, 
	test_se);
   input CLK;
   input RST;
   input par_chk_en;
   input PAR_TYP;
   input sampled_bit;
   input [7:0] P_DATA;
   output par_err;
   input test_se;

   // Internal wires
   wire n1;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n9;
   wire n2;

   SDFFRQX2M par_err_reg (.SI(P_DATA[7]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(par_err), 
	.D(n9), 
	.CK(CLK));
   OAI2BB2X1M U2 (.Y(n9), 
	.B1(n2), 
	.B0(n1), 
	.A1N(n2), 
	.A0N(par_err));
   XOR3XLM U3 (.Y(n1), 
	.C(n5), 
	.B(n4), 
	.A(n3));
   INVX2M U4 (.Y(n2), 
	.A(par_chk_en));
   XNOR2X2M U5 (.Y(n5), 
	.B(PAR_TYP), 
	.A(sampled_bit));
   XOR3XLM U6 (.Y(n4), 
	.C(n6), 
	.B(P_DATA[4]), 
	.A(P_DATA[5]));
   XNOR2X2M U7 (.Y(n6), 
	.B(P_DATA[6]), 
	.A(P_DATA[7]));
   XOR3XLM U8 (.Y(n3), 
	.C(n7), 
	.B(P_DATA[0]), 
	.A(P_DATA[1]));
   XNOR2X2M U9 (.Y(n7), 
	.B(P_DATA[2]), 
	.A(P_DATA[3]));
endmodule

module Start_Check_test_1 (
	CLK, 
	RST, 
	strt_chk_en, 
	sampled_bit, 
	strt_glitch, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   input strt_chk_en;
   input sampled_bit;
   output strt_glitch;
   input test_si;
   input test_se;

   // Internal wires
   wire N4;

   SDFFRQX2M strt_glitch_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(strt_glitch), 
	.D(N4), 
	.CK(CLK));
   AND2X1M U4 (.Y(N4), 
	.B(sampled_bit), 
	.A(strt_chk_en));
endmodule

module Stop_Check_test_1 (
	CLK, 
	RST, 
	stp_chk_en, 
	sampled_bit, 
	stp_err, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   input stp_chk_en;
   input sampled_bit;
   output stp_err;
   input test_si;
   input test_se;

   // Internal wires
   wire N4;
   wire n3;
   wire n4;

   NOR2BX2M U4 (.Y(N4), 
	.B(sampled_bit), 
	.AN(stp_chk_en));
   INVXLM U5 (.Y(n3), 
	.A(test_se));
   INVXLM U6 (.Y(n4), 
	.A(n3));
   SDFFRQX4M stp_err_reg (.SI(test_si), 
	.SE(n4), 
	.RN(RST), 
	.Q(stp_err), 
	.D(N4), 
	.CK(CLK));
endmodule

module FSM_Prescale_width6_test_1 (
	CLK, 
	RST, 
	RX_IN, 
	PAR_EN, 
	Prescale, 
	edge_cnt, 
	bit_cnt, 
	par_err, 
	strt_glitch, 
	stp_err, 
	dat_samp_en, 
	enable, 
	deser_en, 
	par_chk_en, 
	strt_chk_en, 
	stp_chk_en, 
	data_valid, 
	test_se);
   input CLK;
   input RST;
   input RX_IN;
   input PAR_EN;
   input [5:0] Prescale;
   input [5:0] edge_cnt;
   input [3:0] bit_cnt;
   input par_err;
   input strt_glitch;
   input stp_err;
   output dat_samp_en;
   output enable;
   output deser_en;
   output par_chk_en;
   output strt_chk_en;
   output stp_chk_en;
   output data_valid;
   input test_se;

   // Internal wires
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire r89_EQ;
   wire r89_B_0_;
   wire r89_B_1_;
   wire r89_B_2_;
   wire r89_B_3_;
   wire r89_B_4_;
   wire r89_B_5_;
   wire r89_B_6_;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire [2:0] cs;
   wire [1:0] ns;

   SDFFRQX2M data_valid_r_reg (.SI(cs[2]), 
	.SE(n26), 
	.RN(RST), 
	.Q(data_valid), 
	.D(n18), 
	.CK(CLK));
   SDFFRQX2M cs_reg_1_ (.SI(cs[0]), 
	.SE(n25), 
	.RN(RST), 
	.Q(cs[1]), 
	.D(ns[1]), 
	.CK(CLK));
   NOR4X1M U7 (.Y(r89_EQ), 
	.D(n12), 
	.C(n13), 
	.B(n14), 
	.A(n15));
   NOR2BX2M U8 (.Y(n7), 
	.B(edge_cnt[0]), 
	.AN(r89_B_0_));
   NOR2X2M U9 (.Y(r89_B_6_), 
	.B(Prescale[5]), 
	.A(n6));
   NOR2BX2M U10 (.Y(n8), 
	.B(r89_B_0_), 
	.AN(edge_cnt[0]));
   INVX2M U11 (.Y(r89_B_0_), 
	.A(Prescale[0]));
   OR2X2M U12 (.Y(n6), 
	.B(Prescale[4]), 
	.A(n5));
   OR2X2M U13 (.Y(n5), 
	.B(Prescale[3]), 
	.A(n4));
   OR2X2M U14 (.Y(n4), 
	.B(Prescale[2]), 
	.A(n3));
   OAI2BB1XLM U15 (.Y(r89_B_4_), 
	.B0(n6), 
	.A1N(Prescale[4]), 
	.A0N(n5));
   OAI2BB1XLM U16 (.Y(r89_B_3_), 
	.B0(n5), 
	.A1N(Prescale[3]), 
	.A0N(n4));
   OAI2BB1XLM U17 (.Y(r89_B_2_), 
	.B0(n4), 
	.A1N(Prescale[2]), 
	.A0N(n3));
   CLKINVX2M U19 (.Y(n21), 
	.A(r89_EQ));
   NOR3X2M U20 (.Y(par_chk_en), 
	.C(n40), 
	.B(n17), 
	.A(n21));
   INVX2M U21 (.Y(n18), 
	.A(n45));
   OR2X2M U22 (.Y(n3), 
	.B(Prescale[0]), 
	.A(Prescale[1]));
   OAI222X1M U23 (.Y(ns[0]), 
	.C1(n45), 
	.C0(RX_IN), 
	.B1(n38), 
	.B0(n21), 
	.A1(n44), 
	.A0(cs[2]));
   AOI22X1M U24 (.Y(n44), 
	.B1(n21), 
	.B0(cs[0]), 
	.A1(n17), 
	.A0(n46));
   OAI32X1M U25 (.Y(n46), 
	.B1(RX_IN), 
	.B0(cs[1]), 
	.A2(n41), 
	.A1(n19), 
	.A0(n22));
   INVX2M U26 (.Y(n22), 
	.A(PAR_EN));
   NOR4X1M U27 (.Y(strt_chk_en), 
	.D(cs[2]), 
	.C(n21), 
	.B(n17), 
	.A(cs[1]));
   OAI2B2X1M U28 (.Y(ns[1]), 
	.B1(n40), 
	.B0(n42), 
	.A1N(strt_chk_en), 
	.A0(strt_glitch));
   NOR2X1M U29 (.Y(n42), 
	.B(n21), 
	.A(n43));
   AOI2BB1X2M U30 (.Y(n43), 
	.B0(cs[0]), 
	.A1N(PAR_EN), 
	.A0N(n41));
   NOR3X2M U31 (.Y(deser_en), 
	.C(n21), 
	.B(cs[0]), 
	.A(n40));
   INVX2M U32 (.Y(n16), 
	.A(n37));
   NOR3BX2M U33 (.Y(n37), 
	.C(n39), 
	.B(par_chk_en), 
	.AN(n38));
   OAI32X1M U34 (.Y(n39), 
	.B1(r89_EQ), 
	.B0(n36), 
	.A2(n41), 
	.A1(PAR_EN), 
	.A0(n40));
   NAND3X2M U35 (.Y(n41), 
	.C(n47), 
	.B(r89_EQ), 
	.A(bit_cnt[3]));
   NOR3X2M U36 (.Y(n47), 
	.C(bit_cnt[1]), 
	.B(bit_cnt[2]), 
	.A(bit_cnt[0]));
   OAI211X2M U37 (.Y(dat_samp_en), 
	.C0(n36), 
	.B0(n40), 
	.A1(n17), 
	.A0(cs[2]));
   CLKNAND2X2M U38 (.Y(n40), 
	.B(n20), 
	.A(n27));
   INVX2M U39 (.Y(n20), 
	.A(cs[2]));
   CLKINVX2M U40 (.Y(n17), 
	.A(cs[0]));
   NAND3X2M U41 (.Y(n36), 
	.C(cs[2]), 
	.B(n19), 
	.A(n17));
   INVX2M U42 (.Y(n19), 
	.A(cs[1]));
   OR3X2M U43 (.Y(n38), 
	.C(n36), 
	.B(par_err), 
	.A(stp_err));
   INVX2M U44 (.Y(stp_chk_en), 
	.A(n36));
   OAI2BB1X1M U47 (.Y(r89_B_1_), 
	.B0(n3), 
	.A1N(Prescale[1]), 
	.A0N(Prescale[0]));
   AO21XLM U48 (.Y(r89_B_5_), 
	.B0(r89_B_6_), 
	.A1(Prescale[5]), 
	.A0(n6));
   OAI2B2X1M U49 (.Y(n11), 
	.B1(n7), 
	.B0(r89_B_1_), 
	.A1N(edge_cnt[1]), 
	.A0(n7));
   XNOR2X1M U50 (.Y(n10), 
	.B(edge_cnt[5]), 
	.A(r89_B_5_));
   OAI2B2X1M U51 (.Y(n9), 
	.B1(n8), 
	.B0(edge_cnt[1]), 
	.A1N(r89_B_1_), 
	.A0(n8));
   NAND4BX1M U52 (.Y(n15), 
	.D(n9), 
	.C(n10), 
	.B(n11), 
	.AN(r89_B_6_));
   CLKXOR2X2M U55 (.Y(n12), 
	.B(edge_cnt[3]), 
	.A(r89_B_3_));
   DLY1X1M U56 (.Y(n24), 
	.A(test_se));
   DLY1X1M U57 (.Y(n25), 
	.A(n24));
   INVXLM U59 (.Y(n27), 
	.A(n19));
   SDFFRQX4M cs_reg_2_ (.SI(cs[1]), 
	.SE(n25), 
	.RN(RST), 
	.Q(cs[2]), 
	.D(n16), 
	.CK(CLK));
   SDFFRQX4M cs_reg_0_ (.SI(strt_glitch), 
	.SE(n26), 
	.RN(RST), 
	.Q(cs[0]), 
	.D(ns[0]), 
	.CK(CLK));
   CLKXOR2X2M U3 (.Y(n14), 
	.B(edge_cnt[4]), 
	.A(r89_B_4_));
   CLKXOR2X2M U4 (.Y(n13), 
	.B(edge_cnt[2]), 
	.A(r89_B_2_));
   BUFX2M U5 (.Y(n26), 
	.A(n24));
   NAND3X1M U6 (.Y(n45), 
	.C(cs[2]), 
	.B(n19), 
	.A(cs[0]));
endmodule

module TOP_UART_RX_Prescale_width6_test_1 (
	CLK, 
	RST, 
	RX_IN, 
	Prescale, 
	PAR_EN, 
	PAR_TYP, 
	P_DATA, 
	data_valid, 
	Parity_Error, 
	Stop_Error, 
	test_si2, 
	test_si1, 
	test_se, 
	UART_RX_CLK__L3_N1);
   input CLK;
   input RST;
   input RX_IN;
   input [5:0] Prescale;
   input PAR_EN;
   input PAR_TYP;
   output [7:0] P_DATA;
   output data_valid;
   output Parity_Error;
   output Stop_Error;
   input test_si2;
   input test_si1;
   input test_se;
   input UART_RX_CLK__L3_N1;

   // Internal wires
   wire FE_PT0_;
   wire FE_UNCONNECTED_0;
   wire RX_IN_sync;
   wire RX_IN_meta;
   wire dat_samp_en;
   wire sampled_bit;
   wire deser_en;
   wire par_chk_en;
   wire strt_chk_en;
   wire strt_glitch;
   wire stp_chk_en;
   wire n6;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n19;
   wire n20;
   wire [5:0] edge_cnt;
   wire [3:0] bit_cnt;

   SDFFSQX4M RX_IN_sync_reg (.SN(RST), 
	.SI(RX_IN_meta), 
	.SE(n20), 
	.Q(RX_IN_sync), 
	.D(RX_IN_meta), 
	.CK(CLK));
   SDFFSQX2M RX_IN_meta_reg (.SN(RST), 
	.SI(test_si1), 
	.SE(n20), 
	.Q(RX_IN_meta), 
	.D(RX_IN), 
	.CK(CLK));
   DLY1X1M U13 (.Y(n9), 
	.A(test_se));
   DLY1X1M U14 (.Y(n10), 
	.A(n9));
   DLY1X1M U15 (.Y(n11), 
	.A(n14));
   INVXLM U16 (.Y(n12), 
	.A(n9));
   INVXLM U17 (.Y(n13), 
	.A(n12));
   DLY1X1M U18 (.Y(n14), 
	.A(n10));
   DLY1X1M U19 (.Y(n15), 
	.A(n13));
   DLY1X1M U20 (.Y(n16), 
	.A(n10));
   DLY1X1M U23 (.Y(n19), 
	.A(n11));
   DLY1X1M U24 (.Y(n20), 
	.A(n16));
   Data_Sampling_Prescale_width6_test_1 U0 (.CLK(UART_RX_CLK__L3_N1), 
	.RST(RST), 
	.RX_IN(RX_IN_sync), 
	.Prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.edge_cnt({ edge_cnt[5],
		edge_cnt[4],
		edge_cnt[3],
		edge_cnt[2],
		edge_cnt[1],
		edge_cnt[0] }), 
	.dat_samp_en(dat_samp_en), 
	.sampled_bit(sampled_bit), 
	.test_so(n6), 
	.test_se(n16));
   edge_bit_counter_Prescale_width6_test_1 U1 (.CLK(UART_RX_CLK__L3_N1), 
	.RST(RST), 
	.enable(dat_samp_en), 
	.Prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.edge_cnt({ edge_cnt[5],
		edge_cnt[4],
		edge_cnt[3],
		edge_cnt[2],
		edge_cnt[1],
		edge_cnt[0] }), 
	.bit_cnt({ bit_cnt[3],
		bit_cnt[2],
		bit_cnt[1],
		bit_cnt[0] }), 
	.test_si(n6), 
	.test_se(n14));
   Deserializer_test_1 U2 (.CLK(CLK), 
	.RST(RST), 
	.deser_en(deser_en), 
	.sampled_bit(sampled_bit), 
	.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.test_si(edge_cnt[5]), 
	.test_se(n15), 
	.UART_RX_CLK__L3_N1(UART_RX_CLK__L3_N1));
   Parity_Check_test_1 U3 (.CLK(UART_RX_CLK__L3_N1), 
	.RST(RST), 
	.par_chk_en(par_chk_en), 
	.PAR_TYP(PAR_TYP), 
	.sampled_bit(sampled_bit), 
	.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.par_err(Parity_Error), 
	.test_se(n19));
   Start_Check_test_1 U4 (.CLK(UART_RX_CLK__L3_N1), 
	.RST(RST), 
	.strt_chk_en(strt_chk_en), 
	.sampled_bit(sampled_bit), 
	.strt_glitch(strt_glitch), 
	.test_si(Parity_Error), 
	.test_se(n19));
   Stop_Check_test_1 U5 (.CLK(CLK), 
	.RST(RST), 
	.stp_chk_en(stp_chk_en), 
	.sampled_bit(sampled_bit), 
	.stp_err(Stop_Error), 
	.test_si(test_si2), 
	.test_se(n15));
   FSM_Prescale_width6_test_1 U6 (.CLK(CLK), 
	.RST(RST), 
	.RX_IN(RX_IN_sync), 
	.PAR_EN(PAR_EN), 
	.Prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.edge_cnt({ edge_cnt[5],
		edge_cnt[4],
		edge_cnt[3],
		edge_cnt[2],
		edge_cnt[1],
		edge_cnt[0] }), 
	.bit_cnt({ bit_cnt[3],
		bit_cnt[2],
		bit_cnt[1],
		bit_cnt[0] }), 
	.par_err(Parity_Error), 
	.strt_glitch(strt_glitch), 
	.stp_err(Stop_Error), 
	.dat_samp_en(dat_samp_en), 
	.enable(FE_PT0_), 
	.deser_en(deser_en), 
	.par_chk_en(par_chk_en), 
	.strt_chk_en(strt_chk_en), 
	.stp_chk_en(stp_chk_en), 
	.data_valid(data_valid), 
	.test_se(n11));
endmodule

module TOP_UART_test_1 (
	TX_P_DATA, 
	TX_Data_Valid, 
	parity_enable, 
	parity_type, 
	TX_CLK, 
	RST_TX, 
	RX_CLK, 
	RST_RX, 
	RX_IN, 
	Prescale, 
	TX_OUT, 
	busy, 
	RX_P_DATA, 
	RX_data_valid, 
	Parity_Error, 
	Stop_Error, 
	test_si2, 
	test_si1, 
	test_so1, 
	test_se, 
	UART_RX_CLK__L3_N1, 
	UART_TX_CLK__L3_N3);
   input [7:0] TX_P_DATA;
   input TX_Data_Valid;
   input parity_enable;
   input parity_type;
   input TX_CLK;
   input RST_TX;
   input RX_CLK;
   input RST_RX;
   input RX_IN;
   input [5:0] Prescale;
   output TX_OUT;
   output busy;
   output [7:0] RX_P_DATA;
   output RX_data_valid;
   output Parity_Error;
   output Stop_Error;
   input test_si2;
   input test_si1;
   output test_so1;
   input test_se;
   input UART_RX_CLK__L3_N1;
   input UART_TX_CLK__L3_N3;

   TOP_UART_TX_PARALLEL_DATA_WIDTH8_test_1 U0_UART_TX (.P_DATA({ TX_P_DATA[7],
		TX_P_DATA[6],
		TX_P_DATA[5],
		TX_P_DATA[4],
		TX_P_DATA[3],
		TX_P_DATA[2],
		TX_P_DATA[1],
		TX_P_DATA[0] }), 
	.Data_Valid(TX_Data_Valid), 
	.PAR_EN(parity_enable), 
	.PAR_TYP(parity_type), 
	.clk(TX_CLK), 
	.rst(RST_TX), 
	.TX_OUT(TX_OUT), 
	.busy(busy), 
	.test_si(RX_data_valid), 
	.test_so(test_so1), 
	.test_se(test_se), 
	.UART_TX_CLK__L3_N3(UART_TX_CLK__L3_N3));
   TOP_UART_RX_Prescale_width6_test_1 U0_UART_RX (.CLK(RX_CLK), 
	.RST(RST_RX), 
	.RX_IN(RX_IN), 
	.Prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.PAR_EN(parity_enable), 
	.PAR_TYP(parity_type), 
	.P_DATA({ RX_P_DATA[7],
		RX_P_DATA[6],
		RX_P_DATA[5],
		RX_P_DATA[4],
		RX_P_DATA[3],
		RX_P_DATA[2],
		RX_P_DATA[1],
		RX_P_DATA[0] }), 
	.data_valid(RX_data_valid), 
	.Parity_Error(Parity_Error), 
	.Stop_Error(Stop_Error), 
	.test_si2(test_si2), 
	.test_si1(test_si1), 
	.test_se(test_se), 
	.UART_RX_CLK__L3_N1(UART_RX_CLK__L3_N1));
endmodule

module sys_ctrl_test_1 (
	CLK, 
	RST, 
	RX_P_DATA, 
	RX_D_VLD, 
	RdData, 
	RdData_Valid, 
	ALU_OUT, 
	OUT_Valid, 
	FIFO_FULL, 
	Address, 
	WrEn, 
	RdEn, 
	WrData, 
	ALU_FUN, 
	EN, 
	CLK_EN, 
	TX_P_DATA, 
	TX_D_VLD, 
	clk_div_en, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN0_SYNC_REF_RST, 
	FE_OFN1_SYNC_REF_RST, 
	REF_CLK_M__L7_N4, 
	REF_CLK_M__L7_N5, 
	REF_CLK_M__L7_N7, 
	REF_CLK_M__L7_N8, 
	REF_CLK_M__L7_N9);
   input CLK;
   input RST;
   input [7:0] RX_P_DATA;
   input RX_D_VLD;
   input [7:0] RdData;
   input RdData_Valid;
   input [15:0] ALU_OUT;
   input OUT_Valid;
   input FIFO_FULL;
   output [3:0] Address;
   output WrEn;
   output RdEn;
   output [7:0] WrData;
   output [3:0] ALU_FUN;
   output EN;
   output CLK_EN;
   output [7:0] TX_P_DATA;
   output TX_D_VLD;
   output clk_div_en;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN0_SYNC_REF_RST;
   input FE_OFN1_SYNC_REF_RST;
   input REF_CLK_M__L7_N4;
   input REF_CLK_M__L7_N5;
   input REF_CLK_M__L7_N7;
   input REF_CLK_M__L7_N8;
   input REF_CLK_M__L7_N9;

   // Internal wires
   wire LTIE_LTIELO_NET;
   wire current_state_2_;
   wire current_state_1_;
   wire current_state_0_;
   wire addr_reg_0_;
   wire alu_out_reg_15_;
   wire alu_out_reg_14_;
   wire alu_out_reg_13_;
   wire alu_out_reg_12_;
   wire alu_out_reg_11_;
   wire alu_out_reg_10_;
   wire alu_out_reg_9_;
   wire alu_out_reg_8_;
   wire alu_out_reg_7_;
   wire alu_out_reg_6_;
   wire alu_out_reg_5_;
   wire alu_out_reg_4_;
   wire alu_out_reg_3_;
   wire alu_out_reg_2_;
   wire alu_out_reg_1_;
   wire N188;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;
   wire n56;
   wire n57;
   wire n64;
   wire n65;
   wire n192;
   wire n193;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n203;
   wire n204;
   wire n205;
   wire n206;
   wire n207;
   wire n208;
   wire n209;
   wire n210;
   wire n211;
   wire n213;
   wire n214;
   wire n215;
   wire n216;
   wire n217;
   wire n222;
   wire n223;
   wire n224;
   wire n225;
   wire n226;
   wire n227;
   wire n228;
   wire n229;
   wire n230;
   wire n231;
   wire n232;
   wire n233;
   wire n234;
   wire n235;
   wire n236;
   wire n237;
   wire n238;
   wire n239;
   wire n240;
   wire n241;
   wire n242;
   wire n243;
   wire n244;
   wire n245;
   wire n246;
   wire n247;
   wire n248;
   wire n249;
   wire n250;
   wire n251;
   wire n252;
   wire n253;
   wire n254;
   wire n255;
   wire n256;
   wire n257;
   wire n258;
   wire n259;
   wire n260;
   wire n261;
   wire n262;
   wire n263;
   wire n264;
   wire n265;
   wire n266;
   wire n267;
   wire n268;
   wire n269;
   wire n270;
   wire n271;
   wire n272;
   wire n273;
   wire n274;
   wire n275;

   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   OAI31X1M U138 (.Y(n115), 
	.B0(n129), 
	.A2(n126), 
	.A1(n207), 
	.A0(n128));
   SDFFRQX2M alu_out_reg_reg_15_ (.SI(alu_out_reg_14_), 
	.SE(n270), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(alu_out_reg_15_), 
	.D(n184), 
	.CK(REF_CLK_M__L7_N7));
   SDFFRQX2M alu_out_reg_reg_14_ (.SI(alu_out_reg_13_), 
	.SE(n269), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(alu_out_reg_14_), 
	.D(n183), 
	.CK(REF_CLK_M__L7_N7));
   SDFFRQX2M alu_out_reg_reg_13_ (.SI(alu_out_reg_12_), 
	.SE(n269), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(alu_out_reg_13_), 
	.D(n182), 
	.CK(REF_CLK_M__L7_N7));
   SDFFRQX2M alu_out_reg_reg_12_ (.SI(alu_out_reg_11_), 
	.SE(n268), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(alu_out_reg_12_), 
	.D(n181), 
	.CK(REF_CLK_M__L7_N7));
   SDFFRQX2M alu_out_reg_reg_11_ (.SI(alu_out_reg_10_), 
	.SE(n268), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(alu_out_reg_11_), 
	.D(n180), 
	.CK(REF_CLK_M__L7_N7));
   SDFFRQX2M alu_out_reg_reg_10_ (.SI(alu_out_reg_9_), 
	.SE(n267), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(alu_out_reg_10_), 
	.D(n179), 
	.CK(REF_CLK_M__L7_N7));
   SDFFRQX2M alu_out_reg_reg_9_ (.SI(alu_out_reg_8_), 
	.SE(n267), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(alu_out_reg_9_), 
	.D(n178), 
	.CK(REF_CLK_M__L7_N7));
   SDFFRQX2M alu_out_reg_reg_8_ (.SI(alu_out_reg_7_), 
	.SE(n266), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(alu_out_reg_8_), 
	.D(n177), 
	.CK(REF_CLK_M__L7_N7));
   SDFFRQX2M alu_out_reg_reg_7_ (.SI(alu_out_reg_6_), 
	.SE(n266), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(alu_out_reg_7_), 
	.D(n176), 
	.CK(REF_CLK_M__L7_N5));
   SDFFRQX2M alu_out_reg_reg_6_ (.SI(alu_out_reg_5_), 
	.SE(n265), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(alu_out_reg_6_), 
	.D(n175), 
	.CK(REF_CLK_M__L7_N5));
   SDFFRQX2M alu_out_reg_reg_5_ (.SI(alu_out_reg_4_), 
	.SE(n265), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(alu_out_reg_5_), 
	.D(n174), 
	.CK(REF_CLK_M__L7_N5));
   SDFFRQX2M alu_out_reg_reg_4_ (.SI(alu_out_reg_3_), 
	.SE(n264), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(alu_out_reg_4_), 
	.D(n173), 
	.CK(REF_CLK_M__L7_N5));
   SDFFRQX2M alu_out_reg_reg_3_ (.SI(alu_out_reg_2_), 
	.SE(n264), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(alu_out_reg_3_), 
	.D(n172), 
	.CK(REF_CLK_M__L7_N5));
   SDFFRQX2M alu_out_reg_reg_2_ (.SI(alu_out_reg_1_), 
	.SE(n263), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(alu_out_reg_2_), 
	.D(n171), 
	.CK(REF_CLK_M__L7_N5));
   SDFFRQX2M alu_out_reg_reg_1_ (.SI(test_si2), 
	.SE(n263), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(alu_out_reg_1_), 
	.D(n170), 
	.CK(REF_CLK_M__L7_N5));
   SDFFRQX2M addr_reg_reg_0_ (.SI(WrEn), 
	.SE(n262), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(addr_reg_0_), 
	.D(n143), 
	.CK(REF_CLK_M__L7_N5));
   SDFFRQX2M CLK_EN_reg (.SI(n216), 
	.SE(n261), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(CLK_EN), 
	.D(n155), 
	.CK(CLK));
   SDFFRQX2M ALU_FUN_reg_3_ (.SI(ALU_FUN[2]), 
	.SE(n261), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(ALU_FUN[3]), 
	.D(n160), 
	.CK(CLK));
   SDFFRQX2M WrData_reg_6_ (.SI(WrData[5]), 
	.SE(n260), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(WrData[6]), 
	.D(n167), 
	.CK(CLK));
   SDFFRQX2M WrData_reg_4_ (.SI(WrData[3]), 
	.SE(n260), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(WrData[4]), 
	.D(n165), 
	.CK(CLK));
   SDFFRQX2M WrData_reg_3_ (.SI(WrData[2]), 
	.SE(n259), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(WrData[3]), 
	.D(n164), 
	.CK(CLK));
   SDFFRQX2M WrData_reg_2_ (.SI(WrData[1]), 
	.SE(n259), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(WrData[2]), 
	.D(n163), 
	.CK(CLK));
   SDFFRQX2M WrData_reg_1_ (.SI(WrData[0]), 
	.SE(n258), 
	.RN(RST), 
	.Q(WrData[1]), 
	.D(n162), 
	.CK(REF_CLK_M__L7_N8));
   SDFFRQX2M WrData_reg_0_ (.SI(TX_P_DATA[7]), 
	.SE(n258), 
	.RN(RST), 
	.Q(WrData[0]), 
	.D(n161), 
	.CK(REF_CLK_M__L7_N8));
   SDFFRQX2M TX_P_DATA_reg_7_ (.SI(TX_P_DATA[6]), 
	.SE(n257), 
	.RN(RST), 
	.Q(TX_P_DATA[7]), 
	.D(n154), 
	.CK(REF_CLK_M__L7_N9));
   SDFFRQX2M TX_P_DATA_reg_6_ (.SI(TX_P_DATA[5]), 
	.SE(n257), 
	.RN(RST), 
	.Q(TX_P_DATA[6]), 
	.D(n153), 
	.CK(REF_CLK_M__L7_N9));
   SDFFRQX2M TX_P_DATA_reg_5_ (.SI(TX_P_DATA[4]), 
	.SE(n256), 
	.RN(RST), 
	.Q(TX_P_DATA[5]), 
	.D(n152), 
	.CK(REF_CLK_M__L7_N9));
   SDFFRQX2M TX_P_DATA_reg_4_ (.SI(TX_P_DATA[3]), 
	.SE(n256), 
	.RN(RST), 
	.Q(TX_P_DATA[4]), 
	.D(n151), 
	.CK(REF_CLK_M__L7_N9));
   SDFFRQX2M TX_P_DATA_reg_3_ (.SI(TX_P_DATA[2]), 
	.SE(n255), 
	.RN(RST), 
	.Q(TX_P_DATA[3]), 
	.D(n150), 
	.CK(REF_CLK_M__L7_N8));
   SDFFRQX2M TX_P_DATA_reg_2_ (.SI(TX_P_DATA[1]), 
	.SE(n255), 
	.RN(RST), 
	.Q(TX_P_DATA[2]), 
	.D(n149), 
	.CK(REF_CLK_M__L7_N8));
   SDFFRQX2M TX_P_DATA_reg_1_ (.SI(TX_P_DATA[0]), 
	.SE(n254), 
	.RN(RST), 
	.Q(TX_P_DATA[1]), 
	.D(n148), 
	.CK(REF_CLK_M__L7_N9));
   SDFFRQX2M TX_P_DATA_reg_0_ (.SI(TX_D_VLD), 
	.SE(n254), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(TX_P_DATA[0]), 
	.D(n147), 
	.CK(REF_CLK_M__L7_N9));
   SDFFRQX2M WrData_reg_7_ (.SI(WrData[6]), 
	.SE(n253), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(WrData[7]), 
	.D(n168), 
	.CK(CLK));
   SDFFRQX2M WrData_reg_5_ (.SI(WrData[4]), 
	.SE(n253), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(WrData[5]), 
	.D(n166), 
	.CK(CLK));
   SDFFRX1M addr_reg_reg_3_ (.SI(n214), 
	.SE(n249), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.QN(n70), 
	.Q(n213), 
	.D(n146), 
	.CK(CLK));
   SDFFRX1M addr_reg_reg_2_ (.SI(n215), 
	.SE(n249), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.QN(n71), 
	.Q(n214), 
	.D(n145), 
	.CK(CLK));
   SDFFRX1M addr_reg_reg_1_ (.SI(addr_reg_0_), 
	.SE(n248), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.QN(n72), 
	.Q(n215), 
	.D(n144), 
	.CK(CLK));
   SDFFRQX2M WrEn_reg (.SI(WrData[7]), 
	.SE(n252), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(WrEn), 
	.D(n199), 
	.CK(CLK));
   SDFFRQX2M RdEn_reg (.SI(EN), 
	.SE(n252), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(RdEn), 
	.D(N188), 
	.CK(CLK));
   SDFFRQX2M TX_D_VLD_reg (.SI(RdEn), 
	.SE(n251), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(TX_D_VLD), 
	.D(n192), 
	.CK(REF_CLK_M__L7_N9));
   SDFFRQX2M ALU_FUN_reg_1_ (.SI(ALU_FUN[0]), 
	.SE(n251), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(ALU_FUN[1]), 
	.D(n158), 
	.CK(REF_CLK_M__L7_N5));
   SDFFRQX2M EN_reg (.SI(CLK_EN), 
	.SE(n250), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(EN), 
	.D(n156), 
	.CK(REF_CLK_M__L7_N7));
   SDFFRQX2M current_state_reg_1_ (.SI(current_state_0_), 
	.SE(n250), 
	.RN(RST), 
	.Q(current_state_1_), 
	.D(n186), 
	.CK(REF_CLK_M__L7_N7));
   SDFFRX1M Address_reg_1_ (.SI(Address[0]), 
	.SE(n248), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.QN(n69), 
	.Q(n217), 
	.D(n141), 
	.CK(CLK));
   SDFFRX4M Address_reg_2_ (.SI(n217), 
	.SE(n273), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.QN(n68), 
	.Q(Address[2]), 
	.D(n140), 
	.CK(REF_CLK_M__L7_N4));
   SDFFRX1M Address_reg_3_ (.SI(n68), 
	.SE(n247), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.QN(n67), 
	.Q(n216), 
	.D(n139), 
	.CK(CLK));
   NAND3X2M U58 (.Y(n106), 
	.C(n127), 
	.B(n205), 
	.A(n203));
   OA21X2M U59 (.Y(n56), 
	.B0(RX_D_VLD), 
	.A1(n118), 
	.A0(n83));
   OR2X2M U60 (.Y(n57), 
	.B(n200), 
	.A(current_state_2_));
   CLKINVX2M U61 (.Y(Address[3]), 
	.A(n67));
   CLKINVX2M U62 (.Y(Address[1]), 
	.A(n69));
   NAND2X2M U66 (.Y(n81), 
	.B(n197), 
	.A(n82));
   NOR3BX2M U68 (.Y(n121), 
	.C(n106), 
	.B(n208), 
	.AN(RX_P_DATA[7]));
   NOR2X2M U69 (.Y(n82), 
	.B(n57), 
	.A(n64));
   CLKINVX1M U70 (.Y(n64), 
	.A(n111));
   NOR2X2M U71 (.Y(n127), 
	.B(current_state_0_), 
	.A(current_state_2_));
   NAND3X2M U73 (.Y(n101), 
	.C(test_so2), 
	.B(current_state_1_), 
	.A(n127));
   CLKINVX2M U74 (.Y(n209), 
	.A(RX_P_DATA[2]));
   INVX2M U75 (.Y(n206), 
	.A(RX_P_DATA[6]));
   INVX2M U76 (.Y(n207), 
	.A(RX_P_DATA[4]));
   INVX2M U77 (.Y(n210), 
	.A(RX_P_DATA[1]));
   CLKINVX2M U81 (.Y(n197), 
	.A(n84));
   NAND2X2M U82 (.Y(n80), 
	.B(n197), 
	.A(n83));
   INVX2M U83 (.Y(n199), 
	.A(n65));
   CLKINVX2M U84 (.Y(n196), 
	.A(n135));
   INVX2M U85 (.Y(n192), 
	.A(n89));
   NOR2X2M U88 (.Y(n84), 
	.B(n199), 
	.A(N188));
   OAI22X1M U89 (.Y(n186), 
	.B1(n113), 
	.B0(n112), 
	.A1(n203), 
	.A0(n193));
   NOR4BX1M U90 (.Y(n112), 
	.D(n115), 
	.C(n202), 
	.B(n87), 
	.AN(n114));
   CLKINVX2M U91 (.Y(n193), 
	.A(n113));
   OAI211X2M U92 (.Y(n187), 
	.C0(n117), 
	.B0(n116), 
	.A1(n204), 
	.A0(n193));
   OAI31X1M U93 (.Y(n116), 
	.B0(n193), 
	.A2(n82), 
	.A1(n119), 
	.A0(n118));
   NAND2X2M U94 (.Y(n135), 
	.B(n200), 
	.A(n138));
   NAND2X2M U95 (.Y(n118), 
	.B(n114), 
	.A(n130));
   AND2X2M U96 (.Y(n83), 
	.B(n111), 
	.A(n127));
   CLKINVX2M U97 (.Y(n65), 
	.A(n56));
   OAI211X2M U98 (.Y(n185), 
	.C0(n104), 
	.B0(n110), 
	.A1(n205), 
	.A0(n193));
   OAI21X2M U99 (.Y(n110), 
	.B0(n193), 
	.A1(n107), 
	.A0(n202));
   CLKINVX1M U101 (.Y(n202), 
	.A(n99));
   INVX2M U102 (.Y(n195), 
	.A(n86));
   CLKINVX1M U104 (.Y(n201), 
	.A(n101));
   AND4X2M U105 (.Y(n102), 
	.D(n106), 
	.C(n105), 
	.B(n99), 
	.A(n104));
   INVX2M U108 (.Y(n198), 
	.A(n130));
   NOR2BX2M U110 (.Y(n100), 
	.B(n107), 
	.AN(n104));
   NAND3X2M U112 (.Y(n128), 
	.C(RX_P_DATA[0]), 
	.B(n206), 
	.A(n209));
   NOR2X2M U113 (.Y(n129), 
	.B(n198), 
	.A(n119));
   OAI222X1M U114 (.Y(n140), 
	.C1(n68), 
	.C0(n197), 
	.B1(n209), 
	.B0(n81), 
	.A1(n71), 
	.A0(n80));
   OAI222X1M U115 (.Y(n141), 
	.C1(n69), 
	.C0(n197), 
	.B1(n210), 
	.B0(n81), 
	.A1(n72), 
	.A0(n80));
   OAI222X1M U116 (.Y(n139), 
	.C1(n67), 
	.C0(n197), 
	.B1(n208), 
	.B0(n81), 
	.A1(n70), 
	.A0(n80));
   NOR2X2M U117 (.Y(n111), 
	.B(n274), 
	.A(n203));
   CLKINVX2M U118 (.Y(n200), 
	.A(current_state_0_));
   CLKINVX2M U119 (.Y(n203), 
	.A(current_state_1_));
   NAND3X2M U120 (.Y(n126), 
	.C(n121), 
	.B(RX_P_DATA[1]), 
	.A(RX_P_DATA[5]));
   OAI211X2M U121 (.Y(n188), 
	.C0(n117), 
	.B0(n120), 
	.A1(n200), 
	.A0(n193));
   OAI31X1M U122 (.Y(n120), 
	.B0(n193), 
	.A2(n124), 
	.A1(n109), 
	.A0(n115));
   NOR3X2M U123 (.Y(n124), 
	.C(n126), 
	.B(RX_P_DATA[0]), 
	.A(n125));
   NAND3X2M U124 (.Y(n125), 
	.C(n209), 
	.B(n206), 
	.A(n207));
   AND2X1M U125 (.Y(N188), 
	.B(RX_D_VLD), 
	.A(n82));
   NOR3X2M U126 (.Y(n138), 
	.C(n204), 
	.B(test_so2), 
	.A(n275));
   CLKINVX2M U127 (.Y(n208), 
	.A(RX_P_DATA[3]));
   INVX2M U128 (.Y(n204), 
	.A(current_state_2_));
   OAI2BB2X1M U129 (.Y(n142), 
	.B1(n85), 
	.B0(n84), 
	.A1N(n84), 
	.A0N(Address[0]));
   AOI221XLM U130 (.Y(n85), 
	.C0(n198), 
	.B1(n82), 
	.B0(RX_P_DATA[0]), 
	.A1(n83), 
	.A0(addr_reg_0_));
   INVX2M U131 (.Y(n205), 
	.A(test_so2));
   NAND2X2M U132 (.Y(n114), 
	.B(current_state_0_), 
	.A(n138));
   NAND3X2M U133 (.Y(n130), 
	.C(current_state_2_), 
	.B(n200), 
	.A(n111));
   AND4X1M U134 (.Y(n119), 
	.D(n131), 
	.C(n121), 
	.B(RX_P_DATA[4]), 
	.A(RX_P_DATA[6]));
   NAND3X2M U136 (.Y(n113), 
	.C(n134), 
	.B(n133), 
	.A(n132));
   OAI21X2M U137 (.Y(n134), 
	.B0(FIFO_FULL), 
	.A1(n201), 
	.A0(n202));
   OAI21BX1M U139 (.Y(n132), 
	.B0N(RX_D_VLD), 
	.A1(n118), 
	.A0(n136));
   OAI21X2M U140 (.Y(n133), 
	.B0(n196), 
	.A1(n194), 
	.A0(FIFO_FULL));
   NOR4X1M U141 (.Y(n87), 
	.D(test_so2), 
	.C(current_state_2_), 
	.B(current_state_1_), 
	.A(n200));
   NAND4X2M U142 (.Y(n117), 
	.D(n123), 
	.C(n122), 
	.B(n193), 
	.A(n121));
   NOR2X2M U144 (.Y(n122), 
	.B(n206), 
	.A(n209));
   NAND4X2M U145 (.Y(n99), 
	.D(n204), 
	.C(n203), 
	.B(current_state_0_), 
	.A(test_so2));
   NOR2BX4M U146 (.Y(n109), 
	.B(n104), 
	.AN(OUT_Valid));
   CLKNAND2X2M U147 (.Y(n86), 
	.B(RX_D_VLD), 
	.A(n87));
   AND3X2M U148 (.Y(n107), 
	.C(current_state_2_), 
	.B(current_state_0_), 
	.A(n111));
   NAND3X2M U149 (.Y(n104), 
	.C(n127), 
	.B(n203), 
	.A(test_so2));
   OAI22X1M U150 (.Y(n145), 
	.B1(n71), 
	.B0(n195), 
	.A1(n86), 
	.A0(n209));
   INVX2M U151 (.Y(n211), 
	.A(RX_P_DATA[0]));
   OAI22X1M U152 (.Y(n144), 
	.B1(n72), 
	.B0(n195), 
	.A1(n86), 
	.A0(n210));
   OAI22X1M U153 (.Y(n146), 
	.B1(n70), 
	.B0(n195), 
	.A1(n86), 
	.A0(n208));
   OAI2BB2X1M U155 (.Y(n159), 
	.B1(n105), 
	.B0(n209), 
	.A1N(n105), 
	.A0N(ALU_FUN[2]));
   OAI2BB2X1M U156 (.Y(n163), 
	.B1(n65), 
	.B0(n209), 
	.A1N(n65), 
	.A0N(WrData[2]));
   OAI2BB2X1M U157 (.Y(n157), 
	.B1(n105), 
	.B0(n211), 
	.A1N(n105), 
	.A0N(ALU_FUN[0]));
   OAI2BB2X1M U158 (.Y(n161), 
	.B1(n65), 
	.B0(n211), 
	.A1N(n65), 
	.A0N(WrData[0]));
   OAI2BB2X1M U159 (.Y(n167), 
	.B1(n206), 
	.B0(n65), 
	.A1N(n65), 
	.A0N(WrData[6]));
   OAI2BB2X1M U160 (.Y(n158), 
	.B1(n105), 
	.B0(n210), 
	.A1N(n105), 
	.A0N(ALU_FUN[1]));
   OAI2BB2X1M U161 (.Y(n162), 
	.B1(n65), 
	.B0(n210), 
	.A1N(n65), 
	.A0N(WrData[1]));
   OAI2BB2X1M U162 (.Y(n160), 
	.B1(n105), 
	.B0(n208), 
	.A1N(n105), 
	.A0N(ALU_FUN[3]));
   OAI2BB2X1M U163 (.Y(n164), 
	.B1(n65), 
	.B0(n208), 
	.A1N(n65), 
	.A0N(WrData[3]));
   OAI2B1X2M U164 (.Y(n155), 
	.B0(n98), 
	.A1N(CLK_EN), 
	.A0(n97));
   OAI2BB1X2M U165 (.Y(n98), 
	.B0(n97), 
	.A1N(n100), 
	.A0N(n99));
   OAI21X2M U166 (.Y(n97), 
	.B0(n102), 
	.A1(n101), 
	.A0(FIFO_FULL));
   OAI2BB2X1M U167 (.Y(n147), 
	.B1(n89), 
	.B0(n88), 
	.A1N(n89), 
	.A0N(TX_P_DATA[0]));
   AOI222X1M U168 (.Y(n88), 
	.C1(n202), 
	.C0(test_so1), 
	.B1(n201), 
	.B0(alu_out_reg_8_), 
	.A1(n196), 
	.A0(RdData[0]));
   OAI2BB2X1M U169 (.Y(n148), 
	.B1(n89), 
	.B0(n90), 
	.A1N(n89), 
	.A0N(TX_P_DATA[1]));
   AOI222X1M U170 (.Y(n90), 
	.C1(n202), 
	.C0(alu_out_reg_1_), 
	.B1(n201), 
	.B0(alu_out_reg_9_), 
	.A1(n196), 
	.A0(RdData[1]));
   OAI2BB2X1M U171 (.Y(n149), 
	.B1(n89), 
	.B0(n91), 
	.A1N(n89), 
	.A0N(TX_P_DATA[2]));
   AOI222X1M U172 (.Y(n91), 
	.C1(n202), 
	.C0(alu_out_reg_2_), 
	.B1(n201), 
	.B0(alu_out_reg_10_), 
	.A1(n196), 
	.A0(RdData[2]));
   OAI2BB2X1M U173 (.Y(n150), 
	.B1(n89), 
	.B0(n92), 
	.A1N(n89), 
	.A0N(TX_P_DATA[3]));
   AOI222X1M U174 (.Y(n92), 
	.C1(n202), 
	.C0(alu_out_reg_3_), 
	.B1(n201), 
	.B0(alu_out_reg_11_), 
	.A1(n196), 
	.A0(RdData[3]));
   OAI2BB2X1M U175 (.Y(n151), 
	.B1(n89), 
	.B0(n93), 
	.A1N(n89), 
	.A0N(TX_P_DATA[4]));
   AOI222X1M U176 (.Y(n93), 
	.C1(n202), 
	.C0(alu_out_reg_4_), 
	.B1(n201), 
	.B0(alu_out_reg_12_), 
	.A1(n196), 
	.A0(RdData[4]));
   OAI2BB2X1M U177 (.Y(n152), 
	.B1(n89), 
	.B0(n94), 
	.A1N(n89), 
	.A0N(TX_P_DATA[5]));
   AOI222X1M U178 (.Y(n94), 
	.C1(n202), 
	.C0(alu_out_reg_5_), 
	.B1(n201), 
	.B0(alu_out_reg_13_), 
	.A1(n196), 
	.A0(RdData[5]));
   OAI2BB2X1M U179 (.Y(n153), 
	.B1(n89), 
	.B0(n95), 
	.A1N(n89), 
	.A0N(TX_P_DATA[6]));
   AOI222X1M U180 (.Y(n95), 
	.C1(n202), 
	.C0(alu_out_reg_6_), 
	.B1(n201), 
	.B0(alu_out_reg_14_), 
	.A1(n196), 
	.A0(RdData[6]));
   OAI2BB2X1M U181 (.Y(n154), 
	.B1(n89), 
	.B0(n96), 
	.A1N(n89), 
	.A0N(TX_P_DATA[7]));
   AOI222X1M U182 (.Y(n96), 
	.C1(n202), 
	.C0(alu_out_reg_7_), 
	.B1(n201), 
	.B0(alu_out_reg_15_), 
	.A1(n196), 
	.A0(RdData[7]));
   OAI2BB2X1M U183 (.Y(n165), 
	.B1(n207), 
	.B0(n65), 
	.A1N(n65), 
	.A0N(WrData[4]));
   OAI2BB2X1M U184 (.Y(n156), 
	.B1(n103), 
	.B0(n100), 
	.A1N(n103), 
	.A0N(EN));
   NOR2BX2M U185 (.Y(n103), 
	.B(n201), 
	.AN(n102));
   NAND2X2M U186 (.Y(n105), 
	.B(RX_D_VLD), 
	.A(n107));
   NAND2BX2M U187 (.Y(n89), 
	.B(n137), 
	.AN(FIFO_FULL));
   OAI211X2M U188 (.Y(n137), 
	.C0(n99), 
	.B0(n101), 
	.A1(n194), 
	.A0(n135));
   AO2B2X2M U189 (.Y(n172), 
	.B1(n109), 
	.B0(ALU_OUT[3]), 
	.A1N(n109), 
	.A0(alu_out_reg_3_));
   AO2B2X2M U190 (.Y(n173), 
	.B1(n109), 
	.B0(ALU_OUT[4]), 
	.A1N(n109), 
	.A0(alu_out_reg_4_));
   AO2B2X2M U191 (.Y(n174), 
	.B1(n109), 
	.B0(ALU_OUT[5]), 
	.A1N(n109), 
	.A0(alu_out_reg_5_));
   AO2B2X2M U192 (.Y(n175), 
	.B1(n109), 
	.B0(ALU_OUT[6]), 
	.A1N(n109), 
	.A0(alu_out_reg_6_));
   AO2B2X2M U193 (.Y(n176), 
	.B1(n109), 
	.B0(ALU_OUT[7]), 
	.A1N(n109), 
	.A0(alu_out_reg_7_));
   AO2B2X2M U194 (.Y(n177), 
	.B1(n109), 
	.B0(ALU_OUT[8]), 
	.A1N(n109), 
	.A0(alu_out_reg_8_));
   AO2B2X2M U195 (.Y(n178), 
	.B1(n109), 
	.B0(ALU_OUT[9]), 
	.A1N(n109), 
	.A0(alu_out_reg_9_));
   AO2B2X2M U196 (.Y(n179), 
	.B1(n109), 
	.B0(ALU_OUT[10]), 
	.A1N(n109), 
	.A0(alu_out_reg_10_));
   AO2B2X2M U197 (.Y(n180), 
	.B1(n109), 
	.B0(ALU_OUT[11]), 
	.A1N(n109), 
	.A0(alu_out_reg_11_));
   AO2B2X2M U198 (.Y(n181), 
	.B1(n109), 
	.B0(ALU_OUT[12]), 
	.A1N(n109), 
	.A0(alu_out_reg_12_));
   AO2B2X2M U199 (.Y(n182), 
	.B1(n109), 
	.B0(ALU_OUT[13]), 
	.A1N(n109), 
	.A0(alu_out_reg_13_));
   AO22X1M U200 (.Y(n166), 
	.B1(n65), 
	.B0(WrData[5]), 
	.A1(RX_P_DATA[5]), 
	.A0(n199));
   AO22X1M U201 (.Y(n168), 
	.B1(n65), 
	.B0(WrData[7]), 
	.A1(RX_P_DATA[7]), 
	.A0(n199));
   OAI2BB2X1M U202 (.Y(n143), 
	.B1(n86), 
	.B0(n211), 
	.A1N(addr_reg_0_), 
	.A0N(n86));
   AO2B2X2M U203 (.Y(n169), 
	.B1(n109), 
	.B0(ALU_OUT[0]), 
	.A1N(n109), 
	.A0(test_so1));
   AO2B2X2M U204 (.Y(n170), 
	.B1(n109), 
	.B0(ALU_OUT[1]), 
	.A1N(n109), 
	.A0(alu_out_reg_1_));
   AO2B2X2M U205 (.Y(n171), 
	.B1(n109), 
	.B0(ALU_OUT[2]), 
	.A1N(n109), 
	.A0(alu_out_reg_2_));
   AO2B2X2M U206 (.Y(n183), 
	.B1(n109), 
	.B0(ALU_OUT[14]), 
	.A1N(n109), 
	.A0(alu_out_reg_14_));
   AO2B2X2M U207 (.Y(n184), 
	.B1(n109), 
	.B0(ALU_OUT[15]), 
	.A1N(n109), 
	.A0(alu_out_reg_15_));
   INVX2M U208 (.Y(n194), 
	.A(RdData_Valid));
   DLY1X1M U211 (.Y(n222), 
	.A(n228));
   DLY1X1M U212 (.Y(n223), 
	.A(n229));
   DLY1X1M U213 (.Y(n224), 
	.A(n230));
   DLY1X1M U214 (.Y(n225), 
	.A(test_se));
   DLY1X1M U215 (.Y(n226), 
	.A(n225));
   DLY1X1M U216 (.Y(n227), 
	.A(n225));
   DLY1X1M U217 (.Y(n228), 
	.A(n227));
   DLY1X1M U218 (.Y(n229), 
	.A(n226));
   DLY1X1M U219 (.Y(n230), 
	.A(n226));
   DLY1X1M U220 (.Y(n231), 
	.A(n227));
   DLY1X1M U221 (.Y(n232), 
	.A(n228));
   DLY1X1M U222 (.Y(n233), 
	.A(n229));
   DLY1X1M U223 (.Y(n234), 
	.A(n230));
   DLY1X1M U224 (.Y(n235), 
	.A(n231));
   DLY1X1M U225 (.Y(n236), 
	.A(n223));
   DLY1X1M U226 (.Y(n237), 
	.A(n224));
   DLY1X1M U227 (.Y(n238), 
	.A(n231));
   DLY1X1M U228 (.Y(n239), 
	.A(n222));
   DLY1X1M U229 (.Y(n240), 
	.A(n223));
   DLY1X1M U230 (.Y(n241), 
	.A(n224));
   DLY1X1M U231 (.Y(n242), 
	.A(n232));
   DLY1X1M U232 (.Y(n243), 
	.A(n232));
   DLY1X1M U233 (.Y(n244), 
	.A(n233));
   DLY1X1M U234 (.Y(n245), 
	.A(n233));
   DLY1X1M U235 (.Y(n246), 
	.A(n234));
   DLY1X1M U236 (.Y(n247), 
	.A(n222));
   DLY1X1M U237 (.Y(n248), 
	.A(n234));
   DLY1X1M U238 (.Y(n249), 
	.A(n235));
   DLY1X1M U239 (.Y(n250), 
	.A(n236));
   DLY1X1M U240 (.Y(n251), 
	.A(n236));
   DLY1X1M U241 (.Y(n252), 
	.A(n237));
   DLY1X1M U242 (.Y(n253), 
	.A(n237));
   DLY1X1M U243 (.Y(n254), 
	.A(n238));
   DLY1X1M U244 (.Y(n255), 
	.A(n238));
   DLY1X1M U245 (.Y(n256), 
	.A(n239));
   DLY1X1M U246 (.Y(n257), 
	.A(n239));
   DLY1X1M U247 (.Y(n258), 
	.A(n240));
   DLY1X1M U248 (.Y(n259), 
	.A(n240));
   DLY1X1M U249 (.Y(n260), 
	.A(n241));
   DLY1X1M U250 (.Y(n261), 
	.A(n241));
   DLY1X1M U252 (.Y(n263), 
	.A(n242));
   DLY1X1M U253 (.Y(n264), 
	.A(n243));
   DLY1X1M U254 (.Y(n265), 
	.A(n243));
   DLY1X1M U255 (.Y(n266), 
	.A(n244));
   DLY1X1M U256 (.Y(n267), 
	.A(n244));
   DLY1X1M U257 (.Y(n268), 
	.A(n245));
   DLY1X1M U258 (.Y(n269), 
	.A(n245));
   DLY1X1M U259 (.Y(n270), 
	.A(n246));
   INVXLM U263 (.Y(n274), 
	.A(n205));
   INVXLM U264 (.Y(n275), 
	.A(n203));
   SDFFRQX4M ALU_FUN_reg_2_ (.SI(ALU_FUN[1]), 
	.SE(n271), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(ALU_FUN[2]), 
	.D(n159), 
	.CK(CLK));
   SDFFRQX4M current_state_reg_3_ (.SI(current_state_2_), 
	.SE(n270), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(test_so2), 
	.D(n185), 
	.CK(REF_CLK_M__L7_N7));
   SDFFRQX4M current_state_reg_2_ (.SI(current_state_1_), 
	.SE(n271), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(current_state_2_), 
	.D(n187), 
	.CK(REF_CLK_M__L7_N7));
   SDFFRQX4M Address_reg_0_ (.SI(ALU_FUN[3]), 
	.SE(n272), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(Address[0]), 
	.D(n142), 
	.CK(CLK));
   SDFFRQX4M ALU_FUN_reg_0_ (.SI(test_si1), 
	.SE(n273), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(ALU_FUN[0]), 
	.D(n157), 
	.CK(CLK));
   SDFFRQX4M current_state_reg_0_ (.SI(alu_out_reg_15_), 
	.SE(n272), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(current_state_0_), 
	.D(n188), 
	.CK(REF_CLK_M__L7_N7));
   SDFFRQX4M alu_out_reg_reg_0_ (.SI(n213), 
	.SE(n262), 
	.RN(FE_OFN0_SYNC_REF_RST), 
	.Q(test_so1), 
	.D(n169), 
	.CK(REF_CLK_M__L7_N5));
   INVX2M U3 (.Y(clk_div_en), 
	.A(LTIE_LTIELO_NET));
   BUFX2M U5 (.Y(n262), 
	.A(n242));
   NOR4X1M U6 (.Y(n123), 
	.D(RX_P_DATA[0]), 
	.C(RX_P_DATA[1]), 
	.B(RX_P_DATA[4]), 
	.A(RX_P_DATA[5]));
   NOR4X1M U7 (.Y(n131), 
	.D(n211), 
	.C(n209), 
	.B(RX_P_DATA[1]), 
	.A(RX_P_DATA[5]));
   BUFX2M U8 (.Y(n273), 
	.A(n235));
   BUFX2M U9 (.Y(n272), 
	.A(n247));
   AOI21X1M U10 (.Y(n136), 
	.B0(test_so2), 
	.A1(n200), 
	.A0(current_state_2_));
   BUFX2M U11 (.Y(n271), 
	.A(n246));
endmodule

module reg_file_edit_test_1 (
	CLK, 
	RST, 
	WrEn, 
	RdEn, 
	Address, 
	WrData, 
	RdData, 
	RdData_VLD, 
	REG0, 
	REG1, 
	REG2, 
	REG3, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN1_SYNC_REF_RST, 
	REF_CLK_M__L7_N14, 
	REF_CLK_M__L7_N15, 
	REF_CLK_M__L7_N16, 
	REF_CLK_M__L7_N17, 
	REF_CLK_M__L7_N18, 
	REF_CLK_M__L7_N4, 
	REF_CLK_M__L7_N5, 
	REF_CLK_M__L7_N6);
   input CLK;
   input RST;
   input WrEn;
   input RdEn;
   input [3:0] Address;
   input [7:0] WrData;
   output [7:0] RdData;
   output RdData_VLD;
   output [7:0] REG0;
   output [7:0] REG1;
   output [7:0] REG2;
   output [7:0] REG3;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN1_SYNC_REF_RST;
   input REF_CLK_M__L7_N14;
   input REF_CLK_M__L7_N15;
   input REF_CLK_M__L7_N16;
   input REF_CLK_M__L7_N17;
   input REF_CLK_M__L7_N18;
   input REF_CLK_M__L7_N4;
   input REF_CLK_M__L7_N5;
   input REF_CLK_M__L7_N6;

   // Internal wires
   wire FE_OFN5_n402;
   wire FE_OFN4_n400;
   wire FE_OFN2_SYNC_REF_RST;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n488;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire reg_file_15__6_;
   wire reg_file_15__5_;
   wire reg_file_15__4_;
   wire reg_file_15__3_;
   wire reg_file_15__2_;
   wire reg_file_15__1_;
   wire reg_file_15__0_;
   wire reg_file_14__7_;
   wire reg_file_14__6_;
   wire reg_file_14__5_;
   wire reg_file_14__4_;
   wire reg_file_14__3_;
   wire reg_file_14__2_;
   wire reg_file_14__1_;
   wire reg_file_14__0_;
   wire reg_file_13__7_;
   wire reg_file_13__6_;
   wire reg_file_13__5_;
   wire reg_file_13__4_;
   wire reg_file_13__3_;
   wire reg_file_13__2_;
   wire reg_file_13__1_;
   wire reg_file_13__0_;
   wire reg_file_12__7_;
   wire reg_file_12__6_;
   wire reg_file_12__5_;
   wire reg_file_12__4_;
   wire reg_file_12__3_;
   wire reg_file_12__2_;
   wire reg_file_12__1_;
   wire reg_file_12__0_;
   wire reg_file_11__7_;
   wire reg_file_11__6_;
   wire reg_file_11__5_;
   wire reg_file_11__4_;
   wire reg_file_11__3_;
   wire reg_file_11__2_;
   wire reg_file_11__1_;
   wire reg_file_11__0_;
   wire reg_file_10__7_;
   wire reg_file_10__6_;
   wire reg_file_10__5_;
   wire reg_file_10__4_;
   wire reg_file_10__3_;
   wire reg_file_10__2_;
   wire reg_file_10__1_;
   wire reg_file_10__0_;
   wire reg_file_9__7_;
   wire reg_file_9__6_;
   wire reg_file_9__5_;
   wire reg_file_9__4_;
   wire reg_file_9__3_;
   wire reg_file_9__2_;
   wire reg_file_9__1_;
   wire reg_file_9__0_;
   wire reg_file_8__7_;
   wire reg_file_8__6_;
   wire reg_file_8__4_;
   wire reg_file_8__3_;
   wire reg_file_8__2_;
   wire reg_file_8__1_;
   wire reg_file_8__0_;
   wire reg_file_7__7_;
   wire reg_file_7__6_;
   wire reg_file_7__5_;
   wire reg_file_7__4_;
   wire reg_file_7__3_;
   wire reg_file_7__2_;
   wire reg_file_7__1_;
   wire reg_file_7__0_;
   wire reg_file_6__7_;
   wire reg_file_6__6_;
   wire reg_file_6__5_;
   wire reg_file_6__4_;
   wire reg_file_6__3_;
   wire reg_file_6__2_;
   wire reg_file_6__1_;
   wire reg_file_6__0_;
   wire reg_file_5__7_;
   wire reg_file_5__6_;
   wire reg_file_5__5_;
   wire reg_file_5__4_;
   wire reg_file_5__3_;
   wire reg_file_5__2_;
   wire reg_file_5__1_;
   wire reg_file_5__0_;
   wire reg_file_4__7_;
   wire reg_file_4__6_;
   wire reg_file_4__5_;
   wire reg_file_4__4_;
   wire reg_file_4__3_;
   wire reg_file_4__2_;
   wire reg_file_4__1_;
   wire reg_file_4__0_;
   wire N35;
   wire N36;
   wire N37;
   wire N38;
   wire N39;
   wire N40;
   wire N41;
   wire N42;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;
   wire n189;
   wire n190;
   wire n191;
   wire n192;
   wire n193;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n203;
   wire n204;
   wire n205;
   wire n206;
   wire n207;
   wire n208;
   wire n209;
   wire n210;
   wire n211;
   wire n212;
   wire n213;
   wire n214;
   wire n215;
   wire n216;
   wire n217;
   wire n218;
   wire n219;
   wire n220;
   wire n221;
   wire n222;
   wire n223;
   wire n224;
   wire n225;
   wire n226;
   wire n227;
   wire n228;
   wire n229;
   wire n230;
   wire n231;
   wire n232;
   wire n233;
   wire n234;
   wire n235;
   wire n236;
   wire n237;
   wire n238;
   wire n239;
   wire n240;
   wire n241;
   wire n242;
   wire n243;
   wire n244;
   wire n245;
   wire n246;
   wire n247;
   wire n248;
   wire n249;
   wire n250;
   wire n251;
   wire n252;
   wire n253;
   wire n254;
   wire n255;
   wire n256;
   wire n257;
   wire n258;
   wire n259;
   wire n260;
   wire n261;
   wire n262;
   wire n263;
   wire n264;
   wire n265;
   wire n266;
   wire n267;
   wire n268;
   wire n269;
   wire n270;
   wire n271;
   wire n272;
   wire n273;
   wire n274;
   wire n275;
   wire n276;
   wire n277;
   wire n278;
   wire n279;
   wire n280;
   wire n281;
   wire n282;
   wire n283;
   wire n284;
   wire n285;
   wire n286;
   wire n287;
   wire n288;
   wire n289;
   wire n290;
   wire n291;
   wire n292;
   wire n293;
   wire n294;
   wire n295;
   wire n296;
   wire n297;
   wire n298;
   wire n299;
   wire n300;
   wire n301;
   wire n302;
   wire n303;
   wire n304;
   wire n305;
   wire n306;
   wire n307;
   wire n308;
   wire n309;
   wire n310;
   wire n311;
   wire n312;
   wire n313;
   wire n138;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n314;
   wire n315;
   wire n316;
   wire n317;
   wire n318;
   wire n319;
   wire n320;
   wire n321;
   wire n322;
   wire n323;
   wire n324;
   wire n325;
   wire n326;
   wire n327;
   wire n328;
   wire n329;
   wire n330;
   wire n331;
   wire n332;
   wire n333;
   wire n334;
   wire n335;
   wire n336;
   wire n337;
   wire n338;
   wire n339;
   wire n340;
   wire n341;
   wire n342;
   wire n343;
   wire n344;
   wire n345;
   wire n346;
   wire n347;
   wire n348;
   wire n349;
   wire n350;
   wire n351;
   wire n352;
   wire n353;
   wire n354;
   wire n355;
   wire n356;
   wire n357;
   wire n358;
   wire n359;
   wire n360;
   wire n361;
   wire n362;
   wire n363;
   wire n364;
   wire n365;
   wire n366;
   wire n367;
   wire n368;
   wire n369;
   wire n370;
   wire n371;
   wire n372;
   wire n373;
   wire n374;
   wire n375;
   wire n376;
   wire n377;
   wire n378;
   wire n379;
   wire n380;
   wire n381;
   wire n382;
   wire n383;
   wire n384;
   wire n385;
   wire n386;
   wire n387;
   wire n388;
   wire n389;
   wire n390;
   wire n391;
   wire n392;
   wire n393;
   wire n394;
   wire n395;
   wire n396;
   wire n397;
   wire n398;
   wire n399;
   wire n400;
   wire n401;
   wire n402;
   wire n403;
   wire n404;
   wire n405;
   wire n406;
   wire n407;
   wire n408;
   wire n409;
   wire n410;
   wire n411;
   wire n412;
   wire n413;
   wire n479;
   wire n480;
   wire n481;
   wire n482;
   wire n483;
   wire n484;
   wire n485;
   wire n486;
   wire n487;
   wire n494;
   wire n495;
   wire n496;
   wire n497;
   wire n498;
   wire n499;
   wire n500;
   wire n501;
   wire n502;
   wire n503;
   wire n504;
   wire n505;
   wire n506;
   wire n507;
   wire n508;
   wire n509;
   wire n510;
   wire n511;
   wire n512;
   wire n513;
   wire n514;
   wire n515;
   wire n516;
   wire n517;
   wire n518;
   wire n519;
   wire n520;
   wire n521;
   wire n522;
   wire n523;
   wire n524;
   wire n525;
   wire n526;
   wire n527;
   wire n528;
   wire n529;
   wire n530;
   wire n531;
   wire n532;
   wire n533;
   wire n534;
   wire n535;
   wire n536;
   wire n537;
   wire n538;
   wire n539;
   wire n540;
   wire n541;
   wire n542;
   wire n543;
   wire n544;
   wire n545;
   wire n546;
   wire n547;
   wire n548;
   wire n549;
   wire n550;
   wire n551;
   wire n552;
   wire n553;
   wire n554;
   wire n555;
   wire n556;
   wire n557;
   wire n558;
   wire n559;
   wire n560;
   wire n561;
   wire n562;
   wire n563;
   wire n564;
   wire n565;
   wire n566;
   wire n567;
   wire n568;
   wire n569;
   wire n570;
   wire n571;
   wire n572;
   wire n573;
   wire n574;
   wire n575;
   wire n576;
   wire n577;
   wire n578;
   wire n579;
   wire n580;
   wire n581;
   wire n582;
   wire n583;
   wire n584;
   wire n585;
   wire n586;
   wire n587;
   wire n588;
   wire n589;
   wire n590;
   wire n591;
   wire n592;
   wire n593;
   wire n594;
   wire n595;
   wire n596;
   wire n597;
   wire n598;
   wire n599;
   wire n600;
   wire n601;
   wire n602;
   wire n603;
   wire n604;
   wire n605;
   wire n606;
   wire n607;
   wire n608;
   wire n609;
   wire n610;
   wire n611;
   wire n612;
   wire n613;
   wire n614;
   wire n615;
   wire n616;
   wire n617;
   wire n618;
   wire n619;
   wire n620;
   wire n621;
   wire n622;
   wire n623;
   wire n624;
   wire n625;
   wire n626;
   wire n627;
   wire n628;
   wire n1;
   wire n3;
   wire n5;
   wire n7;
   wire n9;
   wire n11;
   wire n13;
   wire n15;
   wire n17;

   BUFX4M FE_OFC5_n402 (.Y(FE_OFN5_n402), 
	.A(n402));
   BUFX2M FE_OFC4_n400 (.Y(FE_OFN4_n400), 
	.A(n400));
   CLKBUFX8M FE_OFC2_SYNC_REF_RST (.Y(FE_OFN2_SYNC_REF_RST), 
	.A(FE_OFN1_SYNC_REF_RST));
   SDFFRQX2M RdData_reg_7_ (.SI(RdData[6]), 
	.SE(n617), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(RdData[7]), 
	.D(n184), 
	.CK(REF_CLK_M__L7_N6));
   SDFFRQX2M RdData_reg_6_ (.SI(RdData[5]), 
	.SE(n617), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(RdData[6]), 
	.D(n183), 
	.CK(REF_CLK_M__L7_N5));
   SDFFRQX2M RdData_reg_5_ (.SI(RdData[4]), 
	.SE(n616), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(RdData[5]), 
	.D(n182), 
	.CK(REF_CLK_M__L7_N5));
   SDFFRQX2M RdData_reg_4_ (.SI(RdData[3]), 
	.SE(n616), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(RdData[4]), 
	.D(n181), 
	.CK(REF_CLK_M__L7_N5));
   SDFFRQX2M RdData_reg_3_ (.SI(RdData[2]), 
	.SE(n615), 
	.RN(RST), 
	.Q(RdData[3]), 
	.D(n180), 
	.CK(REF_CLK_M__L7_N5));
   SDFFRQX2M RdData_reg_2_ (.SI(RdData[1]), 
	.SE(n615), 
	.RN(RST), 
	.Q(RdData[2]), 
	.D(n179), 
	.CK(REF_CLK_M__L7_N5));
   SDFFRQX2M RdData_reg_1_ (.SI(RdData[0]), 
	.SE(n614), 
	.RN(RST), 
	.Q(RdData[1]), 
	.D(n178), 
	.CK(REF_CLK_M__L7_N5));
   SDFFRQX2M RdData_reg_0_ (.SI(RdData_VLD), 
	.SE(n614), 
	.RN(RST), 
	.Q(RdData[0]), 
	.D(n177), 
	.CK(REF_CLK_M__L7_N5));
   SDFFRQX2M RdData_VLD_reg (.SI(test_si1), 
	.SE(n613), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(RdData_VLD), 
	.D(n185), 
	.CK(REF_CLK_M__L7_N4));
   SDFFRQX2M reg_file_reg_15__7_ (.SI(reg_file_15__6_), 
	.SE(n613), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(test_so2), 
	.D(n313), 
	.CK(REF_CLK_M__L7_N18));
   SDFFRQX2M reg_file_reg_15__6_ (.SI(reg_file_15__5_), 
	.SE(n612), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_15__6_), 
	.D(n312), 
	.CK(REF_CLK_M__L7_N18));
   SDFFRQX2M reg_file_reg_15__5_ (.SI(reg_file_15__4_), 
	.SE(n612), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_15__5_), 
	.D(n311), 
	.CK(REF_CLK_M__L7_N18));
   SDFFRQX2M reg_file_reg_15__4_ (.SI(reg_file_15__3_), 
	.SE(n611), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_15__4_), 
	.D(n310), 
	.CK(REF_CLK_M__L7_N18));
   SDFFRQX2M reg_file_reg_15__3_ (.SI(reg_file_15__2_), 
	.SE(n611), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_15__3_), 
	.D(n309), 
	.CK(REF_CLK_M__L7_N18));
   SDFFRQX2M reg_file_reg_15__2_ (.SI(reg_file_15__1_), 
	.SE(n610), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_15__2_), 
	.D(n308), 
	.CK(REF_CLK_M__L7_N18));
   SDFFRQX2M reg_file_reg_15__1_ (.SI(reg_file_15__0_), 
	.SE(n610), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_15__1_), 
	.D(n307), 
	.CK(REF_CLK_M__L7_N18));
   SDFFRQX2M reg_file_reg_15__0_ (.SI(reg_file_14__7_), 
	.SE(n609), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_15__0_), 
	.D(n306), 
	.CK(REF_CLK_M__L7_N18));
   SDFFRQX2M reg_file_reg_13__7_ (.SI(reg_file_13__6_), 
	.SE(n609), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_13__7_), 
	.D(n297), 
	.CK(REF_CLK_M__L7_N18));
   SDFFRQX2M reg_file_reg_13__6_ (.SI(reg_file_13__5_), 
	.SE(n608), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_13__6_), 
	.D(n296), 
	.CK(REF_CLK_M__L7_N18));
   SDFFRQX2M reg_file_reg_13__5_ (.SI(reg_file_13__4_), 
	.SE(n608), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_13__5_), 
	.D(n295), 
	.CK(REF_CLK_M__L7_N18));
   SDFFRQX2M reg_file_reg_13__4_ (.SI(reg_file_13__3_), 
	.SE(n607), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_13__4_), 
	.D(n294), 
	.CK(REF_CLK_M__L7_N17));
   SDFFRQX2M reg_file_reg_13__3_ (.SI(reg_file_13__2_), 
	.SE(n607), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_13__3_), 
	.D(n293), 
	.CK(REF_CLK_M__L7_N17));
   SDFFRQX2M reg_file_reg_13__2_ (.SI(reg_file_13__1_), 
	.SE(n606), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_13__2_), 
	.D(n292), 
	.CK(REF_CLK_M__L7_N17));
   SDFFRQX2M reg_file_reg_13__1_ (.SI(reg_file_13__0_), 
	.SE(n606), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_13__1_), 
	.D(n291), 
	.CK(REF_CLK_M__L7_N17));
   SDFFRQX2M reg_file_reg_13__0_ (.SI(reg_file_12__7_), 
	.SE(n605), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_13__0_), 
	.D(n290), 
	.CK(REF_CLK_M__L7_N16));
   SDFFRQX2M reg_file_reg_11__7_ (.SI(reg_file_11__6_), 
	.SE(n605), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_11__7_), 
	.D(n281), 
	.CK(REF_CLK_M__L7_N16));
   SDFFRQX2M reg_file_reg_11__6_ (.SI(reg_file_11__5_), 
	.SE(n604), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_11__6_), 
	.D(n280), 
	.CK(REF_CLK_M__L7_N16));
   SDFFRQX2M reg_file_reg_11__5_ (.SI(reg_file_11__4_), 
	.SE(n604), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_11__5_), 
	.D(n279), 
	.CK(REF_CLK_M__L7_N16));
   SDFFRQX2M reg_file_reg_11__4_ (.SI(reg_file_11__3_), 
	.SE(n603), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_11__4_), 
	.D(n278), 
	.CK(REF_CLK_M__L7_N16));
   SDFFRQX2M reg_file_reg_11__3_ (.SI(reg_file_11__2_), 
	.SE(n603), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_11__3_), 
	.D(n277), 
	.CK(REF_CLK_M__L7_N16));
   SDFFRQX2M reg_file_reg_11__2_ (.SI(reg_file_11__1_), 
	.SE(n602), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_11__2_), 
	.D(n276), 
	.CK(REF_CLK_M__L7_N6));
   SDFFRQX2M reg_file_reg_11__1_ (.SI(reg_file_11__0_), 
	.SE(n602), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_11__1_), 
	.D(n275), 
	.CK(REF_CLK_M__L7_N16));
   SDFFRQX2M reg_file_reg_11__0_ (.SI(reg_file_10__7_), 
	.SE(n601), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_11__0_), 
	.D(n274), 
	.CK(CLK));
   SDFFRQX2M reg_file_reg_9__7_ (.SI(reg_file_9__6_), 
	.SE(n601), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_9__7_), 
	.D(n265), 
	.CK(REF_CLK_M__L7_N15));
   SDFFRQX2M reg_file_reg_9__6_ (.SI(reg_file_9__5_), 
	.SE(n600), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_9__6_), 
	.D(n264), 
	.CK(REF_CLK_M__L7_N14));
   SDFFRQX2M reg_file_reg_9__5_ (.SI(reg_file_9__4_), 
	.SE(n600), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_9__5_), 
	.D(n263), 
	.CK(REF_CLK_M__L7_N15));
   SDFFRQX2M reg_file_reg_9__4_ (.SI(reg_file_9__3_), 
	.SE(n599), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_9__4_), 
	.D(n262), 
	.CK(REF_CLK_M__L7_N15));
   SDFFRQX2M reg_file_reg_9__3_ (.SI(reg_file_9__2_), 
	.SE(n599), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_9__3_), 
	.D(n261), 
	.CK(REF_CLK_M__L7_N15));
   SDFFRQX2M reg_file_reg_9__2_ (.SI(reg_file_9__1_), 
	.SE(n598), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_9__2_), 
	.D(n260), 
	.CK(REF_CLK_M__L7_N15));
   SDFFRQX2M reg_file_reg_9__1_ (.SI(reg_file_9__0_), 
	.SE(n598), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_9__1_), 
	.D(n259), 
	.CK(REF_CLK_M__L7_N15));
   SDFFRQX2M reg_file_reg_9__0_ (.SI(reg_file_8__7_), 
	.SE(n597), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_9__0_), 
	.D(n258), 
	.CK(REF_CLK_M__L7_N15));
   SDFFRQX2M reg_file_reg_7__7_ (.SI(reg_file_7__6_), 
	.SE(n597), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_7__7_), 
	.D(n249), 
	.CK(REF_CLK_M__L7_N14));
   SDFFRQX2M reg_file_reg_7__6_ (.SI(reg_file_7__5_), 
	.SE(n596), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_7__6_), 
	.D(n248), 
	.CK(REF_CLK_M__L7_N14));
   SDFFRQX2M reg_file_reg_7__5_ (.SI(reg_file_7__4_), 
	.SE(n596), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_7__5_), 
	.D(n247), 
	.CK(REF_CLK_M__L7_N14));
   SDFFRQX2M reg_file_reg_7__4_ (.SI(reg_file_7__3_), 
	.SE(n595), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_7__4_), 
	.D(n246), 
	.CK(REF_CLK_M__L7_N14));
   SDFFRQX2M reg_file_reg_7__3_ (.SI(reg_file_7__2_), 
	.SE(n595), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_7__3_), 
	.D(n245), 
	.CK(REF_CLK_M__L7_N14));
   SDFFRQX2M reg_file_reg_7__2_ (.SI(reg_file_7__1_), 
	.SE(n594), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_7__2_), 
	.D(n244), 
	.CK(REF_CLK_M__L7_N14));
   SDFFRQX2M reg_file_reg_7__1_ (.SI(reg_file_7__0_), 
	.SE(n594), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_7__1_), 
	.D(n243), 
	.CK(REF_CLK_M__L7_N14));
   SDFFRQX2M reg_file_reg_7__0_ (.SI(reg_file_6__7_), 
	.SE(n593), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_7__0_), 
	.D(n242), 
	.CK(CLK));
   SDFFRQX2M reg_file_reg_5__7_ (.SI(reg_file_5__6_), 
	.SE(n593), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_5__7_), 
	.D(n233), 
	.CK(CLK));
   SDFFRQX2M reg_file_reg_5__6_ (.SI(reg_file_5__5_), 
	.SE(n592), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_5__6_), 
	.D(n232), 
	.CK(CLK));
   SDFFRQX2M reg_file_reg_5__5_ (.SI(reg_file_5__4_), 
	.SE(n592), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_5__5_), 
	.D(n231), 
	.CK(REF_CLK_M__L7_N17));
   SDFFRQX2M reg_file_reg_5__4_ (.SI(reg_file_5__3_), 
	.SE(n591), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_5__4_), 
	.D(n230), 
	.CK(REF_CLK_M__L7_N17));
   SDFFRQX2M reg_file_reg_5__3_ (.SI(reg_file_5__2_), 
	.SE(n591), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_5__3_), 
	.D(n229), 
	.CK(REF_CLK_M__L7_N17));
   SDFFRQX2M reg_file_reg_5__2_ (.SI(reg_file_5__1_), 
	.SE(n590), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_5__2_), 
	.D(n228), 
	.CK(REF_CLK_M__L7_N17));
   SDFFRQX2M reg_file_reg_5__1_ (.SI(reg_file_5__0_), 
	.SE(n590), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_5__1_), 
	.D(n227), 
	.CK(REF_CLK_M__L7_N17));
   SDFFRQX2M reg_file_reg_5__0_ (.SI(reg_file_4__7_), 
	.SE(n589), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_5__0_), 
	.D(n226), 
	.CK(CLK));
   SDFFRQX2M reg_file_reg_14__7_ (.SI(reg_file_14__6_), 
	.SE(n589), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_14__7_), 
	.D(n305), 
	.CK(REF_CLK_M__L7_N18));
   SDFFRQX2M reg_file_reg_14__6_ (.SI(reg_file_14__5_), 
	.SE(n588), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_14__6_), 
	.D(n304), 
	.CK(REF_CLK_M__L7_N18));
   SDFFRQX2M reg_file_reg_14__5_ (.SI(reg_file_14__4_), 
	.SE(n588), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_14__5_), 
	.D(n303), 
	.CK(REF_CLK_M__L7_N18));
   SDFFRQX2M reg_file_reg_14__4_ (.SI(reg_file_14__3_), 
	.SE(n587), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_14__4_), 
	.D(n302), 
	.CK(REF_CLK_M__L7_N18));
   SDFFRQX2M reg_file_reg_14__3_ (.SI(reg_file_14__2_), 
	.SE(n587), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_14__3_), 
	.D(n301), 
	.CK(REF_CLK_M__L7_N18));
   SDFFRQX2M reg_file_reg_14__2_ (.SI(reg_file_14__1_), 
	.SE(n586), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_14__2_), 
	.D(n300), 
	.CK(REF_CLK_M__L7_N18));
   SDFFRQX2M reg_file_reg_14__1_ (.SI(reg_file_14__0_), 
	.SE(n586), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_14__1_), 
	.D(n299), 
	.CK(REF_CLK_M__L7_N18));
   SDFFRQX2M reg_file_reg_14__0_ (.SI(reg_file_13__7_), 
	.SE(n585), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_14__0_), 
	.D(n298), 
	.CK(CLK));
   SDFFRQX2M reg_file_reg_12__7_ (.SI(reg_file_12__6_), 
	.SE(n585), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_12__7_), 
	.D(n289), 
	.CK(CLK));
   SDFFRQX2M reg_file_reg_12__6_ (.SI(reg_file_12__5_), 
	.SE(n584), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_12__6_), 
	.D(n288), 
	.CK(CLK));
   SDFFRQX2M reg_file_reg_12__5_ (.SI(reg_file_12__4_), 
	.SE(n584), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_12__5_), 
	.D(n287), 
	.CK(CLK));
   SDFFRQX2M reg_file_reg_12__4_ (.SI(reg_file_12__3_), 
	.SE(n583), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_12__4_), 
	.D(n286), 
	.CK(REF_CLK_M__L7_N17));
   SDFFRQX2M reg_file_reg_12__3_ (.SI(reg_file_12__2_), 
	.SE(n583), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_12__3_), 
	.D(n285), 
	.CK(REF_CLK_M__L7_N17));
   SDFFRQX2M reg_file_reg_12__2_ (.SI(reg_file_12__1_), 
	.SE(n582), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_12__2_), 
	.D(n284), 
	.CK(REF_CLK_M__L7_N17));
   SDFFRQX2M reg_file_reg_12__1_ (.SI(reg_file_12__0_), 
	.SE(n582), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_12__1_), 
	.D(n283), 
	.CK(CLK));
   SDFFRQX2M reg_file_reg_12__0_ (.SI(reg_file_11__7_), 
	.SE(n581), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_12__0_), 
	.D(n282), 
	.CK(CLK));
   SDFFRQX2M reg_file_reg_10__7_ (.SI(reg_file_10__6_), 
	.SE(n581), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_10__7_), 
	.D(n273), 
	.CK(CLK));
   SDFFRQX2M reg_file_reg_10__6_ (.SI(reg_file_10__5_), 
	.SE(n580), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_10__6_), 
	.D(n272), 
	.CK(REF_CLK_M__L7_N16));
   SDFFRQX2M reg_file_reg_10__5_ (.SI(reg_file_10__4_), 
	.SE(n580), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_10__5_), 
	.D(n271), 
	.CK(REF_CLK_M__L7_N16));
   SDFFRQX2M reg_file_reg_10__4_ (.SI(reg_file_10__3_), 
	.SE(n579), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_10__4_), 
	.D(n270), 
	.CK(REF_CLK_M__L7_N16));
   SDFFRQX2M reg_file_reg_10__3_ (.SI(reg_file_10__2_), 
	.SE(n579), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_10__3_), 
	.D(n269), 
	.CK(REF_CLK_M__L7_N16));
   SDFFRQX2M reg_file_reg_10__2_ (.SI(reg_file_10__1_), 
	.SE(n578), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_10__2_), 
	.D(n268), 
	.CK(REF_CLK_M__L7_N15));
   SDFFRQX2M reg_file_reg_10__1_ (.SI(reg_file_10__0_), 
	.SE(n578), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_10__1_), 
	.D(n267), 
	.CK(REF_CLK_M__L7_N15));
   SDFFRQX2M reg_file_reg_10__0_ (.SI(reg_file_9__7_), 
	.SE(n577), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_10__0_), 
	.D(n266), 
	.CK(REF_CLK_M__L7_N15));
   SDFFRQX2M reg_file_reg_8__7_ (.SI(reg_file_8__6_), 
	.SE(n577), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_8__7_), 
	.D(n257), 
	.CK(REF_CLK_M__L7_N15));
   SDFFRQX2M reg_file_reg_8__6_ (.SI(test_si2), 
	.SE(n576), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_8__6_), 
	.D(n256), 
	.CK(REF_CLK_M__L7_N15));
   SDFFRQX2M reg_file_reg_8__4_ (.SI(reg_file_8__3_), 
	.SE(n575), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_8__4_), 
	.D(n254), 
	.CK(REF_CLK_M__L7_N15));
   SDFFRQX2M reg_file_reg_8__3_ (.SI(reg_file_8__2_), 
	.SE(n575), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_8__3_), 
	.D(n253), 
	.CK(REF_CLK_M__L7_N15));
   SDFFRQX2M reg_file_reg_8__2_ (.SI(reg_file_8__1_), 
	.SE(n574), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_8__2_), 
	.D(n252), 
	.CK(REF_CLK_M__L7_N15));
   SDFFRQX2M reg_file_reg_8__1_ (.SI(reg_file_8__0_), 
	.SE(n574), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_8__1_), 
	.D(n251), 
	.CK(REF_CLK_M__L7_N15));
   SDFFRQX2M reg_file_reg_8__0_ (.SI(reg_file_7__7_), 
	.SE(n573), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_8__0_), 
	.D(n250), 
	.CK(REF_CLK_M__L7_N14));
   SDFFRQX2M reg_file_reg_6__7_ (.SI(reg_file_6__6_), 
	.SE(n573), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_6__7_), 
	.D(n241), 
	.CK(REF_CLK_M__L7_N14));
   SDFFRQX2M reg_file_reg_6__6_ (.SI(reg_file_6__5_), 
	.SE(n572), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_6__6_), 
	.D(n240), 
	.CK(REF_CLK_M__L7_N14));
   SDFFRQX2M reg_file_reg_6__5_ (.SI(reg_file_6__4_), 
	.SE(n572), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_6__5_), 
	.D(n239), 
	.CK(REF_CLK_M__L7_N14));
   SDFFRQX2M reg_file_reg_6__4_ (.SI(reg_file_6__3_), 
	.SE(n571), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_6__4_), 
	.D(n238), 
	.CK(REF_CLK_M__L7_N14));
   SDFFRQX2M reg_file_reg_6__3_ (.SI(reg_file_6__2_), 
	.SE(n571), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_6__3_), 
	.D(n237), 
	.CK(REF_CLK_M__L7_N14));
   SDFFRQX2M reg_file_reg_6__2_ (.SI(reg_file_6__1_), 
	.SE(n570), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_6__2_), 
	.D(n236), 
	.CK(REF_CLK_M__L7_N14));
   SDFFRQX2M reg_file_reg_6__1_ (.SI(reg_file_6__0_), 
	.SE(n570), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_6__1_), 
	.D(n235), 
	.CK(REF_CLK_M__L7_N14));
   SDFFRQX2M reg_file_reg_6__0_ (.SI(reg_file_5__7_), 
	.SE(n569), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_6__0_), 
	.D(n234), 
	.CK(CLK));
   SDFFRQX2M reg_file_reg_4__7_ (.SI(reg_file_4__6_), 
	.SE(n569), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_4__7_), 
	.D(n225), 
	.CK(CLK));
   SDFFRQX2M reg_file_reg_4__6_ (.SI(reg_file_4__5_), 
	.SE(n568), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_4__6_), 
	.D(n224), 
	.CK(CLK));
   SDFFRQX2M reg_file_reg_4__5_ (.SI(reg_file_4__4_), 
	.SE(n568), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_4__5_), 
	.D(n223), 
	.CK(CLK));
   SDFFRQX2M reg_file_reg_4__4_ (.SI(reg_file_4__3_), 
	.SE(n567), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_4__4_), 
	.D(n222), 
	.CK(REF_CLK_M__L7_N17));
   SDFFRQX2M reg_file_reg_4__3_ (.SI(reg_file_4__2_), 
	.SE(n567), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_4__3_), 
	.D(n221), 
	.CK(REF_CLK_M__L7_N17));
   SDFFRQX2M reg_file_reg_4__2_ (.SI(reg_file_4__1_), 
	.SE(n566), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_4__2_), 
	.D(n220), 
	.CK(REF_CLK_M__L7_N17));
   SDFFRQX2M reg_file_reg_4__1_ (.SI(reg_file_4__0_), 
	.SE(n566), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(reg_file_4__1_), 
	.D(n219), 
	.CK(REF_CLK_M__L7_N17));
   SDFFRQX2M reg_file_reg_4__0_ (.SI(REG3[7]), 
	.SE(n565), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(reg_file_4__0_), 
	.D(n218), 
	.CK(REF_CLK_M__L7_N16));
   SDFFRQX2M reg_file_reg_1__6_ (.SI(REG1[5]), 
	.SE(n565), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(REG1[6]), 
	.D(n200), 
	.CK(REF_CLK_M__L7_N16));
   SDFFRQX2M reg_file_reg_0__0_ (.SI(RdData[7]), 
	.SE(n564), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(REG0[0]), 
	.D(n186), 
	.CK(REF_CLK_M__L7_N6));
   SDFFRQX2M reg_file_reg_0__7_ (.SI(REG0[6]), 
	.SE(n564), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(REG0[7]), 
	.D(n193), 
	.CK(REF_CLK_M__L7_N6));
   SDFFRQX2M reg_file_reg_0__6_ (.SI(REG0[5]), 
	.SE(n563), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(REG0[6]), 
	.D(n192), 
	.CK(REF_CLK_M__L7_N6));
   SDFFRQX2M reg_file_reg_0__5_ (.SI(REG0[4]), 
	.SE(n563), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(REG0[5]), 
	.D(n191), 
	.CK(REF_CLK_M__L7_N6));
   SDFFRQX2M reg_file_reg_0__4_ (.SI(REG0[3]), 
	.SE(n562), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(REG0[4]), 
	.D(n190), 
	.CK(REF_CLK_M__L7_N6));
   SDFFRQX2M reg_file_reg_0__3_ (.SI(REG0[2]), 
	.SE(n562), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(REG0[3]), 
	.D(n189), 
	.CK(REF_CLK_M__L7_N6));
   SDFFRQX2M reg_file_reg_0__2_ (.SI(REG0[1]), 
	.SE(n561), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(REG0[2]), 
	.D(n188), 
	.CK(REF_CLK_M__L7_N6));
   SDFFRQX2M reg_file_reg_0__1_ (.SI(REG0[0]), 
	.SE(n561), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(REG0[1]), 
	.D(n187), 
	.CK(REF_CLK_M__L7_N6));
   SDFFRQX2M reg_file_reg_2__1_ (.SI(REG2[0]), 
	.SE(n560), 
	.RN(RST), 
	.Q(REG2[1]), 
	.D(n203), 
	.CK(REF_CLK_M__L7_N4));
   SDFFSQX4M reg_file_reg_2__0_ (.SN(RST), 
	.SI(REG1[7]), 
	.SE(n623), 
	.Q(REG2[0]), 
	.D(n202), 
	.CK(REF_CLK_M__L7_N16));
   SDFFSQX4M reg_file_reg_3__5_ (.SN(FE_OFN1_SYNC_REF_RST), 
	.SI(REG3[4]), 
	.SE(n622), 
	.Q(REG3[5]), 
	.D(n215), 
	.CK(REF_CLK_M__L7_N4));
   SDFFSQX2M reg_file_reg_2__7_ (.SN(RST), 
	.SI(REG2[6]), 
	.SE(n623), 
	.Q(n488), 
	.D(n209), 
	.CK(REF_CLK_M__L7_N4));
   CLKINVX1M U140 (.Y(REG2[7]), 
	.A(n138));
   NOR2X5M U141 (.Y(n399), 
	.B(n410), 
	.A(n411));
   NOR2X2M U142 (.Y(n400), 
	.B(Address[0]), 
	.A(n411));
   NOR2X2M U143 (.Y(n402), 
	.B(Address[1]), 
	.A(Address[0]));
   CLKNAND2X2M U144 (.Y(n390), 
	.B(n412), 
	.A(Address[3]));
   CLKINVX1M U145 (.Y(n412), 
	.A(Address[2]));
   CLKNAND2X2M U146 (.Y(n403), 
	.B(n413), 
	.A(Address[2]));
   CLKNAND2X2M U147 (.Y(n393), 
	.B(Address[2]), 
	.A(Address[3]));
   INVXLM U148 (.Y(n138), 
	.A(n488));
   CLKNAND2X2M U150 (.Y(n396), 
	.B(n413), 
	.A(n412));
   NOR2BX2M U151 (.Y(n155), 
	.B(n410), 
	.AN(n164));
   NOR2BX2M U152 (.Y(n164), 
	.B(Address[3]), 
	.AN(n150));
   NOR2BX2M U153 (.Y(n167), 
	.B(Address[0]), 
	.AN(n175));
   NOR2BX2M U154 (.Y(n153), 
	.B(Address[0]), 
	.AN(n164));
   NOR2X2M U155 (.Y(n157), 
	.B(Address[2]), 
	.A(n411));
   NOR2X2M U156 (.Y(n152), 
	.B(Address[2]), 
	.A(Address[1]));
   NOR2BX2M U157 (.Y(n160), 
	.B(Address[1]), 
	.AN(Address[2]));
   NOR2BX2M U158 (.Y(n163), 
	.B(n411), 
	.AN(Address[2]));
   CLKINVX2M U159 (.Y(n487), 
	.A(WrData[0]));
   CLKINVX2M U160 (.Y(n486), 
	.A(WrData[1]));
   CLKINVX2M U161 (.Y(n485), 
	.A(WrData[2]));
   CLKINVX2M U162 (.Y(n484), 
	.A(WrData[3]));
   CLKINVX2M U163 (.Y(n483), 
	.A(WrData[4]));
   CLKINVX2M U164 (.Y(n482), 
	.A(WrData[5]));
   CLKINVX2M U165 (.Y(n481), 
	.A(WrData[6]));
   CLKINVX2M U166 (.Y(n480), 
	.A(WrData[7]));
   NOR2BX2M U230 (.Y(n169), 
	.B(n410), 
	.AN(n175));
   NAND2X2M U231 (.Y(n162), 
	.B(n153), 
	.A(n163));
   NAND2X2M U232 (.Y(n165), 
	.B(n155), 
	.A(n163));
   NAND2X2M U233 (.Y(n156), 
	.B(n153), 
	.A(n157));
   NAND2X2M U234 (.Y(n158), 
	.B(n155), 
	.A(n157));
   NAND2X2M U235 (.Y(n166), 
	.B(n152), 
	.A(n167));
   NAND2X2M U236 (.Y(n168), 
	.B(n152), 
	.A(n169));
   NAND2X2M U237 (.Y(n170), 
	.B(n157), 
	.A(n167));
   NAND2X2M U238 (.Y(n171), 
	.B(n157), 
	.A(n169));
   NAND2X2M U239 (.Y(n172), 
	.B(n160), 
	.A(n167));
   NAND2X2M U240 (.Y(n173), 
	.B(n160), 
	.A(n169));
   NAND2X2M U241 (.Y(n174), 
	.B(n163), 
	.A(n167));
   NAND2X2M U242 (.Y(n176), 
	.B(n163), 
	.A(n169));
   CLKINVX2M U243 (.Y(n479), 
	.A(n149));
   NAND2X2M U244 (.Y(n159), 
	.B(n153), 
	.A(n160));
   NAND2X2M U245 (.Y(n161), 
	.B(n155), 
	.A(n160));
   NAND2X2M U246 (.Y(n154), 
	.B(n152), 
	.A(n155));
   NAND2X2M U247 (.Y(n151), 
	.B(n153), 
	.A(n152));
   AO22X1M U249 (.Y(n177), 
	.B1(n149), 
	.B0(RdData[0]), 
	.A1(n479), 
	.A0(N42));
   AO22X1M U250 (.Y(n178), 
	.B1(n149), 
	.B0(RdData[1]), 
	.A1(n479), 
	.A0(N41));
   AO22X1M U251 (.Y(n179), 
	.B1(n149), 
	.B0(RdData[2]), 
	.A1(n479), 
	.A0(N40));
   AO22X1M U252 (.Y(n180), 
	.B1(n149), 
	.B0(RdData[3]), 
	.A1(n479), 
	.A0(N39));
   AO22X1M U253 (.Y(n181), 
	.B1(n149), 
	.B0(RdData[4]), 
	.A1(n479), 
	.A0(N38));
   AO22X1M U254 (.Y(n182), 
	.B1(n149), 
	.B0(RdData[5]), 
	.A1(n479), 
	.A0(N37));
   AO22X1M U255 (.Y(n183), 
	.B1(n149), 
	.B0(RdData[6]), 
	.A1(n479), 
	.A0(N36));
   AO22X1M U256 (.Y(n184), 
	.B1(n149), 
	.B0(RdData[7]), 
	.A1(n479), 
	.A0(N35));
   INVX2M U257 (.Y(n413), 
	.A(Address[3]));
   INVX2M U258 (.Y(n411), 
	.A(Address[1]));
   INVX2M U259 (.Y(n410), 
	.A(Address[0]));
   OAI2BB2X1M U260 (.Y(n203), 
	.B1(n156), 
	.B0(n486), 
	.A1N(n156), 
	.A0N(REG2[1]));
   OAI2BB2X1M U261 (.Y(n204), 
	.B1(n156), 
	.B0(n485), 
	.A1N(n156), 
	.A0N(REG2[2]));
   OAI2BB2X1M U262 (.Y(n205), 
	.B1(n156), 
	.B0(n484), 
	.A1N(n156), 
	.A0N(REG2[3]));
   OAI2BB2X1M U263 (.Y(n206), 
	.B1(n156), 
	.B0(n483), 
	.A1N(n156), 
	.A0N(REG2[4]));
   OAI2BB2X1M U264 (.Y(n207), 
	.B1(n156), 
	.B0(n482), 
	.A1N(n156), 
	.A0N(REG2[5]));
   OAI2BB2X1M U265 (.Y(n208), 
	.B1(n156), 
	.B0(n481), 
	.A1N(n156), 
	.A0N(REG2[6]));
   OAI2BB2X1M U266 (.Y(n210), 
	.B1(n158), 
	.B0(n487), 
	.A1N(n158), 
	.A0N(REG3[0]));
   OAI2BB2X1M U267 (.Y(n211), 
	.B1(n158), 
	.B0(n486), 
	.A1N(n158), 
	.A0N(REG3[1]));
   OAI2BB2X1M U268 (.Y(n212), 
	.B1(n158), 
	.B0(n485), 
	.A1N(n158), 
	.A0N(REG3[2]));
   OAI2BB2X1M U269 (.Y(n213), 
	.B1(n158), 
	.B0(n484), 
	.A1N(n158), 
	.A0N(REG3[3]));
   OAI2BB2X1M U270 (.Y(n214), 
	.B1(n158), 
	.B0(n483), 
	.A1N(n158), 
	.A0N(REG3[4]));
   OAI2BB2X1M U271 (.Y(n216), 
	.B1(n158), 
	.B0(n481), 
	.A1N(n158), 
	.A0N(REG3[6]));
   OAI2BB2X1M U272 (.Y(n217), 
	.B1(n158), 
	.B0(n480), 
	.A1N(n158), 
	.A0N(REG3[7]));
   OAI2BB2X1M U273 (.Y(n234), 
	.B1(n162), 
	.B0(n487), 
	.A1N(n162), 
	.A0N(reg_file_6__0_));
   OAI2BB2X1M U274 (.Y(n235), 
	.B1(n162), 
	.B0(n486), 
	.A1N(n162), 
	.A0N(reg_file_6__1_));
   OAI2BB2X1M U275 (.Y(n236), 
	.B1(n162), 
	.B0(n485), 
	.A1N(n162), 
	.A0N(reg_file_6__2_));
   OAI2BB2X1M U276 (.Y(n237), 
	.B1(n162), 
	.B0(n484), 
	.A1N(n162), 
	.A0N(reg_file_6__3_));
   OAI2BB2X1M U277 (.Y(n238), 
	.B1(n162), 
	.B0(n483), 
	.A1N(n162), 
	.A0N(reg_file_6__4_));
   OAI2BB2X1M U278 (.Y(n239), 
	.B1(n162), 
	.B0(n482), 
	.A1N(n162), 
	.A0N(reg_file_6__5_));
   OAI2BB2X1M U279 (.Y(n240), 
	.B1(n162), 
	.B0(n481), 
	.A1N(n162), 
	.A0N(reg_file_6__6_));
   OAI2BB2X1M U280 (.Y(n241), 
	.B1(n162), 
	.B0(n480), 
	.A1N(n162), 
	.A0N(reg_file_6__7_));
   OAI2BB2X1M U281 (.Y(n242), 
	.B1(n165), 
	.B0(n487), 
	.A1N(n165), 
	.A0N(reg_file_7__0_));
   OAI2BB2X1M U282 (.Y(n243), 
	.B1(n165), 
	.B0(n486), 
	.A1N(n165), 
	.A0N(reg_file_7__1_));
   OAI2BB2X1M U283 (.Y(n244), 
	.B1(n165), 
	.B0(n485), 
	.A1N(n165), 
	.A0N(reg_file_7__2_));
   OAI2BB2X1M U284 (.Y(n245), 
	.B1(n165), 
	.B0(n484), 
	.A1N(n165), 
	.A0N(reg_file_7__3_));
   OAI2BB2X1M U285 (.Y(n246), 
	.B1(n165), 
	.B0(n483), 
	.A1N(n165), 
	.A0N(reg_file_7__4_));
   OAI2BB2X1M U286 (.Y(n247), 
	.B1(n165), 
	.B0(n482), 
	.A1N(n165), 
	.A0N(reg_file_7__5_));
   OAI2BB2X1M U287 (.Y(n248), 
	.B1(n165), 
	.B0(n481), 
	.A1N(n165), 
	.A0N(reg_file_7__6_));
   OAI2BB2X1M U288 (.Y(n249), 
	.B1(n165), 
	.B0(n480), 
	.A1N(n165), 
	.A0N(reg_file_7__7_));
   OAI2BB2X1M U289 (.Y(n250), 
	.B1(n166), 
	.B0(n487), 
	.A1N(n166), 
	.A0N(reg_file_8__0_));
   OAI2BB2X1M U290 (.Y(n251), 
	.B1(n166), 
	.B0(n486), 
	.A1N(n166), 
	.A0N(reg_file_8__1_));
   OAI2BB2X1M U291 (.Y(n252), 
	.B1(n166), 
	.B0(n485), 
	.A1N(n166), 
	.A0N(reg_file_8__2_));
   OAI2BB2X1M U292 (.Y(n253), 
	.B1(n166), 
	.B0(n484), 
	.A1N(n166), 
	.A0N(reg_file_8__3_));
   OAI2BB2X1M U293 (.Y(n254), 
	.B1(n166), 
	.B0(n483), 
	.A1N(n166), 
	.A0N(reg_file_8__4_));
   OAI2BB2X1M U294 (.Y(n255), 
	.B1(n166), 
	.B0(n482), 
	.A1N(n166), 
	.A0N(test_so1));
   OAI2BB2X1M U295 (.Y(n256), 
	.B1(n166), 
	.B0(n481), 
	.A1N(n166), 
	.A0N(reg_file_8__6_));
   OAI2BB2X1M U296 (.Y(n257), 
	.B1(n166), 
	.B0(n480), 
	.A1N(n166), 
	.A0N(reg_file_8__7_));
   OAI2BB2X1M U297 (.Y(n258), 
	.B1(n168), 
	.B0(n487), 
	.A1N(n168), 
	.A0N(reg_file_9__0_));
   OAI2BB2X1M U298 (.Y(n259), 
	.B1(n168), 
	.B0(n486), 
	.A1N(n168), 
	.A0N(reg_file_9__1_));
   OAI2BB2X1M U299 (.Y(n260), 
	.B1(n168), 
	.B0(n485), 
	.A1N(n168), 
	.A0N(reg_file_9__2_));
   OAI2BB2X1M U300 (.Y(n261), 
	.B1(n168), 
	.B0(n484), 
	.A1N(n168), 
	.A0N(reg_file_9__3_));
   OAI2BB2X1M U301 (.Y(n262), 
	.B1(n168), 
	.B0(n483), 
	.A1N(n168), 
	.A0N(reg_file_9__4_));
   OAI2BB2X1M U302 (.Y(n263), 
	.B1(n168), 
	.B0(n482), 
	.A1N(n168), 
	.A0N(reg_file_9__5_));
   OAI2BB2X1M U303 (.Y(n264), 
	.B1(n168), 
	.B0(n481), 
	.A1N(n168), 
	.A0N(reg_file_9__6_));
   OAI2BB2X1M U304 (.Y(n265), 
	.B1(n168), 
	.B0(n480), 
	.A1N(n168), 
	.A0N(reg_file_9__7_));
   OAI2BB2X1M U305 (.Y(n266), 
	.B1(n170), 
	.B0(n487), 
	.A1N(n170), 
	.A0N(reg_file_10__0_));
   OAI2BB2X1M U306 (.Y(n267), 
	.B1(n170), 
	.B0(n486), 
	.A1N(n170), 
	.A0N(reg_file_10__1_));
   OAI2BB2X1M U307 (.Y(n268), 
	.B1(n170), 
	.B0(n485), 
	.A1N(n170), 
	.A0N(reg_file_10__2_));
   OAI2BB2X1M U308 (.Y(n269), 
	.B1(n170), 
	.B0(n484), 
	.A1N(n170), 
	.A0N(reg_file_10__3_));
   OAI2BB2X1M U309 (.Y(n270), 
	.B1(n170), 
	.B0(n483), 
	.A1N(n170), 
	.A0N(reg_file_10__4_));
   OAI2BB2X1M U310 (.Y(n271), 
	.B1(n170), 
	.B0(n482), 
	.A1N(n170), 
	.A0N(reg_file_10__5_));
   OAI2BB2X1M U311 (.Y(n272), 
	.B1(n170), 
	.B0(n481), 
	.A1N(n170), 
	.A0N(reg_file_10__6_));
   OAI2BB2X1M U312 (.Y(n273), 
	.B1(n170), 
	.B0(n480), 
	.A1N(n170), 
	.A0N(reg_file_10__7_));
   OAI2BB2X1M U313 (.Y(n274), 
	.B1(n171), 
	.B0(n487), 
	.A1N(n171), 
	.A0N(reg_file_11__0_));
   OAI2BB2X1M U314 (.Y(n275), 
	.B1(n171), 
	.B0(n486), 
	.A1N(n171), 
	.A0N(reg_file_11__1_));
   OAI2BB2X1M U315 (.Y(n276), 
	.B1(n171), 
	.B0(n485), 
	.A1N(n171), 
	.A0N(reg_file_11__2_));
   OAI2BB2X1M U316 (.Y(n277), 
	.B1(n171), 
	.B0(n484), 
	.A1N(n171), 
	.A0N(reg_file_11__3_));
   OAI2BB2X1M U317 (.Y(n278), 
	.B1(n171), 
	.B0(n483), 
	.A1N(n171), 
	.A0N(reg_file_11__4_));
   OAI2BB2X1M U318 (.Y(n279), 
	.B1(n171), 
	.B0(n482), 
	.A1N(n171), 
	.A0N(reg_file_11__5_));
   OAI2BB2X1M U319 (.Y(n280), 
	.B1(n171), 
	.B0(n481), 
	.A1N(n171), 
	.A0N(reg_file_11__6_));
   OAI2BB2X1M U320 (.Y(n281), 
	.B1(n171), 
	.B0(n480), 
	.A1N(n171), 
	.A0N(reg_file_11__7_));
   OAI2BB2X1M U321 (.Y(n282), 
	.B1(n172), 
	.B0(n487), 
	.A1N(n172), 
	.A0N(reg_file_12__0_));
   OAI2BB2X1M U322 (.Y(n283), 
	.B1(n172), 
	.B0(n486), 
	.A1N(n172), 
	.A0N(reg_file_12__1_));
   OAI2BB2X1M U323 (.Y(n284), 
	.B1(n172), 
	.B0(n485), 
	.A1N(n172), 
	.A0N(reg_file_12__2_));
   OAI2BB2X1M U324 (.Y(n285), 
	.B1(n172), 
	.B0(n484), 
	.A1N(n172), 
	.A0N(reg_file_12__3_));
   OAI2BB2X1M U325 (.Y(n286), 
	.B1(n172), 
	.B0(n483), 
	.A1N(n172), 
	.A0N(reg_file_12__4_));
   OAI2BB2X1M U326 (.Y(n287), 
	.B1(n172), 
	.B0(n482), 
	.A1N(n172), 
	.A0N(reg_file_12__5_));
   OAI2BB2X1M U327 (.Y(n288), 
	.B1(n172), 
	.B0(n481), 
	.A1N(n172), 
	.A0N(reg_file_12__6_));
   OAI2BB2X1M U328 (.Y(n289), 
	.B1(n172), 
	.B0(n480), 
	.A1N(n172), 
	.A0N(reg_file_12__7_));
   OAI2BB2X1M U329 (.Y(n290), 
	.B1(n173), 
	.B0(n487), 
	.A1N(n173), 
	.A0N(reg_file_13__0_));
   OAI2BB2X1M U330 (.Y(n291), 
	.B1(n173), 
	.B0(n486), 
	.A1N(n173), 
	.A0N(reg_file_13__1_));
   OAI2BB2X1M U331 (.Y(n292), 
	.B1(n173), 
	.B0(n485), 
	.A1N(n173), 
	.A0N(reg_file_13__2_));
   OAI2BB2X1M U332 (.Y(n293), 
	.B1(n173), 
	.B0(n484), 
	.A1N(n173), 
	.A0N(reg_file_13__3_));
   OAI2BB2X1M U333 (.Y(n294), 
	.B1(n173), 
	.B0(n483), 
	.A1N(n173), 
	.A0N(reg_file_13__4_));
   OAI2BB2X1M U334 (.Y(n295), 
	.B1(n173), 
	.B0(n482), 
	.A1N(n173), 
	.A0N(reg_file_13__5_));
   OAI2BB2X1M U335 (.Y(n296), 
	.B1(n173), 
	.B0(n481), 
	.A1N(n173), 
	.A0N(reg_file_13__6_));
   OAI2BB2X1M U336 (.Y(n297), 
	.B1(n173), 
	.B0(n480), 
	.A1N(n173), 
	.A0N(reg_file_13__7_));
   OAI2BB2X1M U337 (.Y(n298), 
	.B1(n174), 
	.B0(n487), 
	.A1N(n174), 
	.A0N(reg_file_14__0_));
   OAI2BB2X1M U338 (.Y(n299), 
	.B1(n174), 
	.B0(n486), 
	.A1N(n174), 
	.A0N(reg_file_14__1_));
   OAI2BB2X1M U339 (.Y(n300), 
	.B1(n174), 
	.B0(n485), 
	.A1N(n174), 
	.A0N(reg_file_14__2_));
   OAI2BB2X1M U340 (.Y(n301), 
	.B1(n174), 
	.B0(n484), 
	.A1N(n174), 
	.A0N(reg_file_14__3_));
   OAI2BB2X1M U341 (.Y(n302), 
	.B1(n174), 
	.B0(n483), 
	.A1N(n174), 
	.A0N(reg_file_14__4_));
   OAI2BB2X1M U342 (.Y(n303), 
	.B1(n174), 
	.B0(n482), 
	.A1N(n174), 
	.A0N(reg_file_14__5_));
   OAI2BB2X1M U343 (.Y(n304), 
	.B1(n174), 
	.B0(n481), 
	.A1N(n174), 
	.A0N(reg_file_14__6_));
   OAI2BB2X1M U344 (.Y(n305), 
	.B1(n174), 
	.B0(n480), 
	.A1N(n174), 
	.A0N(reg_file_14__7_));
   OAI2BB2X1M U345 (.Y(n306), 
	.B1(n176), 
	.B0(n487), 
	.A1N(n176), 
	.A0N(reg_file_15__0_));
   OAI2BB2X1M U346 (.Y(n307), 
	.B1(n176), 
	.B0(n486), 
	.A1N(n176), 
	.A0N(reg_file_15__1_));
   OAI2BB2X1M U347 (.Y(n308), 
	.B1(n176), 
	.B0(n485), 
	.A1N(n176), 
	.A0N(reg_file_15__2_));
   OAI2BB2X1M U348 (.Y(n309), 
	.B1(n176), 
	.B0(n484), 
	.A1N(n176), 
	.A0N(reg_file_15__3_));
   OAI2BB2X1M U349 (.Y(n310), 
	.B1(n176), 
	.B0(n483), 
	.A1N(n176), 
	.A0N(reg_file_15__4_));
   OAI2BB2X1M U350 (.Y(n311), 
	.B1(n176), 
	.B0(n482), 
	.A1N(n176), 
	.A0N(reg_file_15__5_));
   OAI2BB2X1M U351 (.Y(n312), 
	.B1(n176), 
	.B0(n481), 
	.A1N(n176), 
	.A0N(reg_file_15__6_));
   OAI2BB2X1M U352 (.Y(n313), 
	.B1(n176), 
	.B0(n480), 
	.A1N(n176), 
	.A0N(test_so2));
   OAI2BB2X1M U353 (.Y(n202), 
	.B1(n156), 
	.B0(n487), 
	.A1N(n156), 
	.A0N(REG2[0]));
   OAI2BB2X1M U354 (.Y(n209), 
	.B1(n156), 
	.B0(n480), 
	.A1N(n156), 
	.A0N(REG2[7]));
   OAI2BB2X1M U355 (.Y(n215), 
	.B1(n158), 
	.B0(n482), 
	.A1N(n158), 
	.A0N(REG3[5]));
   AND2X2M U356 (.Y(n175), 
	.B(n150), 
	.A(Address[3]));
   NOR2BX2M U357 (.Y(n150), 
	.B(RdEn), 
	.AN(WrEn));
   OAI2BB2X1M U358 (.Y(n186), 
	.B1(n487), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(REG0[0]));
   OAI2BB2X1M U359 (.Y(n187), 
	.B1(n486), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(REG0[1]));
   OAI2BB2X1M U360 (.Y(n188), 
	.B1(n485), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(REG0[2]));
   OAI2BB2X1M U361 (.Y(n189), 
	.B1(n484), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(REG0[3]));
   OAI2BB2X1M U362 (.Y(n190), 
	.B1(n483), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(REG0[4]));
   OAI2BB2X1M U363 (.Y(n191), 
	.B1(n482), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(REG0[5]));
   OAI2BB2X1M U364 (.Y(n192), 
	.B1(n481), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(REG0[6]));
   OAI2BB2X1M U365 (.Y(n193), 
	.B1(n480), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(REG0[7]));
   OAI2BB2X1M U366 (.Y(n194), 
	.B1(n154), 
	.B0(n487), 
	.A1N(n154), 
	.A0N(REG1[0]));
   OAI2BB2X1M U367 (.Y(n195), 
	.B1(n154), 
	.B0(n486), 
	.A1N(n154), 
	.A0N(REG1[1]));
   OAI2BB2X1M U368 (.Y(n196), 
	.B1(n154), 
	.B0(n485), 
	.A1N(n154), 
	.A0N(REG1[2]));
   OAI2BB2X1M U369 (.Y(n197), 
	.B1(n154), 
	.B0(n484), 
	.A1N(n154), 
	.A0N(REG1[3]));
   OAI2BB2X1M U370 (.Y(n198), 
	.B1(n154), 
	.B0(n483), 
	.A1N(n154), 
	.A0N(REG1[4]));
   OAI2BB2X1M U371 (.Y(n199), 
	.B1(n154), 
	.B0(n482), 
	.A1N(n154), 
	.A0N(REG1[5]));
   OAI2BB2X1M U372 (.Y(n200), 
	.B1(n154), 
	.B0(n481), 
	.A1N(n154), 
	.A0N(REG1[6]));
   OAI2BB2X1M U373 (.Y(n201), 
	.B1(n154), 
	.B0(n480), 
	.A1N(n154), 
	.A0N(REG1[7]));
   OAI2BB2X1M U374 (.Y(n218), 
	.B1(n159), 
	.B0(n487), 
	.A1N(n159), 
	.A0N(reg_file_4__0_));
   OAI2BB2X1M U375 (.Y(n219), 
	.B1(n159), 
	.B0(n486), 
	.A1N(n159), 
	.A0N(reg_file_4__1_));
   OAI2BB2X1M U376 (.Y(n220), 
	.B1(n159), 
	.B0(n485), 
	.A1N(n159), 
	.A0N(reg_file_4__2_));
   OAI2BB2X1M U377 (.Y(n221), 
	.B1(n159), 
	.B0(n484), 
	.A1N(n159), 
	.A0N(reg_file_4__3_));
   OAI2BB2X1M U378 (.Y(n222), 
	.B1(n159), 
	.B0(n483), 
	.A1N(n159), 
	.A0N(reg_file_4__4_));
   OAI2BB2X1M U379 (.Y(n223), 
	.B1(n159), 
	.B0(n482), 
	.A1N(n159), 
	.A0N(reg_file_4__5_));
   OAI2BB2X1M U380 (.Y(n224), 
	.B1(n159), 
	.B0(n481), 
	.A1N(n159), 
	.A0N(reg_file_4__6_));
   OAI2BB2X1M U381 (.Y(n225), 
	.B1(n159), 
	.B0(n480), 
	.A1N(n159), 
	.A0N(reg_file_4__7_));
   OAI2BB2X1M U382 (.Y(n226), 
	.B1(n161), 
	.B0(n487), 
	.A1N(n161), 
	.A0N(reg_file_5__0_));
   OAI2BB2X1M U383 (.Y(n227), 
	.B1(n161), 
	.B0(n486), 
	.A1N(n161), 
	.A0N(reg_file_5__1_));
   OAI2BB2X1M U384 (.Y(n228), 
	.B1(n161), 
	.B0(n485), 
	.A1N(n161), 
	.A0N(reg_file_5__2_));
   OAI2BB2X1M U385 (.Y(n229), 
	.B1(n161), 
	.B0(n484), 
	.A1N(n161), 
	.A0N(reg_file_5__3_));
   OAI2BB2X1M U386 (.Y(n230), 
	.B1(n161), 
	.B0(n483), 
	.A1N(n161), 
	.A0N(reg_file_5__4_));
   OAI2BB2X1M U387 (.Y(n231), 
	.B1(n161), 
	.B0(n482), 
	.A1N(n161), 
	.A0N(reg_file_5__5_));
   OAI2BB2X1M U388 (.Y(n232), 
	.B1(n161), 
	.B0(n481), 
	.A1N(n161), 
	.A0N(reg_file_5__6_));
   OAI2BB2X1M U389 (.Y(n233), 
	.B1(n161), 
	.B0(n480), 
	.A1N(n161), 
	.A0N(reg_file_5__7_));
   NAND2BX2M U391 (.Y(n149), 
	.B(RdEn), 
	.AN(WrEn));
   OAI2BB1X2M U392 (.Y(n185), 
	.B0(n149), 
	.A1N(n150), 
	.A0N(RdData_VLD));
   AOI22X1M U393 (.Y(n142), 
	.B1(n399), 
	.B0(reg_file_11__0_), 
	.A1(FE_OFN4_n400), 
	.A0(reg_file_10__0_));
   NOR2X5M U394 (.Y(n401), 
	.B(Address[1]), 
	.A(n410));
   AOI22X1M U395 (.Y(n141), 
	.B1(n401), 
	.B0(reg_file_9__0_), 
	.A1(FE_OFN5_n402), 
	.A0(reg_file_8__0_));
   AOI21X1M U396 (.Y(n317), 
	.B0(n390), 
	.A1(n141), 
	.A0(n142));
   AOI22X1M U397 (.Y(n144), 
	.B1(n399), 
	.B0(reg_file_15__0_), 
	.A1(FE_OFN4_n400), 
	.A0(reg_file_14__0_));
   AOI22X1M U398 (.Y(n143), 
	.B1(n401), 
	.B0(reg_file_13__0_), 
	.A1(FE_OFN5_n402), 
	.A0(reg_file_12__0_));
   AOI21X1M U399 (.Y(n316), 
	.B0(n393), 
	.A1(n143), 
	.A0(n144));
   AOI22X1M U400 (.Y(n146), 
	.B1(n399), 
	.B0(REG3[0]), 
	.A1(FE_OFN4_n400), 
	.A0(REG2[0]));
   AOI22X1M U401 (.Y(n145), 
	.B1(n401), 
	.B0(REG1[0]), 
	.A1(FE_OFN5_n402), 
	.A0(REG0[0]));
   AOI21X1M U402 (.Y(n315), 
	.B0(n396), 
	.A1(n145), 
	.A0(n146));
   AOI22X1M U403 (.Y(n148), 
	.B1(n399), 
	.B0(reg_file_7__0_), 
	.A1(FE_OFN4_n400), 
	.A0(reg_file_6__0_));
   AOI22X1M U404 (.Y(n147), 
	.B1(n401), 
	.B0(reg_file_5__0_), 
	.A1(FE_OFN5_n402), 
	.A0(reg_file_4__0_));
   AOI21X1M U405 (.Y(n314), 
	.B0(n403), 
	.A1(n147), 
	.A0(n148));
   OR4X1M U406 (.Y(N42), 
	.D(n314), 
	.C(n315), 
	.B(n316), 
	.A(n317));
   AOI22X1M U407 (.Y(n319), 
	.B1(n399), 
	.B0(reg_file_11__1_), 
	.A1(FE_OFN4_n400), 
	.A0(reg_file_10__1_));
   AOI22X1M U408 (.Y(n318), 
	.B1(n401), 
	.B0(reg_file_9__1_), 
	.A1(FE_OFN5_n402), 
	.A0(reg_file_8__1_));
   AOI21X1M U409 (.Y(n329), 
	.B0(n390), 
	.A1(n318), 
	.A0(n319));
   AOI22X1M U410 (.Y(n321), 
	.B1(n399), 
	.B0(reg_file_15__1_), 
	.A1(FE_OFN4_n400), 
	.A0(reg_file_14__1_));
   AOI22X1M U411 (.Y(n320), 
	.B1(n401), 
	.B0(reg_file_13__1_), 
	.A1(FE_OFN5_n402), 
	.A0(reg_file_12__1_));
   AOI21X1M U412 (.Y(n328), 
	.B0(n393), 
	.A1(n320), 
	.A0(n321));
   AOI22X1M U413 (.Y(n323), 
	.B1(n399), 
	.B0(REG3[1]), 
	.A1(FE_OFN4_n400), 
	.A0(REG2[1]));
   AOI22X1M U414 (.Y(n322), 
	.B1(n401), 
	.B0(REG1[1]), 
	.A1(FE_OFN5_n402), 
	.A0(REG0[1]));
   AOI21X1M U415 (.Y(n327), 
	.B0(n396), 
	.A1(n322), 
	.A0(n323));
   AOI22X1M U416 (.Y(n325), 
	.B1(n399), 
	.B0(reg_file_7__1_), 
	.A1(FE_OFN4_n400), 
	.A0(reg_file_6__1_));
   AOI22X1M U417 (.Y(n324), 
	.B1(n401), 
	.B0(reg_file_5__1_), 
	.A1(FE_OFN5_n402), 
	.A0(reg_file_4__1_));
   AOI21X1M U418 (.Y(n326), 
	.B0(n403), 
	.A1(n324), 
	.A0(n325));
   OR4X1M U419 (.Y(N41), 
	.D(n326), 
	.C(n327), 
	.B(n328), 
	.A(n329));
   AOI22X1M U420 (.Y(n331), 
	.B1(n399), 
	.B0(reg_file_11__2_), 
	.A1(FE_OFN4_n400), 
	.A0(reg_file_10__2_));
   AOI22X1M U421 (.Y(n330), 
	.B1(n401), 
	.B0(reg_file_9__2_), 
	.A1(FE_OFN5_n402), 
	.A0(reg_file_8__2_));
   AOI21X1M U422 (.Y(n341), 
	.B0(n390), 
	.A1(n330), 
	.A0(n331));
   AOI22X1M U423 (.Y(n333), 
	.B1(n399), 
	.B0(reg_file_15__2_), 
	.A1(FE_OFN4_n400), 
	.A0(reg_file_14__2_));
   AOI22X1M U424 (.Y(n332), 
	.B1(n401), 
	.B0(reg_file_13__2_), 
	.A1(FE_OFN5_n402), 
	.A0(reg_file_12__2_));
   AOI21X1M U425 (.Y(n340), 
	.B0(n393), 
	.A1(n332), 
	.A0(n333));
   AOI22X1M U426 (.Y(n335), 
	.B1(n399), 
	.B0(REG3[2]), 
	.A1(FE_OFN4_n400), 
	.A0(REG2[2]));
   AOI22X1M U427 (.Y(n334), 
	.B1(n401), 
	.B0(REG1[2]), 
	.A1(FE_OFN5_n402), 
	.A0(REG0[2]));
   AOI21X1M U428 (.Y(n339), 
	.B0(n396), 
	.A1(n334), 
	.A0(n335));
   AOI22X1M U429 (.Y(n337), 
	.B1(n399), 
	.B0(reg_file_7__2_), 
	.A1(FE_OFN4_n400), 
	.A0(reg_file_6__2_));
   AOI22X1M U430 (.Y(n336), 
	.B1(n401), 
	.B0(reg_file_5__2_), 
	.A1(FE_OFN5_n402), 
	.A0(reg_file_4__2_));
   AOI21X1M U431 (.Y(n338), 
	.B0(n403), 
	.A1(n336), 
	.A0(n337));
   OR4X1M U432 (.Y(N40), 
	.D(n338), 
	.C(n339), 
	.B(n340), 
	.A(n341));
   AOI22X1M U433 (.Y(n343), 
	.B1(n399), 
	.B0(reg_file_11__3_), 
	.A1(FE_OFN4_n400), 
	.A0(reg_file_10__3_));
   AOI22X1M U434 (.Y(n342), 
	.B1(n401), 
	.B0(reg_file_9__3_), 
	.A1(FE_OFN5_n402), 
	.A0(reg_file_8__3_));
   AOI21X1M U435 (.Y(n353), 
	.B0(n390), 
	.A1(n342), 
	.A0(n343));
   AOI22X1M U436 (.Y(n345), 
	.B1(n399), 
	.B0(reg_file_15__3_), 
	.A1(FE_OFN4_n400), 
	.A0(reg_file_14__3_));
   AOI22X1M U437 (.Y(n344), 
	.B1(n401), 
	.B0(reg_file_13__3_), 
	.A1(FE_OFN5_n402), 
	.A0(reg_file_12__3_));
   AOI21X1M U438 (.Y(n352), 
	.B0(n393), 
	.A1(n344), 
	.A0(n345));
   AOI22X1M U439 (.Y(n347), 
	.B1(n399), 
	.B0(REG3[3]), 
	.A1(FE_OFN4_n400), 
	.A0(REG2[3]));
   AOI22X1M U440 (.Y(n346), 
	.B1(n401), 
	.B0(REG1[3]), 
	.A1(FE_OFN5_n402), 
	.A0(REG0[3]));
   AOI21X1M U441 (.Y(n351), 
	.B0(n396), 
	.A1(n346), 
	.A0(n347));
   AOI22X1M U442 (.Y(n349), 
	.B1(n399), 
	.B0(reg_file_7__3_), 
	.A1(FE_OFN4_n400), 
	.A0(reg_file_6__3_));
   AOI22X1M U443 (.Y(n348), 
	.B1(n401), 
	.B0(reg_file_5__3_), 
	.A1(FE_OFN5_n402), 
	.A0(reg_file_4__3_));
   AOI21X1M U444 (.Y(n350), 
	.B0(n403), 
	.A1(n348), 
	.A0(n349));
   OR4X1M U445 (.Y(N39), 
	.D(n350), 
	.C(n351), 
	.B(n352), 
	.A(n353));
   AOI22X1M U446 (.Y(n355), 
	.B1(n399), 
	.B0(reg_file_11__4_), 
	.A1(FE_OFN4_n400), 
	.A0(reg_file_10__4_));
   AOI22X1M U447 (.Y(n354), 
	.B1(n401), 
	.B0(reg_file_9__4_), 
	.A1(FE_OFN5_n402), 
	.A0(reg_file_8__4_));
   AOI21X1M U448 (.Y(n365), 
	.B0(n390), 
	.A1(n354), 
	.A0(n355));
   AOI22X1M U449 (.Y(n357), 
	.B1(n399), 
	.B0(reg_file_15__4_), 
	.A1(FE_OFN4_n400), 
	.A0(reg_file_14__4_));
   AOI22X1M U450 (.Y(n356), 
	.B1(n401), 
	.B0(reg_file_13__4_), 
	.A1(FE_OFN5_n402), 
	.A0(reg_file_12__4_));
   AOI21X1M U451 (.Y(n364), 
	.B0(n393), 
	.A1(n356), 
	.A0(n357));
   AOI22X1M U452 (.Y(n359), 
	.B1(n399), 
	.B0(REG3[4]), 
	.A1(FE_OFN4_n400), 
	.A0(REG2[4]));
   AOI22X1M U453 (.Y(n358), 
	.B1(n401), 
	.B0(REG1[4]), 
	.A1(FE_OFN5_n402), 
	.A0(REG0[4]));
   AOI21X1M U454 (.Y(n363), 
	.B0(n396), 
	.A1(n358), 
	.A0(n359));
   AOI22X1M U455 (.Y(n361), 
	.B1(n399), 
	.B0(reg_file_7__4_), 
	.A1(FE_OFN4_n400), 
	.A0(reg_file_6__4_));
   AOI22X1M U456 (.Y(n360), 
	.B1(n401), 
	.B0(reg_file_5__4_), 
	.A1(FE_OFN5_n402), 
	.A0(reg_file_4__4_));
   AOI21X1M U457 (.Y(n362), 
	.B0(n403), 
	.A1(n360), 
	.A0(n361));
   OR4X1M U458 (.Y(N38), 
	.D(n362), 
	.C(n363), 
	.B(n364), 
	.A(n365));
   AOI22X1M U459 (.Y(n367), 
	.B1(n399), 
	.B0(reg_file_11__5_), 
	.A1(FE_OFN4_n400), 
	.A0(reg_file_10__5_));
   AOI22X1M U460 (.Y(n366), 
	.B1(n401), 
	.B0(reg_file_9__5_), 
	.A1(FE_OFN5_n402), 
	.A0(test_so1));
   AOI21X1M U461 (.Y(n377), 
	.B0(n390), 
	.A1(n366), 
	.A0(n367));
   AOI22X1M U462 (.Y(n369), 
	.B1(n399), 
	.B0(reg_file_15__5_), 
	.A1(FE_OFN4_n400), 
	.A0(reg_file_14__5_));
   AOI22X1M U463 (.Y(n368), 
	.B1(n401), 
	.B0(reg_file_13__5_), 
	.A1(FE_OFN5_n402), 
	.A0(reg_file_12__5_));
   AOI21X1M U464 (.Y(n376), 
	.B0(n393), 
	.A1(n368), 
	.A0(n369));
   AOI22X1M U465 (.Y(n371), 
	.B1(n399), 
	.B0(REG3[5]), 
	.A1(FE_OFN4_n400), 
	.A0(REG2[5]));
   AOI22X1M U466 (.Y(n370), 
	.B1(n401), 
	.B0(REG1[5]), 
	.A1(FE_OFN5_n402), 
	.A0(REG0[5]));
   AOI21X1M U467 (.Y(n375), 
	.B0(n396), 
	.A1(n370), 
	.A0(n371));
   AOI22X1M U468 (.Y(n373), 
	.B1(n399), 
	.B0(reg_file_7__5_), 
	.A1(FE_OFN4_n400), 
	.A0(reg_file_6__5_));
   AOI22X1M U469 (.Y(n372), 
	.B1(n401), 
	.B0(reg_file_5__5_), 
	.A1(FE_OFN5_n402), 
	.A0(reg_file_4__5_));
   AOI21X1M U470 (.Y(n374), 
	.B0(n403), 
	.A1(n372), 
	.A0(n373));
   OR4X1M U471 (.Y(N37), 
	.D(n374), 
	.C(n375), 
	.B(n376), 
	.A(n377));
   AOI22X1M U472 (.Y(n379), 
	.B1(n399), 
	.B0(reg_file_11__6_), 
	.A1(FE_OFN4_n400), 
	.A0(reg_file_10__6_));
   AOI22X1M U473 (.Y(n378), 
	.B1(n401), 
	.B0(reg_file_9__6_), 
	.A1(FE_OFN5_n402), 
	.A0(reg_file_8__6_));
   AOI21X1M U474 (.Y(n389), 
	.B0(n390), 
	.A1(n378), 
	.A0(n379));
   AOI22X1M U475 (.Y(n381), 
	.B1(n399), 
	.B0(reg_file_15__6_), 
	.A1(FE_OFN4_n400), 
	.A0(reg_file_14__6_));
   AOI22X1M U476 (.Y(n380), 
	.B1(n401), 
	.B0(reg_file_13__6_), 
	.A1(FE_OFN5_n402), 
	.A0(reg_file_12__6_));
   AOI21X1M U477 (.Y(n388), 
	.B0(n393), 
	.A1(n380), 
	.A0(n381));
   AOI22X1M U478 (.Y(n383), 
	.B1(n399), 
	.B0(REG3[6]), 
	.A1(FE_OFN4_n400), 
	.A0(REG2[6]));
   AOI22X1M U479 (.Y(n382), 
	.B1(n401), 
	.B0(REG1[6]), 
	.A1(FE_OFN5_n402), 
	.A0(REG0[6]));
   AOI21X1M U480 (.Y(n387), 
	.B0(n396), 
	.A1(n382), 
	.A0(n383));
   AOI22X1M U481 (.Y(n385), 
	.B1(n399), 
	.B0(reg_file_7__6_), 
	.A1(FE_OFN4_n400), 
	.A0(reg_file_6__6_));
   AOI22X1M U482 (.Y(n384), 
	.B1(n401), 
	.B0(reg_file_5__6_), 
	.A1(FE_OFN5_n402), 
	.A0(reg_file_4__6_));
   AOI21X1M U483 (.Y(n386), 
	.B0(n403), 
	.A1(n384), 
	.A0(n385));
   OR4X1M U484 (.Y(N36), 
	.D(n386), 
	.C(n387), 
	.B(n388), 
	.A(n389));
   AOI22X1M U485 (.Y(n392), 
	.B1(n399), 
	.B0(reg_file_11__7_), 
	.A1(FE_OFN4_n400), 
	.A0(reg_file_10__7_));
   AOI22X1M U486 (.Y(n391), 
	.B1(n401), 
	.B0(reg_file_9__7_), 
	.A1(FE_OFN5_n402), 
	.A0(reg_file_8__7_));
   AOI21X1M U487 (.Y(n409), 
	.B0(n390), 
	.A1(n391), 
	.A0(n392));
   AOI22X1M U488 (.Y(n395), 
	.B1(n399), 
	.B0(test_so2), 
	.A1(FE_OFN4_n400), 
	.A0(reg_file_14__7_));
   AOI22X1M U489 (.Y(n394), 
	.B1(n401), 
	.B0(reg_file_13__7_), 
	.A1(FE_OFN5_n402), 
	.A0(reg_file_12__7_));
   AOI21X1M U490 (.Y(n408), 
	.B0(n393), 
	.A1(n394), 
	.A0(n395));
   AOI22X1M U491 (.Y(n398), 
	.B1(n399), 
	.B0(REG3[7]), 
	.A1(FE_OFN4_n400), 
	.A0(REG2[7]));
   AOI22X1M U492 (.Y(n397), 
	.B1(n401), 
	.B0(REG1[7]), 
	.A1(FE_OFN5_n402), 
	.A0(REG0[7]));
   AOI21X1M U493 (.Y(n407), 
	.B0(n396), 
	.A1(n397), 
	.A0(n398));
   AOI22X1M U494 (.Y(n405), 
	.B1(n399), 
	.B0(reg_file_7__7_), 
	.A1(FE_OFN4_n400), 
	.A0(reg_file_6__7_));
   AOI22X1M U495 (.Y(n404), 
	.B1(n401), 
	.B0(reg_file_5__7_), 
	.A1(FE_OFN5_n402), 
	.A0(reg_file_4__7_));
   AOI21X1M U496 (.Y(n406), 
	.B0(n403), 
	.A1(n404), 
	.A0(n405));
   OR4X1M U497 (.Y(N35), 
	.D(n406), 
	.C(n407), 
	.B(n408), 
	.A(n409));
   DLY1X1M U500 (.Y(n494), 
	.A(test_se));
   DLY1X1M U501 (.Y(n495), 
	.A(test_se));
   DLY1X1M U502 (.Y(n496), 
	.A(n499));
   DLY1X1M U503 (.Y(n497), 
	.A(n500));
   DLY1X1M U504 (.Y(n498), 
	.A(n501));
   DLY1X1M U505 (.Y(n499), 
	.A(n494));
   DLY1X1M U506 (.Y(n500), 
	.A(n495));
   DLY1X1M U507 (.Y(n501), 
	.A(n494));
   DLY1X1M U508 (.Y(n502), 
	.A(n495));
   DLY1X1M U509 (.Y(n503), 
	.A(n496));
   DLY1X1M U510 (.Y(n504), 
	.A(n500));
   DLY1X1M U511 (.Y(n505), 
	.A(n501));
   DLY1X1M U512 (.Y(n506), 
	.A(n502));
   DLY1X1M U513 (.Y(n507), 
	.A(n499));
   DLY1X1M U514 (.Y(n508), 
	.A(n497));
   DLY1X1M U515 (.Y(n509), 
	.A(n498));
   DLY1X1M U516 (.Y(n510), 
	.A(n502));
   DLY1X1M U517 (.Y(n511), 
	.A(n496));
   DLY1X1M U518 (.Y(n512), 
	.A(n497));
   DLY1X1M U519 (.Y(n513), 
	.A(n498));
   DLY1X1M U520 (.Y(n514), 
	.A(n503));
   DLY1X1M U521 (.Y(n515), 
	.A(n503));
   DLY1X1M U522 (.Y(n516), 
	.A(n504));
   DLY1X1M U523 (.Y(n517), 
	.A(n504));
   DLY1X1M U524 (.Y(n518), 
	.A(n505));
   DLY1X1M U525 (.Y(n519), 
	.A(n505));
   DLY1X1M U526 (.Y(n520), 
	.A(n506));
   DLY1X1M U527 (.Y(n521), 
	.A(n506));
   DLY1X1M U528 (.Y(n522), 
	.A(n507));
   DLY1X1M U529 (.Y(n523), 
	.A(n507));
   DLY1X1M U530 (.Y(n524), 
	.A(n508));
   DLY1X1M U531 (.Y(n525), 
	.A(n508));
   DLY1X1M U532 (.Y(n526), 
	.A(n509));
   DLY1X1M U533 (.Y(n527), 
	.A(n509));
   DLY1X1M U534 (.Y(n528), 
	.A(n510));
   DLY1X1M U535 (.Y(n529), 
	.A(n510));
   DLY1X1M U536 (.Y(n530), 
	.A(n511));
   DLY1X1M U537 (.Y(n531), 
	.A(n511));
   DLY1X1M U538 (.Y(n532), 
	.A(n512));
   DLY1X1M U539 (.Y(n533), 
	.A(n512));
   DLY1X1M U540 (.Y(n534), 
	.A(n513));
   DLY1X1M U541 (.Y(n535), 
	.A(n513));
   DLY1X1M U542 (.Y(n536), 
	.A(n514));
   DLY1X1M U543 (.Y(n537), 
	.A(n514));
   DLY1X1M U544 (.Y(n538), 
	.A(n515));
   DLY1X1M U545 (.Y(n539), 
	.A(n515));
   DLY1X1M U546 (.Y(n540), 
	.A(n516));
   DLY1X1M U547 (.Y(n541), 
	.A(n516));
   DLY1X1M U548 (.Y(n542), 
	.A(n517));
   DLY1X1M U549 (.Y(n543), 
	.A(n517));
   DLY1X1M U550 (.Y(n544), 
	.A(n518));
   DLY1X1M U551 (.Y(n545), 
	.A(n518));
   DLY1X1M U552 (.Y(n546), 
	.A(n519));
   DLY1X1M U553 (.Y(n547), 
	.A(n519));
   DLY1X1M U554 (.Y(n548), 
	.A(n520));
   DLY1X1M U555 (.Y(n549), 
	.A(n520));
   DLY1X1M U556 (.Y(n550), 
	.A(n521));
   DLY1X1M U557 (.Y(n551), 
	.A(n521));
   DLY1X1M U558 (.Y(n552), 
	.A(n522));
   DLY1X1M U559 (.Y(n553), 
	.A(n522));
   DLY1X1M U560 (.Y(n554), 
	.A(n523));
   DLY1X1M U561 (.Y(n555), 
	.A(n523));
   DLY1X1M U562 (.Y(n556), 
	.A(n524));
   DLY1X1M U563 (.Y(n557), 
	.A(n524));
   DLY1X1M U564 (.Y(n558), 
	.A(n525));
   DLY1X1M U565 (.Y(n559), 
	.A(n526));
   DLY1X1M U566 (.Y(n560), 
	.A(n525));
   DLY1X1M U567 (.Y(n561), 
	.A(n527));
   DLY1X1M U568 (.Y(n562), 
	.A(n528));
   DLY1X1M U569 (.Y(n563), 
	.A(n528));
   DLY1X1M U570 (.Y(n564), 
	.A(n529));
   DLY1X1M U571 (.Y(n565), 
	.A(n529));
   DLY1X1M U572 (.Y(n566), 
	.A(n530));
   DLY1X1M U573 (.Y(n567), 
	.A(n530));
   DLY1X1M U574 (.Y(n568), 
	.A(n531));
   DLY1X1M U575 (.Y(n569), 
	.A(n531));
   DLY1X1M U576 (.Y(n570), 
	.A(n532));
   DLY1X1M U577 (.Y(n571), 
	.A(n532));
   DLY1X1M U578 (.Y(n572), 
	.A(n533));
   DLY1X1M U579 (.Y(n573), 
	.A(n533));
   DLY1X1M U580 (.Y(n574), 
	.A(n534));
   DLY1X1M U581 (.Y(n575), 
	.A(n534));
   DLY1X1M U583 (.Y(n577), 
	.A(n535));
   DLY1X1M U584 (.Y(n578), 
	.A(n536));
   DLY1X1M U585 (.Y(n579), 
	.A(n536));
   DLY1X1M U586 (.Y(n580), 
	.A(n537));
   DLY1X1M U587 (.Y(n581), 
	.A(n537));
   DLY1X1M U588 (.Y(n582), 
	.A(n538));
   DLY1X1M U589 (.Y(n583), 
	.A(n538));
   DLY1X1M U590 (.Y(n584), 
	.A(n539));
   DLY1X1M U591 (.Y(n585), 
	.A(n539));
   DLY1X1M U592 (.Y(n586), 
	.A(n540));
   DLY1X1M U593 (.Y(n587), 
	.A(n540));
   DLY1X1M U594 (.Y(n588), 
	.A(n541));
   DLY1X1M U595 (.Y(n589), 
	.A(n541));
   DLY1X1M U596 (.Y(n590), 
	.A(n542));
   DLY1X1M U597 (.Y(n591), 
	.A(n542));
   DLY1X1M U598 (.Y(n592), 
	.A(n543));
   DLY1X1M U599 (.Y(n593), 
	.A(n543));
   DLY1X1M U600 (.Y(n594), 
	.A(n544));
   DLY1X1M U601 (.Y(n595), 
	.A(n544));
   DLY1X1M U602 (.Y(n596), 
	.A(n545));
   DLY1X1M U603 (.Y(n597), 
	.A(n545));
   DLY1X1M U604 (.Y(n598), 
	.A(n546));
   DLY1X1M U605 (.Y(n599), 
	.A(n546));
   DLY1X1M U606 (.Y(n600), 
	.A(n547));
   DLY1X1M U607 (.Y(n601), 
	.A(n547));
   DLY1X1M U608 (.Y(n602), 
	.A(n548));
   DLY1X1M U609 (.Y(n603), 
	.A(n548));
   DLY1X1M U610 (.Y(n604), 
	.A(n549));
   DLY1X1M U611 (.Y(n605), 
	.A(n549));
   DLY1X1M U612 (.Y(n606), 
	.A(n550));
   DLY1X1M U613 (.Y(n607), 
	.A(n550));
   DLY1X1M U614 (.Y(n608), 
	.A(n551));
   DLY1X1M U615 (.Y(n609), 
	.A(n551));
   DLY1X1M U616 (.Y(n610), 
	.A(n552));
   DLY1X1M U617 (.Y(n611), 
	.A(n552));
   DLY1X1M U618 (.Y(n612), 
	.A(n553));
   DLY1X1M U619 (.Y(n613), 
	.A(n553));
   DLY1X1M U620 (.Y(n614), 
	.A(n554));
   DLY1X1M U621 (.Y(n615), 
	.A(n554));
   DLY1X1M U622 (.Y(n616), 
	.A(n555));
   DLY1X1M U623 (.Y(n617), 
	.A(n555));
   DLY1X1M U624 (.Y(n618), 
	.A(n556));
   DLY1X1M U628 (.Y(n622), 
	.A(n527));
   DLY1X1M U629 (.Y(n623), 
	.A(n526));
   DLY1X1M U630 (.Y(n624), 
	.A(n558));
   DLY1X1M U631 (.Y(n625), 
	.A(n558));
   DLY1X1M U632 (.Y(n626), 
	.A(n559));
   DLY1X1M U633 (.Y(n627), 
	.A(n559));
   DLY1X1M U634 (.Y(n628), 
	.A(n560));
   SDFFRQX2M reg_file_reg_2__4_ (.SI(REG2[3]), 
	.SE(n627), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(n25), 
	.D(n206), 
	.CK(REF_CLK_M__L7_N4));
   SDFFRQX2M reg_file_reg_2__3_ (.SI(REG2[2]), 
	.SE(n627), 
	.RN(RST), 
	.Q(n26), 
	.D(n205), 
	.CK(REF_CLK_M__L7_N4));
   SDFFRQX2M reg_file_reg_2__2_ (.SI(REG2[1]), 
	.SE(n626), 
	.RN(RST), 
	.Q(n27), 
	.D(n204), 
	.CK(REF_CLK_M__L7_N4));
   SDFFRQX2M reg_file_reg_1__7_ (.SI(REG1[6]), 
	.SE(n626), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(n19), 
	.D(n201), 
	.CK(REF_CLK_M__L7_N16));
   SDFFRQX2M reg_file_reg_1__5_ (.SI(REG1[4]), 
	.SE(n625), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(n20), 
	.D(n199), 
	.CK(REF_CLK_M__L7_N6));
   SDFFRQX2M reg_file_reg_2__6_ (.SI(REG2[5]), 
	.SE(n628), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(n23), 
	.D(n208), 
	.CK(REF_CLK_M__L7_N4));
   SDFFRQX2M reg_file_reg_2__5_ (.SI(REG2[4]), 
	.SE(n628), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(n24), 
	.D(n207), 
	.CK(REF_CLK_M__L7_N4));
   SDFFRHQX8M reg_file_reg_1__0_ (.SI(REG0[7]), 
	.SE(n624), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(REG1[0]), 
	.D(n194), 
	.CK(REF_CLK_M__L7_N6));
   SDFFRQX1M reg_file_reg_1__4_ (.SI(REG1[3]), 
	.SE(n625), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(n21), 
	.D(n198), 
	.CK(REF_CLK_M__L7_N6));
   SDFFRQX4M reg_file_reg_1__2_ (.SI(REG1[1]), 
	.SE(n618), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(REG1[2]), 
	.D(n196), 
	.CK(REF_CLK_M__L7_N6));
   SDFFRQX4M reg_file_reg_1__3_ (.SI(REG1[2]), 
	.SE(n618), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(REG1[3]), 
	.D(n197), 
	.CK(REF_CLK_M__L7_N6));
   SDFFRQX4M reg_file_reg_3__6_ (.SI(REG3[5]), 
	.SE(n621), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(REG3[6]), 
	.D(n216), 
	.CK(REF_CLK_M__L7_N4));
   SDFFRQX4M reg_file_reg_3__1_ (.SI(REG3[0]), 
	.SE(n619), 
	.RN(RST), 
	.Q(REG3[1]), 
	.D(n211), 
	.CK(REF_CLK_M__L7_N4));
   SDFFRQX4M reg_file_reg_3__7_ (.SI(REG3[6]), 
	.SE(n622), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(REG3[7]), 
	.D(n217), 
	.CK(REF_CLK_M__L7_N4));
   SDFFRQX4M reg_file_reg_3__2_ (.SI(REG3[1]), 
	.SE(n620), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(REG3[2]), 
	.D(n212), 
	.CK(REF_CLK_M__L7_N4));
   SDFFRQX4M reg_file_reg_3__4_ (.SI(REG3[3]), 
	.SE(n621), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(REG3[4]), 
	.D(n214), 
	.CK(REF_CLK_M__L7_N4));
   SDFFRQX4M reg_file_reg_3__3_ (.SI(REG3[2]), 
	.SE(n620), 
	.RN(FE_OFN1_SYNC_REF_RST), 
	.Q(REG3[3]), 
	.D(n213), 
	.CK(REF_CLK_M__L7_N4));
   SDFFRQX4M reg_file_reg_3__0_ (.SI(n488), 
	.SE(n619), 
	.RN(RST), 
	.Q(REG3[0]), 
	.D(n210), 
	.CK(REF_CLK_M__L7_N4));
   SDFFRQX2M reg_file_reg_1__1_ (.SI(REG1[0]), 
	.SE(n624), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(n22), 
	.D(n195), 
	.CK(REF_CLK_M__L7_N6));
   SDFFRQX4M reg_file_reg_8__5_ (.SI(reg_file_8__4_), 
	.SE(n576), 
	.RN(FE_OFN2_SYNC_REF_RST), 
	.Q(test_so1), 
	.D(n255), 
	.CK(REF_CLK_M__L7_N15));
   BUFX2M U3 (.Y(n576), 
	.A(n535));
   INVXLM U4 (.Y(n1), 
	.A(n22));
   CLKINVX1M U5 (.Y(REG1[1]), 
	.A(n1));
   BUFX2M U6 (.Y(n619), 
	.A(n556));
   BUFX2M U7 (.Y(n620), 
	.A(n557));
   BUFX2M U8 (.Y(n621), 
	.A(n557));
   INVXLM U9 (.Y(n3), 
	.A(n21));
   CLKINVX1M U10 (.Y(REG1[4]), 
	.A(n3));
   INVXLM U11 (.Y(n5), 
	.A(n20));
   CLKINVX1M U12 (.Y(REG1[5]), 
	.A(n5));
   INVXLM U13 (.Y(n7), 
	.A(n19));
   CLKINVX1M U14 (.Y(REG1[7]), 
	.A(n7));
   INVXLM U15 (.Y(n9), 
	.A(n27));
   CLKINVX1M U16 (.Y(REG2[2]), 
	.A(n9));
   INVXLM U17 (.Y(n11), 
	.A(n25));
   CLKINVX1M U18 (.Y(REG2[4]), 
	.A(n11));
   INVXLM U19 (.Y(n13), 
	.A(n24));
   CLKINVX2M U20 (.Y(REG2[5]), 
	.A(n13));
   INVXLM U21 (.Y(n15), 
	.A(n26));
   CLKINVX2M U22 (.Y(REG2[3]), 
	.A(n15));
   INVXLM U23 (.Y(n17), 
	.A(n23));
   CLKINVX2M U24 (.Y(REG2[6]), 
	.A(n17));
endmodule

module alu_edit_DW_div_uns_0 (
	a, 
	b, 
	quotient, 
	remainder, 
	divide_by_0, 
	n165, 
	n163, 
	n170, 
	n161, 
	n169, 
	n168, 
	n166);
   input [7:0] a;
   input [7:0] b;
   output [7:0] quotient;
   output [7:0] remainder;
   output divide_by_0;
   input n165;
   input n163;
   input n170;
   input n161;
   input n169;
   input n168;
   input n166;

   // Internal wires
   wire u_div_SumTmp_1__0_;
   wire u_div_SumTmp_1__1_;
   wire u_div_SumTmp_1__2_;
   wire u_div_SumTmp_1__3_;
   wire u_div_SumTmp_1__4_;
   wire u_div_SumTmp_1__5_;
   wire u_div_SumTmp_1__6_;
   wire u_div_SumTmp_2__0_;
   wire u_div_SumTmp_2__1_;
   wire u_div_SumTmp_2__2_;
   wire u_div_SumTmp_2__3_;
   wire u_div_SumTmp_2__4_;
   wire u_div_SumTmp_2__5_;
   wire u_div_SumTmp_3__0_;
   wire u_div_SumTmp_3__1_;
   wire u_div_SumTmp_3__2_;
   wire u_div_SumTmp_3__3_;
   wire u_div_SumTmp_3__4_;
   wire u_div_SumTmp_4__0_;
   wire u_div_SumTmp_4__1_;
   wire u_div_SumTmp_4__2_;
   wire u_div_SumTmp_4__3_;
   wire u_div_SumTmp_5__0_;
   wire u_div_SumTmp_5__1_;
   wire u_div_SumTmp_5__2_;
   wire u_div_SumTmp_6__0_;
   wire u_div_SumTmp_6__1_;
   wire u_div_SumTmp_7__0_;
   wire u_div_CryTmp_0__1_;
   wire u_div_CryTmp_0__2_;
   wire u_div_CryTmp_0__3_;
   wire u_div_CryTmp_0__4_;
   wire u_div_CryTmp_0__5_;
   wire u_div_CryTmp_0__6_;
   wire u_div_CryTmp_0__7_;
   wire u_div_CryTmp_1__1_;
   wire u_div_CryTmp_1__2_;
   wire u_div_CryTmp_1__3_;
   wire u_div_CryTmp_1__4_;
   wire u_div_CryTmp_1__5_;
   wire u_div_CryTmp_1__6_;
   wire u_div_CryTmp_1__7_;
   wire u_div_CryTmp_2__1_;
   wire u_div_CryTmp_2__2_;
   wire u_div_CryTmp_2__3_;
   wire u_div_CryTmp_2__4_;
   wire u_div_CryTmp_2__5_;
   wire u_div_CryTmp_2__6_;
   wire u_div_CryTmp_3__1_;
   wire u_div_CryTmp_3__2_;
   wire u_div_CryTmp_3__3_;
   wire u_div_CryTmp_3__4_;
   wire u_div_CryTmp_3__5_;
   wire u_div_CryTmp_4__1_;
   wire u_div_CryTmp_4__2_;
   wire u_div_CryTmp_4__3_;
   wire u_div_CryTmp_4__4_;
   wire u_div_CryTmp_5__1_;
   wire u_div_CryTmp_5__2_;
   wire u_div_CryTmp_5__3_;
   wire u_div_CryTmp_6__1_;
   wire u_div_CryTmp_6__2_;
   wire u_div_CryTmp_7__1_;
   wire u_div_PartRem_1__1_;
   wire u_div_PartRem_1__2_;
   wire u_div_PartRem_1__3_;
   wire u_div_PartRem_1__4_;
   wire u_div_PartRem_1__5_;
   wire u_div_PartRem_1__6_;
   wire u_div_PartRem_1__7_;
   wire u_div_PartRem_2__1_;
   wire u_div_PartRem_2__2_;
   wire u_div_PartRem_2__3_;
   wire u_div_PartRem_2__4_;
   wire u_div_PartRem_2__5_;
   wire u_div_PartRem_2__6_;
   wire u_div_PartRem_3__1_;
   wire u_div_PartRem_3__2_;
   wire u_div_PartRem_3__3_;
   wire u_div_PartRem_3__4_;
   wire u_div_PartRem_3__5_;
   wire u_div_PartRem_4__1_;
   wire u_div_PartRem_4__2_;
   wire u_div_PartRem_4__3_;
   wire u_div_PartRem_4__4_;
   wire u_div_PartRem_5__1_;
   wire u_div_PartRem_5__2_;
   wire u_div_PartRem_5__3_;
   wire u_div_PartRem_6__1_;
   wire u_div_PartRem_6__2_;
   wire u_div_PartRem_7__1_;
   wire n2;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;

   ADDFX2M u_div_u_fa_PartRem_0_2_5 (.S(u_div_SumTmp_2__5_), 
	.CO(u_div_CryTmp_2__6_), 
	.CI(u_div_CryTmp_2__5_), 
	.B(n169), 
	.A(u_div_PartRem_3__5_));
   ADDFX2M u_div_u_fa_PartRem_0_4_3 (.S(u_div_SumTmp_4__3_), 
	.CO(u_div_CryTmp_4__4_), 
	.CI(u_div_CryTmp_4__3_), 
	.B(n5), 
	.A(u_div_PartRem_5__3_));
   ADDFX2M u_div_u_fa_PartRem_0_3_4 (.S(u_div_SumTmp_3__4_), 
	.CO(u_div_CryTmp_3__5_), 
	.CI(u_div_CryTmp_3__4_), 
	.B(n170), 
	.A(u_div_PartRem_4__4_));
   ADDFX2M u_div_u_fa_PartRem_0_5_2 (.S(u_div_SumTmp_5__2_), 
	.CO(u_div_CryTmp_5__3_), 
	.CI(u_div_CryTmp_5__2_), 
	.B(n6), 
	.A(u_div_PartRem_6__2_));
   ADDFX2M u_div_u_fa_PartRem_0_6_1 (.S(u_div_SumTmp_6__1_), 
	.CO(u_div_CryTmp_6__2_), 
	.CI(u_div_CryTmp_6__1_), 
	.B(n7), 
	.A(u_div_PartRem_7__1_));
   ADDFX2M u_div_u_fa_PartRem_0_0_5 (.CO(u_div_CryTmp_0__6_), 
	.CI(u_div_CryTmp_0__5_), 
	.B(n169), 
	.A(u_div_PartRem_1__5_));
   ADDFX2M u_div_u_fa_PartRem_0_0_6 (.CO(u_div_CryTmp_0__7_), 
	.CI(u_div_CryTmp_0__6_), 
	.B(n2), 
	.A(u_div_PartRem_1__6_));
   ADDFX2M u_div_u_fa_PartRem_0_0_7 (.CO(quotient[0]), 
	.CI(u_div_CryTmp_0__7_), 
	.B(n168), 
	.A(u_div_PartRem_1__7_));
   ADDFX2M u_div_u_fa_PartRem_0_0_2 (.CO(u_div_CryTmp_0__3_), 
	.CI(u_div_CryTmp_0__2_), 
	.B(n6), 
	.A(u_div_PartRem_1__2_));
   ADDFX2M u_div_u_fa_PartRem_0_0_3 (.CO(u_div_CryTmp_0__4_), 
	.CI(u_div_CryTmp_0__3_), 
	.B(n5), 
	.A(u_div_PartRem_1__3_));
   ADDFX2M u_div_u_fa_PartRem_0_0_4 (.CO(u_div_CryTmp_0__5_), 
	.CI(u_div_CryTmp_0__4_), 
	.B(n170), 
	.A(u_div_PartRem_1__4_));
   ADDFX2M u_div_u_fa_PartRem_0_1_5 (.S(u_div_SumTmp_1__5_), 
	.CO(u_div_CryTmp_1__6_), 
	.CI(u_div_CryTmp_1__5_), 
	.B(n169), 
	.A(u_div_PartRem_2__5_));
   ADDFX2M u_div_u_fa_PartRem_0_1_4 (.S(u_div_SumTmp_1__4_), 
	.CO(u_div_CryTmp_1__5_), 
	.CI(u_div_CryTmp_1__4_), 
	.B(n170), 
	.A(u_div_PartRem_2__4_));
   ADDFX2M u_div_u_fa_PartRem_0_2_4 (.S(u_div_SumTmp_2__4_), 
	.CO(u_div_CryTmp_2__5_), 
	.CI(u_div_CryTmp_2__4_), 
	.B(n170), 
	.A(u_div_PartRem_3__4_));
   ADDFX2M u_div_u_fa_PartRem_0_1_3 (.S(u_div_SumTmp_1__3_), 
	.CO(u_div_CryTmp_1__4_), 
	.CI(u_div_CryTmp_1__3_), 
	.B(n5), 
	.A(u_div_PartRem_2__3_));
   ADDFX2M u_div_u_fa_PartRem_0_2_3 (.S(u_div_SumTmp_2__3_), 
	.CO(u_div_CryTmp_2__4_), 
	.CI(u_div_CryTmp_2__3_), 
	.B(n5), 
	.A(u_div_PartRem_3__3_));
   ADDFX2M u_div_u_fa_PartRem_0_3_3 (.S(u_div_SumTmp_3__3_), 
	.CO(u_div_CryTmp_3__4_), 
	.CI(u_div_CryTmp_3__3_), 
	.B(n5), 
	.A(u_div_PartRem_4__3_));
   ADDFX2M u_div_u_fa_PartRem_0_1_2 (.S(u_div_SumTmp_1__2_), 
	.CO(u_div_CryTmp_1__3_), 
	.CI(u_div_CryTmp_1__2_), 
	.B(n6), 
	.A(u_div_PartRem_2__2_));
   ADDFX2M u_div_u_fa_PartRem_0_2_2 (.S(u_div_SumTmp_2__2_), 
	.CO(u_div_CryTmp_2__3_), 
	.CI(u_div_CryTmp_2__2_), 
	.B(n6), 
	.A(u_div_PartRem_3__2_));
   ADDFX2M u_div_u_fa_PartRem_0_3_2 (.S(u_div_SumTmp_3__2_), 
	.CO(u_div_CryTmp_3__3_), 
	.CI(u_div_CryTmp_3__2_), 
	.B(n6), 
	.A(u_div_PartRem_4__2_));
   ADDFX2M u_div_u_fa_PartRem_0_4_2 (.S(u_div_SumTmp_4__2_), 
	.CO(u_div_CryTmp_4__3_), 
	.CI(u_div_CryTmp_4__2_), 
	.B(n6), 
	.A(u_div_PartRem_5__2_));
   ADDFX2M u_div_u_fa_PartRem_0_0_1 (.CO(u_div_CryTmp_0__2_), 
	.CI(u_div_CryTmp_0__1_), 
	.B(n7), 
	.A(u_div_PartRem_1__1_));
   ADDFX2M u_div_u_fa_PartRem_0_1_1 (.S(u_div_SumTmp_1__1_), 
	.CO(u_div_CryTmp_1__2_), 
	.CI(u_div_CryTmp_1__1_), 
	.B(n7), 
	.A(u_div_PartRem_2__1_));
   ADDFX2M u_div_u_fa_PartRem_0_2_1 (.S(u_div_SumTmp_2__1_), 
	.CO(u_div_CryTmp_2__2_), 
	.CI(u_div_CryTmp_2__1_), 
	.B(n7), 
	.A(u_div_PartRem_3__1_));
   ADDFX2M u_div_u_fa_PartRem_0_3_1 (.S(u_div_SumTmp_3__1_), 
	.CO(u_div_CryTmp_3__2_), 
	.CI(u_div_CryTmp_3__1_), 
	.B(n7), 
	.A(u_div_PartRem_4__1_));
   ADDFX2M u_div_u_fa_PartRem_0_4_1 (.S(u_div_SumTmp_4__1_), 
	.CO(u_div_CryTmp_4__2_), 
	.CI(u_div_CryTmp_4__1_), 
	.B(n7), 
	.A(u_div_PartRem_5__1_));
   ADDFX2M u_div_u_fa_PartRem_0_5_1 (.S(u_div_SumTmp_5__1_), 
	.CO(u_div_CryTmp_5__2_), 
	.CI(u_div_CryTmp_5__1_), 
	.B(n7), 
	.A(u_div_PartRem_6__1_));
   ADDFX2M u_div_u_fa_PartRem_0_1_6 (.S(u_div_SumTmp_1__6_), 
	.CO(u_div_CryTmp_1__7_), 
	.CI(u_div_CryTmp_1__6_), 
	.B(n2), 
	.A(u_div_PartRem_2__6_));
   CLKINVX2M U1 (.Y(n8), 
	.A(b[0]));
   NOR2X2M U2 (.Y(n11), 
	.B(b[7]), 
	.A(b[6]));
   AND3X2M U3 (.Y(quotient[3]), 
	.C(u_div_CryTmp_3__5_), 
	.B(n169), 
	.A(n11));
   AND2X2M U4 (.Y(quotient[4]), 
	.B(n10), 
	.A(u_div_CryTmp_4__4_));
   AND2X2M U5 (.Y(quotient[2]), 
	.B(n11), 
	.A(u_div_CryTmp_2__6_));
   AND2X2M U6 (.Y(quotient[1]), 
	.B(n168), 
	.A(u_div_CryTmp_1__7_));
   AND2X2M U7 (.Y(quotient[5]), 
	.B(n9), 
	.A(u_div_CryTmp_5__3_));
   MX2X1M U8 (.Y(u_div_PartRem_2__3_), 
	.S0(quotient[2]), 
	.B(u_div_SumTmp_2__2_), 
	.A(u_div_PartRem_3__2_));
   MX2X1M U9 (.Y(u_div_PartRem_2__6_), 
	.S0(quotient[2]), 
	.B(u_div_SumTmp_2__5_), 
	.A(u_div_PartRem_3__5_));
   MX2X1M U10 (.Y(u_div_PartRem_2__2_), 
	.S0(quotient[2]), 
	.B(u_div_SumTmp_2__1_), 
	.A(u_div_PartRem_3__1_));
   MX2X1M U11 (.Y(u_div_PartRem_2__4_), 
	.S0(quotient[2]), 
	.B(u_div_SumTmp_2__3_), 
	.A(u_div_PartRem_3__3_));
   MX2X1M U12 (.Y(u_div_PartRem_2__5_), 
	.S0(quotient[2]), 
	.B(u_div_SumTmp_2__4_), 
	.A(u_div_PartRem_3__4_));
   MX2X1M U13 (.Y(u_div_PartRem_3__5_), 
	.S0(quotient[3]), 
	.B(u_div_SumTmp_3__4_), 
	.A(u_div_PartRem_4__4_));
   MX2X1M U14 (.Y(u_div_PartRem_3__4_), 
	.S0(quotient[3]), 
	.B(u_div_SumTmp_3__3_), 
	.A(u_div_PartRem_4__3_));
   MX2X1M U15 (.Y(u_div_PartRem_3__3_), 
	.S0(quotient[3]), 
	.B(u_div_SumTmp_3__2_), 
	.A(u_div_PartRem_4__2_));
   MX2X1M U16 (.Y(u_div_PartRem_3__2_), 
	.S0(quotient[3]), 
	.B(u_div_SumTmp_3__1_), 
	.A(u_div_PartRem_4__1_));
   MX2X1M U17 (.Y(u_div_PartRem_4__4_), 
	.S0(quotient[4]), 
	.B(u_div_SumTmp_4__3_), 
	.A(u_div_PartRem_5__3_));
   MX2X1M U18 (.Y(u_div_PartRem_4__3_), 
	.S0(quotient[4]), 
	.B(u_div_SumTmp_4__2_), 
	.A(u_div_PartRem_5__2_));
   MX2X1M U19 (.Y(u_div_PartRem_4__2_), 
	.S0(quotient[4]), 
	.B(u_div_SumTmp_4__1_), 
	.A(u_div_PartRem_5__1_));
   MX2X1M U20 (.Y(u_div_PartRem_5__2_), 
	.S0(quotient[5]), 
	.B(u_div_SumTmp_5__1_), 
	.A(u_div_PartRem_6__1_));
   MX2X1M U21 (.Y(u_div_PartRem_5__3_), 
	.S0(quotient[5]), 
	.B(u_div_SumTmp_5__2_), 
	.A(u_div_PartRem_6__2_));
   MX2XLM U22 (.Y(u_div_PartRem_1__2_), 
	.S0(quotient[1]), 
	.B(u_div_SumTmp_1__1_), 
	.A(u_div_PartRem_2__1_));
   MX2XLM U23 (.Y(u_div_PartRem_1__3_), 
	.S0(quotient[1]), 
	.B(u_div_SumTmp_1__2_), 
	.A(u_div_PartRem_2__2_));
   MX2XLM U24 (.Y(u_div_PartRem_1__5_), 
	.S0(quotient[1]), 
	.B(u_div_SumTmp_1__4_), 
	.A(u_div_PartRem_2__4_));
   MX2XLM U25 (.Y(u_div_PartRem_1__6_), 
	.S0(quotient[1]), 
	.B(u_div_SumTmp_1__5_), 
	.A(u_div_PartRem_2__5_));
   AND3X2M U26 (.Y(quotient[6]), 
	.C(u_div_CryTmp_6__2_), 
	.B(n6), 
	.A(n9));
   AND2X2M U27 (.Y(n9), 
	.B(n5), 
	.A(n10));
   CLKINVX2M U28 (.Y(n7), 
	.A(b[1]));
   OR2X2M U30 (.Y(u_div_CryTmp_7__1_), 
	.B(n8), 
	.A(a[7]));
   XNOR2X2M U31 (.Y(u_div_SumTmp_2__0_), 
	.B(a[2]), 
	.A(n8));
   XNOR2X2M U32 (.Y(u_div_SumTmp_3__0_), 
	.B(a[3]), 
	.A(n8));
   XNOR2X2M U33 (.Y(u_div_SumTmp_4__0_), 
	.B(a[4]), 
	.A(n8));
   XNOR2X2M U34 (.Y(u_div_SumTmp_5__0_), 
	.B(a[5]), 
	.A(n8));
   XNOR2X2M U35 (.Y(u_div_SumTmp_6__0_), 
	.B(a[6]), 
	.A(n8));
   XNOR2X2M U36 (.Y(u_div_SumTmp_7__0_), 
	.B(a[7]), 
	.A(n8));
   XNOR2X2M U37 (.Y(u_div_SumTmp_1__0_), 
	.B(a[1]), 
	.A(n8));
   INVX2M U38 (.Y(n2), 
	.A(b[6]));
   OR2X2M U39 (.Y(u_div_CryTmp_5__1_), 
	.B(n8), 
	.A(a[5]));
   OR2X2M U40 (.Y(u_div_CryTmp_4__1_), 
	.B(n8), 
	.A(a[4]));
   OR2X2M U41 (.Y(u_div_CryTmp_3__1_), 
	.B(n8), 
	.A(a[3]));
   OR2X2M U42 (.Y(u_div_CryTmp_2__1_), 
	.B(n8), 
	.A(a[2]));
   OR2X2M U43 (.Y(u_div_CryTmp_1__1_), 
	.B(n8), 
	.A(a[1]));
   NAND2BX2M U44 (.Y(u_div_CryTmp_0__1_), 
	.B(b[0]), 
	.AN(a[0]));
   OR2X2M U45 (.Y(u_div_CryTmp_6__1_), 
	.B(n8), 
	.A(a[6]));
   CLKINVX2M U46 (.Y(n5), 
	.A(b[3]));
   CLKMX2X2M U50 (.Y(u_div_PartRem_1__7_), 
	.S0(quotient[1]), 
	.B(u_div_SumTmp_1__6_), 
	.A(u_div_PartRem_2__6_));
   CLKMX2X2M U51 (.Y(u_div_PartRem_6__2_), 
	.S0(quotient[6]), 
	.B(u_div_SumTmp_6__1_), 
	.A(u_div_PartRem_7__1_));
   CLKMX2X2M U52 (.Y(u_div_PartRem_7__1_), 
	.S0(quotient[7]), 
	.B(u_div_SumTmp_7__0_), 
	.A(a[7]));
   CLKMX2X2M U53 (.Y(u_div_PartRem_6__1_), 
	.S0(quotient[6]), 
	.B(u_div_SumTmp_6__0_), 
	.A(a[6]));
   CLKMX2X2M U54 (.Y(u_div_PartRem_5__1_), 
	.S0(quotient[5]), 
	.B(u_div_SumTmp_5__0_), 
	.A(a[5]));
   CLKMX2X2M U55 (.Y(u_div_PartRem_1__4_), 
	.S0(quotient[1]), 
	.B(u_div_SumTmp_1__3_), 
	.A(u_div_PartRem_2__3_));
   CLKMX2X2M U56 (.Y(u_div_PartRem_4__1_), 
	.S0(quotient[4]), 
	.B(u_div_SumTmp_4__0_), 
	.A(a[4]));
   CLKMX2X2M U57 (.Y(u_div_PartRem_3__1_), 
	.S0(quotient[3]), 
	.B(u_div_SumTmp_3__0_), 
	.A(a[3]));
   CLKMX2X2M U58 (.Y(u_div_PartRem_2__1_), 
	.S0(quotient[2]), 
	.B(u_div_SumTmp_2__0_), 
	.A(a[2]));
   CLKMX2X2M U59 (.Y(u_div_PartRem_1__1_), 
	.S0(quotient[1]), 
	.B(u_div_SumTmp_1__0_), 
	.A(a[1]));
   AND4X1M U60 (.Y(quotient[7]), 
	.D(n6), 
	.C(n7), 
	.B(n9), 
	.A(u_div_CryTmp_7__1_));
   AND3X1M U61 (.Y(n10), 
	.C(n169), 
	.B(n170), 
	.A(n11));
   CLKINVX2M U29 (.Y(n6), 
	.A(b[2]));
endmodule

module alu_edit_DW01_sub_0 (
	A, 
	B, 
	CI, 
	DIFF, 
	CO, 
	n165, 
	n163, 
	n170, 
	n161, 
	n169, 
	n168, 
	n166);
   input [8:0] A;
   input [8:0] B;
   input CI;
   output [8:0] DIFF;
   output CO;
   input n165;
   input n163;
   input n170;
   input n161;
   input n169;
   input n168;
   input n166;

   // Internal wires
   wire n2;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire [8:1] carry;

   ADDFX2M U2_7 (.S(DIFF[7]), 
	.CO(carry[8]), 
	.CI(carry[7]), 
	.B(n168), 
	.A(A[7]));
   ADDFX2M U2_5 (.S(DIFF[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(n169), 
	.A(A[5]));
   ADDFX2M U2_4 (.S(DIFF[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(n170), 
	.A(A[4]));
   ADDFX2M U2_3 (.S(DIFF[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(n5), 
	.A(A[3]));
   ADDFX2M U2_2 (.S(DIFF[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(n6), 
	.A(A[2]));
   ADDFX2M U2_1 (.S(DIFF[1]), 
	.CO(carry[2]), 
	.CI(carry[1]), 
	.B(n7), 
	.A(A[1]));
   ADDFX2M U2_6 (.S(DIFF[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(n2), 
	.A(A[6]));
   XNOR2X2M U1 (.Y(DIFF[0]), 
	.B(A[0]), 
	.A(n8));
   INVX2M U2 (.Y(n2), 
	.A(B[6]));
   INVX2M U3 (.Y(n8), 
	.A(B[0]));
   OR2X2M U4 (.Y(carry[1]), 
	.B(n8), 
	.A(A[0]));
   INVX2M U5 (.Y(n7), 
	.A(B[1]));
   INVX2M U6 (.Y(n6), 
	.A(B[2]));
   INVX2M U7 (.Y(n5), 
	.A(B[3]));
   CLKINVX1M U11 (.Y(DIFF[8]), 
	.A(carry[8]));
endmodule

module alu_edit_DW01_add_0 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [8:0] A;
   input [8:0] B;
   input CI;
   output [8:0] SUM;
   output CO;

   // Internal wires
   wire n1;
   wire [7:2] carry;

   ADDFX2M U1_7 (.S(SUM[7]), 
	.CO(SUM[8]), 
	.CI(carry[7]), 
	.B(B[7]), 
	.A(A[7]));
   ADDFX2M U1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(B[3]), 
	.A(A[3]));
   ADDFX2M U1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(B[2]), 
	.A(A[2]));
   ADDFX2M U1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.CI(n1), 
	.B(B[1]), 
	.A(A[1]));
   ADDFX2M U1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(B[5]), 
	.A(A[5]));
   ADDFX2M U1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(B[4]), 
	.A(A[4]));
   ADDFX2M U1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(B[6]), 
	.A(A[6]));
   AND2X2M U1 (.Y(n1), 
	.B(A[0]), 
	.A(B[0]));
   CLKXOR2X2M U2 (.Y(SUM[0]), 
	.B(A[0]), 
	.A(B[0]));
endmodule

module alu_edit_DW01_add_1 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [13:0] A;
   input [13:0] B;
   input CI;
   output [13:0] SUM;
   output CO;

   // Internal wires
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;

   OAI21BX1M U2 (.Y(n17), 
	.B0N(n21), 
	.A1(n20), 
	.A0(n19));
   AOI2BB1X2M U3 (.Y(n24), 
	.B0(n10), 
	.A1N(n11), 
	.A0N(n8));
   NOR2X2M U4 (.Y(n19), 
	.B(A[11]), 
	.A(B[11]));
   NOR2X2M U5 (.Y(n11), 
	.B(A[9]), 
	.A(B[9]));
   NOR2X2M U6 (.Y(n23), 
	.B(A[10]), 
	.A(B[10]));
   NOR2X2M U7 (.Y(n14), 
	.B(A[8]), 
	.A(B[8]));
   NAND2X2M U8 (.Y(n13), 
	.B(B[7]), 
	.A(A[7]));
   INVX2M U9 (.Y(n7), 
	.A(A[6]));
   INVX2M U10 (.Y(SUM[6]), 
	.A(n7));
   CLKXOR2X2M U11 (.Y(SUM[7]), 
	.B(B[7]), 
	.A(A[7]));
   CLKXOR2X2M U12 (.Y(SUM[13]), 
	.B(n16), 
	.A(B[13]));
   BUFX2M U13 (.Y(SUM[0]), 
	.A(A[0]));
   BUFX2M U14 (.Y(SUM[1]), 
	.A(A[1]));
   BUFX2M U15 (.Y(SUM[2]), 
	.A(A[2]));
   BUFX2M U16 (.Y(SUM[3]), 
	.A(A[3]));
   BUFX2M U17 (.Y(SUM[4]), 
	.A(A[4]));
   BUFX2M U18 (.Y(SUM[5]), 
	.A(A[5]));
   XNOR2X1M U19 (.Y(SUM[9]), 
	.B(n9), 
	.A(n8));
   NOR2X1M U20 (.Y(n9), 
	.B(n11), 
	.A(n10));
   CLKXOR2X2M U21 (.Y(SUM[8]), 
	.B(n13), 
	.A(n12));
   NAND2BX1M U22 (.Y(n12), 
	.B(n15), 
	.AN(n14));
   OAI2BB1X1M U23 (.Y(n16), 
	.B0(n18), 
	.A1N(A[12]), 
	.A0N(n17));
   OAI21X1M U24 (.Y(n18), 
	.B0(B[12]), 
	.A1(n17), 
	.A0(A[12]));
   XOR3XLM U25 (.Y(SUM[12]), 
	.C(n17), 
	.B(A[12]), 
	.A(B[12]));
   XNOR2X1M U26 (.Y(SUM[11]), 
	.B(n22), 
	.A(n20));
   NOR2X1M U27 (.Y(n22), 
	.B(n19), 
	.A(n21));
   AND2X1M U28 (.Y(n21), 
	.B(A[11]), 
	.A(B[11]));
   OA21X1M U29 (.Y(n20), 
	.B0(n25), 
	.A1(n24), 
	.A0(n23));
   CLKXOR2X2M U30 (.Y(SUM[10]), 
	.B(n24), 
	.A(n26));
   AND2X1M U31 (.Y(n10), 
	.B(A[9]), 
	.A(B[9]));
   OA21X1M U32 (.Y(n8), 
	.B0(n15), 
	.A1(n14), 
	.A0(n13));
   CLKNAND2X2M U33 (.Y(n15), 
	.B(A[8]), 
	.A(B[8]));
   NAND2BX1M U34 (.Y(n26), 
	.B(n25), 
	.AN(n23));
   CLKNAND2X2M U35 (.Y(n25), 
	.B(A[10]), 
	.A(B[10]));
endmodule

module alu_edit_DW02_mult_0 (
	A, 
	B, 
	TC, 
	PRODUCT, 
	n165, 
	n163, 
	n170, 
	n161, 
	n169, 
	n168, 
	n177, 
	n176, 
	n175, 
	n174, 
	n173, 
	n172, 
	n171, 
	n178, 
	n166);
   input [7:0] A;
   input [7:0] B;
   input TC;
   output [15:0] PRODUCT;
   input n165;
   input n163;
   input n170;
   input n161;
   input n169;
   input n168;
   input n177;
   input n176;
   input n175;
   input n174;
   input n173;
   input n172;
   input n171;
   input n178;
   input n166;

   // Internal wires
   wire ab_7__7_;
   wire ab_7__6_;
   wire ab_7__5_;
   wire ab_7__4_;
   wire ab_7__3_;
   wire ab_7__2_;
   wire ab_7__1_;
   wire ab_7__0_;
   wire ab_6__7_;
   wire ab_6__6_;
   wire ab_6__5_;
   wire ab_6__4_;
   wire ab_6__3_;
   wire ab_6__2_;
   wire ab_6__1_;
   wire ab_6__0_;
   wire ab_5__7_;
   wire ab_5__6_;
   wire ab_5__5_;
   wire ab_5__4_;
   wire ab_5__3_;
   wire ab_5__2_;
   wire ab_5__1_;
   wire ab_5__0_;
   wire ab_4__7_;
   wire ab_4__6_;
   wire ab_4__5_;
   wire ab_4__4_;
   wire ab_4__3_;
   wire ab_4__2_;
   wire ab_4__1_;
   wire ab_4__0_;
   wire ab_3__7_;
   wire ab_3__6_;
   wire ab_3__5_;
   wire ab_3__4_;
   wire ab_3__3_;
   wire ab_3__2_;
   wire ab_3__1_;
   wire ab_3__0_;
   wire ab_2__7_;
   wire ab_2__6_;
   wire ab_2__5_;
   wire ab_2__4_;
   wire ab_2__3_;
   wire ab_2__2_;
   wire ab_2__1_;
   wire ab_2__0_;
   wire ab_1__7_;
   wire ab_1__6_;
   wire ab_1__5_;
   wire ab_1__4_;
   wire ab_1__3_;
   wire ab_1__2_;
   wire ab_1__1_;
   wire ab_1__0_;
   wire ab_0__7_;
   wire ab_0__6_;
   wire ab_0__5_;
   wire ab_0__4_;
   wire ab_0__3_;
   wire ab_0__2_;
   wire ab_0__1_;
   wire CARRYB_7__6_;
   wire CARRYB_7__5_;
   wire CARRYB_7__4_;
   wire CARRYB_7__3_;
   wire CARRYB_7__2_;
   wire CARRYB_7__1_;
   wire CARRYB_7__0_;
   wire CARRYB_6__6_;
   wire CARRYB_6__5_;
   wire CARRYB_6__4_;
   wire CARRYB_6__3_;
   wire CARRYB_6__2_;
   wire CARRYB_6__1_;
   wire CARRYB_6__0_;
   wire CARRYB_5__6_;
   wire CARRYB_5__5_;
   wire CARRYB_5__4_;
   wire CARRYB_5__3_;
   wire CARRYB_5__2_;
   wire CARRYB_5__1_;
   wire CARRYB_5__0_;
   wire CARRYB_4__6_;
   wire CARRYB_4__5_;
   wire CARRYB_4__4_;
   wire CARRYB_4__3_;
   wire CARRYB_4__2_;
   wire CARRYB_4__1_;
   wire CARRYB_4__0_;
   wire CARRYB_3__6_;
   wire CARRYB_3__5_;
   wire CARRYB_3__4_;
   wire CARRYB_3__3_;
   wire CARRYB_3__2_;
   wire CARRYB_3__1_;
   wire CARRYB_3__0_;
   wire CARRYB_2__6_;
   wire CARRYB_2__5_;
   wire CARRYB_2__4_;
   wire CARRYB_2__3_;
   wire CARRYB_2__2_;
   wire CARRYB_2__1_;
   wire CARRYB_2__0_;
   wire SUMB_7__6_;
   wire SUMB_7__5_;
   wire SUMB_7__4_;
   wire SUMB_7__3_;
   wire SUMB_7__2_;
   wire SUMB_7__1_;
   wire SUMB_7__0_;
   wire SUMB_6__6_;
   wire SUMB_6__5_;
   wire SUMB_6__4_;
   wire SUMB_6__3_;
   wire SUMB_6__2_;
   wire SUMB_6__1_;
   wire SUMB_5__6_;
   wire SUMB_5__5_;
   wire SUMB_5__4_;
   wire SUMB_5__3_;
   wire SUMB_5__2_;
   wire SUMB_5__1_;
   wire SUMB_4__6_;
   wire SUMB_4__5_;
   wire SUMB_4__4_;
   wire SUMB_4__3_;
   wire SUMB_4__2_;
   wire SUMB_4__1_;
   wire SUMB_3__6_;
   wire SUMB_3__5_;
   wire SUMB_3__4_;
   wire SUMB_3__3_;
   wire SUMB_3__2_;
   wire SUMB_3__1_;
   wire SUMB_2__6_;
   wire SUMB_2__5_;
   wire SUMB_2__4_;
   wire SUMB_2__3_;
   wire SUMB_2__2_;
   wire SUMB_2__1_;
   wire SUMB_1__6_;
   wire SUMB_1__5_;
   wire SUMB_1__4_;
   wire SUMB_1__3_;
   wire SUMB_1__2_;
   wire SUMB_1__1_;
   wire A1_12_;
   wire A1_11_;
   wire A1_10_;
   wire A1_9_;
   wire A1_8_;
   wire A1_7_;
   wire A1_6_;
   wire A1_4_;
   wire A1_3_;
   wire A1_2_;
   wire A1_1_;
   wire A1_0_;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n18;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n32;

   ADDFX2M S2_6_5 (.S(SUMB_6__5_), 
	.CO(CARRYB_6__5_), 
	.CI(SUMB_5__6_), 
	.B(CARRYB_5__5_), 
	.A(ab_6__5_));
   ADDFX2M S2_6_4 (.S(SUMB_6__4_), 
	.CO(CARRYB_6__4_), 
	.CI(SUMB_5__5_), 
	.B(CARRYB_5__4_), 
	.A(ab_6__4_));
   ADDFX2M S2_5_5 (.S(SUMB_5__5_), 
	.CO(CARRYB_5__5_), 
	.CI(SUMB_4__6_), 
	.B(CARRYB_4__5_), 
	.A(ab_5__5_));
   ADDFX2M S2_6_3 (.S(SUMB_6__3_), 
	.CO(CARRYB_6__3_), 
	.CI(SUMB_5__4_), 
	.B(CARRYB_5__3_), 
	.A(ab_6__3_));
   ADDFX2M S2_5_4 (.S(SUMB_5__4_), 
	.CO(CARRYB_5__4_), 
	.CI(SUMB_4__5_), 
	.B(CARRYB_4__4_), 
	.A(ab_5__4_));
   ADDFX2M S1_6_0 (.S(A1_4_), 
	.CO(CARRYB_6__0_), 
	.CI(SUMB_5__1_), 
	.B(CARRYB_5__0_), 
	.A(ab_6__0_));
   ADDFX2M S2_6_1 (.S(SUMB_6__1_), 
	.CO(CARRYB_6__1_), 
	.CI(SUMB_5__2_), 
	.B(CARRYB_5__1_), 
	.A(ab_6__1_));
   ADDFX2M S2_6_2 (.S(SUMB_6__2_), 
	.CO(CARRYB_6__2_), 
	.CI(SUMB_5__3_), 
	.B(CARRYB_5__2_), 
	.A(ab_6__2_));
   ADDFX2M S2_4_5 (.S(SUMB_4__5_), 
	.CO(CARRYB_4__5_), 
	.CI(SUMB_3__6_), 
	.B(CARRYB_3__5_), 
	.A(ab_4__5_));
   ADDFX2M S1_5_0 (.S(A1_3_), 
	.CO(CARRYB_5__0_), 
	.CI(SUMB_4__1_), 
	.B(CARRYB_4__0_), 
	.A(ab_5__0_));
   ADDFX2M S2_5_1 (.S(SUMB_5__1_), 
	.CO(CARRYB_5__1_), 
	.CI(SUMB_4__2_), 
	.B(CARRYB_4__1_), 
	.A(ab_5__1_));
   ADDFX2M S2_5_2 (.S(SUMB_5__2_), 
	.CO(CARRYB_5__2_), 
	.CI(SUMB_4__3_), 
	.B(CARRYB_4__2_), 
	.A(ab_5__2_));
   ADDFX2M S2_5_3 (.S(SUMB_5__3_), 
	.CO(CARRYB_5__3_), 
	.CI(SUMB_4__4_), 
	.B(CARRYB_4__3_), 
	.A(ab_5__3_));
   ADDFX2M S1_4_0 (.S(A1_2_), 
	.CO(CARRYB_4__0_), 
	.CI(SUMB_3__1_), 
	.B(CARRYB_3__0_), 
	.A(ab_4__0_));
   ADDFX2M S2_4_1 (.S(SUMB_4__1_), 
	.CO(CARRYB_4__1_), 
	.CI(SUMB_3__2_), 
	.B(CARRYB_3__1_), 
	.A(ab_4__1_));
   ADDFX2M S2_4_2 (.S(SUMB_4__2_), 
	.CO(CARRYB_4__2_), 
	.CI(SUMB_3__3_), 
	.B(CARRYB_3__2_), 
	.A(ab_4__2_));
   ADDFX2M S2_4_3 (.S(SUMB_4__3_), 
	.CO(CARRYB_4__3_), 
	.CI(SUMB_3__4_), 
	.B(CARRYB_3__3_), 
	.A(ab_4__3_));
   ADDFX2M S2_4_4 (.S(SUMB_4__4_), 
	.CO(CARRYB_4__4_), 
	.CI(SUMB_3__5_), 
	.B(CARRYB_3__4_), 
	.A(ab_4__4_));
   ADDFX2M S1_3_0 (.S(A1_1_), 
	.CO(CARRYB_3__0_), 
	.CI(SUMB_2__1_), 
	.B(CARRYB_2__0_), 
	.A(ab_3__0_));
   ADDFX2M S2_3_1 (.S(SUMB_3__1_), 
	.CO(CARRYB_3__1_), 
	.CI(SUMB_2__2_), 
	.B(CARRYB_2__1_), 
	.A(ab_3__1_));
   ADDFX2M S2_3_2 (.S(SUMB_3__2_), 
	.CO(CARRYB_3__2_), 
	.CI(SUMB_2__3_), 
	.B(CARRYB_2__2_), 
	.A(ab_3__2_));
   ADDFX2M S2_3_3 (.S(SUMB_3__3_), 
	.CO(CARRYB_3__3_), 
	.CI(SUMB_2__4_), 
	.B(CARRYB_2__3_), 
	.A(ab_3__3_));
   ADDFX2M S2_3_4 (.S(SUMB_3__4_), 
	.CO(CARRYB_3__4_), 
	.CI(SUMB_2__5_), 
	.B(CARRYB_2__4_), 
	.A(ab_3__4_));
   ADDFX2M S2_3_5 (.S(SUMB_3__5_), 
	.CO(CARRYB_3__5_), 
	.CI(SUMB_2__6_), 
	.B(CARRYB_2__5_), 
	.A(ab_3__5_));
   ADDFX2M S1_2_0 (.S(A1_0_), 
	.CO(CARRYB_2__0_), 
	.CI(SUMB_1__1_), 
	.B(n10), 
	.A(ab_2__0_));
   ADDFX2M S2_2_1 (.S(SUMB_2__1_), 
	.CO(CARRYB_2__1_), 
	.CI(SUMB_1__2_), 
	.B(n9), 
	.A(ab_2__1_));
   ADDFX2M S2_2_2 (.S(SUMB_2__2_), 
	.CO(CARRYB_2__2_), 
	.CI(SUMB_1__3_), 
	.B(n8), 
	.A(ab_2__2_));
   ADDFX2M S2_2_3 (.S(SUMB_2__3_), 
	.CO(CARRYB_2__3_), 
	.CI(SUMB_1__4_), 
	.B(n7), 
	.A(ab_2__3_));
   ADDFX2M S2_2_4 (.S(SUMB_2__4_), 
	.CO(CARRYB_2__4_), 
	.CI(SUMB_1__5_), 
	.B(n6), 
	.A(ab_2__4_));
   ADDFX2M S2_2_5 (.S(SUMB_2__5_), 
	.CO(CARRYB_2__5_), 
	.CI(SUMB_1__6_), 
	.B(n5), 
	.A(ab_2__5_));
   ADDFX2M S3_6_6 (.S(SUMB_6__6_), 
	.CO(CARRYB_6__6_), 
	.CI(ab_5__7_), 
	.B(CARRYB_5__6_), 
	.A(ab_6__6_));
   ADDFX2M S3_5_6 (.S(SUMB_5__6_), 
	.CO(CARRYB_5__6_), 
	.CI(ab_4__7_), 
	.B(CARRYB_4__6_), 
	.A(ab_5__6_));
   ADDFX2M S3_4_6 (.S(SUMB_4__6_), 
	.CO(CARRYB_4__6_), 
	.CI(ab_3__7_), 
	.B(CARRYB_3__6_), 
	.A(ab_4__6_));
   ADDFX2M S3_3_6 (.S(SUMB_3__6_), 
	.CO(CARRYB_3__6_), 
	.CI(ab_2__7_), 
	.B(CARRYB_2__6_), 
	.A(ab_3__6_));
   ADDFX2M S3_2_6 (.S(SUMB_2__6_), 
	.CO(CARRYB_2__6_), 
	.CI(ab_1__7_), 
	.B(n4), 
	.A(ab_2__6_));
   ADDFX2M S4_5 (.S(SUMB_7__5_), 
	.CO(CARRYB_7__5_), 
	.CI(SUMB_6__6_), 
	.B(CARRYB_6__5_), 
	.A(ab_7__5_));
   ADDFX2M S4_4 (.S(SUMB_7__4_), 
	.CO(CARRYB_7__4_), 
	.CI(SUMB_6__5_), 
	.B(CARRYB_6__4_), 
	.A(ab_7__4_));
   ADDFX2M S4_3 (.S(SUMB_7__3_), 
	.CO(CARRYB_7__3_), 
	.CI(SUMB_6__4_), 
	.B(CARRYB_6__3_), 
	.A(ab_7__3_));
   ADDFX2M S4_2 (.S(SUMB_7__2_), 
	.CO(CARRYB_7__2_), 
	.CI(SUMB_6__3_), 
	.B(CARRYB_6__2_), 
	.A(ab_7__2_));
   ADDFX2M S4_0 (.S(SUMB_7__0_), 
	.CO(CARRYB_7__0_), 
	.CI(SUMB_6__1_), 
	.B(CARRYB_6__0_), 
	.A(ab_7__0_));
   ADDFX2M S4_1 (.S(SUMB_7__1_), 
	.CO(CARRYB_7__1_), 
	.CI(SUMB_6__2_), 
	.B(CARRYB_6__1_), 
	.A(ab_7__1_));
   ADDFX2M S5_6 (.S(SUMB_7__6_), 
	.CO(CARRYB_7__6_), 
	.CI(ab_6__7_), 
	.B(CARRYB_6__6_), 
	.A(ab_7__6_));
   AND2X2M U2 (.Y(n3), 
	.B(ab_7__7_), 
	.A(CARRYB_7__6_));
   AND2X2M U3 (.Y(n4), 
	.B(ab_1__6_), 
	.A(ab_0__7_));
   AND2X2M U4 (.Y(n5), 
	.B(ab_1__5_), 
	.A(ab_0__6_));
   AND2X2M U5 (.Y(n6), 
	.B(ab_1__4_), 
	.A(ab_0__5_));
   AND2X2M U6 (.Y(n7), 
	.B(ab_1__3_), 
	.A(ab_0__4_));
   AND2X2M U7 (.Y(n8), 
	.B(ab_1__2_), 
	.A(ab_0__3_));
   AND2X2M U8 (.Y(n9), 
	.B(ab_1__1_), 
	.A(ab_0__2_));
   AND2X2M U9 (.Y(n10), 
	.B(ab_1__0_), 
	.A(ab_0__1_));
   NOR2X2M U10 (.Y(ab_0__6_), 
	.B(n32), 
	.A(n18));
   NOR2X2M U11 (.Y(ab_1__6_), 
	.B(n177), 
	.A(n18));
   NOR2X2M U12 (.Y(ab_0__7_), 
	.B(n32), 
	.A(n168));
   NOR2X2M U13 (.Y(ab_0__5_), 
	.B(n32), 
	.A(n169));
   NOR2X2M U14 (.Y(ab_0__4_), 
	.B(n32), 
	.A(n170));
   NOR2X2M U15 (.Y(ab_0__3_), 
	.B(n32), 
	.A(n21));
   NOR2X2M U16 (.Y(ab_0__2_), 
	.B(n32), 
	.A(n22));
   NOR2X2M U17 (.Y(ab_0__1_), 
	.B(n32), 
	.A(n23));
   NOR2X2M U18 (.Y(ab_7__7_), 
	.B(n168), 
	.A(n171));
   NOR2X2M U19 (.Y(ab_1__5_), 
	.B(n177), 
	.A(n169));
   NOR2X2M U20 (.Y(ab_1__4_), 
	.B(n177), 
	.A(n170));
   NOR2X2M U21 (.Y(ab_1__3_), 
	.B(n177), 
	.A(n21));
   NOR2X2M U22 (.Y(ab_1__2_), 
	.B(n177), 
	.A(n22));
   NOR2X2M U23 (.Y(ab_1__1_), 
	.B(n177), 
	.A(n23));
   NOR2X2M U24 (.Y(ab_1__0_), 
	.B(n177), 
	.A(n24));
   CLKXOR2X2M U25 (.Y(A1_12_), 
	.B(ab_7__7_), 
	.A(CARRYB_7__6_));
   CLKXOR2X2M U26 (.Y(A1_7_), 
	.B(SUMB_7__2_), 
	.A(CARRYB_7__1_));
   CLKXOR2X2M U27 (.Y(A1_8_), 
	.B(SUMB_7__3_), 
	.A(CARRYB_7__2_));
   CLKXOR2X2M U28 (.Y(A1_10_), 
	.B(SUMB_7__5_), 
	.A(CARRYB_7__4_));
   CLKXOR2X2M U29 (.Y(A1_9_), 
	.B(SUMB_7__4_), 
	.A(CARRYB_7__3_));
   CLKXOR2X2M U30 (.Y(A1_11_), 
	.B(SUMB_7__6_), 
	.A(CARRYB_7__5_));
   XOR2X1M U31 (.Y(PRODUCT[1]), 
	.B(ab_0__1_), 
	.A(ab_1__0_));
   CLKINVX2M U34 (.Y(n30), 
	.A(A[2]));
   CLKINVX2M U35 (.Y(n29), 
	.A(A[3]));
   CLKINVX2M U36 (.Y(n28), 
	.A(A[4]));
   CLKINVX2M U37 (.Y(n27), 
	.A(A[5]));
   AND2X2M U39 (.Y(n11), 
	.B(SUMB_7__1_), 
	.A(CARRYB_7__0_));
   CLKXOR2X2M U40 (.Y(A1_6_), 
	.B(SUMB_7__1_), 
	.A(CARRYB_7__0_));
   AND2X2M U41 (.Y(n12), 
	.B(SUMB_7__2_), 
	.A(CARRYB_7__1_));
   AND2X2M U42 (.Y(n13), 
	.B(SUMB_7__4_), 
	.A(CARRYB_7__3_));
   AND2X2M U43 (.Y(n14), 
	.B(SUMB_7__6_), 
	.A(CARRYB_7__5_));
   AND2X2M U44 (.Y(n15), 
	.B(SUMB_7__3_), 
	.A(CARRYB_7__2_));
   AND2X2M U45 (.Y(n16), 
	.B(SUMB_7__5_), 
	.A(CARRYB_7__4_));
   CLKINVX2M U46 (.Y(n18), 
	.A(B[6]));
   CLKINVX2M U47 (.Y(n32), 
	.A(A[0]));
   XOR2X1M U48 (.Y(SUMB_1__6_), 
	.B(ab_0__7_), 
	.A(ab_1__6_));
   XOR2X1M U49 (.Y(SUMB_1__5_), 
	.B(ab_0__6_), 
	.A(ab_1__5_));
   XOR2X1M U50 (.Y(SUMB_1__4_), 
	.B(ab_0__5_), 
	.A(ab_1__4_));
   XOR2X1M U51 (.Y(SUMB_1__3_), 
	.B(ab_0__4_), 
	.A(ab_1__3_));
   XOR2X1M U52 (.Y(SUMB_1__2_), 
	.B(ab_0__3_), 
	.A(ab_1__2_));
   XOR2X1M U53 (.Y(SUMB_1__1_), 
	.B(ab_0__2_), 
	.A(ab_1__1_));
   CLKINVX2M U55 (.Y(n24), 
	.A(B[0]));
   CLKINVX2M U58 (.Y(n23), 
	.A(B[1]));
   CLKINVX2M U60 (.Y(n21), 
	.A(B[3]));
   NOR2X1M U62 (.Y(ab_7__6_), 
	.B(n18), 
	.A(n171));
   NOR2X1M U63 (.Y(ab_7__5_), 
	.B(n169), 
	.A(n171));
   NOR2X1M U64 (.Y(ab_7__4_), 
	.B(n170), 
	.A(n171));
   NOR2X1M U65 (.Y(ab_7__3_), 
	.B(n21), 
	.A(n171));
   NOR2X1M U66 (.Y(ab_7__2_), 
	.B(n22), 
	.A(n171));
   NOR2X1M U67 (.Y(ab_7__1_), 
	.B(n23), 
	.A(n171));
   NOR2X1M U68 (.Y(ab_7__0_), 
	.B(n24), 
	.A(n171));
   NOR2X1M U69 (.Y(ab_6__7_), 
	.B(n172), 
	.A(n168));
   NOR2X1M U70 (.Y(ab_6__6_), 
	.B(n172), 
	.A(n18));
   NOR2X1M U71 (.Y(ab_6__5_), 
	.B(n172), 
	.A(n169));
   NOR2X1M U72 (.Y(ab_6__4_), 
	.B(n172), 
	.A(n170));
   NOR2X1M U73 (.Y(ab_6__3_), 
	.B(n172), 
	.A(n21));
   NOR2X1M U74 (.Y(ab_6__2_), 
	.B(n172), 
	.A(n22));
   NOR2X1M U75 (.Y(ab_6__1_), 
	.B(n172), 
	.A(n23));
   NOR2X1M U76 (.Y(ab_6__0_), 
	.B(n172), 
	.A(n24));
   NOR2X1M U77 (.Y(ab_5__7_), 
	.B(n27), 
	.A(n168));
   NOR2X1M U78 (.Y(ab_5__6_), 
	.B(n27), 
	.A(n18));
   NOR2X1M U79 (.Y(ab_5__5_), 
	.B(n27), 
	.A(n169));
   NOR2X1M U80 (.Y(ab_5__4_), 
	.B(n27), 
	.A(n170));
   NOR2X1M U81 (.Y(ab_5__3_), 
	.B(n27), 
	.A(n21));
   NOR2X1M U82 (.Y(ab_5__2_), 
	.B(n27), 
	.A(n22));
   NOR2X1M U83 (.Y(ab_5__1_), 
	.B(n27), 
	.A(n23));
   NOR2X1M U84 (.Y(ab_5__0_), 
	.B(n27), 
	.A(n24));
   NOR2X1M U85 (.Y(ab_4__7_), 
	.B(n28), 
	.A(n168));
   NOR2X1M U86 (.Y(ab_4__6_), 
	.B(n28), 
	.A(n18));
   NOR2X1M U87 (.Y(ab_4__5_), 
	.B(n28), 
	.A(n169));
   NOR2X1M U88 (.Y(ab_4__4_), 
	.B(n28), 
	.A(n170));
   NOR2X1M U89 (.Y(ab_4__3_), 
	.B(n28), 
	.A(n21));
   NOR2X1M U90 (.Y(ab_4__2_), 
	.B(n28), 
	.A(n22));
   NOR2X1M U91 (.Y(ab_4__1_), 
	.B(n28), 
	.A(n23));
   NOR2X1M U92 (.Y(ab_4__0_), 
	.B(n28), 
	.A(n24));
   NOR2X1M U93 (.Y(ab_3__7_), 
	.B(n29), 
	.A(n168));
   NOR2X1M U94 (.Y(ab_3__6_), 
	.B(n29), 
	.A(n18));
   NOR2X1M U95 (.Y(ab_3__5_), 
	.B(n29), 
	.A(n169));
   NOR2X1M U96 (.Y(ab_3__4_), 
	.B(n29), 
	.A(n170));
   NOR2X1M U97 (.Y(ab_3__3_), 
	.B(n29), 
	.A(n21));
   NOR2X1M U98 (.Y(ab_3__2_), 
	.B(n29), 
	.A(n22));
   NOR2X1M U99 (.Y(ab_3__1_), 
	.B(n29), 
	.A(n23));
   NOR2X1M U100 (.Y(ab_3__0_), 
	.B(n29), 
	.A(n24));
   NOR2X1M U101 (.Y(ab_2__7_), 
	.B(n30), 
	.A(n168));
   NOR2X1M U102 (.Y(ab_2__6_), 
	.B(n30), 
	.A(n18));
   NOR2X1M U103 (.Y(ab_2__5_), 
	.B(n30), 
	.A(n169));
   NOR2X1M U104 (.Y(ab_2__4_), 
	.B(n30), 
	.A(n170));
   NOR2X1M U105 (.Y(ab_2__3_), 
	.B(n30), 
	.A(n21));
   NOR2X1M U106 (.Y(ab_2__2_), 
	.B(n30), 
	.A(n22));
   NOR2X1M U107 (.Y(ab_2__1_), 
	.B(n30), 
	.A(n23));
   NOR2X1M U108 (.Y(ab_2__0_), 
	.B(n30), 
	.A(n24));
   NOR2X1M U109 (.Y(ab_1__7_), 
	.B(n177), 
	.A(n168));
   NOR2X1M U110 (.Y(PRODUCT[0]), 
	.B(n32), 
	.A(n24));
   alu_edit_DW01_add_1 FS_1 (.A({ 1'b0,
		A1_12_,
		A1_11_,
		A1_10_,
		A1_9_,
		A1_8_,
		A1_7_,
		A1_6_,
		SUMB_7__0_,
		A1_4_,
		A1_3_,
		A1_2_,
		A1_1_,
		A1_0_ }), 
	.B({ n3,
		n14,
		n16,
		n13,
		n15,
		n12,
		n11,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0 }), 
	.CI(1'b0), 
	.SUM({ PRODUCT[15],
		PRODUCT[14],
		PRODUCT[13],
		PRODUCT[12],
		PRODUCT[11],
		PRODUCT[10],
		PRODUCT[9],
		PRODUCT[8],
		PRODUCT[7],
		PRODUCT[6],
		PRODUCT[5],
		PRODUCT[4],
		PRODUCT[3],
		PRODUCT[2] }));
   CLKINVX2M U59 (.Y(n22), 
	.A(B[2]));
endmodule

module alu_edit_test_1 (
	A, 
	B, 
	EN, 
	ALU_FUN, 
	CLK, 
	RST, 
	ALU_OUT, 
	OUT_VALID, 
	test_si, 
	test_se);
   input [7:0] A;
   input [7:0] B;
   input EN;
   input [3:0] ALU_FUN;
   input CLK;
   input RST;
   output [15:0] ALU_OUT;
   output OUT_VALID;
   input test_si;
   input test_se;

   // Internal wires
   wire FE_OFN3_n52;
   wire N91;
   wire N92;
   wire N93;
   wire N94;
   wire N95;
   wire N96;
   wire N97;
   wire N98;
   wire N99;
   wire N100;
   wire N101;
   wire N102;
   wire N103;
   wire N104;
   wire N105;
   wire N106;
   wire N107;
   wire N108;
   wire N109;
   wire N110;
   wire N111;
   wire N112;
   wire N113;
   wire N114;
   wire N115;
   wire N116;
   wire N117;
   wire N118;
   wire N119;
   wire N120;
   wire N121;
   wire N122;
   wire N123;
   wire N124;
   wire N125;
   wire N126;
   wire N127;
   wire N128;
   wire N129;
   wire N130;
   wire N131;
   wire N132;
   wire N157;
   wire N158;
   wire N159;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n27;
   wire n28;
   wire n42;
   wire n43;
   wire n45;
   wire n46;
   wire n126;
   wire n128;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n188;
   wire n189;
   wire n190;
   wire n191;
   wire n192;
   wire n193;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n203;
   wire n204;
   wire SYNOPSYS_UNCONNECTED_1;
   wire SYNOPSYS_UNCONNECTED_2;
   wire SYNOPSYS_UNCONNECTED_3;
   wire SYNOPSYS_UNCONNECTED_4;
   wire SYNOPSYS_UNCONNECTED_5;
   wire SYNOPSYS_UNCONNECTED_6;
   wire SYNOPSYS_UNCONNECTED_7;
   wire SYNOPSYS_UNCONNECTED_8;
   wire [15:0] ALU_OUT_Comb;

   BUFX2M FE_OFC3_n52 (.Y(FE_OFN3_n52), 
	.A(n52));
   OAI2BB1X2M U94 (.Y(n65), 
	.B0(n118), 
	.A1N(n116), 
	.A0N(n117));
   SDFFRQX2M ALU_OUT_reg_15_ (.SI(ALU_OUT[14]), 
	.SE(n193), 
	.RN(RST), 
	.Q(ALU_OUT[15]), 
	.D(ALU_OUT_Comb[15]), 
	.CK(CLK));
   SDFFRQX2M ALU_OUT_reg_14_ (.SI(ALU_OUT[13]), 
	.SE(n203), 
	.RN(RST), 
	.Q(ALU_OUT[14]), 
	.D(ALU_OUT_Comb[14]), 
	.CK(CLK));
   SDFFRQX2M ALU_OUT_reg_13_ (.SI(ALU_OUT[12]), 
	.SE(n202), 
	.RN(RST), 
	.Q(ALU_OUT[13]), 
	.D(ALU_OUT_Comb[13]), 
	.CK(CLK));
   SDFFRQX2M ALU_OUT_reg_12_ (.SI(ALU_OUT[11]), 
	.SE(n204), 
	.RN(RST), 
	.Q(ALU_OUT[12]), 
	.D(ALU_OUT_Comb[12]), 
	.CK(CLK));
   SDFFRQX2M ALU_OUT_reg_11_ (.SI(ALU_OUT[10]), 
	.SE(n199), 
	.RN(RST), 
	.Q(ALU_OUT[11]), 
	.D(ALU_OUT_Comb[11]), 
	.CK(CLK));
   SDFFRQX2M ALU_OUT_reg_10_ (.SI(ALU_OUT[9]), 
	.SE(n195), 
	.RN(RST), 
	.Q(ALU_OUT[10]), 
	.D(ALU_OUT_Comb[10]), 
	.CK(CLK));
   SDFFRQX2M ALU_OUT_reg_9_ (.SI(ALU_OUT[8]), 
	.SE(n202), 
	.RN(RST), 
	.Q(ALU_OUT[9]), 
	.D(ALU_OUT_Comb[9]), 
	.CK(CLK));
   SDFFRQX2M ALU_OUT_reg_8_ (.SI(ALU_OUT[7]), 
	.SE(n200), 
	.RN(RST), 
	.Q(ALU_OUT[8]), 
	.D(ALU_OUT_Comb[8]), 
	.CK(CLK));
   SDFFRQX2M ALU_OUT_reg_7_ (.SI(ALU_OUT[6]), 
	.SE(n194), 
	.RN(RST), 
	.Q(ALU_OUT[7]), 
	.D(ALU_OUT_Comb[7]), 
	.CK(CLK));
   SDFFRQX2M ALU_OUT_reg_6_ (.SI(ALU_OUT[5]), 
	.SE(n201), 
	.RN(RST), 
	.Q(ALU_OUT[6]), 
	.D(ALU_OUT_Comb[6]), 
	.CK(CLK));
   SDFFRQX2M ALU_OUT_reg_5_ (.SI(ALU_OUT[4]), 
	.SE(n194), 
	.RN(RST), 
	.Q(ALU_OUT[5]), 
	.D(ALU_OUT_Comb[5]), 
	.CK(CLK));
   SDFFRQX2M ALU_OUT_reg_4_ (.SI(ALU_OUT[3]), 
	.SE(n199), 
	.RN(RST), 
	.Q(ALU_OUT[4]), 
	.D(ALU_OUT_Comb[4]), 
	.CK(CLK));
   SDFFRQX2M ALU_OUT_reg_3_ (.SI(ALU_OUT[2]), 
	.SE(n201), 
	.RN(RST), 
	.Q(ALU_OUT[3]), 
	.D(ALU_OUT_Comb[3]), 
	.CK(CLK));
   SDFFRQX2M ALU_OUT_reg_2_ (.SI(ALU_OUT[1]), 
	.SE(n200), 
	.RN(RST), 
	.Q(ALU_OUT[2]), 
	.D(ALU_OUT_Comb[2]), 
	.CK(CLK));
   SDFFRQX2M ALU_OUT_reg_1_ (.SI(ALU_OUT[0]), 
	.SE(n204), 
	.RN(RST), 
	.Q(ALU_OUT[1]), 
	.D(ALU_OUT_Comb[1]), 
	.CK(CLK));
   SDFFRQX2M ALU_OUT_reg_0_ (.SI(test_si), 
	.SE(n193), 
	.RN(RST), 
	.Q(ALU_OUT[0]), 
	.D(ALU_OUT_Comb[0]), 
	.CK(CLK));
   SDFFRQX2M OUT_VALID_reg (.SI(ALU_OUT[15]), 
	.SE(n195), 
	.RN(RST), 
	.Q(OUT_VALID), 
	.D(EN), 
	.CK(CLK));
   AOI2B1X1M U7 (.Y(n160), 
	.B0(n157), 
	.A1N(n159), 
	.A0(n158));
   INVX2M U23 (.Y(N158), 
	.A(n160));
   OR2X2M U24 (.Y(n3), 
	.B(ALU_FUN[2]), 
	.A(n182));
   OR2X2M U25 (.Y(n4), 
	.B(n179), 
	.A(n124));
   NAND2X2M U26 (.Y(n5), 
	.B(n122), 
	.A(n116));
   XNOR2X2M U27 (.Y(n154), 
	.B(B[6]), 
	.A(n43));
   OAI31X1M U28 (.Y(n140), 
	.B0(n148), 
	.A2(n137), 
	.A1(n138), 
	.A0(n147));
   AOI211X2M U29 (.Y(n137), 
	.C0(n136), 
	.B0(n144), 
	.A1(n162), 
	.A0(n28));
   AOI211X2M U30 (.Y(n146), 
	.C0(n143), 
	.B0(n144), 
	.A1(n27), 
	.A0(n145));
   NAND2BX2M U31 (.Y(n144), 
	.B(n149), 
	.AN(n138));
   OAI21X2M U32 (.Y(N159), 
	.B0(n158), 
	.A1(n142), 
	.A0(n157));
   NOR2X2M U33 (.Y(n66), 
	.B(n3), 
	.A(n6));
   CLKINVX1M U34 (.Y(n6), 
	.A(n122));
   AOI222X1M U35 (.Y(n75), 
	.C1(n66), 
	.C0(N130), 
	.B1(n126), 
	.B0(A[5]), 
	.A1(FE_OFN3_n52), 
	.A0(N114));
   AOI222X1M U36 (.Y(n81), 
	.C1(n66), 
	.C0(N129), 
	.B1(n126), 
	.B0(A[4]), 
	.A1(FE_OFN3_n52), 
	.A0(N113));
   AOI222X1M U37 (.Y(n87), 
	.C1(n66), 
	.C0(N128), 
	.B1(n126), 
	.B0(A[3]), 
	.A1(FE_OFN3_n52), 
	.A0(N112));
   AOI222X1M U38 (.Y(n93), 
	.C1(n66), 
	.C0(N127), 
	.B1(n126), 
	.B0(A[2]), 
	.A1(FE_OFN3_n52), 
	.A0(N111));
   AOI222X1M U39 (.Y(n99), 
	.C1(n126), 
	.C0(n28), 
	.B1(n177), 
	.B0(n128), 
	.A1(n66), 
	.A0(N126));
   NOR2X2M U40 (.Y(n147), 
	.B(A[3]), 
	.A(n165));
   NOR2X2M U41 (.Y(n138), 
	.B(A[2]), 
	.A(n163));
   NOR2X2M U42 (.Y(n135), 
	.B(A[0]), 
	.A(n161));
   NOR2X2M U43 (.Y(n157), 
	.B(B[7]), 
	.A(n45));
   CLKINVX2M U44 (.Y(n126), 
	.A(n5));
   NAND3X2M U46 (.Y(n53), 
	.C(ALU_FUN[3]), 
	.B(n183), 
	.A(n181));
   AOI31X1M U47 (.Y(ALU_OUT_Comb[1]), 
	.B0(n184), 
	.A2(n100), 
	.A1(n99), 
	.A0(n98));
   AOI31X1M U48 (.Y(ALU_OUT_Comb[2]), 
	.B0(n184), 
	.A2(n94), 
	.A1(n93), 
	.A0(n92));
   AOI31X1M U49 (.Y(ALU_OUT_Comb[3]), 
	.B0(n184), 
	.A2(n88), 
	.A1(n87), 
	.A0(n86));
   AOI31X1M U50 (.Y(ALU_OUT_Comb[4]), 
	.B0(n184), 
	.A2(n82), 
	.A1(n81), 
	.A0(n80));
   AOI31X1M U51 (.Y(ALU_OUT_Comb[5]), 
	.B0(n184), 
	.A2(n76), 
	.A1(n75), 
	.A0(n74));
   NOR2X2M U54 (.Y(n123), 
	.B(n188), 
	.A(ALU_FUN[2]));
   NOR2X2M U55 (.Y(n117), 
	.B(ALU_FUN[0]), 
	.A(ALU_FUN[3]));
   AND2X2M U56 (.Y(n116), 
	.B(n182), 
	.A(ALU_FUN[2]));
   CLKINVX2M U57 (.Y(n177), 
	.A(n28));
   INVX2M U58 (.Y(n171), 
	.A(n46));
   INVX2M U59 (.Y(n176), 
	.A(A[2]));
   INVX2M U60 (.Y(n175), 
	.A(A[3]));
   INVX2M U61 (.Y(n174), 
	.A(A[4]));
   INVX2M U62 (.Y(n173), 
	.A(A[5]));
   INVX2M U63 (.Y(n172), 
	.A(n43));
   CLKINVX2M U67 (.Y(n128), 
	.A(n4));
   INVX2M U70 (.Y(n166), 
	.A(B[6]));
   NOR2BX2M U71 (.Y(n48), 
	.B(n184), 
	.AN(FE_OFN3_n52));
   OAI222X1M U72 (.Y(n71), 
	.C1(n173), 
	.C0(n53), 
	.B1(n73), 
	.B0(B[6]), 
	.A1(n166), 
	.A0(n72));
   AOI221XLM U73 (.Y(n73), 
	.C0(n128), 
	.B1(n172), 
	.B0(n64), 
	.A1(n63), 
	.A0(n43));
   AOI221XLM U74 (.Y(n72), 
	.C0(n126), 
	.B1(n65), 
	.B0(n43), 
	.A1(n172), 
	.A0(n63));
   NOR2X2M U75 (.Y(n122), 
	.B(ALU_FUN[3]), 
	.A(n183));
   AOI211X2M U76 (.Y(n100), 
	.C0(n102), 
	.B0(n101), 
	.A1(n180), 
	.A0(A[2]));
   AOI222X1M U77 (.Y(n98), 
	.C1(n67), 
	.C0(N101), 
	.B1(FE_OFN3_n52), 
	.B0(N110), 
	.A1(n54), 
	.A0(N92));
   AOI31X2M U78 (.Y(ALU_OUT_Comb[0]), 
	.B0(n184), 
	.A2(n112), 
	.A1(n111), 
	.A0(n110));
   AOI22X1M U79 (.Y(n110), 
	.B1(n54), 
	.B0(N91), 
	.A1(n67), 
	.A0(N100));
   AOI211X2M U80 (.Y(n112), 
	.C0(n114), 
	.B0(n113), 
	.A1(n178), 
	.A0(n128));
   AOI222X1M U81 (.Y(n111), 
	.C1(n66), 
	.C0(N125), 
	.B1(n126), 
	.B0(A[0]), 
	.A1(FE_OFN3_n52), 
	.A0(N109));
   AOI22X1M U82 (.Y(n92), 
	.B1(n54), 
	.B0(N93), 
	.A1(n67), 
	.A0(N102));
   AOI221XLM U83 (.Y(n94), 
	.C0(n95), 
	.B1(n176), 
	.B0(n128), 
	.A1(n180), 
	.A0(A[3]));
   AOI22X1M U84 (.Y(n86), 
	.B1(n54), 
	.B0(N94), 
	.A1(n67), 
	.A0(N103));
   AOI221XLM U85 (.Y(n88), 
	.C0(n89), 
	.B1(n175), 
	.B0(n128), 
	.A1(n180), 
	.A0(A[4]));
   AOI22X1M U86 (.Y(n80), 
	.B1(n54), 
	.B0(N95), 
	.A1(n67), 
	.A0(N104));
   AOI221XLM U87 (.Y(n82), 
	.C0(n83), 
	.B1(n174), 
	.B0(n128), 
	.A1(A[5]), 
	.A0(n180));
   AOI22X1M U88 (.Y(n74), 
	.B1(n54), 
	.B0(N96), 
	.A1(n67), 
	.A0(N105));
   AOI221XLM U89 (.Y(n76), 
	.C0(n77), 
	.B1(n173), 
	.B0(n128), 
	.A1(n43), 
	.A0(n180));
   AOI31X2M U90 (.Y(ALU_OUT_Comb[6]), 
	.B0(n184), 
	.A2(n70), 
	.A1(n69), 
	.A0(n68));
   AOI22X1M U91 (.Y(n68), 
	.B1(n54), 
	.B0(N97), 
	.A1(n67), 
	.A0(N106));
   AOI221XLM U92 (.Y(n70), 
	.C0(n71), 
	.B1(n172), 
	.B0(n128), 
	.A1(n46), 
	.A0(n180));
   AOI222X1M U93 (.Y(n69), 
	.C1(n66), 
	.C0(N131), 
	.B1(n43), 
	.B0(n126), 
	.A1(FE_OFN3_n52), 
	.A0(N115));
   AOI31X2M U95 (.Y(ALU_OUT_Comb[7]), 
	.B0(n184), 
	.A2(n57), 
	.A1(n56), 
	.A0(n55));
   AOI22X1M U96 (.Y(n55), 
	.B1(n54), 
	.B0(N98), 
	.A1(n67), 
	.A0(N107));
   AOI221XLM U97 (.Y(n57), 
	.C0(n60), 
	.B1(n46), 
	.B0(n126), 
	.A1(n171), 
	.A0(n128));
   AOI22X1M U98 (.Y(n56), 
	.B1(FE_OFN3_n52), 
	.B0(N116), 
	.A1(n66), 
	.A0(N132));
   AND2X2M U99 (.Y(n67), 
	.B(n122), 
	.A(n123));
   CLKINVX2M U100 (.Y(n180), 
	.A(n108));
   INVX2M U101 (.Y(n167), 
	.A(n109));
   AOI211X2M U102 (.Y(n109), 
	.C0(n64), 
	.B0(n128), 
	.A1(n67), 
	.A0(N108));
   INVX2M U103 (.Y(n178), 
	.A(A[0]));
   INVX2M U104 (.Y(n179), 
	.A(n117));
   AOI21X2M U105 (.Y(ALU_OUT_Comb[8]), 
	.B0(n184), 
	.A1(n51), 
	.A0(n50));
   AOI21X2M U106 (.Y(n50), 
	.B0(n167), 
	.A1(n54), 
	.A0(N99));
   AOI2BB2XLM U107 (.Y(n51), 
	.B1(FE_OFN3_n52), 
	.B0(N117), 
	.A1N(n53), 
	.A0N(n171));
   OAI2BB1X2M U108 (.Y(ALU_OUT_Comb[9]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N118));
   OAI2BB1X2M U109 (.Y(ALU_OUT_Comb[10]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N119));
   OAI2BB1X2M U110 (.Y(ALU_OUT_Comb[11]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N120));
   OAI2BB1X2M U111 (.Y(ALU_OUT_Comb[12]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N121));
   OAI2BB1X2M U112 (.Y(ALU_OUT_Comb[13]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N122));
   OAI2BB1X2M U113 (.Y(ALU_OUT_Comb[14]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N123));
   OAI2BB1X2M U114 (.Y(ALU_OUT_Comb[15]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N124));
   AND4X1M U115 (.Y(n107), 
	.D(n183), 
	.C(ALU_FUN[3]), 
	.B(n116), 
	.A(N159));
   NOR2BX2M U117 (.Y(n54), 
	.B(n179), 
	.AN(n123));
   OAI2BB1X2M U119 (.Y(n64), 
	.B0(n118), 
	.A1N(n122), 
	.A0N(n181));
   INVX2M U120 (.Y(n181), 
	.A(n124));
   AND3X2M U121 (.Y(n63), 
	.C(ALU_FUN[3]), 
	.B(n183), 
	.A(n123));
   CLKINVX2M U122 (.Y(n43), 
	.A(n42));
   CLKINVX2M U127 (.Y(n28), 
	.A(n27));
   CLKINVX2M U128 (.Y(n46), 
	.A(n45));
   INVXLM U137 (.Y(n162), 
	.A(n135));
   INVXLM U138 (.Y(n164), 
	.A(n146));
   OAI222X1M U139 (.Y(n60), 
	.C1(n172), 
	.C0(n53), 
	.B1(n62), 
	.B0(B[7]), 
	.A1(n168), 
	.A0(n61));
   INVX2M U140 (.Y(n168), 
	.A(B[7]));
   AOI221XLM U141 (.Y(n62), 
	.C0(n128), 
	.B1(n171), 
	.B0(n64), 
	.A1(n46), 
	.A0(n63));
   AOI221XLM U142 (.Y(n61), 
	.C0(n126), 
	.B1(n65), 
	.B0(n46), 
	.A1(n171), 
	.A0(n63));
   OAI222X1M U143 (.Y(n83), 
	.C1(n175), 
	.C0(n53), 
	.B1(n85), 
	.B0(B[4]), 
	.A1(n170), 
	.A0(n84));
   INVX2M U144 (.Y(n170), 
	.A(B[4]));
   AOI221XLM U145 (.Y(n85), 
	.C0(n128), 
	.B1(n174), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[4]));
   AOI221XLM U146 (.Y(n84), 
	.C0(n126), 
	.B1(n65), 
	.B0(A[4]), 
	.A1(n174), 
	.A0(n63));
   OAI222X1M U147 (.Y(n77), 
	.C1(n174), 
	.C0(n53), 
	.B1(n79), 
	.B0(B[5]), 
	.A1(n169), 
	.A0(n78));
   INVX2M U148 (.Y(n169), 
	.A(B[5]));
   AOI221XLM U149 (.Y(n79), 
	.C0(n128), 
	.B1(n173), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[5]));
   AOI221XLM U150 (.Y(n78), 
	.C0(n126), 
	.B1(n65), 
	.B0(A[5]), 
	.A1(n173), 
	.A0(n63));
   OAI222X1M U151 (.Y(n95), 
	.C1(n177), 
	.C0(n53), 
	.B1(n97), 
	.B0(B[2]), 
	.A1(n163), 
	.A0(n96));
   AOI221XLM U152 (.Y(n97), 
	.C0(n128), 
	.B1(n176), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[2]));
   AOI221XLM U153 (.Y(n96), 
	.C0(n126), 
	.B1(n65), 
	.B0(A[2]), 
	.A1(n176), 
	.A0(n63));
   OAI222X1M U154 (.Y(n89), 
	.C1(n176), 
	.C0(n53), 
	.B1(n91), 
	.B0(B[3]), 
	.A1(n165), 
	.A0(n90));
   AOI221XLM U155 (.Y(n91), 
	.C0(n128), 
	.B1(n175), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[3]));
   AOI221XLM U156 (.Y(n90), 
	.C0(n126), 
	.B1(n65), 
	.B0(A[3]), 
	.A1(n175), 
	.A0(n63));
   CLKNAND2X2M U157 (.Y(n49), 
	.B(n167), 
	.A(n189));
   OAI2B2X1M U158 (.Y(n102), 
	.B1(n178), 
	.B0(n53), 
	.A1N(B[1]), 
	.A0(n103));
   AOI221XLM U159 (.Y(n103), 
	.C0(n126), 
	.B1(n65), 
	.B0(n28), 
	.A1(n177), 
	.A0(n63));
   CLKINVX2M U160 (.Y(n183), 
	.A(ALU_FUN[0]));
   CLKINVX2M U161 (.Y(n182), 
	.A(ALU_FUN[1]));
   OAI2B2X1M U162 (.Y(n114), 
	.B1(n177), 
	.B0(n108), 
	.A1N(B[0]), 
	.A0(n115));
   AOI221XLM U163 (.Y(n115), 
	.C0(n126), 
	.B1(n65), 
	.B0(A[0]), 
	.A1(n178), 
	.A0(n63));
   NAND2X2M U164 (.Y(n124), 
	.B(ALU_FUN[1]), 
	.A(ALU_FUN[2]));
   OAI21X2M U165 (.Y(n113), 
	.B0(n120), 
	.A1(n119), 
	.A0(B[0]));
   AOI31X2M U166 (.Y(n120), 
	.B0(n107), 
	.A2(n121), 
	.A1(ALU_FUN[3]), 
	.A0(N157));
   AOI221XLM U167 (.Y(n119), 
	.C0(n128), 
	.B1(n178), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[0]));
   NOR3X2M U168 (.Y(n121), 
	.C(ALU_FUN[0]), 
	.B(ALU_FUN[2]), 
	.A(n182));
   OAI21X2M U169 (.Y(n101), 
	.B0(n105), 
	.A1(n104), 
	.A0(B[1]));
   AOI31X2M U170 (.Y(n105), 
	.B0(n107), 
	.A2(n106), 
	.A1(ALU_FUN[3]), 
	.A0(N158));
   AOI221XLM U171 (.Y(n104), 
	.C0(n128), 
	.B1(n177), 
	.B0(n64), 
	.A1(n63), 
	.A0(n28));
   NOR3X2M U172 (.Y(n106), 
	.C(n182), 
	.B(ALU_FUN[2]), 
	.A(n183));
   INVX2M U173 (.Y(n161), 
	.A(B[0]));
   NAND3X2M U174 (.Y(n108), 
	.C(n116), 
	.B(ALU_FUN[0]), 
	.A(ALU_FUN[3]));
   INVX2M U175 (.Y(n163), 
	.A(B[2]));
   INVX2M U176 (.Y(n165), 
	.A(B[3]));
   CLKINVX1M U177 (.Y(n184), 
	.A(EN));
   NAND3X2M U179 (.Y(n118), 
	.C(ALU_FUN[3]), 
	.B(ALU_FUN[0]), 
	.A(n123));
   NOR3X2M U181 (.Y(n52), 
	.C(n182), 
	.B(ALU_FUN[2]), 
	.A(n179));
   INVX2M U186 (.Y(n27), 
	.A(A[1]));
   INVX2M U187 (.Y(n42), 
	.A(A[6]));
   INVX2M U188 (.Y(n45), 
	.A(A[7]));
   NAND2BX1M U189 (.Y(n150), 
	.B(A[4]), 
	.AN(B[4]));
   NAND2BX1M U190 (.Y(n139), 
	.B(B[4]), 
	.AN(A[4]));
   CLKNAND2X2M U191 (.Y(n152), 
	.B(n139), 
	.A(n150));
   CLKNAND2X2M U192 (.Y(n149), 
	.B(n163), 
	.A(A[2]));
   AOI21X1M U193 (.Y(n136), 
	.B0(B[1]), 
	.A1(n27), 
	.A0(n135));
   CLKNAND2X2M U194 (.Y(n148), 
	.B(n165), 
	.A(A[3]));
   NAND2BX1M U195 (.Y(n155), 
	.B(B[5]), 
	.AN(A[5]));
   OAI211X1M U196 (.Y(n141), 
	.C0(n155), 
	.B0(n139), 
	.A1(n140), 
	.A0(n152));
   NAND2BX1M U197 (.Y(n151), 
	.B(A[5]), 
	.AN(B[5]));
   AOI32X1M U198 (.Y(n142), 
	.B1(n42), 
	.B0(B[6]), 
	.A2(n154), 
	.A1(n151), 
	.A0(n141));
   CLKNAND2X2M U199 (.Y(n158), 
	.B(n45), 
	.A(B[7]));
   CLKNAND2X2M U200 (.Y(n145), 
	.B(n161), 
	.A(A[0]));
   OA21X1M U201 (.Y(n143), 
	.B0(B[1]), 
	.A1(n177), 
	.A0(n145));
   AOI31X1M U202 (.Y(n153), 
	.B0(n147), 
	.A2(n148), 
	.A1(n149), 
	.A0(n164));
   OAI2B11X1M U203 (.Y(n156), 
	.C0(n150), 
	.B0(n151), 
	.A1N(n153), 
	.A0(n152));
   AOI32X1M U204 (.Y(n159), 
	.B1(n166), 
	.B0(n43), 
	.A2(n154), 
	.A1(n155), 
	.A0(n156));
   NOR2X1M U205 (.Y(N157), 
	.B(N158), 
	.A(N159));
   INVXLM U207 (.Y(n188), 
	.A(n182));
   INVXLM U208 (.Y(n189), 
	.A(n184));
   DLY1X1M U209 (.Y(n190), 
	.A(n197));
   DLY1X1M U210 (.Y(n191), 
	.A(n198));
   DLY1X1M U211 (.Y(n192), 
	.A(test_se));
   DLY1X1M U212 (.Y(n193), 
	.A(n197));
   DLY1X1M U213 (.Y(n194), 
	.A(n203));
   DLY1X1M U214 (.Y(n195), 
	.A(n198));
   DLY1X1M U215 (.Y(n196), 
	.A(n192));
   DLY1X1M U216 (.Y(n197), 
	.A(n192));
   DLY1X1M U217 (.Y(n198), 
	.A(test_se));
   DLY1X1M U218 (.Y(n199), 
	.A(n190));
   DLY1X1M U219 (.Y(n200), 
	.A(n196));
   DLY1X1M U220 (.Y(n201), 
	.A(n191));
   DLY1X1M U221 (.Y(n202), 
	.A(n190));
   DLY1X1M U222 (.Y(n203), 
	.A(n196));
   DLY1X1M U223 (.Y(n204), 
	.A(n191));
   alu_edit_DW_div_uns_0 div_52 (.a({ n46,
		n43,
		A[5],
		A[4],
		A[3],
		A[2],
		n28,
		A[0] }), 
	.b({ B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.quotient({ N132,
		N131,
		N130,
		N129,
		N128,
		N127,
		N126,
		N125 }), 
	.remainder({ SYNOPSYS_UNCONNECTED_1,
		SYNOPSYS_UNCONNECTED_2,
		SYNOPSYS_UNCONNECTED_3,
		SYNOPSYS_UNCONNECTED_4,
		SYNOPSYS_UNCONNECTED_5,
		SYNOPSYS_UNCONNECTED_6,
		SYNOPSYS_UNCONNECTED_7,
		SYNOPSYS_UNCONNECTED_8 }), 
	.n165(n165), 
	.n163(n163), 
	.n170(n170), 
	.n161(n161), 
	.n169(n169), 
	.n168(n168), 
	.n166(n166));
   alu_edit_DW01_sub_0 sub_46 (.A({ 1'b0,
		n46,
		n43,
		A[5],
		A[4],
		A[3],
		A[2],
		n28,
		A[0] }), 
	.B({ 1'b0,
		B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.CI(1'b0), 
	.DIFF({ N108,
		N107,
		N106,
		N105,
		N104,
		N103,
		N102,
		N101,
		N100 }), 
	.n165(n165), 
	.n163(n163), 
	.n170(n170), 
	.n161(n161), 
	.n169(n169), 
	.n168(n168), 
	.n166(n166));
   alu_edit_DW01_add_0 add_43 (.A({ 1'b0,
		n46,
		n43,
		A[5],
		A[4],
		A[3],
		A[2],
		n28,
		A[0] }), 
	.B({ 1'b0,
		B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.CI(1'b0), 
	.SUM({ N99,
		N98,
		N97,
		N96,
		N95,
		N94,
		N93,
		N92,
		N91 }));
   alu_edit_DW02_mult_0 mult_49 (.A({ n46,
		n43,
		A[5],
		A[4],
		A[3],
		A[2],
		n28,
		A[0] }), 
	.B({ B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.TC(1'b0), 
	.PRODUCT({ N124,
		N123,
		N122,
		N121,
		N120,
		N119,
		N118,
		N117,
		N116,
		N115,
		N114,
		N113,
		N112,
		N111,
		N110,
		N109 }), 
	.n165(n165), 
	.n163(n163), 
	.n170(n170), 
	.n161(n161), 
	.n169(n169), 
	.n168(n168), 
	.n177(n177), 
	.n176(n176), 
	.n175(n175), 
	.n174(n174), 
	.n173(n173), 
	.n172(n172), 
	.n171(n171), 
	.n178(n178), 
	.n166(n166));
endmodule

module CLK_GATE (
	CLK_EN, 
	CLK, 
	GATED_CLK);
   input CLK_EN;
   input CLK;
   output GATED_CLK;

   TLATNCAX12M U0_TLATNCAX12M (.ECK(GATED_CLK), 
	.E(CLK_EN), 
	.CK(CLK));
endmodule

