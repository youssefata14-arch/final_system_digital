/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Sat Oct  3 15:53:16 2026
/////////////////////////////////////////////////////////////


module RST_SYNC_NUM_STAGES2_0 ( CLK, RST, SYNC_RST );
  input CLK, RST;
  output SYNC_RST;
  wire   \sync_reg[0] ;

  DFFRQX2M \sync_reg_reg[0]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(\sync_reg[0] )
         );
  DFFRHQX8M \sync_reg_reg[1]  ( .D(\sync_reg[0] ), .CK(CLK), .RN(RST), .Q(
        SYNC_RST) );
endmodule


module RST_SYNC_NUM_STAGES2_3 ( CLK, RST, SYNC_RST );
  input CLK, RST;
  output SYNC_RST;
  wire   \sync_reg[0] ;

  DFFRQX2M \sync_reg_reg[1]  ( .D(\sync_reg[0] ), .CK(CLK), .RN(RST), .Q(
        SYNC_RST) );
  DFFRQX2M \sync_reg_reg[0]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(\sync_reg[0] )
         );
endmodule


module RST_SYNC_NUM_STAGES2_2 ( CLK, RST, SYNC_RST );
  input CLK, RST;
  output SYNC_RST;
  wire   \sync_reg[0] ;

  DFFRQX1M \sync_reg_reg[1]  ( .D(\sync_reg[0] ), .CK(CLK), .RN(RST), .Q(
        SYNC_RST) );
  DFFRQX1M \sync_reg_reg[0]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(\sync_reg[0] )
         );
endmodule


module RST_SYNC_NUM_STAGES2_1 ( CLK, RST, SYNC_RST );
  input CLK, RST;
  output SYNC_RST;
  wire   \sync_reg[0] ;

  DFFRQX1M \sync_reg_reg[1]  ( .D(\sync_reg[0] ), .CK(CLK), .RN(RST), .Q(
        SYNC_RST) );
  DFFRQX1M \sync_reg_reg[0]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(\sync_reg[0] )
         );
endmodule


module DATA_SYNC_NUM_STAGES2_BUS_WIDTH8 ( CLK, RST, unsync_bus, bus_enable, 
        sync_bus, enable_pulse );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input CLK, RST, bus_enable;
  output enable_pulse;
  wire   pulse_gen_ff, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13;
  wire   [1:0] sync_reg;

  DFFRQX2M pulse_gen_ff_reg ( .D(sync_reg[1]), .CK(CLK), .RN(n11), .Q(
        pulse_gen_ff) );
  DFFRQX2M \sync_reg_reg[1]  ( .D(sync_reg[0]), .CK(CLK), .RN(n11), .Q(
        sync_reg[1]) );
  DFFRQX2M \sync_bus_reg[2]  ( .D(n4), .CK(CLK), .RN(n11), .Q(sync_bus[2]) );
  DFFRQX2M \sync_bus_reg[6]  ( .D(n8), .CK(CLK), .RN(n11), .Q(sync_bus[6]) );
  DFFRQX2M \sync_bus_reg[4]  ( .D(n6), .CK(CLK), .RN(n11), .Q(sync_bus[4]) );
  DFFRQX2M \sync_bus_reg[3]  ( .D(n5), .CK(CLK), .RN(n11), .Q(sync_bus[3]) );
  DFFRQX2M \sync_bus_reg[7]  ( .D(n9), .CK(CLK), .RN(n11), .Q(sync_bus[7]) );
  DFFRQX2M \sync_bus_reg[5]  ( .D(n7), .CK(CLK), .RN(n11), .Q(sync_bus[5]) );
  DFFRQX2M \sync_bus_reg[1]  ( .D(n3), .CK(CLK), .RN(n11), .Q(sync_bus[1]) );
  DFFRQX2M \sync_bus_reg[0]  ( .D(n2), .CK(CLK), .RN(n11), .Q(sync_bus[0]) );
  DFFRQX2M \sync_reg_reg[0]  ( .D(bus_enable), .CK(CLK), .RN(n11), .Q(
        sync_reg[0]) );
  DFFRQX2M enable_pulse_reg ( .D(n13), .CK(CLK), .RN(n11), .Q(enable_pulse) );
  INVX4M U3 ( .A(n10), .Y(n13) );
  INVX4M U4 ( .A(n12), .Y(n11) );
  INVX2M U5 ( .A(RST), .Y(n12) );
  BUFX4M U6 ( .A(n1), .Y(n10) );
  NAND2BX2M U7 ( .AN(pulse_gen_ff), .B(sync_reg[1]), .Y(n1) );
  AO22X1M U8 ( .A0(unsync_bus[0]), .A1(n13), .B0(sync_bus[0]), .B1(n10), .Y(n2) );
  AO22X1M U9 ( .A0(unsync_bus[1]), .A1(n13), .B0(sync_bus[1]), .B1(n10), .Y(n3) );
  AO22X1M U10 ( .A0(unsync_bus[5]), .A1(n13), .B0(sync_bus[5]), .B1(n10), .Y(
        n7) );
  AO22X1M U11 ( .A0(unsync_bus[4]), .A1(n13), .B0(sync_bus[4]), .B1(n10), .Y(
        n6) );
  AO22X1M U12 ( .A0(unsync_bus[6]), .A1(n13), .B0(sync_bus[6]), .B1(n10), .Y(
        n8) );
  AO22X1M U13 ( .A0(unsync_bus[7]), .A1(n13), .B0(sync_bus[7]), .B1(n10), .Y(
        n9) );
  AO22X1M U14 ( .A0(unsync_bus[2]), .A1(n13), .B0(sync_bus[2]), .B1(n10), .Y(
        n4) );
  AO22X1M U15 ( .A0(unsync_bus[3]), .A1(n13), .B0(sync_bus[3]), .B1(n10), .Y(
        n5) );
endmodule


module FIFO_WR_ADDRSIZE4 ( wclk, wrst_n, winc, wq2_rptr, wfull, waddr, wptr );
  input [4:0] wq2_rptr;
  output [3:0] waddr;
  output [4:0] wptr;
  input wclk, wrst_n, winc;
  output wfull;
  wire   \wbin[4] , N1, wfull_val, n1, n2, n3, n4, n5, n6, \add_30/carry[4] ,
         \add_30/carry[3] , \add_30/carry[2] , \add_30/carry[1] , n7, n8;
  wire   [4:0] wbinnext;
  wire   [3:0] wgraynext;

  DFFRQX2M \wbin_reg[4]  ( .D(wbinnext[4]), .CK(wclk), .RN(n7), .Q(\wbin[4] )
         );
  DFFRQX2M \wbin_reg[3]  ( .D(wbinnext[3]), .CK(wclk), .RN(n7), .Q(waddr[3])
         );
  DFFRQX2M \wbin_reg[0]  ( .D(wbinnext[0]), .CK(wclk), .RN(n7), .Q(waddr[0])
         );
  DFFRQX2M \wptr_reg[4]  ( .D(wbinnext[4]), .CK(wclk), .RN(n7), .Q(wptr[4]) );
  DFFRQX2M \wbin_reg[2]  ( .D(wbinnext[2]), .CK(wclk), .RN(n7), .Q(waddr[2])
         );
  DFFRQX2M \wbin_reg[1]  ( .D(wbinnext[1]), .CK(wclk), .RN(n7), .Q(waddr[1])
         );
  DFFRQX2M wfull_reg ( .D(wfull_val), .CK(wclk), .RN(n7), .Q(wfull) );
  DFFRQX2M \wptr_reg[0]  ( .D(wgraynext[0]), .CK(wclk), .RN(n7), .Q(wptr[0])
         );
  DFFRQX2M \wptr_reg[1]  ( .D(wgraynext[1]), .CK(wclk), .RN(n7), .Q(wptr[1])
         );
  DFFRQX2M \wptr_reg[2]  ( .D(wgraynext[2]), .CK(wclk), .RN(n7), .Q(wptr[2])
         );
  DFFRQX2M \wptr_reg[3]  ( .D(wgraynext[3]), .CK(wclk), .RN(n7), .Q(wptr[3])
         );
  INVX4M U3 ( .A(n8), .Y(n7) );
  INVX2M U4 ( .A(wrst_n), .Y(n8) );
  CLKXOR2X2M U5 ( .A(wbinnext[3]), .B(wbinnext[4]), .Y(wgraynext[3]) );
  CLKXOR2X2M U6 ( .A(wbinnext[2]), .B(wbinnext[3]), .Y(wgraynext[2]) );
  CLKXOR2X2M U7 ( .A(wbinnext[1]), .B(wbinnext[2]), .Y(wgraynext[1]) );
  CLKXOR2X2M U8 ( .A(wbinnext[1]), .B(wbinnext[0]), .Y(wgraynext[0]) );
  XNOR2X2M U9 ( .A(wgraynext[3]), .B(wq2_rptr[3]), .Y(n4) );
  XNOR2X2M U10 ( .A(wgraynext[1]), .B(wq2_rptr[1]), .Y(n6) );
  NOR4X1M U11 ( .A(n1), .B(n2), .C(n3), .D(n4), .Y(wfull_val) );
  NAND2X2M U12 ( .A(n5), .B(n6), .Y(n1) );
  CLKXOR2X2M U13 ( .A(wq2_rptr[2]), .B(wgraynext[2]), .Y(n2) );
  XNOR2X2M U14 ( .A(wbinnext[4]), .B(wq2_rptr[4]), .Y(n3) );
  NOR2BX2M U15 ( .AN(winc), .B(wfull), .Y(N1) );
  XNOR2X2M U16 ( .A(wgraynext[0]), .B(wq2_rptr[0]), .Y(n5) );
  CLKXOR2X2M U17 ( .A(\wbin[4] ), .B(\add_30/carry[4] ), .Y(wbinnext[4]) );
  AND2X1M U18 ( .A(waddr[3]), .B(\add_30/carry[3] ), .Y(\add_30/carry[4] ) );
  CLKXOR2X2M U19 ( .A(waddr[3]), .B(\add_30/carry[3] ), .Y(wbinnext[3]) );
  AND2X1M U20 ( .A(waddr[2]), .B(\add_30/carry[2] ), .Y(\add_30/carry[3] ) );
  CLKXOR2X2M U21 ( .A(waddr[2]), .B(\add_30/carry[2] ), .Y(wbinnext[2]) );
  AND2X1M U22 ( .A(waddr[1]), .B(\add_30/carry[1] ), .Y(\add_30/carry[2] ) );
  CLKXOR2X2M U23 ( .A(waddr[1]), .B(\add_30/carry[1] ), .Y(wbinnext[1]) );
  AND2X1M U24 ( .A(N1), .B(waddr[0]), .Y(\add_30/carry[1] ) );
  CLKXOR2X2M U25 ( .A(N1), .B(waddr[0]), .Y(wbinnext[0]) );
endmodule


module FIFO_RD_ADDRSIZE4 ( rclk, rrst_n, rinc, rq2_wptr, rempty, raddr, rptr
 );
  input [4:0] rq2_wptr;
  output [3:0] raddr;
  output [4:0] rptr;
  input rclk, rrst_n, rinc;
  output rempty;
  wire   \rbin[4] , N1, rempty_val, \add_31/carry[4] , \add_31/carry[3] ,
         \add_31/carry[2] , \add_31/carry[1] , n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10;
  wire   [4:0] rbinnext;
  wire   [3:0] rgraynext;

  DFFRQX1M \rbin_reg[4]  ( .D(rbinnext[4]), .CK(rclk), .RN(n1), .Q(\rbin[4] )
         );
  DFFSQX2M rempty_reg ( .D(rempty_val), .CK(rclk), .SN(n1), .Q(rempty) );
  DFFRQX2M \rbin_reg[0]  ( .D(rbinnext[0]), .CK(rclk), .RN(n1), .Q(raddr[0])
         );
  DFFRQX2M \rbin_reg[1]  ( .D(rbinnext[1]), .CK(rclk), .RN(n1), .Q(raddr[1])
         );
  DFFRQX2M \rbin_reg[3]  ( .D(rbinnext[3]), .CK(rclk), .RN(n1), .Q(raddr[3])
         );
  DFFRQX2M \rbin_reg[2]  ( .D(rbinnext[2]), .CK(rclk), .RN(n1), .Q(raddr[2])
         );
  DFFRQX1M \rptr_reg[4]  ( .D(rbinnext[4]), .CK(rclk), .RN(n1), .Q(rptr[4]) );
  DFFRQX1M \rptr_reg[0]  ( .D(rgraynext[0]), .CK(rclk), .RN(n1), .Q(rptr[0])
         );
  DFFRQX1M \rptr_reg[1]  ( .D(rgraynext[1]), .CK(rclk), .RN(n1), .Q(rptr[1])
         );
  DFFRQX1M \rptr_reg[2]  ( .D(rgraynext[2]), .CK(rclk), .RN(n1), .Q(rptr[2])
         );
  DFFRQX1M \rptr_reg[3]  ( .D(rgraynext[3]), .CK(rclk), .RN(n1), .Q(rptr[3])
         );
  INVX4M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(rrst_n), .Y(n2) );
  CLKXOR2X2M U5 ( .A(rbinnext[4]), .B(rbinnext[3]), .Y(rgraynext[3]) );
  CLKXOR2X2M U6 ( .A(rbinnext[2]), .B(rbinnext[1]), .Y(rgraynext[1]) );
  CLKXOR2X2M U7 ( .A(rbinnext[1]), .B(rbinnext[0]), .Y(rgraynext[0]) );
  CLKXOR2X2M U8 ( .A(rbinnext[3]), .B(rbinnext[2]), .Y(rgraynext[2]) );
  NOR2BX2M U9 ( .AN(rinc), .B(rempty), .Y(N1) );
  CLKXOR2X2M U10 ( .A(\rbin[4] ), .B(\add_31/carry[4] ), .Y(rbinnext[4]) );
  AND2X1M U11 ( .A(raddr[3]), .B(\add_31/carry[3] ), .Y(\add_31/carry[4] ) );
  CLKXOR2X2M U12 ( .A(raddr[3]), .B(\add_31/carry[3] ), .Y(rbinnext[3]) );
  AND2X1M U13 ( .A(raddr[2]), .B(\add_31/carry[2] ), .Y(\add_31/carry[3] ) );
  CLKXOR2X2M U14 ( .A(raddr[2]), .B(\add_31/carry[2] ), .Y(rbinnext[2]) );
  AND2X1M U15 ( .A(raddr[1]), .B(\add_31/carry[1] ), .Y(\add_31/carry[2] ) );
  CLKXOR2X2M U16 ( .A(raddr[1]), .B(\add_31/carry[1] ), .Y(rbinnext[1]) );
  AND2X1M U17 ( .A(N1), .B(raddr[0]), .Y(\add_31/carry[1] ) );
  CLKXOR2X2M U18 ( .A(N1), .B(raddr[0]), .Y(rbinnext[0]) );
  CLKXOR2X2M U19 ( .A(rq2_wptr[2]), .B(rgraynext[2]), .Y(n10) );
  NOR2BX1M U20 ( .AN(rq2_wptr[0]), .B(rgraynext[0]), .Y(n3) );
  OAI2B2X1M U21 ( .A1N(rgraynext[1]), .A0(n3), .B0(rq2_wptr[1]), .B1(n3), .Y(
        n6) );
  NOR2BX1M U22 ( .AN(rgraynext[0]), .B(rq2_wptr[0]), .Y(n4) );
  OAI2B2X1M U23 ( .A1N(rq2_wptr[1]), .A0(n4), .B0(rgraynext[1]), .B1(n4), .Y(
        n5) );
  CLKNAND2X2M U24 ( .A(n6), .B(n5), .Y(n9) );
  CLKXOR2X2M U25 ( .A(rq2_wptr[3]), .B(rgraynext[3]), .Y(n8) );
  CLKXOR2X2M U26 ( .A(rq2_wptr[4]), .B(rbinnext[4]), .Y(n7) );
  NOR4X1M U27 ( .A(n10), .B(n9), .C(n8), .D(n7), .Y(rempty_val) );
endmodule


module FIFO_MEM_CNTRL_DATA_WIDTH8_ADDRSIZE4 ( wclk, winc, wfull, waddr, raddr, 
        wdata, rdata );
  input [3:0] waddr;
  input [3:0] raddr;
  input [7:0] wdata;
  output [7:0] rdata;
  input wclk, winc, wfull;
  wire   N9, N10, N11, N12, \mem[0][7] , \mem[0][6] , \mem[0][5] , \mem[0][4] ,
         \mem[0][3] , \mem[0][2] , \mem[0][1] , \mem[0][0] , \mem[1][7] ,
         \mem[1][6] , \mem[1][5] , \mem[1][4] , \mem[1][3] , \mem[1][2] ,
         \mem[1][1] , \mem[1][0] , \mem[2][7] , \mem[2][6] , \mem[2][5] ,
         \mem[2][4] , \mem[2][3] , \mem[2][2] , \mem[2][1] , \mem[2][0] ,
         \mem[3][7] , \mem[3][6] , \mem[3][5] , \mem[3][4] , \mem[3][3] ,
         \mem[3][2] , \mem[3][1] , \mem[3][0] , \mem[4][7] , \mem[4][6] ,
         \mem[4][5] , \mem[4][4] , \mem[4][3] , \mem[4][2] , \mem[4][1] ,
         \mem[4][0] , \mem[5][7] , \mem[5][6] , \mem[5][5] , \mem[5][4] ,
         \mem[5][3] , \mem[5][2] , \mem[5][1] , \mem[5][0] , \mem[6][7] ,
         \mem[6][6] , \mem[6][5] , \mem[6][4] , \mem[6][3] , \mem[6][2] ,
         \mem[6][1] , \mem[6][0] , \mem[7][7] , \mem[7][6] , \mem[7][5] ,
         \mem[7][4] , \mem[7][3] , \mem[7][2] , \mem[7][1] , \mem[7][0] ,
         \mem[8][7] , \mem[8][6] , \mem[8][5] , \mem[8][4] , \mem[8][3] ,
         \mem[8][2] , \mem[8][1] , \mem[8][0] , \mem[9][7] , \mem[9][6] ,
         \mem[9][5] , \mem[9][4] , \mem[9][3] , \mem[9][2] , \mem[9][1] ,
         \mem[9][0] , \mem[10][7] , \mem[10][6] , \mem[10][5] , \mem[10][4] ,
         \mem[10][3] , \mem[10][2] , \mem[10][1] , \mem[10][0] , \mem[11][7] ,
         \mem[11][6] , \mem[11][5] , \mem[11][4] , \mem[11][3] , \mem[11][2] ,
         \mem[11][1] , \mem[11][0] , \mem[12][7] , \mem[12][6] , \mem[12][5] ,
         \mem[12][4] , \mem[12][3] , \mem[12][2] , \mem[12][1] , \mem[12][0] ,
         \mem[13][7] , \mem[13][6] , \mem[13][5] , \mem[13][4] , \mem[13][3] ,
         \mem[13][2] , \mem[13][1] , \mem[13][0] , \mem[14][7] , \mem[14][6] ,
         \mem[14][5] , \mem[14][4] , \mem[14][3] , \mem[14][2] , \mem[14][1] ,
         \mem[14][0] , \mem[15][7] , \mem[15][6] , \mem[15][5] , \mem[15][4] ,
         \mem[15][3] , \mem[15][2] , \mem[15][1] , \mem[15][0] , n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300;
  assign N9 = raddr[0];
  assign N10 = raddr[1];
  assign N11 = raddr[2];
  assign N12 = raddr[3];

  DFFQX2M \mem_reg[1][7]  ( .D(n158), .CK(wclk), .Q(\mem[1][7] ) );
  DFFQX2M \mem_reg[1][6]  ( .D(n157), .CK(wclk), .Q(\mem[1][6] ) );
  DFFQX2M \mem_reg[1][5]  ( .D(n156), .CK(wclk), .Q(\mem[1][5] ) );
  DFFQX2M \mem_reg[1][4]  ( .D(n155), .CK(wclk), .Q(\mem[1][4] ) );
  DFFQX2M \mem_reg[1][3]  ( .D(n154), .CK(wclk), .Q(\mem[1][3] ) );
  DFFQX2M \mem_reg[1][2]  ( .D(n153), .CK(wclk), .Q(\mem[1][2] ) );
  DFFQX2M \mem_reg[1][1]  ( .D(n152), .CK(wclk), .Q(\mem[1][1] ) );
  DFFQX2M \mem_reg[1][0]  ( .D(n151), .CK(wclk), .Q(\mem[1][0] ) );
  DFFQX2M \mem_reg[3][7]  ( .D(n142), .CK(wclk), .Q(\mem[3][7] ) );
  DFFQX2M \mem_reg[3][6]  ( .D(n141), .CK(wclk), .Q(\mem[3][6] ) );
  DFFQX2M \mem_reg[3][5]  ( .D(n140), .CK(wclk), .Q(\mem[3][5] ) );
  DFFQX2M \mem_reg[3][4]  ( .D(n139), .CK(wclk), .Q(\mem[3][4] ) );
  DFFQX2M \mem_reg[3][3]  ( .D(n138), .CK(wclk), .Q(\mem[3][3] ) );
  DFFQX2M \mem_reg[3][2]  ( .D(n137), .CK(wclk), .Q(\mem[3][2] ) );
  DFFQX2M \mem_reg[3][1]  ( .D(n136), .CK(wclk), .Q(\mem[3][1] ) );
  DFFQX2M \mem_reg[3][0]  ( .D(n135), .CK(wclk), .Q(\mem[3][0] ) );
  DFFQX2M \mem_reg[5][7]  ( .D(n126), .CK(wclk), .Q(\mem[5][7] ) );
  DFFQX2M \mem_reg[5][6]  ( .D(n125), .CK(wclk), .Q(\mem[5][6] ) );
  DFFQX2M \mem_reg[5][5]  ( .D(n124), .CK(wclk), .Q(\mem[5][5] ) );
  DFFQX2M \mem_reg[5][4]  ( .D(n123), .CK(wclk), .Q(\mem[5][4] ) );
  DFFQX2M \mem_reg[5][3]  ( .D(n122), .CK(wclk), .Q(\mem[5][3] ) );
  DFFQX2M \mem_reg[5][2]  ( .D(n121), .CK(wclk), .Q(\mem[5][2] ) );
  DFFQX2M \mem_reg[5][1]  ( .D(n120), .CK(wclk), .Q(\mem[5][1] ) );
  DFFQX2M \mem_reg[5][0]  ( .D(n119), .CK(wclk), .Q(\mem[5][0] ) );
  DFFQX2M \mem_reg[7][7]  ( .D(n110), .CK(wclk), .Q(\mem[7][7] ) );
  DFFQX2M \mem_reg[7][6]  ( .D(n109), .CK(wclk), .Q(\mem[7][6] ) );
  DFFQX2M \mem_reg[7][5]  ( .D(n108), .CK(wclk), .Q(\mem[7][5] ) );
  DFFQX2M \mem_reg[7][4]  ( .D(n107), .CK(wclk), .Q(\mem[7][4] ) );
  DFFQX2M \mem_reg[7][3]  ( .D(n106), .CK(wclk), .Q(\mem[7][3] ) );
  DFFQX2M \mem_reg[7][2]  ( .D(n105), .CK(wclk), .Q(\mem[7][2] ) );
  DFFQX2M \mem_reg[7][1]  ( .D(n104), .CK(wclk), .Q(\mem[7][1] ) );
  DFFQX2M \mem_reg[7][0]  ( .D(n103), .CK(wclk), .Q(\mem[7][0] ) );
  DFFQX2M \mem_reg[9][7]  ( .D(n94), .CK(wclk), .Q(\mem[9][7] ) );
  DFFQX2M \mem_reg[9][6]  ( .D(n93), .CK(wclk), .Q(\mem[9][6] ) );
  DFFQX2M \mem_reg[9][5]  ( .D(n92), .CK(wclk), .Q(\mem[9][5] ) );
  DFFQX2M \mem_reg[9][4]  ( .D(n91), .CK(wclk), .Q(\mem[9][4] ) );
  DFFQX2M \mem_reg[9][3]  ( .D(n90), .CK(wclk), .Q(\mem[9][3] ) );
  DFFQX2M \mem_reg[9][2]  ( .D(n89), .CK(wclk), .Q(\mem[9][2] ) );
  DFFQX2M \mem_reg[9][1]  ( .D(n88), .CK(wclk), .Q(\mem[9][1] ) );
  DFFQX2M \mem_reg[9][0]  ( .D(n87), .CK(wclk), .Q(\mem[9][0] ) );
  DFFQX2M \mem_reg[11][7]  ( .D(n78), .CK(wclk), .Q(\mem[11][7] ) );
  DFFQX2M \mem_reg[11][6]  ( .D(n77), .CK(wclk), .Q(\mem[11][6] ) );
  DFFQX2M \mem_reg[11][5]  ( .D(n76), .CK(wclk), .Q(\mem[11][5] ) );
  DFFQX2M \mem_reg[11][4]  ( .D(n75), .CK(wclk), .Q(\mem[11][4] ) );
  DFFQX2M \mem_reg[11][3]  ( .D(n74), .CK(wclk), .Q(\mem[11][3] ) );
  DFFQX2M \mem_reg[11][2]  ( .D(n73), .CK(wclk), .Q(\mem[11][2] ) );
  DFFQX2M \mem_reg[11][1]  ( .D(n72), .CK(wclk), .Q(\mem[11][1] ) );
  DFFQX2M \mem_reg[11][0]  ( .D(n71), .CK(wclk), .Q(\mem[11][0] ) );
  DFFQX2M \mem_reg[13][7]  ( .D(n62), .CK(wclk), .Q(\mem[13][7] ) );
  DFFQX2M \mem_reg[13][6]  ( .D(n61), .CK(wclk), .Q(\mem[13][6] ) );
  DFFQX2M \mem_reg[13][5]  ( .D(n60), .CK(wclk), .Q(\mem[13][5] ) );
  DFFQX2M \mem_reg[13][4]  ( .D(n59), .CK(wclk), .Q(\mem[13][4] ) );
  DFFQX2M \mem_reg[13][3]  ( .D(n58), .CK(wclk), .Q(\mem[13][3] ) );
  DFFQX2M \mem_reg[13][2]  ( .D(n57), .CK(wclk), .Q(\mem[13][2] ) );
  DFFQX2M \mem_reg[13][1]  ( .D(n56), .CK(wclk), .Q(\mem[13][1] ) );
  DFFQX2M \mem_reg[13][0]  ( .D(n55), .CK(wclk), .Q(\mem[13][0] ) );
  DFFQX2M \mem_reg[15][7]  ( .D(n46), .CK(wclk), .Q(\mem[15][7] ) );
  DFFQX2M \mem_reg[15][6]  ( .D(n45), .CK(wclk), .Q(\mem[15][6] ) );
  DFFQX2M \mem_reg[15][5]  ( .D(n44), .CK(wclk), .Q(\mem[15][5] ) );
  DFFQX2M \mem_reg[15][4]  ( .D(n43), .CK(wclk), .Q(\mem[15][4] ) );
  DFFQX2M \mem_reg[15][3]  ( .D(n42), .CK(wclk), .Q(\mem[15][3] ) );
  DFFQX2M \mem_reg[15][2]  ( .D(n41), .CK(wclk), .Q(\mem[15][2] ) );
  DFFQX2M \mem_reg[15][1]  ( .D(n40), .CK(wclk), .Q(\mem[15][1] ) );
  DFFQX2M \mem_reg[15][0]  ( .D(n39), .CK(wclk), .Q(\mem[15][0] ) );
  DFFQX2M \mem_reg[0][7]  ( .D(n166), .CK(wclk), .Q(\mem[0][7] ) );
  DFFQX2M \mem_reg[0][6]  ( .D(n165), .CK(wclk), .Q(\mem[0][6] ) );
  DFFQX2M \mem_reg[0][5]  ( .D(n164), .CK(wclk), .Q(\mem[0][5] ) );
  DFFQX2M \mem_reg[0][4]  ( .D(n163), .CK(wclk), .Q(\mem[0][4] ) );
  DFFQX2M \mem_reg[0][3]  ( .D(n162), .CK(wclk), .Q(\mem[0][3] ) );
  DFFQX2M \mem_reg[0][2]  ( .D(n161), .CK(wclk), .Q(\mem[0][2] ) );
  DFFQX2M \mem_reg[0][1]  ( .D(n160), .CK(wclk), .Q(\mem[0][1] ) );
  DFFQX2M \mem_reg[0][0]  ( .D(n159), .CK(wclk), .Q(\mem[0][0] ) );
  DFFQX2M \mem_reg[2][7]  ( .D(n150), .CK(wclk), .Q(\mem[2][7] ) );
  DFFQX2M \mem_reg[2][6]  ( .D(n149), .CK(wclk), .Q(\mem[2][6] ) );
  DFFQX2M \mem_reg[2][5]  ( .D(n148), .CK(wclk), .Q(\mem[2][5] ) );
  DFFQX2M \mem_reg[2][4]  ( .D(n147), .CK(wclk), .Q(\mem[2][4] ) );
  DFFQX2M \mem_reg[2][3]  ( .D(n146), .CK(wclk), .Q(\mem[2][3] ) );
  DFFQX2M \mem_reg[2][2]  ( .D(n145), .CK(wclk), .Q(\mem[2][2] ) );
  DFFQX2M \mem_reg[2][1]  ( .D(n144), .CK(wclk), .Q(\mem[2][1] ) );
  DFFQX2M \mem_reg[2][0]  ( .D(n143), .CK(wclk), .Q(\mem[2][0] ) );
  DFFQX2M \mem_reg[4][7]  ( .D(n134), .CK(wclk), .Q(\mem[4][7] ) );
  DFFQX2M \mem_reg[4][6]  ( .D(n133), .CK(wclk), .Q(\mem[4][6] ) );
  DFFQX2M \mem_reg[4][5]  ( .D(n132), .CK(wclk), .Q(\mem[4][5] ) );
  DFFQX2M \mem_reg[4][4]  ( .D(n131), .CK(wclk), .Q(\mem[4][4] ) );
  DFFQX2M \mem_reg[4][3]  ( .D(n130), .CK(wclk), .Q(\mem[4][3] ) );
  DFFQX2M \mem_reg[4][2]  ( .D(n129), .CK(wclk), .Q(\mem[4][2] ) );
  DFFQX2M \mem_reg[4][1]  ( .D(n128), .CK(wclk), .Q(\mem[4][1] ) );
  DFFQX2M \mem_reg[4][0]  ( .D(n127), .CK(wclk), .Q(\mem[4][0] ) );
  DFFQX2M \mem_reg[6][7]  ( .D(n118), .CK(wclk), .Q(\mem[6][7] ) );
  DFFQX2M \mem_reg[6][6]  ( .D(n117), .CK(wclk), .Q(\mem[6][6] ) );
  DFFQX2M \mem_reg[6][5]  ( .D(n116), .CK(wclk), .Q(\mem[6][5] ) );
  DFFQX2M \mem_reg[6][4]  ( .D(n115), .CK(wclk), .Q(\mem[6][4] ) );
  DFFQX2M \mem_reg[6][3]  ( .D(n114), .CK(wclk), .Q(\mem[6][3] ) );
  DFFQX2M \mem_reg[6][2]  ( .D(n113), .CK(wclk), .Q(\mem[6][2] ) );
  DFFQX2M \mem_reg[6][1]  ( .D(n112), .CK(wclk), .Q(\mem[6][1] ) );
  DFFQX2M \mem_reg[6][0]  ( .D(n111), .CK(wclk), .Q(\mem[6][0] ) );
  DFFQX2M \mem_reg[8][7]  ( .D(n102), .CK(wclk), .Q(\mem[8][7] ) );
  DFFQX2M \mem_reg[8][6]  ( .D(n101), .CK(wclk), .Q(\mem[8][6] ) );
  DFFQX2M \mem_reg[8][5]  ( .D(n100), .CK(wclk), .Q(\mem[8][5] ) );
  DFFQX2M \mem_reg[8][4]  ( .D(n99), .CK(wclk), .Q(\mem[8][4] ) );
  DFFQX2M \mem_reg[8][3]  ( .D(n98), .CK(wclk), .Q(\mem[8][3] ) );
  DFFQX2M \mem_reg[8][2]  ( .D(n97), .CK(wclk), .Q(\mem[8][2] ) );
  DFFQX2M \mem_reg[8][1]  ( .D(n96), .CK(wclk), .Q(\mem[8][1] ) );
  DFFQX2M \mem_reg[8][0]  ( .D(n95), .CK(wclk), .Q(\mem[8][0] ) );
  DFFQX2M \mem_reg[10][7]  ( .D(n86), .CK(wclk), .Q(\mem[10][7] ) );
  DFFQX2M \mem_reg[10][6]  ( .D(n85), .CK(wclk), .Q(\mem[10][6] ) );
  DFFQX2M \mem_reg[10][5]  ( .D(n84), .CK(wclk), .Q(\mem[10][5] ) );
  DFFQX2M \mem_reg[10][4]  ( .D(n83), .CK(wclk), .Q(\mem[10][4] ) );
  DFFQX2M \mem_reg[10][3]  ( .D(n82), .CK(wclk), .Q(\mem[10][3] ) );
  DFFQX2M \mem_reg[10][2]  ( .D(n81), .CK(wclk), .Q(\mem[10][2] ) );
  DFFQX2M \mem_reg[10][1]  ( .D(n80), .CK(wclk), .Q(\mem[10][1] ) );
  DFFQX2M \mem_reg[10][0]  ( .D(n79), .CK(wclk), .Q(\mem[10][0] ) );
  DFFQX2M \mem_reg[12][7]  ( .D(n70), .CK(wclk), .Q(\mem[12][7] ) );
  DFFQX2M \mem_reg[12][6]  ( .D(n69), .CK(wclk), .Q(\mem[12][6] ) );
  DFFQX2M \mem_reg[12][5]  ( .D(n68), .CK(wclk), .Q(\mem[12][5] ) );
  DFFQX2M \mem_reg[12][4]  ( .D(n67), .CK(wclk), .Q(\mem[12][4] ) );
  DFFQX2M \mem_reg[12][3]  ( .D(n66), .CK(wclk), .Q(\mem[12][3] ) );
  DFFQX2M \mem_reg[12][2]  ( .D(n65), .CK(wclk), .Q(\mem[12][2] ) );
  DFFQX2M \mem_reg[12][1]  ( .D(n64), .CK(wclk), .Q(\mem[12][1] ) );
  DFFQX2M \mem_reg[12][0]  ( .D(n63), .CK(wclk), .Q(\mem[12][0] ) );
  DFFQX2M \mem_reg[14][7]  ( .D(n54), .CK(wclk), .Q(\mem[14][7] ) );
  DFFQX2M \mem_reg[14][6]  ( .D(n53), .CK(wclk), .Q(\mem[14][6] ) );
  DFFQX2M \mem_reg[14][5]  ( .D(n52), .CK(wclk), .Q(\mem[14][5] ) );
  DFFQX2M \mem_reg[14][4]  ( .D(n51), .CK(wclk), .Q(\mem[14][4] ) );
  DFFQX2M \mem_reg[14][3]  ( .D(n50), .CK(wclk), .Q(\mem[14][3] ) );
  DFFQX2M \mem_reg[14][2]  ( .D(n49), .CK(wclk), .Q(\mem[14][2] ) );
  DFFQX2M \mem_reg[14][1]  ( .D(n48), .CK(wclk), .Q(\mem[14][1] ) );
  DFFQX2M \mem_reg[14][0]  ( .D(n47), .CK(wclk), .Q(\mem[14][0] ) );
  CLKNAND2X2M U2 ( .A(n13), .B(n14), .Y(n12) );
  CLKNAND2X2M U3 ( .A(n16), .B(n13), .Y(n15) );
  CLKNAND2X2M U4 ( .A(n18), .B(n14), .Y(n17) );
  CLKNAND2X2M U5 ( .A(n18), .B(n16), .Y(n19) );
  CLKNAND2X2M U6 ( .A(n21), .B(n14), .Y(n20) );
  CLKNAND2X2M U7 ( .A(n21), .B(n16), .Y(n22) );
  CLKNAND2X2M U8 ( .A(n24), .B(n14), .Y(n23) );
  CLKNAND2X2M U9 ( .A(n24), .B(n16), .Y(n26) );
  CLKNAND2X2M U10 ( .A(n29), .B(n13), .Y(n28) );
  CLKNAND2X2M U11 ( .A(n31), .B(n13), .Y(n30) );
  CLKNAND2X2M U12 ( .A(n29), .B(n18), .Y(n32) );
  CLKNAND2X2M U13 ( .A(n31), .B(n18), .Y(n33) );
  CLKNAND2X2M U14 ( .A(n29), .B(n21), .Y(n34) );
  CLKNAND2X2M U15 ( .A(n31), .B(n21), .Y(n35) );
  CLKNAND2X2M U16 ( .A(n29), .B(n24), .Y(n36) );
  CLKNAND2X2M U17 ( .A(n31), .B(n24), .Y(n38) );
  NOR2X2M U18 ( .A(n262), .B(n263), .Y(n249) );
  NOR2X2M U19 ( .A(n263), .B(N10), .Y(n251) );
  NOR2X2M U20 ( .A(n262), .B(N9), .Y(n250) );
  NOR2X2M U21 ( .A(N9), .B(N10), .Y(n252) );
  NAND2X4M U22 ( .A(N11), .B(n260), .Y(n253) );
  NAND2X4M U23 ( .A(N12), .B(n261), .Y(n240) );
  NAND2X4M U24 ( .A(n261), .B(n260), .Y(n246) );
  NAND2X4M U25 ( .A(N12), .B(N11), .Y(n243) );
  AOI21XLM U26 ( .A0(n181), .A1(n180), .B0(n240), .Y(n191) );
  AOI21XLM U27 ( .A0(n185), .A1(n184), .B0(n246), .Y(n189) );
  AOI21XLM U28 ( .A0(n183), .A1(n182), .B0(n243), .Y(n190) );
  AOI21XLM U29 ( .A0(n242), .A1(n241), .B0(n240), .Y(n259) );
  AOI21XLM U30 ( .A0(n248), .A1(n247), .B0(n246), .Y(n257) );
  AOI21XLM U31 ( .A0(n245), .A1(n244), .B0(n243), .Y(n258) );
  AOI21XLM U32 ( .A0(n193), .A1(n192), .B0(n240), .Y(n203) );
  AOI21XLM U33 ( .A0(n197), .A1(n196), .B0(n246), .Y(n201) );
  AOI21XLM U34 ( .A0(n195), .A1(n194), .B0(n243), .Y(n202) );
  AOI21XLM U35 ( .A0(n205), .A1(n204), .B0(n240), .Y(n215) );
  AOI21XLM U36 ( .A0(n209), .A1(n208), .B0(n246), .Y(n213) );
  AOI21XLM U37 ( .A0(n207), .A1(n206), .B0(n243), .Y(n214) );
  AOI21XLM U38 ( .A0(n217), .A1(n216), .B0(n240), .Y(n227) );
  AOI21XLM U39 ( .A0(n221), .A1(n220), .B0(n246), .Y(n225) );
  AOI21XLM U40 ( .A0(n219), .A1(n218), .B0(n243), .Y(n226) );
  AOI21XLM U41 ( .A0(n229), .A1(n228), .B0(n240), .Y(n239) );
  AOI21XLM U42 ( .A0(n233), .A1(n232), .B0(n246), .Y(n237) );
  AOI21XLM U43 ( .A0(n231), .A1(n230), .B0(n243), .Y(n238) );
  AOI21XLM U44 ( .A0(n2), .A1(n1), .B0(n240), .Y(n167) );
  AOI21XLM U45 ( .A0(n6), .A1(n5), .B0(n246), .Y(n10) );
  AOI21XLM U46 ( .A0(n4), .A1(n3), .B0(n243), .Y(n11) );
  AOI21XLM U47 ( .A0(n169), .A1(n168), .B0(n240), .Y(n179) );
  AOI21XLM U48 ( .A0(n173), .A1(n172), .B0(n246), .Y(n177) );
  AOI21XLM U49 ( .A0(n171), .A1(n170), .B0(n243), .Y(n178) );
  AOI21XLM U50 ( .A0(n235), .A1(n234), .B0(n253), .Y(n236) );
  AOI21XLM U51 ( .A0(n255), .A1(n254), .B0(n253), .Y(n256) );
  AOI21XLM U52 ( .A0(n187), .A1(n186), .B0(n253), .Y(n188) );
  AOI21XLM U53 ( .A0(n199), .A1(n198), .B0(n253), .Y(n200) );
  AOI21XLM U54 ( .A0(n223), .A1(n222), .B0(n253), .Y(n224) );
  AOI21XLM U55 ( .A0(n211), .A1(n210), .B0(n253), .Y(n212) );
  AOI21XLM U56 ( .A0(n175), .A1(n174), .B0(n253), .Y(n176) );
  AOI21XLM U57 ( .A0(n8), .A1(n7), .B0(n253), .Y(n9) );
  AND2X2M U58 ( .A(n37), .B(waddr[0]), .Y(n29) );
  AND2X2M U59 ( .A(n25), .B(waddr[0]), .Y(n14) );
  NOR2X4M U60 ( .A(n292), .B(waddr[1]), .Y(n18) );
  NOR2X4M U61 ( .A(n291), .B(waddr[2]), .Y(n21) );
  NOR2X4M U62 ( .A(waddr[1]), .B(waddr[2]), .Y(n24) );
  INVX6M U63 ( .A(wdata[0]), .Y(n300) );
  INVX6M U64 ( .A(wdata[1]), .Y(n299) );
  INVX6M U65 ( .A(wdata[2]), .Y(n298) );
  INVX6M U66 ( .A(wdata[3]), .Y(n297) );
  INVX6M U67 ( .A(wdata[4]), .Y(n296) );
  INVX6M U68 ( .A(wdata[5]), .Y(n295) );
  INVX6M U69 ( .A(wdata[6]), .Y(n294) );
  INVX6M U70 ( .A(wdata[7]), .Y(n293) );
  BUFX4M U71 ( .A(n15), .Y(n288) );
  BUFX4M U72 ( .A(n30), .Y(n280) );
  BUFX4M U73 ( .A(n17), .Y(n287) );
  BUFX4M U74 ( .A(n19), .Y(n286) );
  BUFX4M U75 ( .A(n20), .Y(n285) );
  BUFX4M U76 ( .A(n22), .Y(n284) );
  BUFX4M U77 ( .A(n23), .Y(n283) );
  BUFX4M U78 ( .A(n26), .Y(n282) );
  BUFX4M U79 ( .A(n28), .Y(n281) );
  BUFX4M U80 ( .A(n32), .Y(n279) );
  BUFX4M U81 ( .A(n33), .Y(n278) );
  BUFX4M U82 ( .A(n34), .Y(n277) );
  BUFX4M U83 ( .A(n35), .Y(n276) );
  BUFX4M U84 ( .A(n36), .Y(n275) );
  BUFX4M U85 ( .A(n38), .Y(n274) );
  BUFX4M U86 ( .A(n12), .Y(n289) );
  BUFX4M U87 ( .A(n249), .Y(n265) );
  BUFX4M U88 ( .A(n249), .Y(n264) );
  BUFX4M U89 ( .A(n249), .Y(n266) );
  NOR2X4M U90 ( .A(n292), .B(n291), .Y(n13) );
  AND2X2M U91 ( .A(n25), .B(n290), .Y(n16) );
  AND2X2M U92 ( .A(n37), .B(n290), .Y(n31) );
  CLKBUFX6M U93 ( .A(n250), .Y(n267) );
  BUFX4M U94 ( .A(n251), .Y(n270) );
  BUFX4M U95 ( .A(n251), .Y(n269) );
  CLKBUFX6M U96 ( .A(n252), .Y(n272) );
  CLKBUFX6M U97 ( .A(n250), .Y(n268) );
  CLKBUFX6M U98 ( .A(n252), .Y(n273) );
  BUFX4M U99 ( .A(n251), .Y(n271) );
  NOR2BX2M U100 ( .AN(winc), .B(wfull), .Y(n27) );
  NOR2BX2M U101 ( .AN(n27), .B(waddr[3]), .Y(n37) );
  INVX2M U102 ( .A(waddr[2]), .Y(n292) );
  INVX2M U103 ( .A(waddr[1]), .Y(n291) );
  OAI2BB2X1M U104 ( .B0(n299), .B1(n288), .A0N(\mem[14][1] ), .A1N(n288), .Y(
        n48) );
  OAI2BB2X1M U105 ( .B0(n298), .B1(n288), .A0N(\mem[14][2] ), .A1N(n288), .Y(
        n49) );
  OAI2BB2X1M U106 ( .B0(n297), .B1(n288), .A0N(\mem[14][3] ), .A1N(n288), .Y(
        n50) );
  OAI2BB2X1M U107 ( .B0(n296), .B1(n288), .A0N(\mem[14][4] ), .A1N(n288), .Y(
        n51) );
  OAI2BB2X1M U108 ( .B0(n295), .B1(n15), .A0N(\mem[14][5] ), .A1N(n288), .Y(
        n52) );
  OAI2BB2X1M U109 ( .B0(n294), .B1(n15), .A0N(\mem[14][6] ), .A1N(n288), .Y(
        n53) );
  OAI2BB2X1M U110 ( .B0(n293), .B1(n15), .A0N(\mem[14][7] ), .A1N(n288), .Y(
        n54) );
  OAI2BB2X1M U111 ( .B0(n299), .B1(n287), .A0N(\mem[13][1] ), .A1N(n287), .Y(
        n56) );
  OAI2BB2X1M U112 ( .B0(n298), .B1(n287), .A0N(\mem[13][2] ), .A1N(n287), .Y(
        n57) );
  OAI2BB2X1M U113 ( .B0(n297), .B1(n287), .A0N(\mem[13][3] ), .A1N(n287), .Y(
        n58) );
  OAI2BB2X1M U114 ( .B0(n296), .B1(n287), .A0N(\mem[13][4] ), .A1N(n287), .Y(
        n59) );
  OAI2BB2X1M U115 ( .B0(n295), .B1(n17), .A0N(\mem[13][5] ), .A1N(n287), .Y(
        n60) );
  OAI2BB2X1M U116 ( .B0(n294), .B1(n17), .A0N(\mem[13][6] ), .A1N(n287), .Y(
        n61) );
  OAI2BB2X1M U117 ( .B0(n293), .B1(n17), .A0N(\mem[13][7] ), .A1N(n287), .Y(
        n62) );
  OAI2BB2X1M U118 ( .B0(n299), .B1(n286), .A0N(\mem[12][1] ), .A1N(n286), .Y(
        n64) );
  OAI2BB2X1M U119 ( .B0(n298), .B1(n286), .A0N(\mem[12][2] ), .A1N(n286), .Y(
        n65) );
  OAI2BB2X1M U120 ( .B0(n297), .B1(n286), .A0N(\mem[12][3] ), .A1N(n286), .Y(
        n66) );
  OAI2BB2X1M U121 ( .B0(n296), .B1(n286), .A0N(\mem[12][4] ), .A1N(n286), .Y(
        n67) );
  OAI2BB2X1M U122 ( .B0(n295), .B1(n19), .A0N(\mem[12][5] ), .A1N(n286), .Y(
        n68) );
  OAI2BB2X1M U123 ( .B0(n294), .B1(n19), .A0N(\mem[12][6] ), .A1N(n286), .Y(
        n69) );
  OAI2BB2X1M U124 ( .B0(n293), .B1(n19), .A0N(\mem[12][7] ), .A1N(n286), .Y(
        n70) );
  OAI2BB2X1M U125 ( .B0(n299), .B1(n285), .A0N(\mem[11][1] ), .A1N(n285), .Y(
        n72) );
  OAI2BB2X1M U126 ( .B0(n298), .B1(n285), .A0N(\mem[11][2] ), .A1N(n285), .Y(
        n73) );
  OAI2BB2X1M U127 ( .B0(n297), .B1(n285), .A0N(\mem[11][3] ), .A1N(n285), .Y(
        n74) );
  OAI2BB2X1M U128 ( .B0(n296), .B1(n285), .A0N(\mem[11][4] ), .A1N(n285), .Y(
        n75) );
  OAI2BB2X1M U129 ( .B0(n295), .B1(n20), .A0N(\mem[11][5] ), .A1N(n285), .Y(
        n76) );
  OAI2BB2X1M U130 ( .B0(n294), .B1(n20), .A0N(\mem[11][6] ), .A1N(n285), .Y(
        n77) );
  OAI2BB2X1M U131 ( .B0(n293), .B1(n20), .A0N(\mem[11][7] ), .A1N(n285), .Y(
        n78) );
  OAI2BB2X1M U132 ( .B0(n299), .B1(n284), .A0N(\mem[10][1] ), .A1N(n284), .Y(
        n80) );
  OAI2BB2X1M U133 ( .B0(n298), .B1(n284), .A0N(\mem[10][2] ), .A1N(n284), .Y(
        n81) );
  OAI2BB2X1M U134 ( .B0(n297), .B1(n284), .A0N(\mem[10][3] ), .A1N(n284), .Y(
        n82) );
  OAI2BB2X1M U135 ( .B0(n296), .B1(n284), .A0N(\mem[10][4] ), .A1N(n284), .Y(
        n83) );
  OAI2BB2X1M U136 ( .B0(n295), .B1(n22), .A0N(\mem[10][5] ), .A1N(n284), .Y(
        n84) );
  OAI2BB2X1M U137 ( .B0(n294), .B1(n22), .A0N(\mem[10][6] ), .A1N(n284), .Y(
        n85) );
  OAI2BB2X1M U138 ( .B0(n293), .B1(n22), .A0N(\mem[10][7] ), .A1N(n284), .Y(
        n86) );
  OAI2BB2X1M U139 ( .B0(n299), .B1(n283), .A0N(\mem[9][1] ), .A1N(n283), .Y(
        n88) );
  OAI2BB2X1M U140 ( .B0(n298), .B1(n283), .A0N(\mem[9][2] ), .A1N(n283), .Y(
        n89) );
  OAI2BB2X1M U141 ( .B0(n297), .B1(n283), .A0N(\mem[9][3] ), .A1N(n283), .Y(
        n90) );
  OAI2BB2X1M U142 ( .B0(n296), .B1(n283), .A0N(\mem[9][4] ), .A1N(n283), .Y(
        n91) );
  OAI2BB2X1M U143 ( .B0(n295), .B1(n23), .A0N(\mem[9][5] ), .A1N(n283), .Y(n92) );
  OAI2BB2X1M U144 ( .B0(n294), .B1(n23), .A0N(\mem[9][6] ), .A1N(n283), .Y(n93) );
  OAI2BB2X1M U145 ( .B0(n293), .B1(n23), .A0N(\mem[9][7] ), .A1N(n283), .Y(n94) );
  OAI2BB2X1M U146 ( .B0(n299), .B1(n282), .A0N(\mem[8][1] ), .A1N(n282), .Y(
        n96) );
  OAI2BB2X1M U147 ( .B0(n298), .B1(n282), .A0N(\mem[8][2] ), .A1N(n282), .Y(
        n97) );
  OAI2BB2X1M U148 ( .B0(n297), .B1(n282), .A0N(\mem[8][3] ), .A1N(n282), .Y(
        n98) );
  OAI2BB2X1M U149 ( .B0(n296), .B1(n282), .A0N(\mem[8][4] ), .A1N(n282), .Y(
        n99) );
  OAI2BB2X1M U150 ( .B0(n295), .B1(n26), .A0N(\mem[8][5] ), .A1N(n282), .Y(
        n100) );
  OAI2BB2X1M U151 ( .B0(n294), .B1(n26), .A0N(\mem[8][6] ), .A1N(n282), .Y(
        n101) );
  OAI2BB2X1M U152 ( .B0(n293), .B1(n26), .A0N(\mem[8][7] ), .A1N(n282), .Y(
        n102) );
  OAI2BB2X1M U153 ( .B0(n299), .B1(n281), .A0N(\mem[7][1] ), .A1N(n281), .Y(
        n104) );
  OAI2BB2X1M U154 ( .B0(n298), .B1(n281), .A0N(\mem[7][2] ), .A1N(n281), .Y(
        n105) );
  OAI2BB2X1M U155 ( .B0(n297), .B1(n281), .A0N(\mem[7][3] ), .A1N(n281), .Y(
        n106) );
  OAI2BB2X1M U156 ( .B0(n296), .B1(n281), .A0N(\mem[7][4] ), .A1N(n281), .Y(
        n107) );
  OAI2BB2X1M U157 ( .B0(n295), .B1(n28), .A0N(\mem[7][5] ), .A1N(n281), .Y(
        n108) );
  OAI2BB2X1M U158 ( .B0(n294), .B1(n28), .A0N(\mem[7][6] ), .A1N(n281), .Y(
        n109) );
  OAI2BB2X1M U159 ( .B0(n293), .B1(n28), .A0N(\mem[7][7] ), .A1N(n281), .Y(
        n110) );
  OAI2BB2X1M U160 ( .B0(n299), .B1(n280), .A0N(\mem[6][1] ), .A1N(n280), .Y(
        n112) );
  OAI2BB2X1M U161 ( .B0(n298), .B1(n280), .A0N(\mem[6][2] ), .A1N(n280), .Y(
        n113) );
  OAI2BB2X1M U162 ( .B0(n297), .B1(n280), .A0N(\mem[6][3] ), .A1N(n280), .Y(
        n114) );
  OAI2BB2X1M U163 ( .B0(n296), .B1(n280), .A0N(\mem[6][4] ), .A1N(n280), .Y(
        n115) );
  OAI2BB2X1M U164 ( .B0(n295), .B1(n30), .A0N(\mem[6][5] ), .A1N(n280), .Y(
        n116) );
  OAI2BB2X1M U165 ( .B0(n294), .B1(n30), .A0N(\mem[6][6] ), .A1N(n280), .Y(
        n117) );
  OAI2BB2X1M U166 ( .B0(n293), .B1(n30), .A0N(\mem[6][7] ), .A1N(n280), .Y(
        n118) );
  OAI2BB2X1M U167 ( .B0(n299), .B1(n279), .A0N(\mem[5][1] ), .A1N(n279), .Y(
        n120) );
  OAI2BB2X1M U168 ( .B0(n298), .B1(n279), .A0N(\mem[5][2] ), .A1N(n279), .Y(
        n121) );
  OAI2BB2X1M U169 ( .B0(n297), .B1(n279), .A0N(\mem[5][3] ), .A1N(n279), .Y(
        n122) );
  OAI2BB2X1M U170 ( .B0(n296), .B1(n279), .A0N(\mem[5][4] ), .A1N(n279), .Y(
        n123) );
  OAI2BB2X1M U171 ( .B0(n295), .B1(n32), .A0N(\mem[5][5] ), .A1N(n279), .Y(
        n124) );
  OAI2BB2X1M U172 ( .B0(n294), .B1(n32), .A0N(\mem[5][6] ), .A1N(n279), .Y(
        n125) );
  OAI2BB2X1M U173 ( .B0(n293), .B1(n32), .A0N(\mem[5][7] ), .A1N(n279), .Y(
        n126) );
  OAI2BB2X1M U174 ( .B0(n299), .B1(n278), .A0N(\mem[4][1] ), .A1N(n278), .Y(
        n128) );
  OAI2BB2X1M U175 ( .B0(n298), .B1(n278), .A0N(\mem[4][2] ), .A1N(n278), .Y(
        n129) );
  OAI2BB2X1M U176 ( .B0(n297), .B1(n278), .A0N(\mem[4][3] ), .A1N(n278), .Y(
        n130) );
  OAI2BB2X1M U177 ( .B0(n296), .B1(n278), .A0N(\mem[4][4] ), .A1N(n278), .Y(
        n131) );
  OAI2BB2X1M U178 ( .B0(n295), .B1(n33), .A0N(\mem[4][5] ), .A1N(n278), .Y(
        n132) );
  OAI2BB2X1M U179 ( .B0(n294), .B1(n33), .A0N(\mem[4][6] ), .A1N(n278), .Y(
        n133) );
  OAI2BB2X1M U180 ( .B0(n293), .B1(n33), .A0N(\mem[4][7] ), .A1N(n278), .Y(
        n134) );
  OAI2BB2X1M U181 ( .B0(n299), .B1(n277), .A0N(\mem[3][1] ), .A1N(n277), .Y(
        n136) );
  OAI2BB2X1M U182 ( .B0(n298), .B1(n277), .A0N(\mem[3][2] ), .A1N(n277), .Y(
        n137) );
  OAI2BB2X1M U183 ( .B0(n297), .B1(n277), .A0N(\mem[3][3] ), .A1N(n277), .Y(
        n138) );
  OAI2BB2X1M U184 ( .B0(n296), .B1(n277), .A0N(\mem[3][4] ), .A1N(n277), .Y(
        n139) );
  OAI2BB2X1M U185 ( .B0(n295), .B1(n34), .A0N(\mem[3][5] ), .A1N(n277), .Y(
        n140) );
  OAI2BB2X1M U186 ( .B0(n294), .B1(n34), .A0N(\mem[3][6] ), .A1N(n277), .Y(
        n141) );
  OAI2BB2X1M U187 ( .B0(n293), .B1(n34), .A0N(\mem[3][7] ), .A1N(n277), .Y(
        n142) );
  OAI2BB2X1M U188 ( .B0(n299), .B1(n276), .A0N(\mem[2][1] ), .A1N(n276), .Y(
        n144) );
  OAI2BB2X1M U189 ( .B0(n298), .B1(n276), .A0N(\mem[2][2] ), .A1N(n276), .Y(
        n145) );
  OAI2BB2X1M U190 ( .B0(n297), .B1(n276), .A0N(\mem[2][3] ), .A1N(n276), .Y(
        n146) );
  OAI2BB2X1M U191 ( .B0(n296), .B1(n276), .A0N(\mem[2][4] ), .A1N(n276), .Y(
        n147) );
  OAI2BB2X1M U192 ( .B0(n295), .B1(n35), .A0N(\mem[2][5] ), .A1N(n276), .Y(
        n148) );
  OAI2BB2X1M U193 ( .B0(n294), .B1(n35), .A0N(\mem[2][6] ), .A1N(n276), .Y(
        n149) );
  OAI2BB2X1M U194 ( .B0(n293), .B1(n35), .A0N(\mem[2][7] ), .A1N(n276), .Y(
        n150) );
  OAI2BB2X1M U195 ( .B0(n299), .B1(n275), .A0N(\mem[1][1] ), .A1N(n275), .Y(
        n152) );
  OAI2BB2X1M U196 ( .B0(n298), .B1(n275), .A0N(\mem[1][2] ), .A1N(n275), .Y(
        n153) );
  OAI2BB2X1M U197 ( .B0(n297), .B1(n275), .A0N(\mem[1][3] ), .A1N(n275), .Y(
        n154) );
  OAI2BB2X1M U198 ( .B0(n296), .B1(n275), .A0N(\mem[1][4] ), .A1N(n275), .Y(
        n155) );
  OAI2BB2X1M U199 ( .B0(n295), .B1(n36), .A0N(\mem[1][5] ), .A1N(n275), .Y(
        n156) );
  OAI2BB2X1M U200 ( .B0(n294), .B1(n36), .A0N(\mem[1][6] ), .A1N(n275), .Y(
        n157) );
  OAI2BB2X1M U201 ( .B0(n293), .B1(n36), .A0N(\mem[1][7] ), .A1N(n275), .Y(
        n158) );
  OAI2BB2X1M U202 ( .B0(n299), .B1(n274), .A0N(\mem[0][1] ), .A1N(n274), .Y(
        n160) );
  OAI2BB2X1M U203 ( .B0(n298), .B1(n274), .A0N(\mem[0][2] ), .A1N(n274), .Y(
        n161) );
  OAI2BB2X1M U204 ( .B0(n297), .B1(n274), .A0N(\mem[0][3] ), .A1N(n274), .Y(
        n162) );
  OAI2BB2X1M U205 ( .B0(n296), .B1(n274), .A0N(\mem[0][4] ), .A1N(n274), .Y(
        n163) );
  OAI2BB2X1M U206 ( .B0(n295), .B1(n38), .A0N(\mem[0][5] ), .A1N(n274), .Y(
        n164) );
  OAI2BB2X1M U207 ( .B0(n294), .B1(n38), .A0N(\mem[0][6] ), .A1N(n274), .Y(
        n165) );
  OAI2BB2X1M U208 ( .B0(n293), .B1(n38), .A0N(\mem[0][7] ), .A1N(n274), .Y(
        n166) );
  OAI2BB2X1M U209 ( .B0(n300), .B1(n288), .A0N(\mem[14][0] ), .A1N(n288), .Y(
        n47) );
  OAI2BB2X1M U210 ( .B0(n300), .B1(n287), .A0N(\mem[13][0] ), .A1N(n287), .Y(
        n55) );
  OAI2BB2X1M U211 ( .B0(n300), .B1(n286), .A0N(\mem[12][0] ), .A1N(n286), .Y(
        n63) );
  OAI2BB2X1M U212 ( .B0(n300), .B1(n285), .A0N(\mem[11][0] ), .A1N(n285), .Y(
        n71) );
  OAI2BB2X1M U213 ( .B0(n300), .B1(n284), .A0N(\mem[10][0] ), .A1N(n284), .Y(
        n79) );
  OAI2BB2X1M U214 ( .B0(n300), .B1(n283), .A0N(\mem[9][0] ), .A1N(n283), .Y(
        n87) );
  OAI2BB2X1M U215 ( .B0(n300), .B1(n282), .A0N(\mem[8][0] ), .A1N(n282), .Y(
        n95) );
  OAI2BB2X1M U216 ( .B0(n300), .B1(n281), .A0N(\mem[7][0] ), .A1N(n281), .Y(
        n103) );
  OAI2BB2X1M U217 ( .B0(n300), .B1(n280), .A0N(\mem[6][0] ), .A1N(n280), .Y(
        n111) );
  OAI2BB2X1M U218 ( .B0(n300), .B1(n279), .A0N(\mem[5][0] ), .A1N(n279), .Y(
        n119) );
  OAI2BB2X1M U219 ( .B0(n300), .B1(n278), .A0N(\mem[4][0] ), .A1N(n278), .Y(
        n127) );
  OAI2BB2X1M U220 ( .B0(n300), .B1(n277), .A0N(\mem[3][0] ), .A1N(n277), .Y(
        n135) );
  OAI2BB2X1M U221 ( .B0(n300), .B1(n276), .A0N(\mem[2][0] ), .A1N(n276), .Y(
        n143) );
  OAI2BB2X1M U222 ( .B0(n300), .B1(n275), .A0N(\mem[1][0] ), .A1N(n275), .Y(
        n151) );
  OAI2BB2X1M U223 ( .B0(n300), .B1(n274), .A0N(\mem[0][0] ), .A1N(n274), .Y(
        n159) );
  OAI2BB2X1M U224 ( .B0(n289), .B1(n300), .A0N(\mem[15][0] ), .A1N(n289), .Y(
        n39) );
  OAI2BB2X1M U225 ( .B0(n289), .B1(n299), .A0N(\mem[15][1] ), .A1N(n289), .Y(
        n40) );
  OAI2BB2X1M U226 ( .B0(n289), .B1(n298), .A0N(\mem[15][2] ), .A1N(n289), .Y(
        n41) );
  OAI2BB2X1M U227 ( .B0(n289), .B1(n297), .A0N(\mem[15][3] ), .A1N(n289), .Y(
        n42) );
  OAI2BB2X1M U228 ( .B0(n289), .B1(n296), .A0N(\mem[15][4] ), .A1N(n289), .Y(
        n43) );
  OAI2BB2X1M U229 ( .B0(n12), .B1(n295), .A0N(\mem[15][5] ), .A1N(n289), .Y(
        n44) );
  OAI2BB2X1M U230 ( .B0(n12), .B1(n294), .A0N(\mem[15][6] ), .A1N(n289), .Y(
        n45) );
  OAI2BB2X1M U231 ( .B0(n12), .B1(n293), .A0N(\mem[15][7] ), .A1N(n289), .Y(
        n46) );
  AND2X2M U232 ( .A(waddr[3]), .B(n27), .Y(n25) );
  INVX2M U233 ( .A(waddr[0]), .Y(n290) );
  INVX2M U234 ( .A(N12), .Y(n260) );
  INVX2M U235 ( .A(N11), .Y(n261) );
  INVX2M U236 ( .A(N10), .Y(n262) );
  INVX2M U237 ( .A(N9), .Y(n263) );
  AOI22X1M U238 ( .A0(\mem[10][0] ), .A1(n268), .B0(\mem[11][0] ), .B1(n266), 
        .Y(n2) );
  AOI22X1M U239 ( .A0(\mem[8][0] ), .A1(n273), .B0(\mem[9][0] ), .B1(n271), 
        .Y(n1) );
  AOI22X1M U240 ( .A0(\mem[14][0] ), .A1(n268), .B0(\mem[15][0] ), .B1(n266), 
        .Y(n4) );
  AOI22X1M U241 ( .A0(\mem[12][0] ), .A1(n273), .B0(\mem[13][0] ), .B1(n271), 
        .Y(n3) );
  AOI22X1M U242 ( .A0(\mem[2][0] ), .A1(n268), .B0(\mem[3][0] ), .B1(n266), 
        .Y(n6) );
  AOI22X1M U243 ( .A0(\mem[0][0] ), .A1(n273), .B0(\mem[1][0] ), .B1(n271), 
        .Y(n5) );
  AOI22X1M U244 ( .A0(\mem[6][0] ), .A1(n268), .B0(\mem[7][0] ), .B1(n266), 
        .Y(n8) );
  AOI22X1M U245 ( .A0(\mem[4][0] ), .A1(n273), .B0(\mem[5][0] ), .B1(n271), 
        .Y(n7) );
  OR4X1M U246 ( .A(n167), .B(n11), .C(n10), .D(n9), .Y(rdata[0]) );
  AOI22X1M U247 ( .A0(\mem[10][1] ), .A1(n268), .B0(\mem[11][1] ), .B1(n266), 
        .Y(n169) );
  AOI22X1M U248 ( .A0(\mem[8][1] ), .A1(n273), .B0(\mem[9][1] ), .B1(n271), 
        .Y(n168) );
  AOI22X1M U249 ( .A0(\mem[14][1] ), .A1(n268), .B0(\mem[15][1] ), .B1(n266), 
        .Y(n171) );
  AOI22X1M U250 ( .A0(\mem[12][1] ), .A1(n273), .B0(\mem[13][1] ), .B1(n271), 
        .Y(n170) );
  AOI22X1M U251 ( .A0(\mem[2][1] ), .A1(n268), .B0(\mem[3][1] ), .B1(n266), 
        .Y(n173) );
  AOI22X1M U252 ( .A0(\mem[0][1] ), .A1(n273), .B0(\mem[1][1] ), .B1(n271), 
        .Y(n172) );
  AOI22X1M U253 ( .A0(\mem[6][1] ), .A1(n268), .B0(\mem[7][1] ), .B1(n266), 
        .Y(n175) );
  AOI22X1M U254 ( .A0(\mem[4][1] ), .A1(n273), .B0(\mem[5][1] ), .B1(n271), 
        .Y(n174) );
  OR4X1M U255 ( .A(n179), .B(n178), .C(n177), .D(n176), .Y(rdata[1]) );
  AOI22X1M U256 ( .A0(\mem[10][2] ), .A1(n268), .B0(\mem[11][2] ), .B1(n266), 
        .Y(n181) );
  AOI22X1M U257 ( .A0(\mem[8][2] ), .A1(n273), .B0(\mem[9][2] ), .B1(n271), 
        .Y(n180) );
  AOI22X1M U258 ( .A0(\mem[14][2] ), .A1(n268), .B0(\mem[15][2] ), .B1(n266), 
        .Y(n183) );
  AOI22X1M U259 ( .A0(\mem[12][2] ), .A1(n273), .B0(\mem[13][2] ), .B1(n271), 
        .Y(n182) );
  AOI22X1M U260 ( .A0(\mem[2][2] ), .A1(n268), .B0(\mem[3][2] ), .B1(n266), 
        .Y(n185) );
  AOI22X1M U261 ( .A0(\mem[0][2] ), .A1(n273), .B0(\mem[1][2] ), .B1(n271), 
        .Y(n184) );
  AOI22X1M U262 ( .A0(\mem[6][2] ), .A1(n268), .B0(\mem[7][2] ), .B1(n266), 
        .Y(n187) );
  AOI22X1M U263 ( .A0(\mem[4][2] ), .A1(n273), .B0(\mem[5][2] ), .B1(n271), 
        .Y(n186) );
  OR4X1M U264 ( .A(n191), .B(n190), .C(n189), .D(n188), .Y(rdata[2]) );
  AOI22X1M U265 ( .A0(\mem[10][3] ), .A1(n268), .B0(\mem[11][3] ), .B1(n265), 
        .Y(n193) );
  AOI22X1M U266 ( .A0(\mem[8][3] ), .A1(n273), .B0(\mem[9][3] ), .B1(n270), 
        .Y(n192) );
  AOI22X1M U267 ( .A0(\mem[14][3] ), .A1(n267), .B0(\mem[15][3] ), .B1(n265), 
        .Y(n195) );
  AOI22X1M U268 ( .A0(\mem[12][3] ), .A1(n272), .B0(\mem[13][3] ), .B1(n270), 
        .Y(n194) );
  AOI22X1M U269 ( .A0(\mem[2][3] ), .A1(n267), .B0(\mem[3][3] ), .B1(n265), 
        .Y(n197) );
  AOI22X1M U270 ( .A0(\mem[0][3] ), .A1(n272), .B0(\mem[1][3] ), .B1(n270), 
        .Y(n196) );
  AOI22X1M U271 ( .A0(\mem[6][3] ), .A1(n267), .B0(\mem[7][3] ), .B1(n265), 
        .Y(n199) );
  AOI22X1M U272 ( .A0(\mem[4][3] ), .A1(n272), .B0(\mem[5][3] ), .B1(n270), 
        .Y(n198) );
  OR4X1M U273 ( .A(n203), .B(n202), .C(n201), .D(n200), .Y(rdata[3]) );
  AOI22X1M U274 ( .A0(\mem[10][4] ), .A1(n267), .B0(\mem[11][4] ), .B1(n265), 
        .Y(n205) );
  AOI22X1M U275 ( .A0(\mem[8][4] ), .A1(n272), .B0(\mem[9][4] ), .B1(n270), 
        .Y(n204) );
  AOI22X1M U276 ( .A0(\mem[14][4] ), .A1(n267), .B0(\mem[15][4] ), .B1(n265), 
        .Y(n207) );
  AOI22X1M U277 ( .A0(\mem[12][4] ), .A1(n272), .B0(\mem[13][4] ), .B1(n270), 
        .Y(n206) );
  AOI22X1M U278 ( .A0(\mem[2][4] ), .A1(n267), .B0(\mem[3][4] ), .B1(n265), 
        .Y(n209) );
  AOI22X1M U279 ( .A0(\mem[0][4] ), .A1(n272), .B0(\mem[1][4] ), .B1(n270), 
        .Y(n208) );
  AOI22X1M U280 ( .A0(\mem[6][4] ), .A1(n267), .B0(\mem[7][4] ), .B1(n265), 
        .Y(n211) );
  AOI22X1M U281 ( .A0(\mem[4][4] ), .A1(n272), .B0(\mem[5][4] ), .B1(n270), 
        .Y(n210) );
  OR4X1M U282 ( .A(n215), .B(n214), .C(n213), .D(n212), .Y(rdata[4]) );
  AOI22X1M U283 ( .A0(\mem[10][5] ), .A1(n267), .B0(\mem[11][5] ), .B1(n265), 
        .Y(n217) );
  AOI22X1M U284 ( .A0(\mem[8][5] ), .A1(n272), .B0(\mem[9][5] ), .B1(n270), 
        .Y(n216) );
  AOI22X1M U285 ( .A0(\mem[14][5] ), .A1(n267), .B0(\mem[15][5] ), .B1(n265), 
        .Y(n219) );
  AOI22X1M U286 ( .A0(\mem[12][5] ), .A1(n272), .B0(\mem[13][5] ), .B1(n270), 
        .Y(n218) );
  AOI22X1M U287 ( .A0(\mem[2][5] ), .A1(n267), .B0(\mem[3][5] ), .B1(n265), 
        .Y(n221) );
  AOI22X1M U288 ( .A0(\mem[0][5] ), .A1(n272), .B0(\mem[1][5] ), .B1(n270), 
        .Y(n220) );
  AOI22X1M U289 ( .A0(\mem[6][5] ), .A1(n267), .B0(\mem[7][5] ), .B1(n265), 
        .Y(n223) );
  AOI22X1M U290 ( .A0(\mem[4][5] ), .A1(n272), .B0(\mem[5][5] ), .B1(n270), 
        .Y(n222) );
  OR4X1M U291 ( .A(n227), .B(n226), .C(n225), .D(n224), .Y(rdata[5]) );
  AOI22X1M U292 ( .A0(\mem[10][6] ), .A1(n267), .B0(\mem[11][6] ), .B1(n264), 
        .Y(n229) );
  AOI22X1M U293 ( .A0(\mem[8][6] ), .A1(n272), .B0(\mem[9][6] ), .B1(n269), 
        .Y(n228) );
  AOI22X1M U294 ( .A0(\mem[14][6] ), .A1(n267), .B0(\mem[15][6] ), .B1(n264), 
        .Y(n231) );
  AOI22X1M U295 ( .A0(\mem[12][6] ), .A1(n272), .B0(\mem[13][6] ), .B1(n269), 
        .Y(n230) );
  AOI22X1M U296 ( .A0(\mem[2][6] ), .A1(n268), .B0(\mem[3][6] ), .B1(n264), 
        .Y(n233) );
  AOI22X1M U297 ( .A0(\mem[0][6] ), .A1(n273), .B0(\mem[1][6] ), .B1(n269), 
        .Y(n232) );
  AOI22X1M U298 ( .A0(\mem[6][6] ), .A1(n267), .B0(\mem[7][6] ), .B1(n264), 
        .Y(n235) );
  AOI22X1M U299 ( .A0(\mem[4][6] ), .A1(n272), .B0(\mem[5][6] ), .B1(n269), 
        .Y(n234) );
  OR4X1M U300 ( .A(n239), .B(n238), .C(n237), .D(n236), .Y(rdata[6]) );
  AOI22X1M U301 ( .A0(\mem[10][7] ), .A1(n267), .B0(\mem[11][7] ), .B1(n264), 
        .Y(n242) );
  AOI22X1M U302 ( .A0(\mem[8][7] ), .A1(n272), .B0(\mem[9][7] ), .B1(n269), 
        .Y(n241) );
  AOI22X1M U303 ( .A0(\mem[14][7] ), .A1(n267), .B0(\mem[15][7] ), .B1(n264), 
        .Y(n245) );
  AOI22X1M U304 ( .A0(\mem[12][7] ), .A1(n272), .B0(\mem[13][7] ), .B1(n269), 
        .Y(n244) );
  AOI22X1M U305 ( .A0(\mem[2][7] ), .A1(n250), .B0(\mem[3][7] ), .B1(n264), 
        .Y(n248) );
  AOI22X1M U306 ( .A0(\mem[0][7] ), .A1(n252), .B0(\mem[1][7] ), .B1(n269), 
        .Y(n247) );
  AOI22X1M U307 ( .A0(\mem[6][7] ), .A1(n268), .B0(\mem[7][7] ), .B1(n264), 
        .Y(n255) );
  AOI22X1M U308 ( .A0(\mem[4][7] ), .A1(n273), .B0(\mem[5][7] ), .B1(n269), 
        .Y(n254) );
  OR4X1M U309 ( .A(n259), .B(n258), .C(n257), .D(n256), .Y(rdata[7]) );
endmodule


module DF_SYNC_PTR_WIDTH5_0 ( CLK, RST, async_ptr, sync_ptr );
  input [4:0] async_ptr;
  output [4:0] sync_ptr;
  input CLK, RST;
  wire   n1, n2;
  wire   [4:0] sync_reg;

  DFFRQX2M \sync_ptr_reg[2]  ( .D(sync_reg[2]), .CK(CLK), .RN(n1), .Q(
        sync_ptr[2]) );
  DFFRQX2M \sync_ptr_reg[4]  ( .D(sync_reg[4]), .CK(CLK), .RN(n1), .Q(
        sync_ptr[4]) );
  DFFRQX2M \sync_ptr_reg[3]  ( .D(sync_reg[3]), .CK(CLK), .RN(n1), .Q(
        sync_ptr[3]) );
  DFFRQX2M \sync_ptr_reg[1]  ( .D(sync_reg[1]), .CK(CLK), .RN(n1), .Q(
        sync_ptr[1]) );
  DFFRQX2M \sync_ptr_reg[0]  ( .D(sync_reg[0]), .CK(CLK), .RN(n1), .Q(
        sync_ptr[0]) );
  DFFRQX2M \sync_reg_reg[4]  ( .D(async_ptr[4]), .CK(CLK), .RN(n1), .Q(
        sync_reg[4]) );
  DFFRQX2M \sync_reg_reg[3]  ( .D(async_ptr[3]), .CK(CLK), .RN(n1), .Q(
        sync_reg[3]) );
  DFFRQX2M \sync_reg_reg[2]  ( .D(async_ptr[2]), .CK(CLK), .RN(n1), .Q(
        sync_reg[2]) );
  DFFRQX2M \sync_reg_reg[1]  ( .D(async_ptr[1]), .CK(CLK), .RN(n1), .Q(
        sync_reg[1]) );
  DFFRQX2M \sync_reg_reg[0]  ( .D(async_ptr[0]), .CK(CLK), .RN(n1), .Q(
        sync_reg[0]) );
  INVX4M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(RST), .Y(n2) );
endmodule


module DF_SYNC_PTR_WIDTH5_1 ( CLK, RST, async_ptr, sync_ptr );
  input [4:0] async_ptr;
  output [4:0] sync_ptr;
  input CLK, RST;
  wire   n1, n2;
  wire   [4:0] sync_reg;

  DFFRQX1M \sync_ptr_reg[4]  ( .D(sync_reg[4]), .CK(CLK), .RN(n1), .Q(
        sync_ptr[4]) );
  DFFRQX1M \sync_ptr_reg[3]  ( .D(sync_reg[3]), .CK(CLK), .RN(n1), .Q(
        sync_ptr[3]) );
  DFFRQX1M \sync_ptr_reg[2]  ( .D(sync_reg[2]), .CK(CLK), .RN(n1), .Q(
        sync_ptr[2]) );
  DFFRQX1M \sync_ptr_reg[1]  ( .D(sync_reg[1]), .CK(CLK), .RN(n1), .Q(
        sync_ptr[1]) );
  DFFRQX1M \sync_ptr_reg[0]  ( .D(sync_reg[0]), .CK(CLK), .RN(n1), .Q(
        sync_ptr[0]) );
  DFFRQX1M \sync_reg_reg[4]  ( .D(async_ptr[4]), .CK(CLK), .RN(n1), .Q(
        sync_reg[4]) );
  DFFRQX1M \sync_reg_reg[3]  ( .D(async_ptr[3]), .CK(CLK), .RN(n1), .Q(
        sync_reg[3]) );
  DFFRQX1M \sync_reg_reg[2]  ( .D(async_ptr[2]), .CK(CLK), .RN(n1), .Q(
        sync_reg[2]) );
  DFFRQX1M \sync_reg_reg[1]  ( .D(async_ptr[1]), .CK(CLK), .RN(n1), .Q(
        sync_reg[1]) );
  DFFRQX1M \sync_reg_reg[0]  ( .D(async_ptr[0]), .CK(CLK), .RN(n1), .Q(
        sync_reg[0]) );
  INVX4M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(RST), .Y(n2) );
endmodule


module ASYNC_FIFO_TOP_DATA_WIDTH8_ADDRSIZE4 ( R_CLK, W_CLK, W_RST, W_INC, 
        WR_DATA, R_RST, R_INC, FULL, RD_DATA, EMPTY );
  input [7:0] WR_DATA;
  output [7:0] RD_DATA;
  input R_CLK, W_CLK, W_RST, W_INC, R_RST, R_INC;
  output FULL, EMPTY;
  wire   n1, n2, n3, n4;
  wire   [4:0] wq2_rptr;
  wire   [3:0] waddr;
  wire   [4:0] wptr;
  wire   [4:0] rq2_wptr;
  wire   [3:0] raddr;
  wire   [4:0] rptr;

  FIFO_WR_ADDRSIZE4 fifo_wr ( .wclk(W_CLK), .wrst_n(n3), .winc(W_INC), 
        .wq2_rptr(wq2_rptr), .wfull(FULL), .waddr(waddr), .wptr(wptr) );
  FIFO_RD_ADDRSIZE4 fifo_rd ( .rclk(R_CLK), .rrst_n(n1), .rinc(R_INC), 
        .rq2_wptr(rq2_wptr), .rempty(EMPTY), .raddr(raddr), .rptr(rptr) );
  FIFO_MEM_CNTRL_DATA_WIDTH8_ADDRSIZE4 fifo_mem ( .wclk(W_CLK), .winc(W_INC), 
        .wfull(FULL), .waddr(waddr), .raddr(raddr), .wdata(WR_DATA), .rdata(
        RD_DATA) );
  DF_SYNC_PTR_WIDTH5_0 sync_r2w ( .CLK(W_CLK), .RST(n3), .async_ptr(rptr), 
        .sync_ptr(wq2_rptr) );
  DF_SYNC_PTR_WIDTH5_1 sync_w2r ( .CLK(R_CLK), .RST(n1), .async_ptr(wptr), 
        .sync_ptr(rq2_wptr) );
  INVX2M U1 ( .A(n4), .Y(n3) );
  INVX2M U2 ( .A(W_RST), .Y(n4) );
  INVX2M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(R_RST), .Y(n2) );
endmodule


module pulse_gen ( clk, rst, lvl_sig, pulse_sig );
  input clk, rst, lvl_sig;
  output pulse_sig;
  wire   pls_flop, rcv_flop;

  DFFRQX1M pls_flop_reg ( .D(rcv_flop), .CK(clk), .RN(rst), .Q(pls_flop) );
  DFFRQX1M rcv_flop_reg ( .D(lvl_sig), .CK(clk), .RN(rst), .Q(rcv_flop) );
  NOR2BX2M U3 ( .AN(rcv_flop), .B(pls_flop), .Y(pulse_sig) );
endmodule


module CLK_DIV_0_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module CLK_DIV_0 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N1, div_clk_reg, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16,
         N18, N19, N20, N21, N22, N23, N24, N29, N30, N31, N32, N33, N34, N35,
         N36, N45, N46, N47, N48, N49, N50, N51, N52, n9, n10, n11, n12, n13,
         n1, n2, n3, n4, n5, n6, n7, n8, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41;
  wire   [7:0] counter;

  CLK_DIV_0_DW01_inc_0 r67 ( .A(counter), .SUM({N36, N35, N34, N33, N32, N31, 
        N30, N29}) );
  DFFRQX2M div_clk_reg_reg ( .D(n13), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        div_clk_reg) );
  DFFRQX2M \counter_reg[7]  ( .D(N52), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[7]) );
  DFFRQX2M \counter_reg[6]  ( .D(N51), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[6]) );
  DFFRQX2M \counter_reg[5]  ( .D(N50), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[5]) );
  DFFRQX2M \counter_reg[4]  ( .D(N49), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[4]) );
  DFFRQX2M \counter_reg[3]  ( .D(N48), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[3]) );
  DFFRQX2M \counter_reg[2]  ( .D(N47), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[2]) );
  DFFRQX2M \counter_reg[1]  ( .D(N46), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[1]) );
  DFFRQX2M \counter_reg[0]  ( .D(N45), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[0]) );
  NOR4X2M U3 ( .A(n41), .B(n40), .C(n39), .D(n38), .Y(N15) );
  NOR3X2M U4 ( .A(i_div_ratio[6]), .B(i_div_ratio[7]), .C(n5), .Y(N23) );
  NAND2BX4M U5 ( .AN(N15), .B(N1), .Y(n10) );
  NOR2BX2M U6 ( .AN(N30), .B(n10), .Y(N46) );
  NOR2BX2M U7 ( .AN(N31), .B(n10), .Y(N47) );
  NOR2BX2M U8 ( .AN(N32), .B(n10), .Y(N48) );
  NOR2BX2M U9 ( .AN(N33), .B(n10), .Y(N49) );
  NOR2BX2M U10 ( .AN(N34), .B(n10), .Y(N50) );
  NOR2BX2M U11 ( .AN(N35), .B(n10), .Y(N51) );
  CLKMX2X4M U12 ( .A(i_ref_clk), .B(div_clk_reg), .S0(N1), .Y(o_div_clk) );
  XNOR2X2M U13 ( .A(div_clk_reg), .B(n9), .Y(n13) );
  AOI22XLM U14 ( .A0(N15), .A1(N1), .B0(N24), .B1(N1), .Y(n9) );
  NOR2BX2M U15 ( .AN(N36), .B(n10), .Y(N52) );
  NOR2BX2M U16 ( .AN(N29), .B(n10), .Y(N45) );
  INVX2M U17 ( .A(counter[0]), .Y(n29) );
  OR2X2M U18 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n2) );
  OR2X2M U19 ( .A(i_div_ratio[1]), .B(i_div_ratio[0]), .Y(n7) );
  AOI21BX2M U20 ( .A0(n11), .A1(n12), .B0N(i_clk_en), .Y(N1) );
  NOR3X2M U21 ( .A(i_div_ratio[1]), .B(i_div_ratio[3]), .C(i_div_ratio[2]), 
        .Y(n11) );
  NOR4X1M U22 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n12) );
  AOI21BX2M U23 ( .A0(i_div_ratio[1]), .A1(i_div_ratio[2]), .B0N(n2), .Y(n1)
         );
  CLKINVX1M U24 ( .A(i_div_ratio[1]), .Y(N16) );
  OR2X1M U25 ( .A(n2), .B(i_div_ratio[3]), .Y(n3) );
  OAI2BB1X1M U26 ( .A0N(n2), .A1N(i_div_ratio[3]), .B0(n3), .Y(N18) );
  OR2X1M U27 ( .A(n3), .B(i_div_ratio[4]), .Y(n4) );
  OAI2BB1X1M U28 ( .A0N(n3), .A1N(i_div_ratio[4]), .B0(n4), .Y(N19) );
  OR2X1M U29 ( .A(n4), .B(i_div_ratio[5]), .Y(n5) );
  OAI2BB1X1M U30 ( .A0N(n4), .A1N(i_div_ratio[5]), .B0(n5), .Y(N20) );
  XNOR2X1M U31 ( .A(i_div_ratio[6]), .B(n5), .Y(N21) );
  OAI21X1M U32 ( .A0(i_div_ratio[6]), .A1(n5), .B0(i_div_ratio[7]), .Y(n6) );
  NAND2BX1M U33 ( .AN(N23), .B(n6), .Y(N22) );
  CLKINVX1M U34 ( .A(i_div_ratio[0]), .Y(N6) );
  OAI2BB1X1M U35 ( .A0N(i_div_ratio[0]), .A1N(i_div_ratio[1]), .B0(n7), .Y(N7)
         );
  OR2X1M U36 ( .A(n7), .B(i_div_ratio[2]), .Y(n8) );
  OAI2BB1X1M U37 ( .A0N(n7), .A1N(i_div_ratio[2]), .B0(n8), .Y(N8) );
  OR2X1M U38 ( .A(n8), .B(i_div_ratio[3]), .Y(n14) );
  OAI2BB1X1M U39 ( .A0N(n8), .A1N(i_div_ratio[3]), .B0(n14), .Y(N9) );
  OR2X1M U40 ( .A(n14), .B(i_div_ratio[4]), .Y(n15) );
  OAI2BB1X1M U41 ( .A0N(n14), .A1N(i_div_ratio[4]), .B0(n15), .Y(N10) );
  OR2X1M U42 ( .A(n15), .B(i_div_ratio[5]), .Y(n16) );
  OAI2BB1X1M U43 ( .A0N(n15), .A1N(i_div_ratio[5]), .B0(n16), .Y(N11) );
  OR2X1M U44 ( .A(n16), .B(i_div_ratio[6]), .Y(n17) );
  OAI2BB1X1M U45 ( .A0N(n16), .A1N(i_div_ratio[6]), .B0(n17), .Y(N12) );
  NOR2X1M U46 ( .A(n17), .B(i_div_ratio[7]), .Y(N14) );
  AO21XLM U47 ( .A0(n17), .A1(i_div_ratio[7]), .B0(N14), .Y(N13) );
  XNOR2X1M U48 ( .A(N18), .B(counter[2]), .Y(n28) );
  NOR2X1M U49 ( .A(n29), .B(N16), .Y(n18) );
  OAI22X1M U50 ( .A0(counter[1]), .A1(n18), .B0(n18), .B1(n1), .Y(n27) );
  CLKNAND2X2M U51 ( .A(N16), .B(n29), .Y(n19) );
  AOI22X1M U52 ( .A0(n19), .A1(n1), .B0(n19), .B1(counter[1]), .Y(n20) );
  NOR3X1M U53 ( .A(n20), .B(N23), .C(counter[7]), .Y(n26) );
  CLKXOR2X2M U54 ( .A(N19), .B(counter[3]), .Y(n24) );
  CLKXOR2X2M U55 ( .A(N20), .B(counter[4]), .Y(n23) );
  CLKXOR2X2M U56 ( .A(N21), .B(counter[5]), .Y(n22) );
  CLKXOR2X2M U57 ( .A(N22), .B(counter[6]), .Y(n21) );
  NOR4X1M U58 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n25) );
  AND4X1M U59 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(N24) );
  XNOR2X1M U60 ( .A(N12), .B(counter[6]), .Y(n33) );
  XNOR2X1M U61 ( .A(N11), .B(counter[5]), .Y(n32) );
  XNOR2X1M U62 ( .A(N10), .B(counter[4]), .Y(n31) );
  XNOR2X1M U63 ( .A(N9), .B(counter[3]), .Y(n30) );
  NAND4X1M U64 ( .A(n33), .B(n32), .C(n31), .D(n30), .Y(n41) );
  NOR2BX1M U65 ( .AN(N6), .B(counter[0]), .Y(n34) );
  OAI2B2X1M U66 ( .A1N(counter[1]), .A0(n34), .B0(N7), .B1(n34), .Y(n37) );
  NOR2BX1M U67 ( .AN(counter[0]), .B(N6), .Y(n35) );
  OAI2B2X1M U68 ( .A1N(N7), .A0(n35), .B0(counter[1]), .B1(n35), .Y(n36) );
  NAND3BX1M U69 ( .AN(N14), .B(n37), .C(n36), .Y(n40) );
  CLKXOR2X2M U70 ( .A(N13), .B(counter[7]), .Y(n39) );
  CLKXOR2X2M U71 ( .A(N8), .B(counter[2]), .Y(n38) );
endmodule


module CLOCK_DIV_MUX ( IN, OUT );
  input [5:0] IN;
  output [7:0] OUT;
  wire   n5, n6, n7, n8, n9, n14, n15, n16, n17;

  INVX2M U3 ( .A(1'b1), .Y(OUT[7]) );
  INVX2M U5 ( .A(1'b1), .Y(OUT[6]) );
  INVX2M U7 ( .A(1'b1), .Y(OUT[5]) );
  INVX2M U9 ( .A(1'b1), .Y(OUT[4]) );
  NOR4X4M U11 ( .A(n5), .B(IN[3]), .C(IN[5]), .D(IN[4]), .Y(OUT[3]) );
  NOR3X8M U12 ( .A(n7), .B(IN[1]), .C(IN[0]), .Y(OUT[1]) );
  NOR3X6M U13 ( .A(n6), .B(IN[1]), .C(IN[0]), .Y(OUT[2]) );
  NAND3X2M U14 ( .A(n17), .B(n16), .C(IN[2]), .Y(n5) );
  NAND4BX2M U15 ( .AN(IN[3]), .B(IN[4]), .C(n15), .D(n14), .Y(n7) );
  NAND4BX2M U16 ( .AN(IN[4]), .B(IN[3]), .C(n15), .D(n14), .Y(n6) );
  OAI211X4M U17 ( .A0(n8), .A1(n9), .B0(n17), .C0(n16), .Y(OUT[0]) );
  NAND2X2M U18 ( .A(n7), .B(n6), .Y(n9) );
  NOR4X1M U19 ( .A(IN[5]), .B(IN[4]), .C(IN[3]), .D(n15), .Y(n8) );
  INVX2M U20 ( .A(IN[2]), .Y(n15) );
  INVX2M U21 ( .A(IN[1]), .Y(n16) );
  INVX2M U22 ( .A(IN[0]), .Y(n17) );
  CLKINVX1M U23 ( .A(IN[5]), .Y(n14) );
endmodule


module CLK_DIV_1_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module CLK_DIV_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N1, div_clk_reg, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16,
         N18, N19, N20, N21, N22, N23, N24, N29, N30, N31, N32, N33, N34, N35,
         N36, N45, N46, N47, N48, N49, N50, N51, N52, n1, n2, n3, n4, n5, n6,
         n7, n8, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46;
  wire   [7:0] counter;

  CLK_DIV_1_DW01_inc_0 r67 ( .A(counter), .SUM({N36, N35, N34, N33, N32, N31, 
        N30, N29}) );
  DFFRQX2M div_clk_reg_reg ( .D(n42), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        div_clk_reg) );
  DFFRQX2M \counter_reg[7]  ( .D(N52), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[7]) );
  DFFRQX2M \counter_reg[6]  ( .D(N51), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[6]) );
  DFFRQX2M \counter_reg[5]  ( .D(N50), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[5]) );
  DFFRQX2M \counter_reg[4]  ( .D(N49), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[4]) );
  DFFRQX2M \counter_reg[3]  ( .D(N48), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[3]) );
  DFFRQX2M \counter_reg[2]  ( .D(N47), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[2]) );
  DFFRQX2M \counter_reg[1]  ( .D(N46), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[1]) );
  DFFRQX2M \counter_reg[0]  ( .D(N45), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[0]) );
  NOR4X2M U3 ( .A(n41), .B(n40), .C(n39), .D(n38), .Y(N15) );
  NOR3X2M U4 ( .A(i_div_ratio[6]), .B(i_div_ratio[7]), .C(n5), .Y(N23) );
  NAND2BX4M U5 ( .AN(N15), .B(N1), .Y(n45) );
  NOR2BX2M U6 ( .AN(N30), .B(n45), .Y(N46) );
  NOR2BX2M U7 ( .AN(N31), .B(n45), .Y(N47) );
  NOR2BX2M U8 ( .AN(N32), .B(n45), .Y(N48) );
  NOR2BX2M U9 ( .AN(N33), .B(n45), .Y(N49) );
  NOR2BX2M U10 ( .AN(N34), .B(n45), .Y(N50) );
  NOR2BX2M U11 ( .AN(N35), .B(n45), .Y(N51) );
  OR2X2M U12 ( .A(i_div_ratio[1]), .B(i_div_ratio[0]), .Y(n7) );
  OR2X2M U13 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n2) );
  AOI21BX2M U14 ( .A0(i_div_ratio[1]), .A1(i_div_ratio[2]), .B0N(n2), .Y(n1)
         );
  CLKMX2X4M U15 ( .A(i_ref_clk), .B(div_clk_reg), .S0(N1), .Y(o_div_clk) );
  XNOR2X2M U16 ( .A(div_clk_reg), .B(n46), .Y(n42) );
  AOI22XLM U17 ( .A0(N15), .A1(N1), .B0(N24), .B1(N1), .Y(n46) );
  NOR2BX2M U18 ( .AN(N36), .B(n45), .Y(N52) );
  NOR2BX2M U19 ( .AN(N29), .B(n45), .Y(N45) );
  INVX2M U20 ( .A(counter[0]), .Y(n29) );
  AOI21BX2M U21 ( .A0(n44), .A1(n43), .B0N(i_clk_en), .Y(N1) );
  NOR4X1M U22 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n43) );
  NOR3X2M U23 ( .A(i_div_ratio[1]), .B(i_div_ratio[3]), .C(i_div_ratio[2]), 
        .Y(n44) );
  CLKINVX1M U24 ( .A(i_div_ratio[1]), .Y(N16) );
  OR2X1M U25 ( .A(n2), .B(i_div_ratio[3]), .Y(n3) );
  OAI2BB1X1M U26 ( .A0N(n2), .A1N(i_div_ratio[3]), .B0(n3), .Y(N18) );
  OR2X1M U27 ( .A(n3), .B(i_div_ratio[4]), .Y(n4) );
  OAI2BB1X1M U28 ( .A0N(n3), .A1N(i_div_ratio[4]), .B0(n4), .Y(N19) );
  OR2X1M U29 ( .A(n4), .B(i_div_ratio[5]), .Y(n5) );
  OAI2BB1X1M U30 ( .A0N(n4), .A1N(i_div_ratio[5]), .B0(n5), .Y(N20) );
  XNOR2X1M U31 ( .A(i_div_ratio[6]), .B(n5), .Y(N21) );
  OAI21X1M U32 ( .A0(i_div_ratio[6]), .A1(n5), .B0(i_div_ratio[7]), .Y(n6) );
  NAND2BX1M U33 ( .AN(N23), .B(n6), .Y(N22) );
  CLKINVX1M U34 ( .A(i_div_ratio[0]), .Y(N6) );
  OAI2BB1X1M U35 ( .A0N(i_div_ratio[0]), .A1N(i_div_ratio[1]), .B0(n7), .Y(N7)
         );
  OR2X1M U36 ( .A(n7), .B(i_div_ratio[2]), .Y(n8) );
  OAI2BB1X1M U37 ( .A0N(n7), .A1N(i_div_ratio[2]), .B0(n8), .Y(N8) );
  OR2X1M U38 ( .A(n8), .B(i_div_ratio[3]), .Y(n14) );
  OAI2BB1X1M U39 ( .A0N(n8), .A1N(i_div_ratio[3]), .B0(n14), .Y(N9) );
  OR2X1M U40 ( .A(n14), .B(i_div_ratio[4]), .Y(n15) );
  OAI2BB1X1M U41 ( .A0N(n14), .A1N(i_div_ratio[4]), .B0(n15), .Y(N10) );
  OR2X1M U42 ( .A(n15), .B(i_div_ratio[5]), .Y(n16) );
  OAI2BB1X1M U43 ( .A0N(n15), .A1N(i_div_ratio[5]), .B0(n16), .Y(N11) );
  OR2X1M U44 ( .A(n16), .B(i_div_ratio[6]), .Y(n17) );
  OAI2BB1X1M U45 ( .A0N(n16), .A1N(i_div_ratio[6]), .B0(n17), .Y(N12) );
  NOR2X1M U46 ( .A(n17), .B(i_div_ratio[7]), .Y(N14) );
  AO21XLM U47 ( .A0(n17), .A1(i_div_ratio[7]), .B0(N14), .Y(N13) );
  XNOR2X1M U48 ( .A(N18), .B(counter[2]), .Y(n28) );
  NOR2X1M U49 ( .A(n29), .B(N16), .Y(n18) );
  OAI22X1M U50 ( .A0(counter[1]), .A1(n18), .B0(n18), .B1(n1), .Y(n27) );
  CLKNAND2X2M U51 ( .A(N16), .B(n29), .Y(n19) );
  AOI22X1M U52 ( .A0(n19), .A1(n1), .B0(n19), .B1(counter[1]), .Y(n20) );
  NOR3X1M U53 ( .A(n20), .B(N23), .C(counter[7]), .Y(n26) );
  CLKXOR2X2M U54 ( .A(N19), .B(counter[3]), .Y(n24) );
  CLKXOR2X2M U55 ( .A(N20), .B(counter[4]), .Y(n23) );
  CLKXOR2X2M U56 ( .A(N21), .B(counter[5]), .Y(n22) );
  CLKXOR2X2M U57 ( .A(N22), .B(counter[6]), .Y(n21) );
  NOR4X1M U58 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n25) );
  AND4X1M U59 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(N24) );
  XNOR2X1M U60 ( .A(N12), .B(counter[6]), .Y(n33) );
  XNOR2X1M U61 ( .A(N11), .B(counter[5]), .Y(n32) );
  XNOR2X1M U62 ( .A(N10), .B(counter[4]), .Y(n31) );
  XNOR2X1M U63 ( .A(N9), .B(counter[3]), .Y(n30) );
  NAND4X1M U64 ( .A(n33), .B(n32), .C(n31), .D(n30), .Y(n41) );
  NOR2BX1M U65 ( .AN(N6), .B(counter[0]), .Y(n34) );
  OAI2B2X1M U66 ( .A1N(counter[1]), .A0(n34), .B0(N7), .B1(n34), .Y(n37) );
  NOR2BX1M U67 ( .AN(counter[0]), .B(N6), .Y(n35) );
  OAI2B2X1M U68 ( .A1N(N7), .A0(n35), .B0(counter[1]), .B1(n35), .Y(n36) );
  NAND3BX1M U69 ( .AN(N14), .B(n37), .C(n36), .Y(n40) );
  CLKXOR2X2M U70 ( .A(N13), .B(counter[7]), .Y(n39) );
  CLKXOR2X2M U71 ( .A(N8), .B(counter[2]), .Y(n38) );
endmodule


module SERIALIZER_DATA_WIDTH8 ( CLK, RST, P_DATA, ser_en, Data_Valid, ser_data, 
        ser_done );
  input [7:0] P_DATA;
  input CLK, RST, ser_en, Data_Valid;
  output ser_data, ser_done;
  wire   N19, N20, N21, N22, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n1, n2, n3, n23, n24, n25;
  wire   [2:0] counter;
  wire   [7:1] shift_reg;

  DFFRQX1M \shift_reg_reg[6]  ( .D(n17), .CK(CLK), .RN(n2), .Q(shift_reg[6])
         );
  DFFRQX1M \shift_reg_reg[5]  ( .D(n18), .CK(CLK), .RN(n2), .Q(shift_reg[5])
         );
  DFFRQX1M \shift_reg_reg[4]  ( .D(n19), .CK(CLK), .RN(n2), .Q(shift_reg[4])
         );
  DFFRQX1M \shift_reg_reg[3]  ( .D(n20), .CK(CLK), .RN(n2), .Q(shift_reg[3])
         );
  DFFRQX1M \shift_reg_reg[2]  ( .D(n21), .CK(CLK), .RN(n2), .Q(shift_reg[2])
         );
  DFFRQX1M \shift_reg_reg[1]  ( .D(n22), .CK(CLK), .RN(n2), .Q(shift_reg[1])
         );
  DFFRQX1M \shift_reg_reg[7]  ( .D(n16), .CK(CLK), .RN(n2), .Q(shift_reg[7])
         );
  DFFRQX1M \counter_reg[1]  ( .D(N20), .CK(CLK), .RN(n2), .Q(counter[1]) );
  DFFRQX1M \counter_reg[2]  ( .D(N21), .CK(CLK), .RN(n2), .Q(counter[2]) );
  DFFRQX1M \shift_reg_reg[0]  ( .D(n15), .CK(CLK), .RN(n2), .Q(ser_data) );
  DFFRQX1M \counter_reg[0]  ( .D(N19), .CK(CLK), .RN(n2), .Q(counter[0]) );
  DFFRQX1M ser_done_reg ( .D(N22), .CK(CLK), .RN(n2), .Q(ser_done) );
  INVX4M U3 ( .A(n3), .Y(n2) );
  INVX2M U4 ( .A(RST), .Y(n3) );
  NOR2X6M U5 ( .A(n1), .B(n6), .Y(n4) );
  INVX2M U6 ( .A(n1), .Y(n23) );
  CLKAND2X4M U7 ( .A(Data_Valid), .B(n23), .Y(n6) );
  OAI2BB1X2M U8 ( .A0N(n4), .A1N(shift_reg[6]), .B0(n7), .Y(n17) );
  AOI22X1M U9 ( .A0(shift_reg[7]), .A1(n1), .B0(P_DATA[6]), .B1(n6), .Y(n7) );
  OAI2BB1X2M U10 ( .A0N(n4), .A1N(shift_reg[2]), .B0(n11), .Y(n21) );
  AOI22X1M U11 ( .A0(shift_reg[3]), .A1(n1), .B0(P_DATA[2]), .B1(n6), .Y(n11)
         );
  OAI2BB1X2M U12 ( .A0N(n4), .A1N(shift_reg[3]), .B0(n10), .Y(n20) );
  AOI22X1M U13 ( .A0(shift_reg[4]), .A1(n1), .B0(P_DATA[3]), .B1(n6), .Y(n10)
         );
  OAI2BB1X2M U14 ( .A0N(shift_reg[1]), .A1N(n4), .B0(n12), .Y(n22) );
  AOI22X1M U15 ( .A0(shift_reg[2]), .A1(n1), .B0(P_DATA[1]), .B1(n6), .Y(n12)
         );
  OAI2BB1X2M U16 ( .A0N(n4), .A1N(shift_reg[5]), .B0(n8), .Y(n18) );
  AOI22X1M U17 ( .A0(shift_reg[6]), .A1(n1), .B0(P_DATA[5]), .B1(n6), .Y(n8)
         );
  OAI2BB1X2M U18 ( .A0N(ser_data), .A1N(n4), .B0(n5), .Y(n15) );
  AOI22X1M U19 ( .A0(shift_reg[1]), .A1(n1), .B0(P_DATA[0]), .B1(n6), .Y(n5)
         );
  OAI2BB1X2M U20 ( .A0N(n4), .A1N(shift_reg[4]), .B0(n9), .Y(n19) );
  AOI22X1M U21 ( .A0(shift_reg[5]), .A1(n1), .B0(P_DATA[4]), .B1(n6), .Y(n9)
         );
  AO22X1M U22 ( .A0(n4), .A1(shift_reg[7]), .B0(P_DATA[7]), .B1(n6), .Y(n16)
         );
  BUFX4M U23 ( .A(ser_en), .Y(n1) );
  NOR4X1M U24 ( .A(counter[0]), .B(n23), .C(n24), .D(n25), .Y(N22) );
  NOR2X2M U25 ( .A(n23), .B(counter[0]), .Y(N19) );
  OAI2BB2X1M U26 ( .B0(n13), .B1(n23), .A0N(counter[2]), .A1N(N19), .Y(N21) );
  AOI32X1M U27 ( .A0(counter[1]), .A1(n25), .A2(counter[0]), .B0(counter[2]), 
        .B1(n24), .Y(n13) );
  NOR2X2M U28 ( .A(n14), .B(n23), .Y(N20) );
  CLKXOR2X2M U29 ( .A(counter[0]), .B(n24), .Y(n14) );
  INVX2M U30 ( .A(counter[1]), .Y(n24) );
  INVX2M U31 ( .A(counter[2]), .Y(n25) );
endmodule


module FSM_tx ( CLK, RST, Data_Valid, PAR_EN, ser_done, ser_en, mux_sel, busy
 );
  output [1:0] mux_sel;
  input CLK, RST, Data_Valid, PAR_EN, ser_done;
  output ser_en, busy;
  wire   n4, n5, n6, n7, n8, n1, n2;
  wire   [2:0] cs;
  wire   [2:0] ns;

  DFFRQX2M \cs_reg[2]  ( .D(ns[2]), .CK(CLK), .RN(RST), .Q(cs[2]) );
  DFFRQX1M \cs_reg[0]  ( .D(ns[0]), .CK(CLK), .RN(RST), .Q(cs[0]) );
  DFFRQX1M \cs_reg[1]  ( .D(ns[1]), .CK(CLK), .RN(RST), .Q(cs[1]) );
  NOR2X2M U3 ( .A(n1), .B(cs[2]), .Y(n8) );
  INVX2M U4 ( .A(n8), .Y(mux_sel[0]) );
  NAND2X2M U5 ( .A(mux_sel[1]), .B(n6), .Y(n4) );
  INVX2M U6 ( .A(cs[0]), .Y(n1) );
  NOR2X4M U7 ( .A(n2), .B(cs[2]), .Y(mux_sel[1]) );
  INVX2M U8 ( .A(cs[1]), .Y(n2) );
  NOR2X2M U9 ( .A(ser_done), .B(n4), .Y(ser_en) );
  XNOR2X2M U10 ( .A(cs[0]), .B(cs[1]), .Y(n6) );
  OAI22X1M U11 ( .A0(ser_done), .A1(mux_sel[0]), .B0(cs[1]), .B1(n7), .Y(ns[0]) );
  AOI2B1X1M U12 ( .A1N(cs[2]), .A0(Data_Valid), .B0(n8), .Y(n7) );
  OAI21X2M U13 ( .A0(cs[2]), .A1(n6), .B0(n4), .Y(ns[1]) );
  OAI21X2M U14 ( .A0(cs[0]), .A1(n2), .B0(mux_sel[0]), .Y(busy) );
  NOR2BX2M U15 ( .AN(mux_sel[1]), .B(n5), .Y(ns[2]) );
  AOI2B1X1M U16 ( .A1N(PAR_EN), .A0(ser_done), .B0(n1), .Y(n5) );
endmodule


module PARITY ( CLK, RST, P_DATA, Data_Valid, PAR_TYP, par_bit );
  input [7:0] P_DATA;
  input CLK, RST, Data_Valid, PAR_TYP;
  output par_bit;
  wire   n1, n3, n4, n5, n6, n7, n2;

  DFFRQX1M par_bit_reg ( .D(n7), .CK(CLK), .RN(RST), .Q(par_bit) );
  XOR3XLM U2 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U3 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n6) );
  XNOR2X2M U4 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n5) );
  OAI2BB2X1M U5 ( .B0(n1), .B1(n2), .A0N(par_bit), .A1N(n2), .Y(n7) );
  INVX2M U6 ( .A(Data_Valid), .Y(n2) );
  XOR3XLM U7 ( .A(n3), .B(PAR_TYP), .C(n4), .Y(n1) );
  XOR3XLM U8 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n5), .Y(n4) );
endmodule


module MUX ( mux_sel, ser_data, par_bit, start_bit, stop_bit, TX_OUT );
  input [1:0] mux_sel;
  input ser_data, par_bit, start_bit, stop_bit;
  output TX_OUT;
  wire   n2, n3, n1;

  OAI2B2X4M U1 ( .A1N(mux_sel[1]), .A0(n2), .B0(mux_sel[1]), .B1(n3), .Y(
        TX_OUT) );
  AOI22X1M U2 ( .A0(start_bit), .A1(n1), .B0(stop_bit), .B1(mux_sel[0]), .Y(n3) );
  AOI22X1M U3 ( .A0(ser_data), .A1(n1), .B0(par_bit), .B1(mux_sel[0]), .Y(n2)
         );
  INVX2M U4 ( .A(mux_sel[0]), .Y(n1) );
endmodule


module TOP_UART_TX_PARALLEL_DATA_WIDTH8 ( P_DATA, Data_Valid, PAR_EN, PAR_TYP, 
        clk, rst, TX_OUT, busy );
  input [7:0] P_DATA;
  input Data_Valid, PAR_EN, PAR_TYP, clk, rst;
  output TX_OUT, busy;
  wire   ser_en, ser_done, ser_data, parity_bit, n1, n2;
  wire   [1:0] mux_sel;

  SERIALIZER_DATA_WIDTH8 ser_u0 ( .CLK(clk), .RST(n1), .P_DATA(P_DATA), 
        .ser_en(ser_en), .Data_Valid(Data_Valid), .ser_data(ser_data), 
        .ser_done(ser_done) );
  FSM_tx fsm_u0 ( .CLK(clk), .RST(n1), .Data_Valid(Data_Valid), .PAR_EN(PAR_EN), .ser_done(ser_done), .ser_en(ser_en), .mux_sel(mux_sel), .busy(busy) );
  PARITY parity_u0 ( .CLK(clk), .RST(n1), .P_DATA(P_DATA), .Data_Valid(
        Data_Valid), .PAR_TYP(PAR_TYP), .par_bit(parity_bit) );
  MUX mux_u0 ( .mux_sel(mux_sel), .ser_data(ser_data), .par_bit(parity_bit), 
        .start_bit(1'b0), .stop_bit(1'b1), .TX_OUT(TX_OUT) );
  INVX2M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(rst), .Y(n2) );
endmodule


module Data_Sampling_Prescale_width6 ( CLK, RST, RX_IN, Prescale, edge_cnt, 
        dat_samp_en, sampled_bit );
  input [5:0] Prescale;
  input [5:0] edge_cnt;
  input CLK, RST, RX_IN, dat_samp_en;
  output sampled_bit;
  wire   N6, N7, N8, N9, N10, N11, N12, N15, N16, N17, N18, N19, n20, n21, n22,
         \add_29/carry[4] , \add_29/carry[3] , \add_29/carry[2] , n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37;
  wire   [1:0] samples;

  DFFRQX1M \samples_reg[1]  ( .D(n22), .CK(CLK), .RN(RST), .Q(samples[1]) );
  DFFRQX1M \samples_reg[0]  ( .D(n21), .CK(CLK), .RN(RST), .Q(samples[0]) );
  DFFRQX2M sampled_bit_reg ( .D(n20), .CK(CLK), .RN(RST), .Q(sampled_bit) );
  NOR3X2M U3 ( .A(Prescale[4]), .B(Prescale[5]), .C(n2), .Y(N11) );
  NOR4X2M U4 ( .A(n11), .B(n10), .C(n9), .D(n8), .Y(N12) );
  INVXLM U5 ( .A(N12), .Y(n19) );
  MXI2XLM U6 ( .A(samples[0]), .B(RX_IN), .S0(N12), .Y(n24) );
  XNOR2X2M U7 ( .A(edge_cnt[4]), .B(Prescale[5]), .Y(n23) );
  XNOR2X2M U8 ( .A(edge_cnt[3]), .B(Prescale[4]), .Y(n18) );
  OAI21XLM U9 ( .A0(Prescale[4]), .A1(n2), .B0(Prescale[5]), .Y(n3) );
  OR2X2M U10 ( .A(Prescale[2]), .B(Prescale[1]), .Y(n1) );
  ADDHX1M U11 ( .A(Prescale[4]), .B(\add_29/carry[3] ), .CO(\add_29/carry[4] ), 
        .S(N17) );
  ADDHX1M U12 ( .A(Prescale[3]), .B(\add_29/carry[2] ), .CO(\add_29/carry[3] ), 
        .S(N16) );
  ADDHX1M U13 ( .A(Prescale[2]), .B(Prescale[1]), .CO(\add_29/carry[2] ), .S(
        N15) );
  ADDHX1M U14 ( .A(Prescale[5]), .B(\add_29/carry[4] ), .CO(N19), .S(N18) );
  CLKINVX1M U15 ( .A(Prescale[1]), .Y(N6) );
  OAI2BB1X1M U16 ( .A0N(Prescale[1]), .A1N(Prescale[2]), .B0(n1), .Y(N7) );
  OR2X1M U17 ( .A(n1), .B(Prescale[3]), .Y(n2) );
  OAI2BB1X1M U18 ( .A0N(n1), .A1N(Prescale[3]), .B0(n2), .Y(N8) );
  XNOR2X1M U19 ( .A(Prescale[4]), .B(n2), .Y(N9) );
  NAND2BX1M U20 ( .AN(N11), .B(n3), .Y(N10) );
  NOR2BX1M U21 ( .AN(edge_cnt[0]), .B(N6), .Y(n4) );
  OAI2B2X1M U22 ( .A1N(N7), .A0(n4), .B0(edge_cnt[1]), .B1(n4), .Y(n7) );
  NOR2BX1M U23 ( .AN(N6), .B(edge_cnt[0]), .Y(n5) );
  OAI2B2X1M U24 ( .A1N(edge_cnt[1]), .A0(n5), .B0(N7), .B1(n5), .Y(n6) );
  NAND4BBX1M U25 ( .AN(N11), .BN(edge_cnt[5]), .C(n7), .D(n6), .Y(n11) );
  CLKXOR2X2M U26 ( .A(N10), .B(edge_cnt[4]), .Y(n10) );
  CLKXOR2X2M U27 ( .A(N8), .B(edge_cnt[2]), .Y(n9) );
  CLKXOR2X2M U28 ( .A(N9), .B(edge_cnt[3]), .Y(n8) );
  NOR2X1M U29 ( .A(n12), .B(n13), .Y(n22) );
  MXI2X1M U30 ( .A(samples[1]), .B(RX_IN), .S0(n14), .Y(n13) );
  NOR3X1M U31 ( .A(n15), .B(n16), .C(n17), .Y(n14) );
  NAND3X1M U32 ( .A(n18), .B(n19), .C(n23), .Y(n15) );
  NOR2X1M U33 ( .A(n12), .B(n24), .Y(n21) );
  CLKINVX1M U34 ( .A(dat_samp_en), .Y(n12) );
  CLKMX2X2M U35 ( .A(sampled_bit), .B(n25), .S0(n26), .Y(n20) );
  NOR4X1M U36 ( .A(n27), .B(n28), .C(n29), .D(n30), .Y(n26) );
  CLKXOR2X2M U37 ( .A(edge_cnt[1]), .B(N15), .Y(n30) );
  CLKXOR2X2M U38 ( .A(edge_cnt[0]), .B(N6), .Y(n29) );
  NAND3X1M U39 ( .A(n31), .B(n19), .C(dat_samp_en), .Y(n28) );
  NAND4BBX1M U40 ( .AN(n17), .BN(n16), .C(n23), .D(n18), .Y(n31) );
  NAND3BX1M U41 ( .AN(edge_cnt[5]), .B(n32), .C(n33), .Y(n16) );
  XNOR2X1M U42 ( .A(edge_cnt[0]), .B(Prescale[1]), .Y(n33) );
  XNOR2X1M U43 ( .A(edge_cnt[1]), .B(Prescale[2]), .Y(n32) );
  CLKXOR2X2M U44 ( .A(edge_cnt[2]), .B(Prescale[3]), .Y(n17) );
  NAND4X1M U45 ( .A(n34), .B(n35), .C(n36), .D(n37), .Y(n27) );
  XNOR2X1M U46 ( .A(edge_cnt[2]), .B(N16), .Y(n37) );
  XNOR2X1M U47 ( .A(edge_cnt[3]), .B(N17), .Y(n36) );
  XNOR2X1M U48 ( .A(edge_cnt[4]), .B(N18), .Y(n35) );
  XNOR2X1M U49 ( .A(edge_cnt[5]), .B(N19), .Y(n34) );
  ADDFX1M U50 ( .A(samples[0]), .B(samples[1]), .CI(RX_IN), .CO(n25) );
endmodule


module edge_bit_counter_Prescale_width6 ( CLK, RST, enable, Prescale, edge_cnt, 
        bit_cnt );
  input [5:0] Prescale;
  output [5:0] edge_cnt;
  output [3:0] bit_cnt;
  input CLK, RST, enable;
  wire   N7, N8, N9, N10, N11, N12, N13, N14, N21, N22, N23, N24, N37, N38,
         N39, N40, N41, N42, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         \add_25/carry[5] , \add_25/carry[4] , \add_25/carry[3] ,
         \add_25/carry[2] , n1, n2, n3, n4, n5, n6, n7, n8, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30;

  DFFRQX1M \bit_cnt_reg[3]  ( .D(n18), .CK(CLK), .RN(n2), .Q(bit_cnt[3]) );
  DFFRQX2M \bit_cnt_reg[0]  ( .D(n17), .CK(CLK), .RN(n2), .Q(bit_cnt[0]) );
  DFFRQX2M \edge_cnt_reg[5]  ( .D(N42), .CK(CLK), .RN(n2), .Q(edge_cnt[5]) );
  DFFRQX4M \edge_cnt_reg[1]  ( .D(N38), .CK(CLK), .RN(n2), .Q(edge_cnt[1]) );
  DFFRQX4M \edge_cnt_reg[0]  ( .D(N37), .CK(CLK), .RN(n2), .Q(edge_cnt[0]) );
  DFFRQX2M \edge_cnt_reg[2]  ( .D(N39), .CK(CLK), .RN(n2), .Q(edge_cnt[2]) );
  DFFRQX1M \bit_cnt_reg[2]  ( .D(n15), .CK(CLK), .RN(n2), .Q(bit_cnt[2]) );
  DFFRQX1M \bit_cnt_reg[1]  ( .D(n16), .CK(CLK), .RN(n2), .Q(bit_cnt[1]) );
  DFFRQX2M \edge_cnt_reg[3]  ( .D(N40), .CK(CLK), .RN(n2), .Q(edge_cnt[3]) );
  DFFRQX2M \edge_cnt_reg[4]  ( .D(N41), .CK(CLK), .RN(n2), .Q(edge_cnt[4]) );
  NOR4X2M U3 ( .A(n26), .B(n25), .C(n24), .D(n23), .Y(N14) );
  NOR2X1M U4 ( .A(n28), .B(N14), .Y(n12) );
  INVX4M U5 ( .A(n12), .Y(n27) );
  NOR2BX2M U6 ( .AN(N21), .B(n27), .Y(N38) );
  NOR2BX2M U7 ( .AN(N22), .B(n27), .Y(N39) );
  NOR2BX2M U8 ( .AN(N23), .B(n27), .Y(N40) );
  NOR2BX2M U9 ( .AN(N24), .B(n27), .Y(N41) );
  INVX2M U10 ( .A(enable), .Y(n28) );
  INVX4M U11 ( .A(n3), .Y(n2) );
  INVX2M U12 ( .A(RST), .Y(n3) );
  OAI22X1M U13 ( .A0(n30), .A1(n27), .B0(n11), .B1(n28), .Y(n16) );
  AOI32X1M U14 ( .A0(n27), .A1(n30), .A2(bit_cnt[0]), .B0(bit_cnt[1]), .B1(n29), .Y(n11) );
  INVX2M U15 ( .A(bit_cnt[1]), .Y(n30) );
  OAI32X1M U16 ( .A0(n28), .A1(bit_cnt[0]), .A2(n12), .B0(n29), .B1(n27), .Y(
        n17) );
  AND3X1M U17 ( .A(N14), .B(bit_cnt[1]), .C(bit_cnt[0]), .Y(n10) );
  NOR2X2M U18 ( .A(n13), .B(n28), .Y(n18) );
  CLKXOR2X2M U19 ( .A(n14), .B(bit_cnt[3]), .Y(n13) );
  NAND2X2M U20 ( .A(n10), .B(bit_cnt[2]), .Y(n14) );
  NOR2X2M U21 ( .A(n9), .B(n28), .Y(n15) );
  XNOR2X2M U22 ( .A(n10), .B(bit_cnt[2]), .Y(n9) );
  NOR2X2M U23 ( .A(edge_cnt[0]), .B(n27), .Y(N37) );
  NOR2X2M U24 ( .A(n1), .B(n27), .Y(N42) );
  XNOR2X2M U25 ( .A(\add_25/carry[5] ), .B(edge_cnt[5]), .Y(n1) );
  ADDHX1M U26 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .CO(\add_25/carry[2] ), .S(
        N21) );
  ADDHX1M U27 ( .A(edge_cnt[2]), .B(\add_25/carry[2] ), .CO(\add_25/carry[3] ), 
        .S(N22) );
  ADDHX1M U28 ( .A(edge_cnt[3]), .B(\add_25/carry[3] ), .CO(\add_25/carry[4] ), 
        .S(N23) );
  ADDHX1M U29 ( .A(edge_cnt[4]), .B(\add_25/carry[4] ), .CO(\add_25/carry[5] ), 
        .S(N24) );
  INVX2M U30 ( .A(bit_cnt[0]), .Y(n29) );
  OR2X2M U31 ( .A(Prescale[1]), .B(Prescale[0]), .Y(n4) );
  CLKINVX1M U32 ( .A(Prescale[0]), .Y(N7) );
  OAI2BB1X1M U33 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n4), .Y(N8) );
  OR2X1M U34 ( .A(n4), .B(Prescale[2]), .Y(n5) );
  OAI2BB1X1M U35 ( .A0N(n4), .A1N(Prescale[2]), .B0(n5), .Y(N9) );
  OR2X1M U36 ( .A(n5), .B(Prescale[3]), .Y(n6) );
  OAI2BB1X1M U37 ( .A0N(n5), .A1N(Prescale[3]), .B0(n6), .Y(N10) );
  OR2X1M U38 ( .A(n6), .B(Prescale[4]), .Y(n7) );
  OAI2BB1X1M U39 ( .A0N(n6), .A1N(Prescale[4]), .B0(n7), .Y(N11) );
  NOR2X1M U40 ( .A(n7), .B(Prescale[5]), .Y(N13) );
  AO21XLM U41 ( .A0(n7), .A1(Prescale[5]), .B0(N13), .Y(N12) );
  NOR2BX1M U42 ( .AN(N7), .B(edge_cnt[0]), .Y(n8) );
  OAI2B2X1M U43 ( .A1N(edge_cnt[1]), .A0(n8), .B0(N8), .B1(n8), .Y(n22) );
  XNOR2X1M U44 ( .A(N12), .B(edge_cnt[5]), .Y(n21) );
  NOR2BX1M U45 ( .AN(edge_cnt[0]), .B(N7), .Y(n19) );
  OAI2B2X1M U46 ( .A1N(N8), .A0(n19), .B0(edge_cnt[1]), .B1(n19), .Y(n20) );
  NAND4BX1M U47 ( .AN(N13), .B(n22), .C(n21), .D(n20), .Y(n26) );
  CLKXOR2X2M U48 ( .A(N11), .B(edge_cnt[4]), .Y(n25) );
  CLKXOR2X2M U49 ( .A(N9), .B(edge_cnt[2]), .Y(n24) );
  CLKXOR2X2M U50 ( .A(N10), .B(edge_cnt[3]), .Y(n23) );
endmodule


module Deserializer ( CLK, RST, deser_en, sampled_bit, P_DATA );
  output [7:0] P_DATA;
  input CLK, RST, deser_en, sampled_bit;
  wire   n9, n10, n11, n12, n13, n14, n15, n16, n1, n2, n3, n4, n5, n6, n7, n8,
         n17, n18, n19;

  DFFRQX1M \P_DATA_reg[0]  ( .D(n9), .CK(CLK), .RN(n2), .Q(P_DATA[0]) );
  DFFRQX1M \P_DATA_reg[4]  ( .D(n13), .CK(CLK), .RN(n2), .Q(P_DATA[4]) );
  DFFRQX1M \P_DATA_reg[5]  ( .D(n14), .CK(CLK), .RN(n2), .Q(P_DATA[5]) );
  DFFRQX1M \P_DATA_reg[1]  ( .D(n10), .CK(CLK), .RN(n2), .Q(P_DATA[1]) );
  DFFRQX1M \P_DATA_reg[7]  ( .D(n16), .CK(CLK), .RN(n2), .Q(P_DATA[7]) );
  DFFRQX1M \P_DATA_reg[3]  ( .D(n12), .CK(CLK), .RN(n2), .Q(P_DATA[3]) );
  DFFRQX1M \P_DATA_reg[6]  ( .D(n15), .CK(CLK), .RN(n2), .Q(P_DATA[6]) );
  DFFRQX1M \P_DATA_reg[2]  ( .D(n11), .CK(CLK), .RN(n2), .Q(P_DATA[2]) );
  INVX4M U2 ( .A(n1), .Y(n4) );
  OAI22X1M U3 ( .A0(n4), .A1(n18), .B0(n1), .B1(n19), .Y(n10) );
  OAI22X1M U4 ( .A0(n4), .A1(n17), .B0(n1), .B1(n18), .Y(n11) );
  OAI22X1M U5 ( .A0(n4), .A1(n8), .B0(n1), .B1(n17), .Y(n12) );
  OAI22X1M U6 ( .A0(n4), .A1(n7), .B0(n1), .B1(n8), .Y(n13) );
  OAI22X1M U7 ( .A0(n4), .A1(n6), .B0(n1), .B1(n7), .Y(n14) );
  OAI22X1M U8 ( .A0(n4), .A1(n5), .B0(n1), .B1(n6), .Y(n15) );
  INVX4M U9 ( .A(n3), .Y(n2) );
  INVX2M U10 ( .A(RST), .Y(n3) );
  OAI2BB2X1M U11 ( .B0(n19), .B1(n4), .A0N(P_DATA[0]), .A1N(n4), .Y(n9) );
  BUFX4M U12 ( .A(deser_en), .Y(n1) );
  OAI2BB2X1M U13 ( .B0(n1), .B1(n5), .A0N(sampled_bit), .A1N(n1), .Y(n16) );
  INVX2M U14 ( .A(P_DATA[2]), .Y(n18) );
  INVX2M U15 ( .A(P_DATA[6]), .Y(n6) );
  INVX2M U16 ( .A(P_DATA[3]), .Y(n17) );
  INVX2M U17 ( .A(P_DATA[1]), .Y(n19) );
  INVX2M U18 ( .A(P_DATA[5]), .Y(n7) );
  INVX2M U19 ( .A(P_DATA[4]), .Y(n8) );
  INVX2M U20 ( .A(P_DATA[7]), .Y(n5) );
endmodule


module Parity_Check ( CLK, RST, par_chk_en, PAR_TYP, sampled_bit, P_DATA, 
        par_err );
  input [7:0] P_DATA;
  input CLK, RST, par_chk_en, PAR_TYP, sampled_bit;
  output par_err;
  wire   n1, n3, n4, n5, n6, n7, n8, n2;

  DFFRQX4M par_err_reg ( .D(n8), .CK(CLK), .RN(RST), .Q(par_err) );
  OAI2BB2X1M U2 ( .B0(n1), .B1(n2), .A0N(par_err), .A1N(n2), .Y(n8) );
  XOR3XLM U3 ( .A(n3), .B(n4), .C(n5), .Y(n1) );
  INVX2M U4 ( .A(par_chk_en), .Y(n2) );
  XNOR2X2M U5 ( .A(sampled_bit), .B(PAR_TYP), .Y(n5) );
  XOR3XLM U6 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n7), .Y(n3) );
  XNOR2X2M U7 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n7) );
  XOR3XLM U8 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n6), .Y(n4) );
  XNOR2X2M U9 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n6) );
endmodule


module Start_Check ( CLK, RST, strt_chk_en, sampled_bit, strt_glitch );
  input CLK, RST, strt_chk_en, sampled_bit;
  output strt_glitch;
  wire   N4;

  DFFRQX1M strt_glitch_reg ( .D(N4), .CK(CLK), .RN(RST), .Q(strt_glitch) );
  AND2X2M U3 ( .A(strt_chk_en), .B(sampled_bit), .Y(N4) );
endmodule


module Stop_Check ( CLK, RST, stp_chk_en, sampled_bit, stp_err );
  input CLK, RST, stp_chk_en, sampled_bit;
  output stp_err;
  wire   N4;

  DFFRQX2M stp_err_reg ( .D(N4), .CK(CLK), .RN(RST), .Q(stp_err) );
  NOR2BX2M U3 ( .AN(stp_chk_en), .B(sampled_bit), .Y(N4) );
endmodule


module FSM_Prescale_width6 ( CLK, RST, RX_IN, PAR_EN, Prescale, edge_cnt, 
        bit_cnt, par_err, strt_glitch, stp_err, dat_samp_en, enable, deser_en, 
        par_chk_en, strt_chk_en, stp_chk_en, data_valid );
  input [5:0] Prescale;
  input [5:0] edge_cnt;
  input [3:0] bit_cnt;
  input CLK, RST, RX_IN, PAR_EN, par_err, strt_glitch, stp_err;
  output dat_samp_en, enable, deser_en, par_chk_en, strt_chk_en, stp_chk_en,
         data_valid;
  wire   n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, \r89/EQ ,
         \r89/B[0] , \r89/B[1] , \r89/B[2] , \r89/B[3] , \r89/B[4] ,
         \r89/B[5] , \r89/B[6] , n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23;
  wire   [2:0] cs;
  wire   [2:0] ns;

  DFFRQX2M \cs_reg[1]  ( .D(ns[1]), .CK(CLK), .RN(n2), .Q(cs[1]) );
  DFFRQX2M \cs_reg[0]  ( .D(ns[0]), .CK(CLK), .RN(n2), .Q(cs[0]) );
  DFFRQX2M \cs_reg[2]  ( .D(n17), .CK(CLK), .RN(n2), .Q(cs[2]) );
  DFFRQX1M data_valid_r_reg ( .D(n19), .CK(CLK), .RN(n2), .Q(data_valid) );
  NOR4X4M U3 ( .A(n16), .B(n15), .C(n14), .D(n13), .Y(\r89/EQ ) );
  NOR2XLM U4 ( .A(n39), .B(n22), .Y(n38) );
  NOR3X1M U5 ( .A(n36), .B(cs[0]), .C(n22), .Y(deser_en) );
  INVX2M U6 ( .A(cs[0]), .Y(n18) );
  NAND2X2M U7 ( .A(cs[1]), .B(n21), .Y(n36) );
  CLKINVX2M U8 ( .A(\r89/EQ ), .Y(n22) );
  NOR3X4M U9 ( .A(n22), .B(n18), .C(n36), .Y(par_chk_en) );
  INVX2M U10 ( .A(n41), .Y(n19) );
  INVX2M U11 ( .A(n3), .Y(n2) );
  INVX2M U12 ( .A(RST), .Y(n3) );
  NAND3X2M U13 ( .A(bit_cnt[3]), .B(\r89/EQ ), .C(n43), .Y(n37) );
  NOR3X2M U14 ( .A(bit_cnt[0]), .B(bit_cnt[2]), .C(bit_cnt[1]), .Y(n43) );
  OAI222X1M U15 ( .A0(cs[2]), .A1(n40), .B0(n22), .B1(n34), .C0(RX_IN), .C1(
        n41), .Y(ns[0]) );
  AOI22X1M U16 ( .A0(n42), .A1(n18), .B0(cs[0]), .B1(n22), .Y(n40) );
  OAI32X1M U17 ( .A0(n23), .A1(n20), .A2(n37), .B0(cs[1]), .B1(RX_IN), .Y(n42)
         );
  INVX2M U18 ( .A(PAR_EN), .Y(n23) );
  NOR4X2M U19 ( .A(n22), .B(n18), .C(cs[1]), .D(cs[2]), .Y(strt_chk_en) );
  OAI2B2X1M U20 ( .A1N(strt_chk_en), .A0(strt_glitch), .B0(n38), .B1(n36), .Y(
        ns[1]) );
  AOI2BB1X2M U21 ( .A0N(n37), .A1N(PAR_EN), .B0(cs[0]), .Y(n39) );
  INVX2M U22 ( .A(n33), .Y(n17) );
  NOR3BX2M U23 ( .AN(n34), .B(par_chk_en), .C(n35), .Y(n33) );
  OAI32X1M U24 ( .A0(n36), .A1(PAR_EN), .A2(n37), .B0(n32), .B1(\r89/EQ ), .Y(
        n35) );
  INVX2M U25 ( .A(cs[2]), .Y(n21) );
  NAND3X2M U26 ( .A(n18), .B(n20), .C(cs[2]), .Y(n32) );
  INVX2M U27 ( .A(cs[1]), .Y(n20) );
  OR3X2M U28 ( .A(stp_err), .B(par_err), .C(n32), .Y(n34) );
  NAND3X2M U29 ( .A(cs[0]), .B(n20), .C(cs[2]), .Y(n41) );
  INVX2M U30 ( .A(n32), .Y(stp_chk_en) );
  OR2X2M U31 ( .A(Prescale[1]), .B(Prescale[0]), .Y(n4) );
  BUFX2M U32 ( .A(dat_samp_en), .Y(enable) );
  OAI211X4M U33 ( .A0(cs[2]), .A1(n18), .B0(n36), .C0(n32), .Y(dat_samp_en) );
  CLKINVX1M U34 ( .A(Prescale[0]), .Y(\r89/B[0] ) );
  OAI2BB1X1M U35 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n4), .Y(
        \r89/B[1] ) );
  OR2X1M U36 ( .A(n4), .B(Prescale[2]), .Y(n5) );
  OAI2BB1X1M U37 ( .A0N(n4), .A1N(Prescale[2]), .B0(n5), .Y(\r89/B[2] ) );
  OR2X1M U38 ( .A(n5), .B(Prescale[3]), .Y(n6) );
  OAI2BB1X1M U39 ( .A0N(n5), .A1N(Prescale[3]), .B0(n6), .Y(\r89/B[3] ) );
  OR2X1M U40 ( .A(n6), .B(Prescale[4]), .Y(n7) );
  OAI2BB1X1M U41 ( .A0N(n6), .A1N(Prescale[4]), .B0(n7), .Y(\r89/B[4] ) );
  NOR2X1M U42 ( .A(n7), .B(Prescale[5]), .Y(\r89/B[6] ) );
  AO21XLM U43 ( .A0(n7), .A1(Prescale[5]), .B0(\r89/B[6] ), .Y(\r89/B[5] ) );
  NOR2BX1M U44 ( .AN(\r89/B[0] ), .B(edge_cnt[0]), .Y(n8) );
  OAI2B2X1M U45 ( .A1N(edge_cnt[1]), .A0(n8), .B0(\r89/B[1] ), .B1(n8), .Y(n12) );
  XNOR2X1M U46 ( .A(\r89/B[5] ), .B(edge_cnt[5]), .Y(n11) );
  NOR2BX1M U47 ( .AN(edge_cnt[0]), .B(\r89/B[0] ), .Y(n9) );
  OAI2B2X1M U48 ( .A1N(\r89/B[1] ), .A0(n9), .B0(edge_cnt[1]), .B1(n9), .Y(n10) );
  NAND4BX1M U49 ( .AN(\r89/B[6] ), .B(n12), .C(n11), .D(n10), .Y(n16) );
  CLKXOR2X2M U50 ( .A(\r89/B[4] ), .B(edge_cnt[4]), .Y(n15) );
  CLKXOR2X2M U51 ( .A(\r89/B[2] ), .B(edge_cnt[2]), .Y(n14) );
  CLKXOR2X2M U52 ( .A(\r89/B[3] ), .B(edge_cnt[3]), .Y(n13) );
endmodule


module TOP_UART_RX_Prescale_width6 ( CLK, RST, RX_IN, Prescale, PAR_EN, 
        PAR_TYP, P_DATA, data_valid, Parity_Error, Stop_Error );
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input CLK, RST, RX_IN, PAR_EN, PAR_TYP;
  output data_valid, Parity_Error, Stop_Error;
  wire   RX_IN_sync, RX_IN_meta, dat_samp_en, sampled_bit, enable, deser_en,
         par_chk_en, strt_chk_en, strt_glitch, stp_chk_en, n1, n2;
  wire   [5:0] edge_cnt;
  wire   [3:0] bit_cnt;

  Data_Sampling_Prescale_width6 U0 ( .CLK(CLK), .RST(n1), .RX_IN(RX_IN_sync), 
        .Prescale(Prescale), .edge_cnt(edge_cnt), .dat_samp_en(dat_samp_en), 
        .sampled_bit(sampled_bit) );
  edge_bit_counter_Prescale_width6 U1 ( .CLK(CLK), .RST(n1), .enable(enable), 
        .Prescale(Prescale), .edge_cnt(edge_cnt), .bit_cnt(bit_cnt) );
  Deserializer U2 ( .CLK(CLK), .RST(n1), .deser_en(deser_en), .sampled_bit(
        sampled_bit), .P_DATA(P_DATA) );
  Parity_Check U3 ( .CLK(CLK), .RST(n1), .par_chk_en(par_chk_en), .PAR_TYP(
        PAR_TYP), .sampled_bit(sampled_bit), .P_DATA(P_DATA), .par_err(
        Parity_Error) );
  Start_Check U4 ( .CLK(CLK), .RST(n1), .strt_chk_en(strt_chk_en), 
        .sampled_bit(sampled_bit), .strt_glitch(strt_glitch) );
  Stop_Check U5 ( .CLK(CLK), .RST(n1), .stp_chk_en(stp_chk_en), .sampled_bit(
        sampled_bit), .stp_err(Stop_Error) );
  FSM_Prescale_width6 U6 ( .CLK(CLK), .RST(n1), .RX_IN(RX_IN_sync), .PAR_EN(
        PAR_EN), .Prescale(Prescale), .edge_cnt(edge_cnt), .bit_cnt(bit_cnt), 
        .par_err(Parity_Error), .strt_glitch(strt_glitch), .stp_err(Stop_Error), .dat_samp_en(dat_samp_en), .enable(enable), .deser_en(deser_en), 
        .par_chk_en(par_chk_en), .strt_chk_en(strt_chk_en), .stp_chk_en(
        stp_chk_en), .data_valid(data_valid) );
  DFFSQX2M RX_IN_sync_reg ( .D(RX_IN_meta), .CK(CLK), .SN(n1), .Q(RX_IN_sync)
         );
  DFFSQX2M RX_IN_meta_reg ( .D(RX_IN), .CK(CLK), .SN(n1), .Q(RX_IN_meta) );
  INVX4M U9 ( .A(n2), .Y(n1) );
  INVX2M U10 ( .A(RST), .Y(n2) );
endmodule


module TOP_UART ( TX_P_DATA, TX_Data_Valid, parity_enable, parity_type, TX_CLK, 
        RST_TX, RX_CLK, RST_RX, RX_IN, Prescale, TX_OUT, busy, RX_P_DATA, 
        RX_data_valid, Parity_Error, Stop_Error );
  input [7:0] TX_P_DATA;
  input [5:0] Prescale;
  output [7:0] RX_P_DATA;
  input TX_Data_Valid, parity_enable, parity_type, TX_CLK, RST_TX, RX_CLK,
         RST_RX, RX_IN;
  output TX_OUT, busy, RX_data_valid, Parity_Error, Stop_Error;
  wire   n1, n2;

  TOP_UART_TX_PARALLEL_DATA_WIDTH8 U0_UART_TX ( .P_DATA(TX_P_DATA), 
        .Data_Valid(TX_Data_Valid), .PAR_EN(parity_enable), .PAR_TYP(
        parity_type), .clk(TX_CLK), .rst(n2), .TX_OUT(TX_OUT), .busy(busy) );
  TOP_UART_RX_Prescale_width6 U0_UART_RX ( .CLK(RX_CLK), .RST(n1), .RX_IN(
        RX_IN), .Prescale(Prescale), .PAR_EN(parity_enable), .PAR_TYP(
        parity_type), .P_DATA(RX_P_DATA), .data_valid(RX_data_valid), 
        .Parity_Error(Parity_Error), .Stop_Error(Stop_Error) );
  BUFX2M U1 ( .A(RST_TX), .Y(n2) );
  BUFX2M U2 ( .A(RST_RX), .Y(n1) );
endmodule


module sys_ctrl ( CLK, RST, RX_P_DATA, RX_D_VLD, RdData, RdData_Valid, ALU_OUT, 
        OUT_Valid, FIFO_FULL, Address, WrEn, RdEn, WrData, ALU_FUN, EN, CLK_EN, 
        TX_P_DATA, TX_D_VLD, clk_div_en );
  input [7:0] RX_P_DATA;
  input [7:0] RdData;
  input [15:0] ALU_OUT;
  output [3:0] Address;
  output [7:0] WrData;
  output [3:0] ALU_FUN;
  output [7:0] TX_P_DATA;
  input CLK, RST, RX_D_VLD, RdData_Valid, OUT_Valid, FIFO_FULL;
  output WrEn, RdEn, EN, CLK_EN, TX_D_VLD, clk_div_en;
  wire   \addr_reg[0] , N188, n14, n15, n16, n17, n18, n19, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n20, n21,
         n22, n23, n24, n25, n26, n55, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149;
  wire   [3:0] current_state;
  wire   [15:0] alu_out_reg;

  OAI31X4M U85 ( .A0(n75), .A1(n145), .A2(n73), .B0(n76), .Y(n62) );
  NOR3BX4M U90 ( .AN(RX_P_DATA[7]), .B(n146), .C(n53), .Y(n68) );
  DFFRQX2M \alu_out_reg_reg[15]  ( .D(n131), .CK(CLK), .RN(n13), .Q(
        alu_out_reg[15]) );
  DFFRQX2M \alu_out_reg_reg[14]  ( .D(n130), .CK(CLK), .RN(n13), .Q(
        alu_out_reg[14]) );
  DFFRQX2M \alu_out_reg_reg[13]  ( .D(n129), .CK(CLK), .RN(n13), .Q(
        alu_out_reg[13]) );
  DFFRQX2M \alu_out_reg_reg[12]  ( .D(n128), .CK(CLK), .RN(n13), .Q(
        alu_out_reg[12]) );
  DFFRQX2M \alu_out_reg_reg[11]  ( .D(n127), .CK(CLK), .RN(n13), .Q(
        alu_out_reg[11]) );
  DFFRQX2M \alu_out_reg_reg[10]  ( .D(n126), .CK(CLK), .RN(n13), .Q(
        alu_out_reg[10]) );
  DFFRQX2M \alu_out_reg_reg[9]  ( .D(n125), .CK(CLK), .RN(n13), .Q(
        alu_out_reg[9]) );
  DFFRQX2M \alu_out_reg_reg[8]  ( .D(n124), .CK(CLK), .RN(n13), .Q(
        alu_out_reg[8]) );
  DFFRQX2M \alu_out_reg_reg[7]  ( .D(n123), .CK(CLK), .RN(n13), .Q(
        alu_out_reg[7]) );
  DFFRQX2M \alu_out_reg_reg[6]  ( .D(n122), .CK(CLK), .RN(n13), .Q(
        alu_out_reg[6]) );
  DFFRQX2M \alu_out_reg_reg[5]  ( .D(n121), .CK(CLK), .RN(n12), .Q(
        alu_out_reg[5]) );
  DFFRQX2M \alu_out_reg_reg[4]  ( .D(n120), .CK(CLK), .RN(n12), .Q(
        alu_out_reg[4]) );
  DFFRQX2M \alu_out_reg_reg[3]  ( .D(n119), .CK(CLK), .RN(n12), .Q(
        alu_out_reg[3]) );
  DFFRQX2M \alu_out_reg_reg[2]  ( .D(n118), .CK(CLK), .RN(n12), .Q(
        alu_out_reg[2]) );
  DFFRQX2M \alu_out_reg_reg[1]  ( .D(n117), .CK(CLK), .RN(n12), .Q(
        alu_out_reg[1]) );
  DFFRQX2M \alu_out_reg_reg[0]  ( .D(n116), .CK(CLK), .RN(n12), .Q(
        alu_out_reg[0]) );
  DFFRQX2M \addr_reg_reg[0]  ( .D(n90), .CK(CLK), .RN(n10), .Q(\addr_reg[0] )
         );
  DFFRQX2M CLK_EN_reg ( .D(n102), .CK(CLK), .RN(n11), .Q(CLK_EN) );
  DFFRQX2M \WrData_reg[6]  ( .D(n114), .CK(CLK), .RN(n12), .Q(WrData[6]) );
  DFFRQX2M \WrData_reg[4]  ( .D(n112), .CK(CLK), .RN(n12), .Q(WrData[4]) );
  DFFRQX2M \WrData_reg[3]  ( .D(n111), .CK(CLK), .RN(n12), .Q(WrData[3]) );
  DFFRQX2M \WrData_reg[2]  ( .D(n110), .CK(CLK), .RN(n11), .Q(WrData[2]) );
  DFFRQX2M \WrData_reg[1]  ( .D(n109), .CK(CLK), .RN(n11), .Q(WrData[1]) );
  DFFRQX2M \WrData_reg[0]  ( .D(n108), .CK(CLK), .RN(n11), .Q(WrData[0]) );
  DFFRQX2M \TX_P_DATA_reg[7]  ( .D(n101), .CK(CLK), .RN(n11), .Q(TX_P_DATA[7])
         );
  DFFRQX2M \TX_P_DATA_reg[6]  ( .D(n100), .CK(CLK), .RN(n11), .Q(TX_P_DATA[6])
         );
  DFFRQX2M \TX_P_DATA_reg[5]  ( .D(n99), .CK(CLK), .RN(n11), .Q(TX_P_DATA[5])
         );
  DFFRQX2M \TX_P_DATA_reg[4]  ( .D(n98), .CK(CLK), .RN(n11), .Q(TX_P_DATA[4])
         );
  DFFRQX2M \TX_P_DATA_reg[3]  ( .D(n97), .CK(CLK), .RN(n10), .Q(TX_P_DATA[3])
         );
  DFFRQX2M \TX_P_DATA_reg[2]  ( .D(n96), .CK(CLK), .RN(n10), .Q(TX_P_DATA[2])
         );
  DFFRQX2M \TX_P_DATA_reg[1]  ( .D(n95), .CK(CLK), .RN(n10), .Q(TX_P_DATA[1])
         );
  DFFRQX2M \TX_P_DATA_reg[0]  ( .D(n94), .CK(CLK), .RN(n10), .Q(TX_P_DATA[0])
         );
  DFFRQX2M \WrData_reg[7]  ( .D(n115), .CK(CLK), .RN(n12), .Q(WrData[7]) );
  DFFRQX2M \WrData_reg[5]  ( .D(n113), .CK(CLK), .RN(n12), .Q(WrData[5]) );
  DFFRX1M \addr_reg_reg[3]  ( .D(n93), .CK(CLK), .RN(n10), .QN(n17) );
  DFFRX1M \addr_reg_reg[2]  ( .D(n92), .CK(CLK), .RN(n10), .QN(n18) );
  DFFRX1M \addr_reg_reg[1]  ( .D(n91), .CK(CLK), .RN(n10), .QN(n19) );
  DFFRQX2M EN_reg ( .D(n103), .CK(CLK), .RN(n11), .Q(EN) );
  DFFRQX2M WrEn_reg ( .D(n4), .CK(CLK), .RN(n12), .Q(WrEn) );
  DFFRQX2M RdEn_reg ( .D(N188), .CK(CLK), .RN(n12), .Q(RdEn) );
  DFFRQX4M \ALU_FUN_reg[2]  ( .D(n106), .CK(CLK), .RN(n11), .Q(ALU_FUN[2]) );
  DFFRQX2M TX_D_VLD_reg ( .D(n23), .CK(CLK), .RN(n10), .Q(TX_D_VLD) );
  DFFRQX2M \ALU_FUN_reg[3]  ( .D(n107), .CK(CLK), .RN(n11), .Q(ALU_FUN[3]) );
  DFFRQX2M \ALU_FUN_reg[1]  ( .D(n105), .CK(CLK), .RN(n11), .Q(ALU_FUN[1]) );
  DFFRQX2M \current_state_reg[1]  ( .D(n133), .CK(CLK), .RN(n13), .Q(
        current_state[1]) );
  DFFRQX4M \current_state_reg[2]  ( .D(n134), .CK(CLK), .RN(n13), .Q(
        current_state[2]) );
  DFFRQX4M \current_state_reg[3]  ( .D(n132), .CK(CLK), .RN(n13), .Q(
        current_state[3]) );
  DFFRQX2M \current_state_reg[0]  ( .D(n135), .CK(CLK), .RN(n21), .Q(
        current_state[0]) );
  DFFRQX2M \ALU_FUN_reg[0]  ( .D(n104), .CK(CLK), .RN(n11), .Q(ALU_FUN[0]) );
  DFFRX4M \Address_reg[2]  ( .D(n87), .CK(CLK), .RN(n10), .Q(Address[2]), .QN(
        n15) );
  DFFRX2M \Address_reg[1]  ( .D(n88), .CK(CLK), .RN(n10), .Q(Address[1]), .QN(
        n16) );
  DFFRX2M \Address_reg[3]  ( .D(n86), .CK(CLK), .RN(n10), .Q(Address[3]), .QN(
        n14) );
  DFFRQX2M \Address_reg[0]  ( .D(n89), .CK(CLK), .RN(n10), .Q(Address[0]) );
  INVX2M U3 ( .A(1'b0), .Y(clk_div_en) );
  BUFX2M U5 ( .A(n29), .Y(n3) );
  NOR3BX2M U6 ( .AN(n58), .B(current_state[2]), .C(n138), .Y(n29) );
  INVX2M U7 ( .A(n4), .Y(n5) );
  INVX2M U8 ( .A(current_state[0]), .Y(n138) );
  NOR2BX2M U9 ( .AN(OUT_Valid), .B(n51), .Y(n56) );
  NAND4X2M U10 ( .A(current_state[3]), .B(current_state[0]), .C(n141), .D(n142), .Y(n46) );
  NOR4X2M U11 ( .A(n138), .B(current_state[1]), .C(current_state[2]), .D(
        current_state[3]), .Y(n34) );
  CLKBUFX6M U12 ( .A(n20), .Y(n11) );
  CLKBUFX6M U13 ( .A(n21), .Y(n12) );
  CLKBUFX6M U14 ( .A(n20), .Y(n13) );
  INVX2M U15 ( .A(n31), .Y(n136) );
  NAND2X2M U16 ( .A(n30), .B(n136), .Y(n27) );
  INVX4M U17 ( .A(n82), .Y(n55) );
  INVX2M U18 ( .A(n36), .Y(n23) );
  CLKBUFX6M U19 ( .A(n20), .Y(n10) );
  BUFX2M U20 ( .A(n21), .Y(n20) );
  NAND2X1M U21 ( .A(n3), .B(n136), .Y(n28) );
  NOR2X2M U22 ( .A(N188), .B(n4), .Y(n31) );
  OAI22X1M U23 ( .A0(n24), .A1(n141), .B0(n59), .B1(n60), .Y(n133) );
  NOR4BX1M U24 ( .AN(n61), .B(n34), .C(n140), .D(n62), .Y(n59) );
  NAND2X2M U25 ( .A(n77), .B(n61), .Y(n65) );
  NAND3X2M U26 ( .A(n141), .B(n143), .C(n74), .Y(n53) );
  INVX4M U27 ( .A(n60), .Y(n24) );
  NAND2X2M U28 ( .A(n85), .B(n138), .Y(n82) );
  OAI211X2M U29 ( .A0(n24), .A1(n143), .B0(n57), .C0(n51), .Y(n132) );
  OAI21X2M U30 ( .A0(n140), .A1(n54), .B0(n24), .Y(n57) );
  OAI211X2M U31 ( .A0(n24), .A1(n142), .B0(n63), .C0(n64), .Y(n134) );
  OAI31X1M U32 ( .A0(n65), .A1(n66), .A2(n3), .B0(n24), .Y(n63) );
  INVX4M U33 ( .A(n48), .Y(n139) );
  INVX4M U34 ( .A(n46), .Y(n140) );
  INVX2M U35 ( .A(n77), .Y(n137) );
  AND4X2M U36 ( .A(n51), .B(n46), .C(n52), .D(n53), .Y(n49) );
  BUFX4M U37 ( .A(n36), .Y(n7) );
  AND2X2M U38 ( .A(n74), .B(n58), .Y(n30) );
  INVX2M U39 ( .A(n33), .Y(n26) );
  NOR2BX2M U40 ( .AN(n51), .B(n54), .Y(n47) );
  CLKBUFX6M U41 ( .A(n56), .Y(n9) );
  CLKBUFX6M U42 ( .A(n56), .Y(n8) );
  INVX4M U43 ( .A(n4), .Y(n6) );
  INVX2M U44 ( .A(n22), .Y(n21) );
  INVX2M U45 ( .A(RST), .Y(n22) );
  NAND3X2M U46 ( .A(n147), .B(n144), .C(RX_P_DATA[0]), .Y(n75) );
  NOR2X2M U47 ( .A(n66), .B(n137), .Y(n76) );
  OAI222X1M U48 ( .A0(n27), .A1(n18), .B0(n28), .B1(n147), .C0(n136), .C1(n15), 
        .Y(n87) );
  OAI222X1M U49 ( .A0(n27), .A1(n19), .B0(n28), .B1(n148), .C0(n136), .C1(n16), 
        .Y(n88) );
  OAI222X1M U50 ( .A0(n27), .A1(n17), .B0(n28), .B1(n146), .C0(n136), .C1(n14), 
        .Y(n86) );
  NOR3X4M U51 ( .A(current_state[1]), .B(current_state[3]), .C(n142), .Y(n85)
         );
  NOR2X4M U52 ( .A(current_state[2]), .B(current_state[0]), .Y(n74) );
  NAND3X2M U53 ( .A(RX_P_DATA[5]), .B(RX_P_DATA[1]), .C(n68), .Y(n73) );
  NOR2X4M U54 ( .A(n141), .B(current_state[3]), .Y(n58) );
  INVX2M U55 ( .A(current_state[1]), .Y(n141) );
  INVX2M U56 ( .A(current_state[2]), .Y(n142) );
  OAI211X2M U57 ( .A0(n24), .A1(n138), .B0(n67), .C0(n64), .Y(n135) );
  OAI31X1M U58 ( .A0(n62), .A1(n8), .A2(n71), .B0(n24), .Y(n67) );
  NOR3X2M U59 ( .A(n72), .B(RX_P_DATA[0]), .C(n73), .Y(n71) );
  NAND3X2M U60 ( .A(n145), .B(n144), .C(n147), .Y(n72) );
  INVX2M U61 ( .A(current_state[3]), .Y(n143) );
  NAND2X2M U62 ( .A(n85), .B(current_state[0]), .Y(n61) );
  AND2X1M U63 ( .A(n3), .B(RX_D_VLD), .Y(N188) );
  OA21X2M U64 ( .A0(n30), .A1(n65), .B0(RX_D_VLD), .Y(n4) );
  NAND3X2M U65 ( .A(n74), .B(current_state[1]), .C(current_state[3]), .Y(n48)
         );
  NAND2X4M U66 ( .A(n54), .B(RX_D_VLD), .Y(n52) );
  NAND4X2M U67 ( .A(n68), .B(n24), .C(n69), .D(n70), .Y(n64) );
  NOR4X1M U68 ( .A(RX_P_DATA[5]), .B(RX_P_DATA[4]), .C(RX_P_DATA[1]), .D(
        RX_P_DATA[0]), .Y(n70) );
  NOR2X2M U69 ( .A(n147), .B(n144), .Y(n69) );
  AND3X2M U70 ( .A(n58), .B(current_state[0]), .C(current_state[2]), .Y(n54)
         );
  INVX2M U71 ( .A(RX_P_DATA[3]), .Y(n146) );
  NAND3X2M U72 ( .A(n58), .B(n138), .C(current_state[2]), .Y(n77) );
  NAND3X2M U73 ( .A(n79), .B(n80), .C(n81), .Y(n60) );
  OAI21X2M U74 ( .A0(n140), .A1(n139), .B0(FIFO_FULL), .Y(n81) );
  OAI21BX1M U75 ( .A0(n83), .A1(n65), .B0N(RX_D_VLD), .Y(n79) );
  OAI21X2M U76 ( .A0(FIFO_FULL), .A1(n25), .B0(n55), .Y(n80) );
  AOI21X2M U77 ( .A0(current_state[2]), .A1(n138), .B0(current_state[3]), .Y(
        n83) );
  OAI2BB2X1M U78 ( .B0(n31), .B1(n32), .A0N(Address[0]), .A1N(n31), .Y(n89) );
  AOI221X1M U79 ( .A0(\addr_reg[0] ), .A1(n30), .B0(RX_P_DATA[0]), .B1(n3), 
        .C0(n137), .Y(n32) );
  OAI2BB2X1M U80 ( .B0(n35), .B1(n7), .A0N(TX_P_DATA[0]), .A1N(n7), .Y(n94) );
  AOI222X1M U81 ( .A0(RdData[0]), .A1(n55), .B0(alu_out_reg[8]), .B1(n139), 
        .C0(alu_out_reg[0]), .C1(n140), .Y(n35) );
  OAI2BB2X1M U82 ( .B0(n37), .B1(n7), .A0N(TX_P_DATA[1]), .A1N(n7), .Y(n95) );
  AOI222X1M U83 ( .A0(RdData[1]), .A1(n55), .B0(alu_out_reg[9]), .B1(n139), 
        .C0(alu_out_reg[1]), .C1(n140), .Y(n37) );
  OAI2BB2X1M U84 ( .B0(n38), .B1(n7), .A0N(TX_P_DATA[2]), .A1N(n7), .Y(n96) );
  AOI222X1M U86 ( .A0(RdData[2]), .A1(n55), .B0(alu_out_reg[10]), .B1(n139), 
        .C0(alu_out_reg[2]), .C1(n140), .Y(n38) );
  OAI2BB2X1M U87 ( .B0(n39), .B1(n7), .A0N(TX_P_DATA[3]), .A1N(n7), .Y(n97) );
  AOI222X1M U88 ( .A0(RdData[3]), .A1(n55), .B0(alu_out_reg[11]), .B1(n139), 
        .C0(alu_out_reg[3]), .C1(n140), .Y(n39) );
  OAI2BB2X1M U89 ( .B0(n40), .B1(n7), .A0N(TX_P_DATA[4]), .A1N(n36), .Y(n98)
         );
  AOI222X1M U91 ( .A0(RdData[4]), .A1(n55), .B0(alu_out_reg[12]), .B1(n139), 
        .C0(alu_out_reg[4]), .C1(n140), .Y(n40) );
  OAI2BB2X1M U92 ( .B0(n41), .B1(n7), .A0N(TX_P_DATA[5]), .A1N(n36), .Y(n99)
         );
  AOI222X1M U93 ( .A0(RdData[5]), .A1(n55), .B0(alu_out_reg[13]), .B1(n139), 
        .C0(alu_out_reg[5]), .C1(n140), .Y(n41) );
  OAI2BB2X1M U94 ( .B0(n42), .B1(n7), .A0N(TX_P_DATA[6]), .A1N(n36), .Y(n100)
         );
  AOI222X1M U95 ( .A0(RdData[6]), .A1(n55), .B0(alu_out_reg[14]), .B1(n139), 
        .C0(alu_out_reg[6]), .C1(n140), .Y(n42) );
  OAI2BB2X1M U96 ( .B0(n43), .B1(n7), .A0N(TX_P_DATA[7]), .A1N(n36), .Y(n101)
         );
  AOI222X1M U97 ( .A0(RdData[7]), .A1(n55), .B0(alu_out_reg[15]), .B1(n139), 
        .C0(alu_out_reg[7]), .C1(n140), .Y(n43) );
  OAI2BB2X1M U98 ( .B0(n47), .B1(n50), .A0N(EN), .A1N(n50), .Y(n103) );
  NOR2BX2M U99 ( .AN(n49), .B(n139), .Y(n50) );
  OAI2B1X2M U100 ( .A1N(CLK_EN), .A0(n44), .B0(n45), .Y(n102) );
  OAI2BB1X2M U101 ( .A0N(n46), .A1N(n47), .B0(n44), .Y(n45) );
  OAI21X2M U102 ( .A0(FIFO_FULL), .A1(n48), .B0(n49), .Y(n44) );
  AND4X1M U103 ( .A(RX_P_DATA[6]), .B(RX_P_DATA[4]), .C(n68), .D(n78), .Y(n66)
         );
  NOR4X1M U104 ( .A(RX_P_DATA[5]), .B(RX_P_DATA[1]), .C(n147), .D(n149), .Y(
        n78) );
  NAND2BX2M U105 ( .AN(FIFO_FULL), .B(n84), .Y(n36) );
  OAI211X2M U106 ( .A0(n82), .A1(n25), .B0(n48), .C0(n46), .Y(n84) );
  AO22X1M U107 ( .A0(n4), .A1(RX_P_DATA[5]), .B0(WrData[5]), .B1(n6), .Y(n113)
         );
  AO22X1M U108 ( .A0(n4), .A1(RX_P_DATA[7]), .B0(WrData[7]), .B1(n6), .Y(n115)
         );
  INVX4M U109 ( .A(RX_P_DATA[2]), .Y(n147) );
  NAND2X2M U110 ( .A(n34), .B(RX_D_VLD), .Y(n33) );
  NAND3X2M U111 ( .A(n74), .B(n141), .C(current_state[3]), .Y(n51) );
  INVX2M U112 ( .A(RX_P_DATA[0]), .Y(n149) );
  OAI22X1M U113 ( .A0(n147), .A1(n33), .B0(n26), .B1(n18), .Y(n92) );
  INVX2M U114 ( .A(RX_P_DATA[6]), .Y(n144) );
  OAI22X1M U115 ( .A0(n148), .A1(n33), .B0(n26), .B1(n19), .Y(n91) );
  OAI22X1M U116 ( .A0(n146), .A1(n33), .B0(n26), .B1(n17), .Y(n93) );
  OAI2BB2X1M U117 ( .B0(n147), .B1(n52), .A0N(ALU_FUN[2]), .A1N(n52), .Y(n106)
         );
  OAI2BB2X1M U118 ( .B0(n147), .B1(n5), .A0N(WrData[2]), .A1N(n6), .Y(n110) );
  OAI2BB2X1M U119 ( .B0(n149), .B1(n33), .A0N(n33), .A1N(\addr_reg[0] ), .Y(
        n90) );
  OAI2BB2X1M U120 ( .B0(n149), .B1(n52), .A0N(ALU_FUN[0]), .A1N(n52), .Y(n104)
         );
  OAI2BB2X1M U121 ( .B0(n149), .B1(n5), .A0N(WrData[0]), .A1N(n6), .Y(n108) );
  OAI2BB2X1M U122 ( .B0(n146), .B1(n52), .A0N(ALU_FUN[3]), .A1N(n52), .Y(n107)
         );
  OAI2BB2X1M U123 ( .B0(n146), .B1(n5), .A0N(WrData[3]), .A1N(n6), .Y(n111) );
  OAI2BB2X1M U124 ( .B0(n148), .B1(n52), .A0N(ALU_FUN[1]), .A1N(n52), .Y(n105)
         );
  OAI2BB2X1M U125 ( .B0(n5), .B1(n144), .A0N(WrData[6]), .A1N(n6), .Y(n114) );
  OAI2BB2X1M U126 ( .B0(n148), .B1(n5), .A0N(WrData[1]), .A1N(n6), .Y(n109) );
  INVX2M U127 ( .A(RX_P_DATA[4]), .Y(n145) );
  OAI2BB2X1M U128 ( .B0(n5), .B1(n145), .A0N(WrData[4]), .A1N(n6), .Y(n112) );
  INVX2M U129 ( .A(RdData_Valid), .Y(n25) );
  AO2B2X2M U130 ( .B0(ALU_OUT[13]), .B1(n9), .A0(alu_out_reg[13]), .A1N(n9), 
        .Y(n129) );
  AO2B2X2M U131 ( .B0(ALU_OUT[14]), .B1(n9), .A0(alu_out_reg[14]), .A1N(n9), 
        .Y(n130) );
  AO2B2X2M U132 ( .B0(ALU_OUT[15]), .B1(n9), .A0(alu_out_reg[15]), .A1N(n9), 
        .Y(n131) );
  AO2B2X2M U133 ( .B0(ALU_OUT[0]), .B1(n8), .A0(alu_out_reg[0]), .A1N(n9), .Y(
        n116) );
  AO2B2X2M U134 ( .B0(ALU_OUT[1]), .B1(n8), .A0(alu_out_reg[1]), .A1N(n8), .Y(
        n117) );
  AO2B2X2M U135 ( .B0(ALU_OUT[2]), .B1(n8), .A0(alu_out_reg[2]), .A1N(n9), .Y(
        n118) );
  AO2B2X2M U136 ( .B0(ALU_OUT[3]), .B1(n8), .A0(alu_out_reg[3]), .A1N(n9), .Y(
        n119) );
  AO2B2X2M U137 ( .B0(ALU_OUT[4]), .B1(n8), .A0(alu_out_reg[4]), .A1N(n9), .Y(
        n120) );
  AO2B2X2M U138 ( .B0(ALU_OUT[5]), .B1(n8), .A0(alu_out_reg[5]), .A1N(n9), .Y(
        n121) );
  AO2B2X2M U139 ( .B0(ALU_OUT[6]), .B1(n8), .A0(alu_out_reg[6]), .A1N(n9), .Y(
        n122) );
  AO2B2X2M U140 ( .B0(ALU_OUT[7]), .B1(n8), .A0(alu_out_reg[7]), .A1N(n9), .Y(
        n123) );
  AO2B2X2M U141 ( .B0(ALU_OUT[8]), .B1(n8), .A0(alu_out_reg[8]), .A1N(n9), .Y(
        n124) );
  AO2B2X2M U142 ( .B0(ALU_OUT[9]), .B1(n8), .A0(alu_out_reg[9]), .A1N(n9), .Y(
        n125) );
  AO2B2X2M U143 ( .B0(ALU_OUT[10]), .B1(n8), .A0(alu_out_reg[10]), .A1N(n9), 
        .Y(n126) );
  AO2B2X2M U144 ( .B0(ALU_OUT[11]), .B1(n8), .A0(alu_out_reg[11]), .A1N(n9), 
        .Y(n127) );
  AO2B2X2M U145 ( .B0(ALU_OUT[12]), .B1(n8), .A0(alu_out_reg[12]), .A1N(n9), 
        .Y(n128) );
  INVX2M U146 ( .A(RX_P_DATA[1]), .Y(n148) );
endmodule


module reg_file_edit ( CLK, RST, WrEn, RdEn, Address, WrData, RdData, 
        RdData_VLD, REG0, REG1, REG2, REG3 );
  input [3:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input CLK, RST, WrEn, RdEn;
  output RdData_VLD;
  wire   N10, N11, N12, N13, n333, n334, n335, n336, \reg_file[15][7] ,
         \reg_file[15][6] , \reg_file[15][5] , \reg_file[15][4] ,
         \reg_file[15][3] , \reg_file[15][2] , \reg_file[15][1] ,
         \reg_file[15][0] , \reg_file[14][7] , \reg_file[14][6] ,
         \reg_file[14][5] , \reg_file[14][4] , \reg_file[14][3] ,
         \reg_file[14][2] , \reg_file[14][1] , \reg_file[14][0] ,
         \reg_file[13][7] , \reg_file[13][6] , \reg_file[13][5] ,
         \reg_file[13][4] , \reg_file[13][3] , \reg_file[13][2] ,
         \reg_file[13][1] , \reg_file[13][0] , \reg_file[12][7] ,
         \reg_file[12][6] , \reg_file[12][5] , \reg_file[12][4] ,
         \reg_file[12][3] , \reg_file[12][2] , \reg_file[12][1] ,
         \reg_file[12][0] , \reg_file[11][7] , \reg_file[11][6] ,
         \reg_file[11][5] , \reg_file[11][4] , \reg_file[11][3] ,
         \reg_file[11][2] , \reg_file[11][1] , \reg_file[11][0] ,
         \reg_file[10][7] , \reg_file[10][6] , \reg_file[10][5] ,
         \reg_file[10][4] , \reg_file[10][3] , \reg_file[10][2] ,
         \reg_file[10][1] , \reg_file[10][0] , \reg_file[9][7] ,
         \reg_file[9][6] , \reg_file[9][5] , \reg_file[9][4] ,
         \reg_file[9][3] , \reg_file[9][2] , \reg_file[9][1] ,
         \reg_file[9][0] , \reg_file[8][7] , \reg_file[8][6] ,
         \reg_file[8][5] , \reg_file[8][4] , \reg_file[8][3] ,
         \reg_file[8][2] , \reg_file[8][1] , \reg_file[8][0] ,
         \reg_file[7][7] , \reg_file[7][6] , \reg_file[7][5] ,
         \reg_file[7][4] , \reg_file[7][3] , \reg_file[7][2] ,
         \reg_file[7][1] , \reg_file[7][0] , \reg_file[6][7] ,
         \reg_file[6][6] , \reg_file[6][5] , \reg_file[6][4] ,
         \reg_file[6][3] , \reg_file[6][2] , \reg_file[6][1] ,
         \reg_file[6][0] , \reg_file[5][7] , \reg_file[5][6] ,
         \reg_file[5][5] , \reg_file[5][4] , \reg_file[5][3] ,
         \reg_file[5][2] , \reg_file[5][1] , \reg_file[5][0] ,
         \reg_file[4][7] , \reg_file[4][6] , \reg_file[4][5] ,
         \reg_file[4][4] , \reg_file[4][3] , \reg_file[4][2] ,
         \reg_file[4][1] , \reg_file[4][0] , N35, N36, N37, N38, N39, N40, N41,
         N42, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n3, n5, n7, n8, n9, n10, n11, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332;
  assign N10 = Address[0];
  assign N11 = Address[1];
  assign N12 = Address[2];
  assign N13 = Address[3];

  DFFRHQX8M \reg_file_reg[2][5]  ( .D(n70), .CK(CLK), .RN(n311), .Q(REG2[5])
         );
  DFFRHQX8M \reg_file_reg[2][3]  ( .D(n68), .CK(CLK), .RN(n311), .Q(REG2[3])
         );
  DFFRQX2M \RdData_reg[7]  ( .D(n47), .CK(CLK), .RN(n310), .Q(RdData[7]) );
  DFFRQX2M \RdData_reg[6]  ( .D(n46), .CK(CLK), .RN(n309), .Q(RdData[6]) );
  DFFRQX2M \RdData_reg[5]  ( .D(n45), .CK(CLK), .RN(n309), .Q(RdData[5]) );
  DFFRQX2M \RdData_reg[4]  ( .D(n44), .CK(CLK), .RN(n309), .Q(RdData[4]) );
  DFFRQX2M \RdData_reg[3]  ( .D(n43), .CK(CLK), .RN(n309), .Q(RdData[3]) );
  DFFRQX2M \RdData_reg[2]  ( .D(n42), .CK(CLK), .RN(n309), .Q(RdData[2]) );
  DFFRQX2M \RdData_reg[1]  ( .D(n41), .CK(CLK), .RN(n309), .Q(RdData[1]) );
  DFFRQX2M \RdData_reg[0]  ( .D(n40), .CK(CLK), .RN(n314), .Q(RdData[0]) );
  DFFRQX2M \reg_file_reg[15][7]  ( .D(n176), .CK(CLK), .RN(n309), .Q(
        \reg_file[15][7] ) );
  DFFRQX2M \reg_file_reg[15][6]  ( .D(n175), .CK(CLK), .RN(n319), .Q(
        \reg_file[15][6] ) );
  DFFRQX2M \reg_file_reg[15][5]  ( .D(n174), .CK(CLK), .RN(n319), .Q(
        \reg_file[15][5] ) );
  DFFRQX2M \reg_file_reg[15][4]  ( .D(n173), .CK(CLK), .RN(n319), .Q(
        \reg_file[15][4] ) );
  DFFRQX2M \reg_file_reg[15][3]  ( .D(n172), .CK(CLK), .RN(n319), .Q(
        \reg_file[15][3] ) );
  DFFRQX2M \reg_file_reg[15][2]  ( .D(n171), .CK(CLK), .RN(n319), .Q(
        \reg_file[15][2] ) );
  DFFRQX2M \reg_file_reg[15][1]  ( .D(n170), .CK(CLK), .RN(n319), .Q(
        \reg_file[15][1] ) );
  DFFRQX2M \reg_file_reg[15][0]  ( .D(n169), .CK(CLK), .RN(n319), .Q(
        \reg_file[15][0] ) );
  DFFRQX2M \reg_file_reg[13][7]  ( .D(n160), .CK(CLK), .RN(n318), .Q(
        \reg_file[13][7] ) );
  DFFRQX2M \reg_file_reg[13][6]  ( .D(n159), .CK(CLK), .RN(n318), .Q(
        \reg_file[13][6] ) );
  DFFRQX2M \reg_file_reg[13][5]  ( .D(n158), .CK(CLK), .RN(n318), .Q(
        \reg_file[13][5] ) );
  DFFRQX2M \reg_file_reg[13][4]  ( .D(n157), .CK(CLK), .RN(n318), .Q(
        \reg_file[13][4] ) );
  DFFRQX2M \reg_file_reg[13][3]  ( .D(n156), .CK(CLK), .RN(n318), .Q(
        \reg_file[13][3] ) );
  DFFRQX2M \reg_file_reg[13][2]  ( .D(n155), .CK(CLK), .RN(n317), .Q(
        \reg_file[13][2] ) );
  DFFRQX2M \reg_file_reg[13][1]  ( .D(n154), .CK(CLK), .RN(n317), .Q(
        \reg_file[13][1] ) );
  DFFRQX2M \reg_file_reg[13][0]  ( .D(n153), .CK(CLK), .RN(n317), .Q(
        \reg_file[13][0] ) );
  DFFRQX2M \reg_file_reg[11][7]  ( .D(n144), .CK(CLK), .RN(n317), .Q(
        \reg_file[11][7] ) );
  DFFRQX2M \reg_file_reg[11][6]  ( .D(n143), .CK(CLK), .RN(n317), .Q(
        \reg_file[11][6] ) );
  DFFRQX2M \reg_file_reg[11][5]  ( .D(n142), .CK(CLK), .RN(n316), .Q(
        \reg_file[11][5] ) );
  DFFRQX2M \reg_file_reg[11][4]  ( .D(n141), .CK(CLK), .RN(n316), .Q(
        \reg_file[11][4] ) );
  DFFRQX2M \reg_file_reg[11][3]  ( .D(n140), .CK(CLK), .RN(n316), .Q(
        \reg_file[11][3] ) );
  DFFRQX2M \reg_file_reg[11][2]  ( .D(n139), .CK(CLK), .RN(n316), .Q(
        \reg_file[11][2] ) );
  DFFRQX2M \reg_file_reg[11][1]  ( .D(n138), .CK(CLK), .RN(n316), .Q(
        \reg_file[11][1] ) );
  DFFRQX2M \reg_file_reg[11][0]  ( .D(n137), .CK(CLK), .RN(n316), .Q(
        \reg_file[11][0] ) );
  DFFRQX2M \reg_file_reg[9][7]  ( .D(n128), .CK(CLK), .RN(n315), .Q(
        \reg_file[9][7] ) );
  DFFRQX2M \reg_file_reg[9][6]  ( .D(n127), .CK(CLK), .RN(n315), .Q(
        \reg_file[9][6] ) );
  DFFRQX2M \reg_file_reg[9][5]  ( .D(n126), .CK(CLK), .RN(n315), .Q(
        \reg_file[9][5] ) );
  DFFRQX2M \reg_file_reg[9][4]  ( .D(n125), .CK(CLK), .RN(n315), .Q(
        \reg_file[9][4] ) );
  DFFRQX2M \reg_file_reg[9][3]  ( .D(n124), .CK(CLK), .RN(n315), .Q(
        \reg_file[9][3] ) );
  DFFRQX2M \reg_file_reg[9][2]  ( .D(n123), .CK(CLK), .RN(n315), .Q(
        \reg_file[9][2] ) );
  DFFRQX2M \reg_file_reg[9][1]  ( .D(n122), .CK(CLK), .RN(n315), .Q(
        \reg_file[9][1] ) );
  DFFRQX2M \reg_file_reg[9][0]  ( .D(n121), .CK(CLK), .RN(n315), .Q(
        \reg_file[9][0] ) );
  DFFRQX2M \reg_file_reg[7][7]  ( .D(n112), .CK(CLK), .RN(n314), .Q(
        \reg_file[7][7] ) );
  DFFRQX2M \reg_file_reg[7][6]  ( .D(n111), .CK(CLK), .RN(n314), .Q(
        \reg_file[7][6] ) );
  DFFRQX2M \reg_file_reg[7][5]  ( .D(n110), .CK(CLK), .RN(n314), .Q(
        \reg_file[7][5] ) );
  DFFRQX2M \reg_file_reg[7][4]  ( .D(n109), .CK(CLK), .RN(n314), .Q(
        \reg_file[7][4] ) );
  DFFRQX2M \reg_file_reg[7][3]  ( .D(n108), .CK(CLK), .RN(n314), .Q(
        \reg_file[7][3] ) );
  DFFRQX2M \reg_file_reg[7][2]  ( .D(n107), .CK(CLK), .RN(n314), .Q(
        \reg_file[7][2] ) );
  DFFRQX2M \reg_file_reg[7][1]  ( .D(n106), .CK(CLK), .RN(n314), .Q(
        \reg_file[7][1] ) );
  DFFRQX2M \reg_file_reg[7][0]  ( .D(n105), .CK(CLK), .RN(n314), .Q(
        \reg_file[7][0] ) );
  DFFRQX2M \reg_file_reg[5][7]  ( .D(n96), .CK(CLK), .RN(n313), .Q(
        \reg_file[5][7] ) );
  DFFRQX2M \reg_file_reg[5][6]  ( .D(n95), .CK(CLK), .RN(n313), .Q(
        \reg_file[5][6] ) );
  DFFRQX2M \reg_file_reg[5][5]  ( .D(n94), .CK(CLK), .RN(n313), .Q(
        \reg_file[5][5] ) );
  DFFRQX2M \reg_file_reg[5][4]  ( .D(n93), .CK(CLK), .RN(n313), .Q(
        \reg_file[5][4] ) );
  DFFRQX2M \reg_file_reg[5][3]  ( .D(n92), .CK(CLK), .RN(n313), .Q(
        \reg_file[5][3] ) );
  DFFRQX2M \reg_file_reg[5][2]  ( .D(n91), .CK(CLK), .RN(n312), .Q(
        \reg_file[5][2] ) );
  DFFRQX2M \reg_file_reg[5][1]  ( .D(n90), .CK(CLK), .RN(n312), .Q(
        \reg_file[5][1] ) );
  DFFRQX2M \reg_file_reg[5][0]  ( .D(n89), .CK(CLK), .RN(n312), .Q(
        \reg_file[5][0] ) );
  DFFRQX2M \reg_file_reg[14][7]  ( .D(n168), .CK(CLK), .RN(n318), .Q(
        \reg_file[14][7] ) );
  DFFRQX2M \reg_file_reg[14][6]  ( .D(n167), .CK(CLK), .RN(n318), .Q(
        \reg_file[14][6] ) );
  DFFRQX2M \reg_file_reg[14][5]  ( .D(n166), .CK(CLK), .RN(n318), .Q(
        \reg_file[14][5] ) );
  DFFRQX2M \reg_file_reg[14][4]  ( .D(n165), .CK(CLK), .RN(n318), .Q(
        \reg_file[14][4] ) );
  DFFRQX2M \reg_file_reg[14][3]  ( .D(n164), .CK(CLK), .RN(n318), .Q(
        \reg_file[14][3] ) );
  DFFRQX2M \reg_file_reg[14][2]  ( .D(n163), .CK(CLK), .RN(n318), .Q(
        \reg_file[14][2] ) );
  DFFRQX2M \reg_file_reg[14][1]  ( .D(n162), .CK(CLK), .RN(n318), .Q(
        \reg_file[14][1] ) );
  DFFRQX2M \reg_file_reg[14][0]  ( .D(n161), .CK(CLK), .RN(n318), .Q(
        \reg_file[14][0] ) );
  DFFRQX2M \reg_file_reg[12][7]  ( .D(n152), .CK(CLK), .RN(n317), .Q(
        \reg_file[12][7] ) );
  DFFRQX2M \reg_file_reg[12][6]  ( .D(n151), .CK(CLK), .RN(n317), .Q(
        \reg_file[12][6] ) );
  DFFRQX2M \reg_file_reg[12][5]  ( .D(n150), .CK(CLK), .RN(n317), .Q(
        \reg_file[12][5] ) );
  DFFRQX2M \reg_file_reg[12][4]  ( .D(n149), .CK(CLK), .RN(n317), .Q(
        \reg_file[12][4] ) );
  DFFRQX2M \reg_file_reg[12][3]  ( .D(n148), .CK(CLK), .RN(n317), .Q(
        \reg_file[12][3] ) );
  DFFRQX2M \reg_file_reg[12][2]  ( .D(n147), .CK(CLK), .RN(n317), .Q(
        \reg_file[12][2] ) );
  DFFRQX2M \reg_file_reg[12][1]  ( .D(n146), .CK(CLK), .RN(n317), .Q(
        \reg_file[12][1] ) );
  DFFRQX2M \reg_file_reg[12][0]  ( .D(n145), .CK(CLK), .RN(n317), .Q(
        \reg_file[12][0] ) );
  DFFRQX2M \reg_file_reg[10][7]  ( .D(n136), .CK(CLK), .RN(n316), .Q(
        \reg_file[10][7] ) );
  DFFRQX2M \reg_file_reg[10][6]  ( .D(n135), .CK(CLK), .RN(n316), .Q(
        \reg_file[10][6] ) );
  DFFRQX2M \reg_file_reg[10][5]  ( .D(n134), .CK(CLK), .RN(n316), .Q(
        \reg_file[10][5] ) );
  DFFRQX2M \reg_file_reg[10][4]  ( .D(n133), .CK(CLK), .RN(n316), .Q(
        \reg_file[10][4] ) );
  DFFRQX2M \reg_file_reg[10][3]  ( .D(n132), .CK(CLK), .RN(n316), .Q(
        \reg_file[10][3] ) );
  DFFRQX2M \reg_file_reg[10][2]  ( .D(n131), .CK(CLK), .RN(n316), .Q(
        \reg_file[10][2] ) );
  DFFRQX2M \reg_file_reg[10][1]  ( .D(n130), .CK(CLK), .RN(n316), .Q(
        \reg_file[10][1] ) );
  DFFRQX2M \reg_file_reg[10][0]  ( .D(n129), .CK(CLK), .RN(n315), .Q(
        \reg_file[10][0] ) );
  DFFRQX2M \reg_file_reg[8][7]  ( .D(n120), .CK(CLK), .RN(n315), .Q(
        \reg_file[8][7] ) );
  DFFRQX2M \reg_file_reg[8][6]  ( .D(n119), .CK(CLK), .RN(n315), .Q(
        \reg_file[8][6] ) );
  DFFRQX2M \reg_file_reg[8][5]  ( .D(n118), .CK(CLK), .RN(n315), .Q(
        \reg_file[8][5] ) );
  DFFRQX2M \reg_file_reg[8][4]  ( .D(n117), .CK(CLK), .RN(n315), .Q(
        \reg_file[8][4] ) );
  DFFRQX2M \reg_file_reg[8][3]  ( .D(n116), .CK(CLK), .RN(n314), .Q(
        \reg_file[8][3] ) );
  DFFRQX2M \reg_file_reg[8][2]  ( .D(n115), .CK(CLK), .RN(n314), .Q(
        \reg_file[8][2] ) );
  DFFRQX2M \reg_file_reg[8][1]  ( .D(n114), .CK(CLK), .RN(n314), .Q(
        \reg_file[8][1] ) );
  DFFRQX2M \reg_file_reg[8][0]  ( .D(n113), .CK(CLK), .RN(n314), .Q(
        \reg_file[8][0] ) );
  DFFRQX2M \reg_file_reg[6][7]  ( .D(n104), .CK(CLK), .RN(n313), .Q(
        \reg_file[6][7] ) );
  DFFRQX2M \reg_file_reg[6][6]  ( .D(n103), .CK(CLK), .RN(n313), .Q(
        \reg_file[6][6] ) );
  DFFRQX2M \reg_file_reg[6][5]  ( .D(n102), .CK(CLK), .RN(n313), .Q(
        \reg_file[6][5] ) );
  DFFRQX2M \reg_file_reg[6][4]  ( .D(n101), .CK(CLK), .RN(n313), .Q(
        \reg_file[6][4] ) );
  DFFRQX2M \reg_file_reg[6][3]  ( .D(n100), .CK(CLK), .RN(n313), .Q(
        \reg_file[6][3] ) );
  DFFRQX2M \reg_file_reg[6][2]  ( .D(n99), .CK(CLK), .RN(n313), .Q(
        \reg_file[6][2] ) );
  DFFRQX2M \reg_file_reg[6][1]  ( .D(n98), .CK(CLK), .RN(n313), .Q(
        \reg_file[6][1] ) );
  DFFRQX2M \reg_file_reg[6][0]  ( .D(n97), .CK(CLK), .RN(n313), .Q(
        \reg_file[6][0] ) );
  DFFRQX2M \reg_file_reg[4][7]  ( .D(n88), .CK(CLK), .RN(n312), .Q(
        \reg_file[4][7] ) );
  DFFRQX2M \reg_file_reg[4][6]  ( .D(n87), .CK(CLK), .RN(n312), .Q(
        \reg_file[4][6] ) );
  DFFRQX2M \reg_file_reg[4][5]  ( .D(n86), .CK(CLK), .RN(n312), .Q(
        \reg_file[4][5] ) );
  DFFRQX2M \reg_file_reg[4][4]  ( .D(n85), .CK(CLK), .RN(n312), .Q(
        \reg_file[4][4] ) );
  DFFRQX2M \reg_file_reg[4][3]  ( .D(n84), .CK(CLK), .RN(n312), .Q(
        \reg_file[4][3] ) );
  DFFRQX2M \reg_file_reg[4][2]  ( .D(n83), .CK(CLK), .RN(n312), .Q(
        \reg_file[4][2] ) );
  DFFRQX2M \reg_file_reg[4][1]  ( .D(n82), .CK(CLK), .RN(n312), .Q(
        \reg_file[4][1] ) );
  DFFRQX2M \reg_file_reg[4][0]  ( .D(n81), .CK(CLK), .RN(n312), .Q(
        \reg_file[4][0] ) );
  DFFRQX2M RdData_VLD_reg ( .D(n48), .CK(CLK), .RN(n309), .Q(RdData_VLD) );
  DFFRQX2M \reg_file_reg[2][1]  ( .D(n66), .CK(CLK), .RN(n311), .Q(REG2[1]) );
  DFFRQX2M \reg_file_reg[3][0]  ( .D(n73), .CK(CLK), .RN(n311), .Q(REG3[0]) );
  DFFSQX2M \reg_file_reg[2][0]  ( .D(n65), .CK(CLK), .SN(n309), .Q(REG2[0]) );
  DFFRQX4M \reg_file_reg[3][3]  ( .D(n76), .CK(CLK), .RN(n311), .Q(REG3[3]) );
  DFFRQX4M \reg_file_reg[3][2]  ( .D(n75), .CK(CLK), .RN(n311), .Q(REG3[2]) );
  DFFRQX4M \reg_file_reg[3][7]  ( .D(n80), .CK(CLK), .RN(n312), .Q(REG3[7]) );
  DFFRQX4M \reg_file_reg[3][6]  ( .D(n79), .CK(CLK), .RN(n312), .Q(REG3[6]) );
  DFFRQX4M \reg_file_reg[3][1]  ( .D(n74), .CK(CLK), .RN(n311), .Q(REG3[1]) );
  DFFRQX2M \reg_file_reg[0][2]  ( .D(n51), .CK(CLK), .RN(n310), .Q(REG0[2]) );
  DFFRQX2M \reg_file_reg[0][1]  ( .D(n50), .CK(CLK), .RN(n309), .Q(REG0[1]) );
  DFFRQX2M \reg_file_reg[0][0]  ( .D(n49), .CK(CLK), .RN(n309), .Q(REG0[0]) );
  DFFRQX2M \reg_file_reg[0][3]  ( .D(n52), .CK(CLK), .RN(n310), .Q(REG0[3]) );
  DFFRQX4M \reg_file_reg[1][3]  ( .D(n60), .CK(CLK), .RN(n310), .Q(REG1[3]) );
  DFFRQX4M \reg_file_reg[1][2]  ( .D(n59), .CK(CLK), .RN(n310), .Q(REG1[2]) );
  DFFSQX2M \reg_file_reg[3][5]  ( .D(n78), .CK(CLK), .SN(n309), .Q(REG3[5]) );
  DFFRQX2M \reg_file_reg[3][4]  ( .D(n77), .CK(CLK), .RN(n311), .Q(REG3[4]) );
  DFFRHQX4M \reg_file_reg[1][6]  ( .D(n63), .CK(CLK), .RN(n311), .Q(REG1[6])
         );
  DFFRQX2M \reg_file_reg[0][4]  ( .D(n53), .CK(CLK), .RN(n310), .Q(REG0[4]) );
  DFFRQX2M \reg_file_reg[1][1]  ( .D(n58), .CK(CLK), .RN(n310), .Q(n335) );
  DFFRHQX4M \reg_file_reg[1][0]  ( .D(n57), .CK(CLK), .RN(n310), .Q(n336) );
  DFFRHQX8M \reg_file_reg[2][6]  ( .D(n71), .CK(CLK), .RN(n311), .Q(REG2[6])
         );
  DFFSQX4M \reg_file_reg[2][7]  ( .D(n72), .CK(CLK), .SN(n309), .Q(REG2[7]) );
  DFFRQX4M \reg_file_reg[2][4]  ( .D(n69), .CK(CLK), .RN(n311), .Q(REG2[4]) );
  DFFRQX4M \reg_file_reg[2][2]  ( .D(n67), .CK(CLK), .RN(n311), .Q(REG2[2]) );
  DFFRHQX4M \reg_file_reg[1][7]  ( .D(n64), .CK(CLK), .RN(n310), .Q(REG1[7])
         );
  DFFRQX2M \reg_file_reg[0][6]  ( .D(n55), .CK(CLK), .RN(n310), .Q(REG0[6]) );
  DFFRHQX4M \reg_file_reg[0][7]  ( .D(n56), .CK(CLK), .RN(n310), .Q(REG0[7])
         );
  DFFRQX2M \reg_file_reg[0][5]  ( .D(n54), .CK(CLK), .RN(n310), .Q(REG0[5]) );
  DFFRQX2M \reg_file_reg[1][4]  ( .D(n61), .CK(CLK), .RN(n310), .Q(n334) );
  DFFRQX2M \reg_file_reg[1][5]  ( .D(n62), .CK(CLK), .RN(n311), .Q(n333) );
  BUFX6M U3 ( .A(n334), .Y(REG1[4]) );
  BUFX6M U4 ( .A(n333), .Y(REG1[5]) );
  INVX4M U5 ( .A(n3), .Y(REG1[1]) );
  INVX2M U6 ( .A(n335), .Y(n3) );
  INVX18M U7 ( .A(n5), .Y(REG1[0]) );
  NOR2X2M U8 ( .A(n277), .B(n276), .Y(n265) );
  NOR2X2M U9 ( .A(n277), .B(N10), .Y(n266) );
  NOR2X2M U10 ( .A(n276), .B(N11), .Y(n267) );
  CLKBUFX4M U11 ( .A(n17), .Y(n306) );
  NOR2X2M U12 ( .A(N10), .B(N11), .Y(n268) );
  CLKNAND2X2M U13 ( .A(n23), .B(n16), .Y(n22) );
  CLKNAND2X2M U14 ( .A(n23), .B(n18), .Y(n24) );
  CLKNAND2X2M U15 ( .A(n26), .B(n16), .Y(n25) );
  CLKNAND2X2M U16 ( .A(n26), .B(n18), .Y(n28) );
  CLKNAND2X2M U17 ( .A(n30), .B(n15), .Y(n29) );
  CLKNAND2X2M U18 ( .A(n32), .B(n15), .Y(n31) );
  CLKNAND2X2M U19 ( .A(n30), .B(n20), .Y(n33) );
  CLKNAND2X2M U20 ( .A(n32), .B(n20), .Y(n34) );
  CLKNAND2X2M U21 ( .A(n30), .B(n23), .Y(n35) );
  CLKNAND2X2M U22 ( .A(n32), .B(n23), .Y(n36) );
  CLKNAND2X2M U23 ( .A(n30), .B(n26), .Y(n37) );
  CLKNAND2X2M U24 ( .A(n32), .B(n26), .Y(n39) );
  CLKNAND2X2M U25 ( .A(n20), .B(n18), .Y(n21) );
  NAND2X4M U26 ( .A(N13), .B(N12), .Y(n259) );
  CLKINVX2M U27 ( .A(N11), .Y(n277) );
  NOR2X3M U28 ( .A(N11), .B(N12), .Y(n15) );
  NOR2BX4M U29 ( .AN(N12), .B(N11), .Y(n23) );
  NAND2X4M U30 ( .A(n278), .B(n279), .Y(n262) );
  NAND2X4M U31 ( .A(N12), .B(n279), .Y(n269) );
  NAND2X4M U32 ( .A(N13), .B(n278), .Y(n256) );
  CLKINVX12M U33 ( .A(n336), .Y(n5) );
  AOI21XLM U34 ( .A0(n179), .A1(n178), .B0(n269), .Y(n180) );
  AOI21XLM U35 ( .A0(n191), .A1(n190), .B0(n269), .Y(n192) );
  AOI21XLM U36 ( .A0(n203), .A1(n202), .B0(n269), .Y(n204) );
  AOI21XLM U37 ( .A0(n215), .A1(n214), .B0(n269), .Y(n216) );
  AOI21XLM U38 ( .A0(n227), .A1(n226), .B0(n269), .Y(n228) );
  AOI21XLM U39 ( .A0(n239), .A1(n238), .B0(n269), .Y(n240) );
  AOI21XLM U40 ( .A0(n251), .A1(n250), .B0(n269), .Y(n252) );
  AOI21XLM U41 ( .A0(n271), .A1(n270), .B0(n269), .Y(n272) );
  AOI21XLM U42 ( .A0(n10), .A1(n9), .B0(n259), .Y(n182) );
  AOI21XLM U43 ( .A0(n187), .A1(n186), .B0(n259), .Y(n194) );
  AOI21XLM U44 ( .A0(n199), .A1(n198), .B0(n259), .Y(n206) );
  AOI21XLM U45 ( .A0(n211), .A1(n210), .B0(n259), .Y(n218) );
  AOI21XLM U46 ( .A0(n223), .A1(n222), .B0(n259), .Y(n230) );
  AOI21XLM U47 ( .A0(n235), .A1(n234), .B0(n259), .Y(n242) );
  AOI21XLM U48 ( .A0(n247), .A1(n246), .B0(n259), .Y(n254) );
  AOI21XLM U49 ( .A0(n261), .A1(n260), .B0(n259), .Y(n274) );
  AOI21XLM U50 ( .A0(n249), .A1(n248), .B0(n262), .Y(n253) );
  AOI21XLM U51 ( .A0(n264), .A1(n263), .B0(n262), .Y(n273) );
  AOI21XLM U52 ( .A0(n177), .A1(n11), .B0(n262), .Y(n181) );
  AOI21XLM U53 ( .A0(n189), .A1(n188), .B0(n262), .Y(n193) );
  AOI21XLM U54 ( .A0(n201), .A1(n200), .B0(n262), .Y(n205) );
  AOI21XLM U55 ( .A0(n213), .A1(n212), .B0(n262), .Y(n217) );
  AOI21XLM U56 ( .A0(n225), .A1(n224), .B0(n262), .Y(n229) );
  AOI21XLM U57 ( .A0(n237), .A1(n236), .B0(n262), .Y(n241) );
  BUFX4M U58 ( .A(n268), .Y(n291) );
  BUFX4M U59 ( .A(n268), .Y(n290) );
  AOI22XLM U60 ( .A0(REG0[0]), .A1(n291), .B0(REG1[0]), .B1(n288), .Y(n11) );
  AOI22XLM U61 ( .A0(REG0[1]), .A1(n291), .B0(REG1[1]), .B1(n288), .Y(n188) );
  AOI22XLM U62 ( .A0(REG0[2]), .A1(n291), .B0(REG1[2]), .B1(n288), .Y(n200) );
  AOI22XLM U63 ( .A0(REG0[3]), .A1(n290), .B0(REG1[3]), .B1(n287), .Y(n212) );
  AOI22XLM U64 ( .A0(REG0[4]), .A1(n290), .B0(REG1[4]), .B1(n287), .Y(n224) );
  AOI22XLM U65 ( .A0(REG0[5]), .A1(n290), .B0(REG1[5]), .B1(n287), .Y(n236) );
  AOI22XLM U66 ( .A0(REG0[6]), .A1(n289), .B0(REG1[6]), .B1(n288), .Y(n248) );
  AOI22XLM U67 ( .A0(REG0[7]), .A1(n289), .B0(REG1[7]), .B1(n287), .Y(n263) );
  OAI2BB2XLM U68 ( .B0(n325), .B1(n17), .A0N(REG1[7]), .A1N(n306), .Y(n64) );
  OAI2BB2XLM U69 ( .B0(n332), .B1(n306), .A0N(REG1[0]), .A1N(n306), .Y(n57) );
  OAI2BB2XLM U70 ( .B0(n307), .B1(n328), .A0N(REG0[4]), .A1N(n307), .Y(n53) );
  OAI2BB2XLM U71 ( .B0(n307), .B1(n327), .A0N(REG0[5]), .A1N(n307), .Y(n54) );
  OAI2BB2XLM U72 ( .B0(n307), .B1(n326), .A0N(REG0[6]), .A1N(n307), .Y(n55) );
  OAI2BB2XLM U73 ( .B0(n307), .B1(n325), .A0N(REG0[7]), .A1N(n14), .Y(n56) );
  OAI2BB2XLM U74 ( .B0(n331), .B1(n17), .A0N(REG1[1]), .A1N(n306), .Y(n58) );
  OAI2BB2XLM U75 ( .B0(n330), .B1(n17), .A0N(REG1[2]), .A1N(n306), .Y(n59) );
  OAI2BB2XLM U76 ( .B0(n329), .B1(n17), .A0N(REG1[3]), .A1N(n306), .Y(n60) );
  OAI2BB2XLM U77 ( .B0(n327), .B1(n17), .A0N(REG1[5]), .A1N(n306), .Y(n62) );
  OAI2BB2XLM U78 ( .B0(n326), .B1(n17), .A0N(REG1[6]), .A1N(n306), .Y(n63) );
  NOR2X4M U79 ( .A(n277), .B(N12), .Y(n20) );
  NOR2BX4M U80 ( .AN(n38), .B(N10), .Y(n30) );
  NOR2BX4M U81 ( .AN(n27), .B(N10), .Y(n16) );
  NOR2BX4M U82 ( .AN(N12), .B(n277), .Y(n26) );
  INVX6M U83 ( .A(WrData[0]), .Y(n332) );
  INVX6M U84 ( .A(WrData[1]), .Y(n331) );
  INVX6M U85 ( .A(WrData[2]), .Y(n330) );
  INVX6M U86 ( .A(WrData[3]), .Y(n329) );
  INVX6M U87 ( .A(WrData[4]), .Y(n328) );
  INVX6M U88 ( .A(WrData[5]), .Y(n327) );
  INVX6M U89 ( .A(WrData[6]), .Y(n326) );
  INVX6M U90 ( .A(WrData[7]), .Y(n325) );
  CLKBUFX6M U91 ( .A(n323), .Y(n309) );
  CLKBUFX6M U92 ( .A(n322), .Y(n311) );
  CLKBUFX6M U93 ( .A(n322), .Y(n312) );
  CLKBUFX6M U94 ( .A(n322), .Y(n313) );
  CLKBUFX6M U95 ( .A(n321), .Y(n314) );
  CLKBUFX6M U96 ( .A(n321), .Y(n315) );
  CLKBUFX6M U97 ( .A(n321), .Y(n316) );
  CLKBUFX6M U98 ( .A(n320), .Y(n317) );
  CLKBUFX6M U99 ( .A(n320), .Y(n318) );
  CLKBUFX6M U100 ( .A(n322), .Y(n310) );
  BUFX4M U101 ( .A(n320), .Y(n319) );
  BUFX4M U102 ( .A(n265), .Y(n282) );
  BUFX4M U103 ( .A(n265), .Y(n281) );
  BUFX4M U104 ( .A(n265), .Y(n280) );
  BUFX4M U105 ( .A(n29), .Y(n299) );
  BUFX4M U106 ( .A(n31), .Y(n298) );
  BUFX4M U107 ( .A(n33), .Y(n297) );
  BUFX4M U108 ( .A(n34), .Y(n296) );
  BUFX4M U109 ( .A(n19), .Y(n305) );
  BUFX4M U110 ( .A(n21), .Y(n304) );
  BUFX4M U111 ( .A(n35), .Y(n295) );
  BUFX4M U112 ( .A(n36), .Y(n294) );
  BUFX4M U113 ( .A(n22), .Y(n303) );
  BUFX4M U114 ( .A(n24), .Y(n302) );
  BUFX4M U115 ( .A(n25), .Y(n301) );
  BUFX4M U116 ( .A(n28), .Y(n300) );
  BUFX4M U117 ( .A(n37), .Y(n293) );
  BUFX4M U118 ( .A(n39), .Y(n292) );
  BUFX4M U119 ( .A(n14), .Y(n307) );
  BUFX2M U120 ( .A(n323), .Y(n322) );
  BUFX2M U121 ( .A(n323), .Y(n321) );
  BUFX2M U122 ( .A(n323), .Y(n320) );
  CLKBUFX6M U123 ( .A(n266), .Y(n284) );
  CLKBUFX6M U124 ( .A(n266), .Y(n283) );
  BUFX4M U125 ( .A(n286), .Y(n288) );
  BUFX4M U126 ( .A(n286), .Y(n287) );
  BUFX2M U127 ( .A(n268), .Y(n289) );
  NOR2BX4M U128 ( .AN(n27), .B(n276), .Y(n18) );
  NOR2BX4M U129 ( .AN(n38), .B(n276), .Y(n32) );
  NAND2X2M U130 ( .A(n18), .B(n15), .Y(n17) );
  NAND2X2M U131 ( .A(n15), .B(n16), .Y(n14) );
  NAND2X2M U132 ( .A(n20), .B(n16), .Y(n19) );
  INVX4M U133 ( .A(n308), .Y(n324) );
  BUFX2M U134 ( .A(RST), .Y(n323) );
  AO22X1M U135 ( .A0(N42), .A1(n324), .B0(RdData[0]), .B1(n308), .Y(n40) );
  AO22X1M U136 ( .A0(N41), .A1(n324), .B0(RdData[1]), .B1(n308), .Y(n41) );
  AO22X1M U137 ( .A0(N40), .A1(n324), .B0(RdData[2]), .B1(n308), .Y(n42) );
  AO22X1M U138 ( .A0(N39), .A1(n324), .B0(RdData[3]), .B1(n308), .Y(n43) );
  AO22X1M U139 ( .A0(N38), .A1(n324), .B0(RdData[4]), .B1(n308), .Y(n44) );
  AO22X1M U140 ( .A0(N37), .A1(n324), .B0(RdData[5]), .B1(n308), .Y(n45) );
  AO22X1M U141 ( .A0(N36), .A1(n324), .B0(RdData[6]), .B1(n308), .Y(n46) );
  AO22X1M U142 ( .A0(N35), .A1(n324), .B0(RdData[7]), .B1(n308), .Y(n47) );
  INVX2M U143 ( .A(N12), .Y(n278) );
  INVX2M U144 ( .A(N13), .Y(n279) );
  INVX2M U145 ( .A(N10), .Y(n276) );
  INVX2M U146 ( .A(n285), .Y(n286) );
  INVX2M U147 ( .A(n267), .Y(n285) );
  NOR2BX2M U148 ( .AN(WrEn), .B(RdEn), .Y(n13) );
  NOR2BX2M U149 ( .AN(n13), .B(N13), .Y(n27) );
  OAI2BB2X1M U150 ( .B0(n328), .B1(n306), .A0N(REG1[4]), .A1N(n306), .Y(n61)
         );
  OAI2BB2X1M U151 ( .B0(n331), .B1(n305), .A0N(REG2[1]), .A1N(n305), .Y(n66)
         );
  OAI2BB2X1M U152 ( .B0(n330), .B1(n305), .A0N(REG2[2]), .A1N(n305), .Y(n67)
         );
  OAI2BB2X1M U153 ( .B0(n329), .B1(n19), .A0N(REG2[3]), .A1N(n305), .Y(n68) );
  OAI2BB2X1M U154 ( .B0(n328), .B1(n19), .A0N(REG2[4]), .A1N(n305), .Y(n69) );
  OAI2BB2X1M U155 ( .B0(n327), .B1(n19), .A0N(REG2[5]), .A1N(n305), .Y(n70) );
  OAI2BB2X1M U156 ( .B0(n326), .B1(n19), .A0N(REG2[6]), .A1N(n305), .Y(n71) );
  OAI2BB2X1M U157 ( .B0(n331), .B1(n304), .A0N(REG3[1]), .A1N(n304), .Y(n74)
         );
  OAI2BB2X1M U158 ( .B0(n330), .B1(n304), .A0N(REG3[2]), .A1N(n304), .Y(n75)
         );
  OAI2BB2X1M U159 ( .B0(n329), .B1(n304), .A0N(REG3[3]), .A1N(n304), .Y(n76)
         );
  OAI2BB2X1M U160 ( .B0(n328), .B1(n21), .A0N(REG3[4]), .A1N(n304), .Y(n77) );
  OAI2BB2X1M U161 ( .B0(n326), .B1(n304), .A0N(REG3[6]), .A1N(n304), .Y(n79)
         );
  OAI2BB2X1M U162 ( .B0(n325), .B1(n21), .A0N(REG3[7]), .A1N(n304), .Y(n80) );
  OAI2BB2X1M U163 ( .B0(n331), .B1(n303), .A0N(\reg_file[4][1] ), .A1N(n303), 
        .Y(n82) );
  OAI2BB2X1M U164 ( .B0(n330), .B1(n303), .A0N(\reg_file[4][2] ), .A1N(n303), 
        .Y(n83) );
  OAI2BB2X1M U165 ( .B0(n329), .B1(n303), .A0N(\reg_file[4][3] ), .A1N(n303), 
        .Y(n84) );
  OAI2BB2X1M U166 ( .B0(n328), .B1(n303), .A0N(\reg_file[4][4] ), .A1N(n303), 
        .Y(n85) );
  OAI2BB2X1M U167 ( .B0(n327), .B1(n22), .A0N(\reg_file[4][5] ), .A1N(n303), 
        .Y(n86) );
  OAI2BB2X1M U168 ( .B0(n326), .B1(n22), .A0N(\reg_file[4][6] ), .A1N(n303), 
        .Y(n87) );
  OAI2BB2X1M U169 ( .B0(n325), .B1(n22), .A0N(\reg_file[4][7] ), .A1N(n303), 
        .Y(n88) );
  OAI2BB2X1M U170 ( .B0(n331), .B1(n302), .A0N(\reg_file[5][1] ), .A1N(n302), 
        .Y(n90) );
  OAI2BB2X1M U171 ( .B0(n330), .B1(n302), .A0N(\reg_file[5][2] ), .A1N(n302), 
        .Y(n91) );
  OAI2BB2X1M U172 ( .B0(n329), .B1(n302), .A0N(\reg_file[5][3] ), .A1N(n302), 
        .Y(n92) );
  OAI2BB2X1M U173 ( .B0(n328), .B1(n302), .A0N(\reg_file[5][4] ), .A1N(n302), 
        .Y(n93) );
  OAI2BB2X1M U174 ( .B0(n327), .B1(n24), .A0N(\reg_file[5][5] ), .A1N(n302), 
        .Y(n94) );
  OAI2BB2X1M U175 ( .B0(n326), .B1(n24), .A0N(\reg_file[5][6] ), .A1N(n302), 
        .Y(n95) );
  OAI2BB2X1M U176 ( .B0(n325), .B1(n24), .A0N(\reg_file[5][7] ), .A1N(n302), 
        .Y(n96) );
  OAI2BB2X1M U177 ( .B0(n331), .B1(n301), .A0N(\reg_file[6][1] ), .A1N(n301), 
        .Y(n98) );
  OAI2BB2X1M U178 ( .B0(n330), .B1(n301), .A0N(\reg_file[6][2] ), .A1N(n301), 
        .Y(n99) );
  OAI2BB2X1M U179 ( .B0(n329), .B1(n301), .A0N(\reg_file[6][3] ), .A1N(n301), 
        .Y(n100) );
  OAI2BB2X1M U180 ( .B0(n328), .B1(n301), .A0N(\reg_file[6][4] ), .A1N(n301), 
        .Y(n101) );
  OAI2BB2X1M U181 ( .B0(n327), .B1(n25), .A0N(\reg_file[6][5] ), .A1N(n301), 
        .Y(n102) );
  OAI2BB2X1M U182 ( .B0(n326), .B1(n25), .A0N(\reg_file[6][6] ), .A1N(n301), 
        .Y(n103) );
  OAI2BB2X1M U183 ( .B0(n325), .B1(n25), .A0N(\reg_file[6][7] ), .A1N(n301), 
        .Y(n104) );
  OAI2BB2X1M U184 ( .B0(n331), .B1(n300), .A0N(\reg_file[7][1] ), .A1N(n300), 
        .Y(n106) );
  OAI2BB2X1M U185 ( .B0(n330), .B1(n300), .A0N(\reg_file[7][2] ), .A1N(n300), 
        .Y(n107) );
  OAI2BB2X1M U186 ( .B0(n329), .B1(n300), .A0N(\reg_file[7][3] ), .A1N(n300), 
        .Y(n108) );
  OAI2BB2X1M U187 ( .B0(n328), .B1(n300), .A0N(\reg_file[7][4] ), .A1N(n300), 
        .Y(n109) );
  OAI2BB2X1M U188 ( .B0(n327), .B1(n28), .A0N(\reg_file[7][5] ), .A1N(n300), 
        .Y(n110) );
  OAI2BB2X1M U189 ( .B0(n326), .B1(n28), .A0N(\reg_file[7][6] ), .A1N(n300), 
        .Y(n111) );
  OAI2BB2X1M U190 ( .B0(n325), .B1(n28), .A0N(\reg_file[7][7] ), .A1N(n300), 
        .Y(n112) );
  OAI2BB2X1M U191 ( .B0(n331), .B1(n299), .A0N(\reg_file[8][1] ), .A1N(n299), 
        .Y(n114) );
  OAI2BB2X1M U192 ( .B0(n330), .B1(n299), .A0N(\reg_file[8][2] ), .A1N(n299), 
        .Y(n115) );
  OAI2BB2X1M U193 ( .B0(n329), .B1(n299), .A0N(\reg_file[8][3] ), .A1N(n299), 
        .Y(n116) );
  OAI2BB2X1M U194 ( .B0(n328), .B1(n299), .A0N(\reg_file[8][4] ), .A1N(n299), 
        .Y(n117) );
  OAI2BB2X1M U195 ( .B0(n327), .B1(n29), .A0N(\reg_file[8][5] ), .A1N(n299), 
        .Y(n118) );
  OAI2BB2X1M U196 ( .B0(n326), .B1(n29), .A0N(\reg_file[8][6] ), .A1N(n299), 
        .Y(n119) );
  OAI2BB2X1M U197 ( .B0(n325), .B1(n29), .A0N(\reg_file[8][7] ), .A1N(n299), 
        .Y(n120) );
  OAI2BB2X1M U198 ( .B0(n331), .B1(n298), .A0N(\reg_file[9][1] ), .A1N(n298), 
        .Y(n122) );
  OAI2BB2X1M U199 ( .B0(n330), .B1(n298), .A0N(\reg_file[9][2] ), .A1N(n298), 
        .Y(n123) );
  OAI2BB2X1M U200 ( .B0(n329), .B1(n298), .A0N(\reg_file[9][3] ), .A1N(n298), 
        .Y(n124) );
  OAI2BB2X1M U201 ( .B0(n328), .B1(n298), .A0N(\reg_file[9][4] ), .A1N(n298), 
        .Y(n125) );
  OAI2BB2X1M U202 ( .B0(n327), .B1(n31), .A0N(\reg_file[9][5] ), .A1N(n298), 
        .Y(n126) );
  OAI2BB2X1M U203 ( .B0(n326), .B1(n31), .A0N(\reg_file[9][6] ), .A1N(n298), 
        .Y(n127) );
  OAI2BB2X1M U204 ( .B0(n325), .B1(n31), .A0N(\reg_file[9][7] ), .A1N(n298), 
        .Y(n128) );
  OAI2BB2X1M U205 ( .B0(n331), .B1(n297), .A0N(\reg_file[10][1] ), .A1N(n297), 
        .Y(n130) );
  OAI2BB2X1M U206 ( .B0(n330), .B1(n297), .A0N(\reg_file[10][2] ), .A1N(n297), 
        .Y(n131) );
  OAI2BB2X1M U207 ( .B0(n329), .B1(n297), .A0N(\reg_file[10][3] ), .A1N(n297), 
        .Y(n132) );
  OAI2BB2X1M U208 ( .B0(n328), .B1(n297), .A0N(\reg_file[10][4] ), .A1N(n297), 
        .Y(n133) );
  OAI2BB2X1M U209 ( .B0(n327), .B1(n33), .A0N(\reg_file[10][5] ), .A1N(n297), 
        .Y(n134) );
  OAI2BB2X1M U210 ( .B0(n326), .B1(n33), .A0N(\reg_file[10][6] ), .A1N(n297), 
        .Y(n135) );
  OAI2BB2X1M U211 ( .B0(n325), .B1(n33), .A0N(\reg_file[10][7] ), .A1N(n297), 
        .Y(n136) );
  OAI2BB2X1M U212 ( .B0(n331), .B1(n296), .A0N(\reg_file[11][1] ), .A1N(n296), 
        .Y(n138) );
  OAI2BB2X1M U213 ( .B0(n330), .B1(n296), .A0N(\reg_file[11][2] ), .A1N(n296), 
        .Y(n139) );
  OAI2BB2X1M U214 ( .B0(n329), .B1(n296), .A0N(\reg_file[11][3] ), .A1N(n296), 
        .Y(n140) );
  OAI2BB2X1M U215 ( .B0(n328), .B1(n296), .A0N(\reg_file[11][4] ), .A1N(n296), 
        .Y(n141) );
  OAI2BB2X1M U216 ( .B0(n327), .B1(n34), .A0N(\reg_file[11][5] ), .A1N(n296), 
        .Y(n142) );
  OAI2BB2X1M U217 ( .B0(n326), .B1(n34), .A0N(\reg_file[11][6] ), .A1N(n296), 
        .Y(n143) );
  OAI2BB2X1M U218 ( .B0(n325), .B1(n34), .A0N(\reg_file[11][7] ), .A1N(n296), 
        .Y(n144) );
  OAI2BB2X1M U219 ( .B0(n331), .B1(n295), .A0N(\reg_file[12][1] ), .A1N(n295), 
        .Y(n146) );
  OAI2BB2X1M U220 ( .B0(n330), .B1(n295), .A0N(\reg_file[12][2] ), .A1N(n295), 
        .Y(n147) );
  OAI2BB2X1M U221 ( .B0(n329), .B1(n295), .A0N(\reg_file[12][3] ), .A1N(n295), 
        .Y(n148) );
  OAI2BB2X1M U222 ( .B0(n328), .B1(n295), .A0N(\reg_file[12][4] ), .A1N(n295), 
        .Y(n149) );
  OAI2BB2X1M U223 ( .B0(n327), .B1(n35), .A0N(\reg_file[12][5] ), .A1N(n295), 
        .Y(n150) );
  OAI2BB2X1M U224 ( .B0(n326), .B1(n35), .A0N(\reg_file[12][6] ), .A1N(n295), 
        .Y(n151) );
  OAI2BB2X1M U225 ( .B0(n325), .B1(n35), .A0N(\reg_file[12][7] ), .A1N(n295), 
        .Y(n152) );
  OAI2BB2X1M U226 ( .B0(n331), .B1(n294), .A0N(\reg_file[13][1] ), .A1N(n294), 
        .Y(n154) );
  OAI2BB2X1M U227 ( .B0(n330), .B1(n294), .A0N(\reg_file[13][2] ), .A1N(n294), 
        .Y(n155) );
  OAI2BB2X1M U228 ( .B0(n329), .B1(n294), .A0N(\reg_file[13][3] ), .A1N(n294), 
        .Y(n156) );
  OAI2BB2X1M U229 ( .B0(n328), .B1(n294), .A0N(\reg_file[13][4] ), .A1N(n294), 
        .Y(n157) );
  OAI2BB2X1M U230 ( .B0(n327), .B1(n36), .A0N(\reg_file[13][5] ), .A1N(n294), 
        .Y(n158) );
  OAI2BB2X1M U231 ( .B0(n326), .B1(n36), .A0N(\reg_file[13][6] ), .A1N(n294), 
        .Y(n159) );
  OAI2BB2X1M U232 ( .B0(n325), .B1(n36), .A0N(\reg_file[13][7] ), .A1N(n294), 
        .Y(n160) );
  OAI2BB2X1M U233 ( .B0(n331), .B1(n293), .A0N(\reg_file[14][1] ), .A1N(n293), 
        .Y(n162) );
  OAI2BB2X1M U234 ( .B0(n330), .B1(n293), .A0N(\reg_file[14][2] ), .A1N(n293), 
        .Y(n163) );
  OAI2BB2X1M U235 ( .B0(n329), .B1(n293), .A0N(\reg_file[14][3] ), .A1N(n293), 
        .Y(n164) );
  OAI2BB2X1M U236 ( .B0(n328), .B1(n293), .A0N(\reg_file[14][4] ), .A1N(n293), 
        .Y(n165) );
  OAI2BB2X1M U237 ( .B0(n327), .B1(n37), .A0N(\reg_file[14][5] ), .A1N(n293), 
        .Y(n166) );
  OAI2BB2X1M U238 ( .B0(n326), .B1(n37), .A0N(\reg_file[14][6] ), .A1N(n293), 
        .Y(n167) );
  OAI2BB2X1M U239 ( .B0(n325), .B1(n37), .A0N(\reg_file[14][7] ), .A1N(n293), 
        .Y(n168) );
  OAI2BB2X1M U240 ( .B0(n331), .B1(n292), .A0N(\reg_file[15][1] ), .A1N(n292), 
        .Y(n170) );
  OAI2BB2X1M U241 ( .B0(n330), .B1(n292), .A0N(\reg_file[15][2] ), .A1N(n292), 
        .Y(n171) );
  OAI2BB2X1M U242 ( .B0(n329), .B1(n292), .A0N(\reg_file[15][3] ), .A1N(n292), 
        .Y(n172) );
  OAI2BB2X1M U243 ( .B0(n328), .B1(n292), .A0N(\reg_file[15][4] ), .A1N(n292), 
        .Y(n173) );
  OAI2BB2X1M U244 ( .B0(n327), .B1(n39), .A0N(\reg_file[15][5] ), .A1N(n292), 
        .Y(n174) );
  OAI2BB2X1M U245 ( .B0(n326), .B1(n39), .A0N(\reg_file[15][6] ), .A1N(n292), 
        .Y(n175) );
  OAI2BB2X1M U246 ( .B0(n325), .B1(n39), .A0N(\reg_file[15][7] ), .A1N(n292), 
        .Y(n176) );
  OAI2BB2X1M U247 ( .B0(n332), .B1(n304), .A0N(REG3[0]), .A1N(n304), .Y(n73)
         );
  OAI2BB2X1M U248 ( .B0(n332), .B1(n303), .A0N(\reg_file[4][0] ), .A1N(n303), 
        .Y(n81) );
  OAI2BB2X1M U249 ( .B0(n332), .B1(n302), .A0N(\reg_file[5][0] ), .A1N(n302), 
        .Y(n89) );
  OAI2BB2X1M U250 ( .B0(n332), .B1(n301), .A0N(\reg_file[6][0] ), .A1N(n301), 
        .Y(n97) );
  OAI2BB2X1M U251 ( .B0(n332), .B1(n300), .A0N(\reg_file[7][0] ), .A1N(n300), 
        .Y(n105) );
  OAI2BB2X1M U252 ( .B0(n332), .B1(n299), .A0N(\reg_file[8][0] ), .A1N(n299), 
        .Y(n113) );
  OAI2BB2X1M U253 ( .B0(n332), .B1(n298), .A0N(\reg_file[9][0] ), .A1N(n298), 
        .Y(n121) );
  OAI2BB2X1M U254 ( .B0(n332), .B1(n297), .A0N(\reg_file[10][0] ), .A1N(n297), 
        .Y(n129) );
  OAI2BB2X1M U255 ( .B0(n332), .B1(n296), .A0N(\reg_file[11][0] ), .A1N(n296), 
        .Y(n137) );
  OAI2BB2X1M U256 ( .B0(n332), .B1(n295), .A0N(\reg_file[12][0] ), .A1N(n295), 
        .Y(n145) );
  OAI2BB2X1M U257 ( .B0(n332), .B1(n294), .A0N(\reg_file[13][0] ), .A1N(n294), 
        .Y(n153) );
  OAI2BB2X1M U258 ( .B0(n332), .B1(n293), .A0N(\reg_file[14][0] ), .A1N(n293), 
        .Y(n161) );
  OAI2BB2X1M U259 ( .B0(n332), .B1(n292), .A0N(\reg_file[15][0] ), .A1N(n292), 
        .Y(n169) );
  OAI2BB2X1M U260 ( .B0(n307), .B1(n332), .A0N(REG0[0]), .A1N(n14), .Y(n49) );
  OAI2BB2X1M U261 ( .B0(n307), .B1(n331), .A0N(REG0[1]), .A1N(n14), .Y(n50) );
  OAI2BB2X1M U262 ( .B0(n307), .B1(n330), .A0N(REG0[2]), .A1N(n14), .Y(n51) );
  OAI2BB2X1M U263 ( .B0(n307), .B1(n329), .A0N(REG0[3]), .A1N(n14), .Y(n52) );
  OAI2BB2XLM U264 ( .B0(n325), .B1(n19), .A0N(REG2[7]), .A1N(n305), .Y(n72) );
  OAI2BB2X1M U265 ( .B0(n327), .B1(n21), .A0N(REG3[5]), .A1N(n304), .Y(n78) );
  OAI2BB2X1M U266 ( .B0(n332), .B1(n305), .A0N(REG2[0]), .A1N(n305), .Y(n65)
         );
  AND2X2M U267 ( .A(N13), .B(n13), .Y(n38) );
  BUFX4M U268 ( .A(n12), .Y(n308) );
  NAND2BX2M U269 ( .AN(WrEn), .B(RdEn), .Y(n12) );
  OAI2BB1X2M U270 ( .A0N(RdData_VLD), .A1N(n13), .B0(n308), .Y(n48) );
  AOI22X1M U271 ( .A0(\reg_file[10][0] ), .A1(n284), .B0(\reg_file[11][0] ), 
        .B1(n282), .Y(n8) );
  AOI22X1M U272 ( .A0(\reg_file[8][0] ), .A1(n291), .B0(\reg_file[9][0] ), 
        .B1(n288), .Y(n7) );
  AOI21X1M U273 ( .A0(n8), .A1(n7), .B0(n256), .Y(n183) );
  AOI22X1M U274 ( .A0(\reg_file[14][0] ), .A1(n284), .B0(\reg_file[15][0] ), 
        .B1(n282), .Y(n10) );
  AOI22X1M U275 ( .A0(\reg_file[12][0] ), .A1(n291), .B0(\reg_file[13][0] ), 
        .B1(n288), .Y(n9) );
  AOI22X1M U276 ( .A0(REG2[0]), .A1(n284), .B0(REG3[0]), .B1(n282), .Y(n177)
         );
  AOI22X1M U277 ( .A0(\reg_file[6][0] ), .A1(n284), .B0(\reg_file[7][0] ), 
        .B1(n282), .Y(n179) );
  AOI22X1M U278 ( .A0(\reg_file[4][0] ), .A1(n291), .B0(\reg_file[5][0] ), 
        .B1(n288), .Y(n178) );
  OR4X1M U279 ( .A(n183), .B(n182), .C(n181), .D(n180), .Y(N42) );
  AOI22X1M U280 ( .A0(\reg_file[10][1] ), .A1(n284), .B0(\reg_file[11][1] ), 
        .B1(n282), .Y(n185) );
  AOI22X1M U281 ( .A0(\reg_file[8][1] ), .A1(n291), .B0(\reg_file[9][1] ), 
        .B1(n288), .Y(n184) );
  AOI21X1M U282 ( .A0(n185), .A1(n184), .B0(n256), .Y(n195) );
  AOI22X1M U283 ( .A0(\reg_file[14][1] ), .A1(n284), .B0(\reg_file[15][1] ), 
        .B1(n282), .Y(n187) );
  AOI22X1M U284 ( .A0(\reg_file[12][1] ), .A1(n291), .B0(\reg_file[13][1] ), 
        .B1(n288), .Y(n186) );
  AOI22X1M U285 ( .A0(REG2[1]), .A1(n284), .B0(REG3[1]), .B1(n282), .Y(n189)
         );
  AOI22X1M U286 ( .A0(\reg_file[6][1] ), .A1(n284), .B0(\reg_file[7][1] ), 
        .B1(n282), .Y(n191) );
  AOI22X1M U287 ( .A0(\reg_file[4][1] ), .A1(n291), .B0(\reg_file[5][1] ), 
        .B1(n288), .Y(n190) );
  OR4X1M U288 ( .A(n195), .B(n194), .C(n193), .D(n192), .Y(N41) );
  AOI22X1M U289 ( .A0(\reg_file[10][2] ), .A1(n284), .B0(\reg_file[11][2] ), 
        .B1(n282), .Y(n197) );
  AOI22X1M U290 ( .A0(\reg_file[8][2] ), .A1(n291), .B0(\reg_file[9][2] ), 
        .B1(n288), .Y(n196) );
  AOI21X1M U291 ( .A0(n197), .A1(n196), .B0(n256), .Y(n207) );
  AOI22X1M U292 ( .A0(\reg_file[14][2] ), .A1(n284), .B0(\reg_file[15][2] ), 
        .B1(n282), .Y(n199) );
  AOI22X1M U293 ( .A0(\reg_file[12][2] ), .A1(n291), .B0(\reg_file[13][2] ), 
        .B1(n288), .Y(n198) );
  AOI22X1M U294 ( .A0(REG2[2]), .A1(n284), .B0(REG3[2]), .B1(n282), .Y(n201)
         );
  AOI22X1M U295 ( .A0(\reg_file[6][2] ), .A1(n284), .B0(\reg_file[7][2] ), 
        .B1(n282), .Y(n203) );
  AOI22X1M U296 ( .A0(\reg_file[4][2] ), .A1(n291), .B0(\reg_file[5][2] ), 
        .B1(n288), .Y(n202) );
  OR4X1M U297 ( .A(n207), .B(n206), .C(n205), .D(n204), .Y(N40) );
  AOI22X1M U298 ( .A0(\reg_file[10][3] ), .A1(n284), .B0(\reg_file[11][3] ), 
        .B1(n281), .Y(n209) );
  AOI22X1M U299 ( .A0(\reg_file[8][3] ), .A1(n291), .B0(\reg_file[9][3] ), 
        .B1(n287), .Y(n208) );
  AOI21X1M U300 ( .A0(n209), .A1(n208), .B0(n256), .Y(n219) );
  AOI22X1M U301 ( .A0(\reg_file[14][3] ), .A1(n283), .B0(\reg_file[15][3] ), 
        .B1(n281), .Y(n211) );
  AOI22X1M U302 ( .A0(\reg_file[12][3] ), .A1(n290), .B0(\reg_file[13][3] ), 
        .B1(n287), .Y(n210) );
  AOI22X1M U303 ( .A0(REG2[3]), .A1(n283), .B0(REG3[3]), .B1(n281), .Y(n213)
         );
  AOI22X1M U304 ( .A0(\reg_file[6][3] ), .A1(n283), .B0(\reg_file[7][3] ), 
        .B1(n281), .Y(n215) );
  AOI22X1M U305 ( .A0(\reg_file[4][3] ), .A1(n290), .B0(\reg_file[5][3] ), 
        .B1(n287), .Y(n214) );
  OR4X1M U306 ( .A(n219), .B(n218), .C(n217), .D(n216), .Y(N39) );
  AOI22X1M U307 ( .A0(\reg_file[10][4] ), .A1(n283), .B0(\reg_file[11][4] ), 
        .B1(n281), .Y(n221) );
  AOI22X1M U308 ( .A0(\reg_file[8][4] ), .A1(n290), .B0(\reg_file[9][4] ), 
        .B1(n287), .Y(n220) );
  AOI21X1M U309 ( .A0(n221), .A1(n220), .B0(n256), .Y(n231) );
  AOI22X1M U310 ( .A0(\reg_file[14][4] ), .A1(n283), .B0(\reg_file[15][4] ), 
        .B1(n281), .Y(n223) );
  AOI22X1M U311 ( .A0(\reg_file[12][4] ), .A1(n290), .B0(\reg_file[13][4] ), 
        .B1(n287), .Y(n222) );
  AOI22X1M U312 ( .A0(REG2[4]), .A1(n283), .B0(REG3[4]), .B1(n281), .Y(n225)
         );
  AOI22X1M U313 ( .A0(\reg_file[6][4] ), .A1(n283), .B0(\reg_file[7][4] ), 
        .B1(n281), .Y(n227) );
  AOI22X1M U314 ( .A0(\reg_file[4][4] ), .A1(n290), .B0(\reg_file[5][4] ), 
        .B1(n287), .Y(n226) );
  OR4X1M U315 ( .A(n231), .B(n230), .C(n229), .D(n228), .Y(N38) );
  AOI22X1M U316 ( .A0(\reg_file[10][5] ), .A1(n283), .B0(\reg_file[11][5] ), 
        .B1(n281), .Y(n233) );
  AOI22X1M U317 ( .A0(\reg_file[8][5] ), .A1(n290), .B0(\reg_file[9][5] ), 
        .B1(n287), .Y(n232) );
  AOI21X1M U318 ( .A0(n233), .A1(n232), .B0(n256), .Y(n243) );
  AOI22X1M U319 ( .A0(\reg_file[14][5] ), .A1(n283), .B0(\reg_file[15][5] ), 
        .B1(n281), .Y(n235) );
  AOI22X1M U320 ( .A0(\reg_file[12][5] ), .A1(n290), .B0(\reg_file[13][5] ), 
        .B1(n287), .Y(n234) );
  AOI22X1M U321 ( .A0(REG2[5]), .A1(n283), .B0(REG3[5]), .B1(n281), .Y(n237)
         );
  AOI22X1M U322 ( .A0(\reg_file[6][5] ), .A1(n283), .B0(\reg_file[7][5] ), 
        .B1(n281), .Y(n239) );
  AOI22X1M U323 ( .A0(\reg_file[4][5] ), .A1(n290), .B0(\reg_file[5][5] ), 
        .B1(n287), .Y(n238) );
  OR4X1M U324 ( .A(n243), .B(n242), .C(n241), .D(n240), .Y(N37) );
  AOI22X1M U325 ( .A0(\reg_file[10][6] ), .A1(n283), .B0(\reg_file[11][6] ), 
        .B1(n280), .Y(n245) );
  AOI22X1M U326 ( .A0(\reg_file[8][6] ), .A1(n290), .B0(\reg_file[9][6] ), 
        .B1(n267), .Y(n244) );
  AOI21X1M U327 ( .A0(n245), .A1(n244), .B0(n256), .Y(n255) );
  AOI22X1M U328 ( .A0(\reg_file[14][6] ), .A1(n283), .B0(\reg_file[15][6] ), 
        .B1(n280), .Y(n247) );
  AOI22X1M U329 ( .A0(\reg_file[12][6] ), .A1(n290), .B0(\reg_file[13][6] ), 
        .B1(n286), .Y(n246) );
  AOI22X1M U330 ( .A0(REG2[6]), .A1(n283), .B0(REG3[6]), .B1(n280), .Y(n249)
         );
  AOI22X1M U331 ( .A0(\reg_file[6][6] ), .A1(n283), .B0(\reg_file[7][6] ), 
        .B1(n280), .Y(n251) );
  AOI22X1M U332 ( .A0(\reg_file[4][6] ), .A1(n289), .B0(\reg_file[5][6] ), 
        .B1(n286), .Y(n250) );
  OR4X1M U333 ( .A(n255), .B(n254), .C(n253), .D(n252), .Y(N36) );
  AOI22X1M U334 ( .A0(\reg_file[10][7] ), .A1(n283), .B0(\reg_file[11][7] ), 
        .B1(n280), .Y(n258) );
  AOI22X1M U335 ( .A0(\reg_file[8][7] ), .A1(n289), .B0(\reg_file[9][7] ), 
        .B1(n286), .Y(n257) );
  AOI21X1M U336 ( .A0(n258), .A1(n257), .B0(n256), .Y(n275) );
  AOI22X1M U337 ( .A0(\reg_file[14][7] ), .A1(n284), .B0(\reg_file[15][7] ), 
        .B1(n280), .Y(n261) );
  AOI22X1M U338 ( .A0(\reg_file[12][7] ), .A1(n289), .B0(\reg_file[13][7] ), 
        .B1(n286), .Y(n260) );
  AOI22X1M U339 ( .A0(REG2[7]), .A1(n284), .B0(REG3[7]), .B1(n280), .Y(n264)
         );
  AOI22X1M U340 ( .A0(\reg_file[6][7] ), .A1(n284), .B0(\reg_file[7][7] ), 
        .B1(n280), .Y(n271) );
  AOI22X1M U341 ( .A0(\reg_file[4][7] ), .A1(n289), .B0(\reg_file[5][7] ), 
        .B1(n286), .Y(n270) );
  OR4X1M U342 ( .A(n275), .B(n274), .C(n273), .D(n272), .Y(N35) );
endmodule


module alu_edit_DW_div_uns_0 ( a, b, quotient, remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   n27, \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] ,
         \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] ,
         \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] ,
         \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] ,
         \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] ,
         \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] ,
         \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] ,
         \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] ,
         \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] ,
         \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] ,
         \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] , \u_div/CryTmp[1][1] ,
         \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] ,
         \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] , \u_div/CryTmp[1][7] ,
         \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] ,
         \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] , \u_div/CryTmp[2][6] ,
         \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] ,
         \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] ,
         \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] ,
         \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] ,
         \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] , \u_div/CryTmp[7][1] ,
         \u_div/PartRem[1][1] , \u_div/PartRem[1][2] , \u_div/PartRem[1][3] ,
         \u_div/PartRem[1][4] , \u_div/PartRem[1][5] , \u_div/PartRem[1][6] ,
         \u_div/PartRem[1][7] , \u_div/PartRem[2][1] , \u_div/PartRem[2][2] ,
         \u_div/PartRem[2][3] , \u_div/PartRem[2][4] , \u_div/PartRem[2][5] ,
         \u_div/PartRem[2][6] , \u_div/PartRem[3][1] , \u_div/PartRem[3][2] ,
         \u_div/PartRem[3][3] , \u_div/PartRem[3][4] , \u_div/PartRem[3][5] ,
         \u_div/PartRem[4][1] , \u_div/PartRem[4][2] , \u_div/PartRem[4][3] ,
         \u_div/PartRem[4][4] , \u_div/PartRem[5][1] , \u_div/PartRem[5][2] ,
         \u_div/PartRem[5][3] , \u_div/PartRem[6][1] , \u_div/PartRem[6][2] ,
         \u_div/PartRem[7][1] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;

  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n20), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n21), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n20), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n20), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n20), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n22), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n20), 
        .CI(\u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n17), 
        .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  ADDFHX1M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n21), 
        .CI(\u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFHX1M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n22), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n22), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n17), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n18), 
        .CI(\u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFHX1M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n21), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n22), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n19), 
        .CI(\u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n22), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFHX1M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n21), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n16), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n21), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n22), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n21), 
        .CI(\u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n22), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n18), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n18), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n19), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX4M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n19), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n19), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  AND3X12M U1 ( .A(n26), .B(n19), .C(n18), .Y(n25) );
  INVX4M U2 ( .A(b[4]), .Y(n19) );
  INVX4M U3 ( .A(b[5]), .Y(n18) );
  MX2X3M U4 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(n27), .Y(
        \u_div/PartRem[2][1] ) );
  INVX4M U5 ( .A(b[3]), .Y(n20) );
  INVX6M U6 ( .A(b[1]), .Y(n22) );
  INVX4M U7 ( .A(b[2]), .Y(n21) );
  MX2X2M U8 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  MX2X2M U9 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  AND2X8M U10 ( .A(n22), .B(n1), .Y(quotient[7]) );
  NAND2X6M U11 ( .A(\u_div/CryTmp[7][1] ), .B(n24), .Y(n2) );
  MX2XLM U12 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  MX2X1M U13 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  MX2X2M U14 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(n7), 
        .Y(\u_div/PartRem[2][2] ) );
  CLKAND2X6M U15 ( .A(\u_div/CryTmp[3][5] ), .B(n3), .Y(quotient[3]) );
  INVX8M U16 ( .A(b[0]), .Y(n23) );
  MX2X2M U17 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  MX2X2M U18 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  MX2X4M U19 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  CLKNAND2X8M U20 ( .A(n10), .B(n11), .Y(\u_div/PartRem[5][2] ) );
  MX2X4M U21 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  AND2X6M U22 ( .A(\u_div/CryTmp[5][3] ), .B(n24), .Y(quotient[5]) );
  MX2XLM U23 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  MX2XLM U24 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  AND2X4M U25 ( .A(\u_div/CryTmp[2][6] ), .B(n26), .Y(n27) );
  NOR2BX12M U26 ( .AN(n21), .B(n2), .Y(n1) );
  AND2X12M U27 ( .A(\u_div/CryTmp[4][4] ), .B(n25), .Y(quotient[4]) );
  CLKNAND2X8M U28 ( .A(n5), .B(n6), .Y(\u_div/PartRem[6][1] ) );
  CLKINVX16M U29 ( .A(quotient[6]), .Y(n4) );
  NAND2X8M U30 ( .A(a[6]), .B(n4), .Y(n5) );
  MX2X6M U31 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  OR2X1M U32 ( .A(a[7]), .B(n23), .Y(\u_div/CryTmp[7][1] ) );
  CLKAND2X16M U33 ( .A(n25), .B(n20), .Y(n24) );
  NAND2X8M U34 ( .A(\u_div/SumTmp[6][0] ), .B(quotient[6]), .Y(n6) );
  NAND2X2M U35 ( .A(\u_div/PartRem[6][1] ), .B(n9), .Y(n10) );
  AND2X1M U36 ( .A(\u_div/CryTmp[2][6] ), .B(n26), .Y(n7) );
  AND2X12M U37 ( .A(\u_div/CryTmp[6][2] ), .B(n14), .Y(quotient[6]) );
  AND2X1M U38 ( .A(n18), .B(n26), .Y(n3) );
  MX2X1M U39 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  CLKMX2X2M U40 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  XNOR2XLM U41 ( .A(n23), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  XNOR2X1M U42 ( .A(n23), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  MX2XLM U43 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  AND2X1M U44 ( .A(\u_div/CryTmp[2][6] ), .B(n26), .Y(n8) );
  NAND2XLM U45 ( .A(\u_div/SumTmp[5][1] ), .B(quotient[5]), .Y(n11) );
  CLKINVX1M U46 ( .A(quotient[5]), .Y(n9) );
  AND2X1M U47 ( .A(\u_div/CryTmp[2][6] ), .B(n26), .Y(n12) );
  AND2X1M U48 ( .A(\u_div/CryTmp[2][6] ), .B(n26), .Y(quotient[2]) );
  NOR2X12M U49 ( .A(b[6]), .B(b[7]), .Y(n26) );
  AND2X1M U50 ( .A(n24), .B(n21), .Y(n14) );
  MX2XLM U51 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  MX2XLM U52 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(n12), 
        .Y(\u_div/PartRem[2][4] ) );
  MX2XLM U53 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  MX2X1M U54 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(n8), 
        .Y(\u_div/PartRem[2][5] ) );
  MX2XLM U55 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(n7), 
        .Y(\u_div/PartRem[2][6] ) );
  AND2X12M U56 ( .A(\u_div/CryTmp[1][7] ), .B(n16), .Y(quotient[1]) );
  XNOR2XLM U57 ( .A(n23), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2XLM U58 ( .A(n23), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2XLM U59 ( .A(n23), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2XLM U60 ( .A(n23), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  OR2X1M U61 ( .A(a[5]), .B(n23), .Y(\u_div/CryTmp[5][1] ) );
  OR2X1M U62 ( .A(a[4]), .B(n23), .Y(\u_div/CryTmp[4][1] ) );
  OR2X1M U63 ( .A(a[3]), .B(n23), .Y(\u_div/CryTmp[3][1] ) );
  OR2X1M U64 ( .A(a[6]), .B(n23), .Y(\u_div/CryTmp[6][1] ) );
  XNOR2XLM U65 ( .A(n23), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  CLKINVX1M U66 ( .A(b[7]), .Y(n16) );
  OR2X2M U67 ( .A(a[2]), .B(n23), .Y(\u_div/CryTmp[2][1] ) );
  OR2X2M U68 ( .A(a[1]), .B(n23), .Y(\u_div/CryTmp[1][1] ) );
  NAND2X2M U69 ( .A(b[0]), .B(n15), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U70 ( .A(a[0]), .Y(n15) );
  INVX2M U71 ( .A(b[6]), .Y(n17) );
  CLKMX2X2M U72 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U73 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U74 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U75 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2M U76 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
endmodule


module alu_edit_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [9:0] carry;

  ADDFX2M U2_7 ( .A(A[7]), .B(n1), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n3), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n4), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n6), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n7), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n2), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  INVXLM U1 ( .A(B[0]), .Y(n8) );
  INVXLM U2 ( .A(B[1]), .Y(n7) );
  INVXLM U3 ( .A(B[5]), .Y(n3) );
  INVXLM U4 ( .A(B[2]), .Y(n6) );
  INVXLM U5 ( .A(B[3]), .Y(n5) );
  INVXLM U6 ( .A(B[7]), .Y(n1) );
  INVX2M U7 ( .A(B[6]), .Y(n2) );
  XNOR2X2M U8 ( .A(n8), .B(A[0]), .Y(DIFF[0]) );
  OR2X2M U9 ( .A(A[0]), .B(n8), .Y(carry[1]) );
  INVX2M U10 ( .A(B[4]), .Y(n4) );
  CLKINVX1M U11 ( .A(carry[8]), .Y(DIFF[8]) );
endmodule


module alu_edit_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2XLM U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module alu_edit_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26;

  OAI21BX2M U2 ( .A0(n19), .A1(n20), .B0N(n21), .Y(n17) );
  OAI21XLM U3 ( .A0(A[12]), .A1(n17), .B0(B[12]), .Y(n18) );
  NAND2X2M U4 ( .A(A[7]), .B(B[7]), .Y(n13) );
  INVX2M U5 ( .A(A[6]), .Y(n7) );
  CLKXOR2X2M U6 ( .A(B[13]), .B(n16), .Y(SUM[13]) );
  CLKXOR2X2M U7 ( .A(A[7]), .B(B[7]), .Y(SUM[7]) );
  INVX2M U8 ( .A(n7), .Y(SUM[6]) );
  BUFX2M U9 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U10 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U11 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U12 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U13 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U14 ( .A(A[5]), .Y(SUM[5]) );
  XNOR2X1M U15 ( .A(n8), .B(n9), .Y(SUM[9]) );
  NOR2X1M U16 ( .A(n10), .B(n11), .Y(n9) );
  CLKXOR2X2M U17 ( .A(n12), .B(n13), .Y(SUM[8]) );
  NAND2BX1M U18 ( .AN(n14), .B(n15), .Y(n12) );
  OAI2BB1X1M U19 ( .A0N(n17), .A1N(A[12]), .B0(n18), .Y(n16) );
  XOR3XLM U20 ( .A(B[12]), .B(A[12]), .C(n17), .Y(SUM[12]) );
  XNOR2X1M U21 ( .A(n20), .B(n22), .Y(SUM[11]) );
  NOR2X1M U22 ( .A(n21), .B(n19), .Y(n22) );
  NOR2X1M U23 ( .A(B[11]), .B(A[11]), .Y(n19) );
  AND2X1M U24 ( .A(B[11]), .B(A[11]), .Y(n21) );
  OA21X1M U25 ( .A0(n23), .A1(n24), .B0(n25), .Y(n20) );
  CLKXOR2X2M U26 ( .A(n26), .B(n24), .Y(SUM[10]) );
  AOI2BB1X1M U27 ( .A0N(n8), .A1N(n11), .B0(n10), .Y(n24) );
  AND2X1M U28 ( .A(B[9]), .B(A[9]), .Y(n10) );
  NOR2X1M U29 ( .A(B[9]), .B(A[9]), .Y(n11) );
  OA21X1M U30 ( .A0(n13), .A1(n14), .B0(n15), .Y(n8) );
  CLKNAND2X2M U31 ( .A(B[8]), .B(A[8]), .Y(n15) );
  NOR2X1M U32 ( .A(B[8]), .B(A[8]), .Y(n14) );
  NAND2BX1M U33 ( .AN(n23), .B(n25), .Y(n26) );
  CLKNAND2X2M U34 ( .A(B[10]), .B(A[10]), .Y(n25) );
  NOR2X1M U35 ( .A(B[10]), .B(A[10]), .Y(n23) );
endmodule


module alu_edit_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[1][0] , \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] ,
         \ab[0][3] , \ab[0][2] , \ab[0][1] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \SUMB[7][6] , \SUMB[7][5] , \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] ,
         \SUMB[7][1] , \SUMB[7][0] , \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] ,
         \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] ,
         \SUMB[4][5] , \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][6] , \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] ,
         \SUMB[3][1] , \SUMB[2][6] , \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] ,
         \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] ,
         \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[4] , \A1[3] ,
         \A1[2] , \A1[1] , \A1[0] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32;

  alu_edit_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , 
        \A1[1] , \A1[0] }), .B({n10, n16, n15, n14, n13, n11, n12, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n4), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n9), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n3), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n7), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n5), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n6), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n8), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  AND2X2M U2 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  CLKINVX3M U10 ( .A(B[0]), .Y(n24) );
  CLKINVX3M U11 ( .A(B[1]), .Y(n23) );
  CLKINVX3M U12 ( .A(B[5]), .Y(n19) );
  CLKINVX3M U13 ( .A(B[2]), .Y(n22) );
  CLKINVX3M U14 ( .A(B[3]), .Y(n21) );
  CLKINVX3M U15 ( .A(B[7]), .Y(n17) );
  CLKXOR2X2M U16 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  AND2X2M U17 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n11) );
  CLKXOR2X2M U18 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U19 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  AND2X2M U20 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n12) );
  AND2X2M U21 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n13) );
  CLKXOR2X2M U22 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U23 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  AND2X2M U24 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n14) );
  AND2X2M U25 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n15) );
  CLKXOR2X2M U26 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  CLKXOR2X2M U27 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(\A1[6] ) );
  AND2X2M U28 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n16) );
  XOR2XLM U29 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  INVX4M U30 ( .A(B[6]), .Y(n18) );
  INVX4M U31 ( .A(A[0]), .Y(n32) );
  INVX4M U32 ( .A(A[1]), .Y(n31) );
  INVX4M U33 ( .A(A[2]), .Y(n30) );
  XOR2XLM U34 ( .A(\ab[1][6] ), .B(\ab[0][7] ), .Y(\SUMB[1][6] ) );
  XOR2XLM U35 ( .A(\ab[1][5] ), .B(\ab[0][6] ), .Y(\SUMB[1][5] ) );
  XOR2XLM U36 ( .A(\ab[1][4] ), .B(\ab[0][5] ), .Y(\SUMB[1][4] ) );
  XOR2XLM U37 ( .A(\ab[1][3] ), .B(\ab[0][4] ), .Y(\SUMB[1][3] ) );
  XOR2XLM U38 ( .A(\ab[1][1] ), .B(\ab[0][2] ), .Y(\SUMB[1][1] ) );
  XOR2XLM U39 ( .A(\ab[1][2] ), .B(\ab[0][3] ), .Y(\SUMB[1][2] ) );
  INVX4M U40 ( .A(A[3]), .Y(n29) );
  INVX4M U41 ( .A(A[4]), .Y(n28) );
  INVX4M U42 ( .A(A[5]), .Y(n27) );
  INVX4M U43 ( .A(A[7]), .Y(n25) );
  INVX4M U44 ( .A(A[6]), .Y(n26) );
  INVX4M U45 ( .A(B[4]), .Y(n20) );
  NOR2X1M U47 ( .A(n25), .B(n17), .Y(\ab[7][7] ) );
  NOR2X1M U48 ( .A(n25), .B(n18), .Y(\ab[7][6] ) );
  NOR2X1M U49 ( .A(n25), .B(n19), .Y(\ab[7][5] ) );
  NOR2X1M U50 ( .A(n25), .B(n20), .Y(\ab[7][4] ) );
  NOR2X1M U51 ( .A(n25), .B(n21), .Y(\ab[7][3] ) );
  NOR2X1M U52 ( .A(n25), .B(n22), .Y(\ab[7][2] ) );
  NOR2X1M U53 ( .A(n25), .B(n23), .Y(\ab[7][1] ) );
  NOR2X1M U54 ( .A(n25), .B(n24), .Y(\ab[7][0] ) );
  NOR2X1M U55 ( .A(n17), .B(n26), .Y(\ab[6][7] ) );
  NOR2X1M U56 ( .A(n18), .B(n26), .Y(\ab[6][6] ) );
  NOR2X1M U57 ( .A(n19), .B(n26), .Y(\ab[6][5] ) );
  NOR2X1M U58 ( .A(n20), .B(n26), .Y(\ab[6][4] ) );
  NOR2X1M U59 ( .A(n21), .B(n26), .Y(\ab[6][3] ) );
  NOR2X1M U60 ( .A(n22), .B(n26), .Y(\ab[6][2] ) );
  NOR2X1M U61 ( .A(n23), .B(n26), .Y(\ab[6][1] ) );
  NOR2X1M U62 ( .A(n24), .B(n26), .Y(\ab[6][0] ) );
  NOR2X1M U63 ( .A(n17), .B(n27), .Y(\ab[5][7] ) );
  NOR2X1M U64 ( .A(n18), .B(n27), .Y(\ab[5][6] ) );
  NOR2X1M U65 ( .A(n19), .B(n27), .Y(\ab[5][5] ) );
  NOR2X1M U66 ( .A(n20), .B(n27), .Y(\ab[5][4] ) );
  NOR2X1M U67 ( .A(n21), .B(n27), .Y(\ab[5][3] ) );
  NOR2X1M U68 ( .A(n22), .B(n27), .Y(\ab[5][2] ) );
  NOR2X1M U69 ( .A(n23), .B(n27), .Y(\ab[5][1] ) );
  NOR2X1M U70 ( .A(n24), .B(n27), .Y(\ab[5][0] ) );
  NOR2X1M U71 ( .A(n17), .B(n28), .Y(\ab[4][7] ) );
  NOR2X1M U72 ( .A(n18), .B(n28), .Y(\ab[4][6] ) );
  NOR2X1M U73 ( .A(n19), .B(n28), .Y(\ab[4][5] ) );
  NOR2X1M U74 ( .A(n20), .B(n28), .Y(\ab[4][4] ) );
  NOR2X1M U75 ( .A(n21), .B(n28), .Y(\ab[4][3] ) );
  NOR2X1M U76 ( .A(n22), .B(n28), .Y(\ab[4][2] ) );
  NOR2X1M U77 ( .A(n23), .B(n28), .Y(\ab[4][1] ) );
  NOR2X1M U78 ( .A(n24), .B(n28), .Y(\ab[4][0] ) );
  NOR2X1M U79 ( .A(n17), .B(n29), .Y(\ab[3][7] ) );
  NOR2X1M U80 ( .A(n18), .B(n29), .Y(\ab[3][6] ) );
  NOR2X1M U81 ( .A(n19), .B(n29), .Y(\ab[3][5] ) );
  NOR2X1M U82 ( .A(n20), .B(n29), .Y(\ab[3][4] ) );
  NOR2X1M U83 ( .A(n21), .B(n29), .Y(\ab[3][3] ) );
  NOR2X1M U84 ( .A(n22), .B(n29), .Y(\ab[3][2] ) );
  NOR2X1M U85 ( .A(n23), .B(n29), .Y(\ab[3][1] ) );
  NOR2X1M U86 ( .A(n24), .B(n29), .Y(\ab[3][0] ) );
  NOR2X1M U87 ( .A(n17), .B(n30), .Y(\ab[2][7] ) );
  NOR2X1M U88 ( .A(n18), .B(n30), .Y(\ab[2][6] ) );
  NOR2X1M U89 ( .A(n19), .B(n30), .Y(\ab[2][5] ) );
  NOR2X1M U90 ( .A(n20), .B(n30), .Y(\ab[2][4] ) );
  NOR2X1M U91 ( .A(n21), .B(n30), .Y(\ab[2][3] ) );
  NOR2X1M U92 ( .A(n22), .B(n30), .Y(\ab[2][2] ) );
  NOR2X1M U93 ( .A(n23), .B(n30), .Y(\ab[2][1] ) );
  NOR2X1M U94 ( .A(n24), .B(n30), .Y(\ab[2][0] ) );
  NOR2X1M U95 ( .A(n17), .B(n31), .Y(\ab[1][7] ) );
  NOR2X1M U96 ( .A(n18), .B(n31), .Y(\ab[1][6] ) );
  NOR2X1M U97 ( .A(n19), .B(n31), .Y(\ab[1][5] ) );
  NOR2X1M U98 ( .A(n20), .B(n31), .Y(\ab[1][4] ) );
  NOR2X1M U99 ( .A(n21), .B(n31), .Y(\ab[1][3] ) );
  NOR2X1M U100 ( .A(n22), .B(n31), .Y(\ab[1][2] ) );
  NOR2X1M U101 ( .A(n23), .B(n31), .Y(\ab[1][1] ) );
  NOR2X1M U102 ( .A(n24), .B(n31), .Y(\ab[1][0] ) );
  NOR2X1M U103 ( .A(n17), .B(n32), .Y(\ab[0][7] ) );
  NOR2X1M U104 ( .A(n18), .B(n32), .Y(\ab[0][6] ) );
  NOR2X1M U105 ( .A(n19), .B(n32), .Y(\ab[0][5] ) );
  NOR2X1M U106 ( .A(n20), .B(n32), .Y(\ab[0][4] ) );
  NOR2X1M U107 ( .A(n21), .B(n32), .Y(\ab[0][3] ) );
  NOR2X1M U108 ( .A(n22), .B(n32), .Y(\ab[0][2] ) );
  NOR2X1M U109 ( .A(n23), .B(n32), .Y(\ab[0][1] ) );
  NOR2X1M U110 ( .A(n24), .B(n32), .Y(PRODUCT[0]) );
endmodule


module alu_edit ( A, B, EN, ALU_FUN, CLK, RST, ALU_OUT, OUT_VALID );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input EN, CLK, RST;
  output OUT_VALID;
  wire   N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103,
         N104, N105, N106, N107, N108, N109, N110, N111, N112, N113, N114,
         N115, N116, N117, N118, N119, N120, N121, N122, N123, N124, N125,
         N126, N127, N128, N129, N130, N131, N132, N157, N158, N159, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n42, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160;
  wire   [15:0] ALU_OUT_Comb;

  OAI2BB1X4M U77 ( .A0N(n100), .A1N(n99), .B0(n101), .Y(n48) );
  alu_edit_DW_div_uns_0 div_52 ( .a({n4, n22, n21, n20, n19, n18, n17, n16}), 
        .b({B[7], n7, B[5:0]}), .quotient({N132, N131, N130, N129, N128, N127, 
        N126, N125}) );
  alu_edit_DW01_sub_0 sub_46 ( .A({1'b0, n5, n22, n21, n20, n19, n18, n17, n16}), .B({1'b0, B[7], n8, B[5:0]}), .CI(1'b0), .DIFF({N108, N107, N106, N105, 
        N104, N103, N102, N101, N100}) );
  alu_edit_DW01_add_0 add_43 ( .A({1'b0, n6, n22, n21, n20, n19, n18, n17, n16}), .B({1'b0, B[7], n8, B[5:0]}), .CI(1'b0), .SUM({N99, N98, N97, N96, N95, N94, 
        N93, N92, N91}) );
  alu_edit_DW02_mult_0 mult_49 ( .A({n5, n22, n21, n20, n19, n18, n17, n16}), 
        .B({B[7], n8, B[5:0]}), .TC(1'b0), .PRODUCT({N124, N123, N122, N121, 
        N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109}) );
  DFFRQX2M \ALU_OUT_reg[15]  ( .D(ALU_OUT_Comb[15]), .CK(CLK), .RN(n42), .Q(
        ALU_OUT[15]) );
  DFFRQX2M \ALU_OUT_reg[14]  ( .D(ALU_OUT_Comb[14]), .CK(CLK), .RN(n42), .Q(
        ALU_OUT[14]) );
  DFFRQX2M \ALU_OUT_reg[13]  ( .D(ALU_OUT_Comb[13]), .CK(CLK), .RN(n42), .Q(
        ALU_OUT[13]) );
  DFFRQX2M \ALU_OUT_reg[12]  ( .D(ALU_OUT_Comb[12]), .CK(CLK), .RN(n42), .Q(
        ALU_OUT[12]) );
  DFFRQX2M \ALU_OUT_reg[11]  ( .D(ALU_OUT_Comb[11]), .CK(CLK), .RN(n42), .Q(
        ALU_OUT[11]) );
  DFFRQX2M \ALU_OUT_reg[10]  ( .D(ALU_OUT_Comb[10]), .CK(CLK), .RN(n42), .Q(
        ALU_OUT[10]) );
  DFFRQX2M \ALU_OUT_reg[9]  ( .D(ALU_OUT_Comb[9]), .CK(CLK), .RN(n42), .Q(
        ALU_OUT[9]) );
  DFFRQX2M \ALU_OUT_reg[8]  ( .D(ALU_OUT_Comb[8]), .CK(CLK), .RN(n42), .Q(
        ALU_OUT[8]) );
  DFFRQX2M \ALU_OUT_reg[7]  ( .D(ALU_OUT_Comb[7]), .CK(CLK), .RN(n42), .Q(
        ALU_OUT[7]) );
  DFFRQX2M \ALU_OUT_reg[6]  ( .D(ALU_OUT_Comb[6]), .CK(CLK), .RN(n42), .Q(
        ALU_OUT[6]) );
  DFFRQX2M \ALU_OUT_reg[5]  ( .D(ALU_OUT_Comb[5]), .CK(CLK), .RN(n42), .Q(
        ALU_OUT[5]) );
  DFFRQX2M \ALU_OUT_reg[4]  ( .D(ALU_OUT_Comb[4]), .CK(CLK), .RN(n42), .Q(
        ALU_OUT[4]) );
  DFFRQX2M \ALU_OUT_reg[3]  ( .D(ALU_OUT_Comb[3]), .CK(CLK), .RN(n108), .Q(
        ALU_OUT[3]) );
  DFFRQX2M \ALU_OUT_reg[2]  ( .D(ALU_OUT_Comb[2]), .CK(CLK), .RN(n108), .Q(
        ALU_OUT[2]) );
  DFFRQX2M OUT_VALID_reg ( .D(EN), .CK(CLK), .RN(n108), .Q(OUT_VALID) );
  DFFRQX1M \ALU_OUT_reg[1]  ( .D(ALU_OUT_Comb[1]), .CK(CLK), .RN(n108), .Q(
        ALU_OUT[1]) );
  DFFRQX1M \ALU_OUT_reg[0]  ( .D(ALU_OUT_Comb[0]), .CK(CLK), .RN(n108), .Q(
        ALU_OUT[0]) );
  BUFX2M U3 ( .A(A[7]), .Y(n23) );
  NOR2X4M U4 ( .A(n159), .B(n14), .Y(n105) );
  CLKBUFX6M U7 ( .A(A[5]), .Y(n21) );
  INVX4M U8 ( .A(n23), .Y(n3) );
  INVX4M U9 ( .A(n3), .Y(n4) );
  INVX2M U10 ( .A(n3), .Y(n5) );
  INVX2M U11 ( .A(n3), .Y(n6) );
  BUFX18M U12 ( .A(n15), .Y(n7) );
  CLKBUFX3M U13 ( .A(n15), .Y(n8) );
  CLKBUFX4M U14 ( .A(n46), .Y(n29) );
  CLKBUFX6M U15 ( .A(A[6]), .Y(n22) );
  INVX2M U16 ( .A(B[2]), .Y(n140) );
  INVX2M U17 ( .A(B[3]), .Y(n142) );
  BUFX5M U18 ( .A(B[6]), .Y(n15) );
  CLKAND2X16M U19 ( .A(N125), .B(n9), .Y(n12) );
  BUFX4M U20 ( .A(n49), .Y(n9) );
  NOR3BX2M U21 ( .AN(n105), .B(n158), .C(ALU_FUN[2]), .Y(n49) );
  AOI31X4M U22 ( .A0(n93), .A1(n94), .A2(n95), .B0(n160), .Y(ALU_OUT_Comb[0])
         );
  NOR3X12M U23 ( .A(n12), .B(n11), .C(n10), .Y(n94) );
  AND2X2M U24 ( .A(N109), .B(n25), .Y(n10) );
  AND2X2M U25 ( .A(n16), .B(n27), .Y(n11) );
  NAND2BXLM U26 ( .AN(n21), .B(B[5]), .Y(n130) );
  CLKBUFX6M U27 ( .A(A[4]), .Y(n20) );
  NAND2BX1M U28 ( .AN(B[4]), .B(n20), .Y(n125) );
  XNOR2X2M U29 ( .A(n22), .B(n8), .Y(n129) );
  CLKBUFX6M U30 ( .A(n41), .Y(n28) );
  INVX2M U31 ( .A(n91), .Y(n156) );
  BUFX4M U32 ( .A(A[1]), .Y(n17) );
  BUFX4M U33 ( .A(A[0]), .Y(n16) );
  AOI21XLM U34 ( .A0(n110), .A1(n136), .B0(B[1]), .Y(n111) );
  OAI21XLM U35 ( .A0(B[0]), .A1(n102), .B0(n103), .Y(n96) );
  OAI21XLM U36 ( .A0(B[1]), .A1(n87), .B0(n88), .Y(n84) );
  INVXLM U37 ( .A(B[0]), .Y(n138) );
  INVXLM U38 ( .A(B[5]), .Y(n146) );
  INVXLM U39 ( .A(B[7]), .Y(n145) );
  NAND2XLM U40 ( .A(B[7]), .B(n137), .Y(n133) );
  INVX2M U41 ( .A(ALU_FUN[0]), .Y(n159) );
  INVX4M U42 ( .A(n13), .Y(n26) );
  INVX4M U43 ( .A(n13), .Y(n27) );
  INVX4M U44 ( .A(n109), .Y(n42) );
  INVX2M U45 ( .A(n109), .Y(n108) );
  AOI22X1M U46 ( .A0(N100), .A1(n50), .B0(N91), .B1(n24), .Y(n93) );
  AOI211X2M U47 ( .A0(n28), .A1(n154), .B0(n96), .C0(n97), .Y(n95) );
  AOI31X2M U48 ( .A0(n81), .A1(n82), .A2(n83), .B0(n160), .Y(ALU_OUT_Comb[1])
         );
  AOI222X1M U49 ( .A0(N92), .A1(n24), .B0(N110), .B1(n25), .C0(N101), .C1(n50), 
        .Y(n81) );
  AOI211X2M U50 ( .A0(n18), .A1(n156), .B0(n84), .C0(n85), .Y(n83) );
  AOI222X1M U51 ( .A0(N126), .A1(n9), .B0(n28), .B1(n153), .C0(n17), .C1(n26), 
        .Y(n82) );
  AOI31X2M U52 ( .A0(n75), .A1(n76), .A2(n77), .B0(n160), .Y(ALU_OUT_Comb[2])
         );
  AOI22X1M U53 ( .A0(N102), .A1(n50), .B0(N93), .B1(n24), .Y(n75) );
  AOI221X1M U54 ( .A0(n19), .A1(n156), .B0(n28), .B1(n152), .C0(n78), .Y(n77)
         );
  AOI222X1M U55 ( .A0(N111), .A1(n25), .B0(n18), .B1(n26), .C0(N127), .C1(n9), 
        .Y(n76) );
  AOI31X2M U56 ( .A0(n69), .A1(n70), .A2(n71), .B0(n160), .Y(ALU_OUT_Comb[3])
         );
  AOI22X1M U57 ( .A0(N103), .A1(n50), .B0(N94), .B1(n24), .Y(n69) );
  AOI221X1M U58 ( .A0(n20), .A1(n156), .B0(n28), .B1(n151), .C0(n72), .Y(n71)
         );
  AOI222X1M U59 ( .A0(N112), .A1(n25), .B0(n19), .B1(n27), .C0(N128), .C1(n9), 
        .Y(n70) );
  OAI2BB1X2M U60 ( .A0N(N124), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[15]) );
  OAI2BB1X2M U61 ( .A0N(N123), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[14]) );
  AOI31X2M U62 ( .A0(n63), .A1(n64), .A2(n65), .B0(n160), .Y(ALU_OUT_Comb[4])
         );
  AOI22X1M U63 ( .A0(N104), .A1(n50), .B0(N95), .B1(n24), .Y(n63) );
  AOI221X1M U64 ( .A0(n156), .A1(n21), .B0(n28), .B1(n150), .C0(n66), .Y(n65)
         );
  AOI222X1M U65 ( .A0(N113), .A1(n25), .B0(n20), .B1(n26), .C0(N129), .C1(n9), 
        .Y(n64) );
  OAI2BB1X2M U66 ( .A0N(N122), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[13]) );
  OAI2BB1X2M U67 ( .A0N(N121), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[12]) );
  INVX2M U68 ( .A(n8), .Y(n143) );
  AOI31X2M U69 ( .A0(n57), .A1(n58), .A2(n59), .B0(n160), .Y(ALU_OUT_Comb[5])
         );
  AOI22X1M U70 ( .A0(N105), .A1(n50), .B0(N96), .B1(n24), .Y(n57) );
  AOI221X1M U71 ( .A0(n156), .A1(n22), .B0(n28), .B1(n149), .C0(n60), .Y(n59)
         );
  AOI222X1M U72 ( .A0(N114), .A1(n25), .B0(n21), .B1(n27), .C0(N130), .C1(n9), 
        .Y(n58) );
  OAI2BB1X2M U73 ( .A0N(N119), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[10]) );
  OAI2BB1X2M U74 ( .A0N(N120), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[11]) );
  AND4X2M U75 ( .A(N159), .B(n99), .C(n14), .D(n159), .Y(n90) );
  INVX2M U76 ( .A(n17), .Y(n136) );
  AOI31X2M U78 ( .A0(n51), .A1(n52), .A2(n53), .B0(n160), .Y(ALU_OUT_Comb[6])
         );
  AOI22X1M U79 ( .A0(N106), .A1(n50), .B0(N97), .B1(n24), .Y(n51) );
  AOI221X1M U80 ( .A0(n156), .A1(n5), .B0(n28), .B1(n148), .C0(n54), .Y(n53)
         );
  AOI222X1M U81 ( .A0(N115), .A1(n25), .B0(n26), .B1(n22), .C0(N131), .C1(n9), 
        .Y(n52) );
  AOI31X2M U82 ( .A0(n38), .A1(n39), .A2(n40), .B0(n160), .Y(ALU_OUT_Comb[7])
         );
  AOI221X1M U83 ( .A0(n28), .A1(n137), .B0(n27), .B1(n6), .C0(n43), .Y(n40) );
  AOI22X1M U84 ( .A0(N107), .A1(n50), .B0(N98), .B1(n24), .Y(n38) );
  AOI22XLM U85 ( .A0(N132), .A1(n9), .B0(N116), .B1(n25), .Y(n39) );
  OAI2BB1X2M U86 ( .A0N(N118), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[9]) );
  AOI21X2M U87 ( .A0(n33), .A1(n34), .B0(n160), .Y(ALU_OUT_Comb[8]) );
  AOI21X2M U88 ( .A0(N99), .A1(n24), .B0(n144), .Y(n33) );
  AOI2BB2XLM U89 ( .B0(N117), .B1(n25), .A0N(n137), .A1N(n36), .Y(n34) );
  INVX2M U90 ( .A(n92), .Y(n144) );
  AOI211X2M U91 ( .A0(N108), .A1(n50), .B0(n28), .C0(n30), .Y(n92) );
  INVX2M U92 ( .A(n6), .Y(n137) );
  NAND3X4M U93 ( .A(n157), .B(n159), .C(n14), .Y(n36) );
  OAI222X1M U94 ( .A0(n55), .A1(n143), .B0(n8), .B1(n56), .C0(n36), .C1(n149), 
        .Y(n54) );
  AOI221X1M U95 ( .A0(n22), .A1(n46), .B0(n30), .B1(n148), .C0(n28), .Y(n56)
         );
  AOI221X1M U96 ( .A0(n29), .A1(n148), .B0(n22), .B1(n48), .C0(n27), .Y(n55)
         );
  CLKAND2X4M U97 ( .A(n106), .B(n105), .Y(n50) );
  INVX2M U98 ( .A(n100), .Y(n155) );
  NOR2X2M U99 ( .A(n107), .B(n155), .Y(n41) );
  INVX2M U100 ( .A(n107), .Y(n157) );
  BUFX4M U101 ( .A(n47), .Y(n30) );
  OAI2BB1X2M U102 ( .A0N(n157), .A1N(n105), .B0(n101), .Y(n47) );
  AND3X2M U103 ( .A(n106), .B(n159), .C(n14), .Y(n46) );
  NAND2X2M U104 ( .A(n99), .B(n105), .Y(n13) );
  NOR2BX8M U105 ( .AN(n25), .B(n160), .Y(n31) );
  INVX2M U106 ( .A(n17), .Y(n153) );
  INVX2M U107 ( .A(n16), .Y(n154) );
  INVX2M U108 ( .A(n22), .Y(n148) );
  INVX2M U109 ( .A(n19), .Y(n151) );
  INVX2M U110 ( .A(n18), .Y(n152) );
  INVX2M U111 ( .A(n21), .Y(n149) );
  INVX2M U112 ( .A(n20), .Y(n150) );
  BUFX4M U113 ( .A(n37), .Y(n24) );
  NOR2BX2M U114 ( .AN(n106), .B(n155), .Y(n37) );
  INVX2M U115 ( .A(RST), .Y(n109) );
  CLKBUFX6M U116 ( .A(A[3]), .Y(n19) );
  CLKBUFX6M U117 ( .A(A[2]), .Y(n18) );
  INVX2M U118 ( .A(n110), .Y(n139) );
  INVX2M U119 ( .A(n121), .Y(n141) );
  AOI221X1M U120 ( .A0(n16), .A1(n29), .B0(n30), .B1(n154), .C0(n28), .Y(n102)
         );
  AOI31X2M U121 ( .A0(N157), .A1(n14), .A2(n104), .B0(n90), .Y(n103) );
  NOR3X2M U122 ( .A(n158), .B(ALU_FUN[2]), .C(ALU_FUN[0]), .Y(n104) );
  AOI221X1M U123 ( .A0(n17), .A1(n46), .B0(n30), .B1(n153), .C0(n28), .Y(n87)
         );
  AOI31X2M U124 ( .A0(N158), .A1(n14), .A2(n89), .B0(n90), .Y(n88) );
  NOR3X2M U125 ( .A(n159), .B(ALU_FUN[2]), .C(n158), .Y(n89) );
  NAND2X4M U126 ( .A(EN), .B(n144), .Y(n32) );
  INVX2M U127 ( .A(ALU_FUN[1]), .Y(n158) );
  BUFX4M U128 ( .A(ALU_FUN[3]), .Y(n14) );
  OAI222X1M U129 ( .A0(n44), .A1(n145), .B0(B[7]), .B1(n45), .C0(n36), .C1(
        n148), .Y(n43) );
  AOI221X1M U130 ( .A0(n29), .A1(n5), .B0(n30), .B1(n137), .C0(n28), .Y(n45)
         );
  AOI221X1M U131 ( .A0(n29), .A1(n137), .B0(n6), .B1(n48), .C0(n26), .Y(n44)
         );
  OAI222X1M U132 ( .A0(n79), .A1(n140), .B0(B[2]), .B1(n80), .C0(n36), .C1(
        n153), .Y(n78) );
  AOI221X1M U133 ( .A0(n18), .A1(n46), .B0(n30), .B1(n152), .C0(n28), .Y(n80)
         );
  AOI221X1M U134 ( .A0(n29), .A1(n152), .B0(n18), .B1(n48), .C0(n27), .Y(n79)
         );
  OAI222X1M U135 ( .A0(n73), .A1(n142), .B0(B[3]), .B1(n74), .C0(n36), .C1(
        n152), .Y(n72) );
  AOI221X1M U136 ( .A0(n19), .A1(n46), .B0(n30), .B1(n151), .C0(n28), .Y(n74)
         );
  AOI221X1M U137 ( .A0(n29), .A1(n151), .B0(n19), .B1(n48), .C0(n26), .Y(n73)
         );
  OAI222X1M U138 ( .A0(n67), .A1(n147), .B0(B[4]), .B1(n68), .C0(n36), .C1(
        n151), .Y(n66) );
  INVX2M U139 ( .A(B[4]), .Y(n147) );
  AOI221X1M U140 ( .A0(n20), .A1(n46), .B0(n30), .B1(n150), .C0(n28), .Y(n68)
         );
  AOI221X1M U141 ( .A0(n29), .A1(n150), .B0(n20), .B1(n48), .C0(n27), .Y(n67)
         );
  OAI222X1M U142 ( .A0(n61), .A1(n146), .B0(B[5]), .B1(n62), .C0(n36), .C1(
        n150), .Y(n60) );
  AOI221X1M U143 ( .A0(n21), .A1(n46), .B0(n30), .B1(n149), .C0(n28), .Y(n62)
         );
  AOI221X1M U144 ( .A0(n29), .A1(n149), .B0(n21), .B1(n48), .C0(n26), .Y(n61)
         );
  NOR2X4M U145 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n106) );
  OAI2B2X1M U146 ( .A1N(B[1]), .A0(n86), .B0(n36), .B1(n154), .Y(n85) );
  AOI221X1M U147 ( .A0(n29), .A1(n153), .B0(n17), .B1(n48), .C0(n26), .Y(n86)
         );
  OAI2B2X1M U148 ( .A1N(B[0]), .A0(n98), .B0(n91), .B1(n153), .Y(n97) );
  AOI221X1M U149 ( .A0(n29), .A1(n154), .B0(n16), .B1(n48), .C0(n27), .Y(n98)
         );
  NAND2X2M U150 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n107) );
  NAND3X2M U151 ( .A(n106), .B(ALU_FUN[0]), .C(n14), .Y(n101) );
  NOR2X2M U152 ( .A(n14), .B(ALU_FUN[0]), .Y(n100) );
  AND2X2M U153 ( .A(ALU_FUN[2]), .B(n158), .Y(n99) );
  NAND3X2M U154 ( .A(n14), .B(ALU_FUN[0]), .C(n99), .Y(n91) );
  BUFX4M U155 ( .A(n35), .Y(n25) );
  NOR3X2M U156 ( .A(n155), .B(ALU_FUN[2]), .C(n158), .Y(n35) );
  INVX4M U157 ( .A(EN), .Y(n160) );
  NOR2X1M U158 ( .A(n137), .B(B[7]), .Y(n132) );
  NAND2BX1M U159 ( .AN(n20), .B(B[4]), .Y(n114) );
  CLKNAND2X2M U160 ( .A(n125), .B(n114), .Y(n127) );
  NOR2X1M U161 ( .A(n142), .B(n19), .Y(n122) );
  NOR2X1M U162 ( .A(n140), .B(n18), .Y(n113) );
  NOR2X1M U163 ( .A(n138), .B(n16), .Y(n110) );
  CLKNAND2X2M U164 ( .A(n18), .B(n140), .Y(n124) );
  NAND2BX1M U165 ( .AN(n113), .B(n124), .Y(n119) );
  AOI211X1M U166 ( .A0(n17), .A1(n139), .B0(n119), .C0(n111), .Y(n112) );
  CLKNAND2X2M U167 ( .A(n19), .B(n142), .Y(n123) );
  OAI31X1M U168 ( .A0(n122), .A1(n113), .A2(n112), .B0(n123), .Y(n115) );
  OAI211X1M U169 ( .A0(n127), .A1(n115), .B0(n114), .C0(n130), .Y(n116) );
  NAND2BX1M U170 ( .AN(B[5]), .B(n21), .Y(n126) );
  AOI32X1M U171 ( .A0(n116), .A1(n126), .A2(n129), .B0(n8), .B1(n148), .Y(n117) );
  OAI21X1M U172 ( .A0(n132), .A1(n117), .B0(n133), .Y(N159) );
  CLKNAND2X2M U173 ( .A(n16), .B(n138), .Y(n120) );
  OA21X1M U174 ( .A0(n120), .A1(n136), .B0(B[1]), .Y(n118) );
  AOI211X1M U175 ( .A0(n120), .A1(n136), .B0(n119), .C0(n118), .Y(n121) );
  AOI31X1M U176 ( .A0(n141), .A1(n124), .A2(n123), .B0(n122), .Y(n128) );
  OAI2B11X1M U177 ( .A1N(n128), .A0(n127), .B0(n126), .C0(n125), .Y(n131) );
  AOI32X1M U178 ( .A0(n131), .A1(n130), .A2(n129), .B0(n22), .B1(n143), .Y(
        n134) );
  AOI2B1X1M U179 ( .A1N(n134), .A0(n133), .B0(n132), .Y(n135) );
  CLKINVX1M U180 ( .A(n135), .Y(N158) );
  NOR2X1M U181 ( .A(N159), .B(N158), .Y(N157) );
endmodule


module CLK_GATE ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;


  TLATNCAX12M U0_TLATNCAX12M ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module SYS_TOP ( RST_N, UART_CLK, REF_CLK, UART_RX_IN, UART_TX_O, parity_error, 
        STOP_error );
  input RST_N, UART_CLK, REF_CLK, UART_RX_IN;
  output UART_TX_O, parity_error, STOP_error;
  wire   SYNC_UART_RST, SYNC_REF_RST, UART_TX_CLK, SYNC_TX_RST, UART_RX_CLK,
         SYNC_RX_RST, UART_RX_V_OUT, UART_RX_V_SYNC, UART_TX_VLD,
         UART_TX_Busy_PULSE, FIFO_FULL, UART_TX_V_SYNC, UART_TX_Busy,
         RF_RdData_VLD, RF_WrEn, RF_RdEn, ALU_EN, ALU_OUT_VLD, CLKG_EN,
         ALU_CLK, n1, n2, n3, n4, n5, n6;
  wire   [7:0] UART_RX_OUT;
  wire   [7:0] UART_RX_SYNC;
  wire   [7:0] UART_TX_IN;
  wire   [7:0] UART_TX_SYNC;
  wire   [7:0] DIV_RATIO;
  wire   [7:0] UART_Config;
  wire   [7:0] DIV_RATIO_RX;
  wire   [7:0] RF_RdData;
  wire   [3:0] RF_Address;
  wire   [7:0] RF_WrData;
  wire   [3:0] ALU_FUN;
  wire   [15:0] ALU_OUT;
  wire   [7:0] Operand_A;
  wire   [7:0] Operand_B;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;

  RST_SYNC_NUM_STAGES2_0 U0_RST_SYNC ( .CLK(UART_CLK), .RST(RST_N), .SYNC_RST(
        SYNC_UART_RST) );
  RST_SYNC_NUM_STAGES2_3 U1_RST_SYNC ( .CLK(REF_CLK), .RST(RST_N), .SYNC_RST(
        SYNC_REF_RST) );
  RST_SYNC_NUM_STAGES2_2 U2_RST_SYNC ( .CLK(UART_TX_CLK), .RST(RST_N), 
        .SYNC_RST(SYNC_TX_RST) );
  RST_SYNC_NUM_STAGES2_1 U3_RST_SYNC ( .CLK(UART_RX_CLK), .RST(RST_N), 
        .SYNC_RST(SYNC_RX_RST) );
  DATA_SYNC_NUM_STAGES2_BUS_WIDTH8 U0_ref_sync ( .CLK(REF_CLK), .RST(n5), 
        .unsync_bus(UART_RX_OUT), .bus_enable(UART_RX_V_OUT), .sync_bus(
        UART_RX_SYNC), .enable_pulse(UART_RX_V_SYNC) );
  ASYNC_FIFO_TOP_DATA_WIDTH8_ADDRSIZE4 U0_FIFO ( .R_CLK(UART_TX_CLK), .W_CLK(
        REF_CLK), .W_RST(n5), .W_INC(UART_TX_VLD), .WR_DATA(UART_TX_IN), 
        .R_RST(n3), .R_INC(UART_TX_Busy_PULSE), .FULL(FIFO_FULL), .RD_DATA(
        UART_TX_SYNC), .EMPTY(UART_TX_V_SYNC) );
  pulse_gen U0_PULSE_GEN ( .clk(UART_TX_CLK), .rst(n3), .lvl_sig(UART_TX_Busy), 
        .pulse_sig(UART_TX_Busy_PULSE) );
  CLK_DIV_0 U0_ClkDiv ( .i_ref_clk(UART_CLK), .i_rst_n(SYNC_UART_RST), 
        .i_clk_en(1'b1), .i_div_ratio(DIV_RATIO), .o_div_clk(UART_TX_CLK) );
  CLOCK_DIV_MUX U0_CLKDIV_MUX ( .IN(UART_Config[7:2]), .OUT({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, DIV_RATIO_RX[3:0]})
         );
  CLK_DIV_1 U1_ClkDiv ( .i_ref_clk(UART_CLK), .i_rst_n(SYNC_UART_RST), 
        .i_clk_en(1'b1), .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, 
        DIV_RATIO_RX[3:0]}), .o_div_clk(UART_RX_CLK) );
  TOP_UART U0_UART ( .TX_P_DATA(UART_TX_SYNC), .TX_Data_Valid(n1), 
        .parity_enable(UART_Config[0]), .parity_type(UART_Config[1]), .TX_CLK(
        UART_TX_CLK), .RST_TX(n3), .RX_CLK(UART_RX_CLK), .RST_RX(n2), .RX_IN(
        UART_RX_IN), .Prescale(UART_Config[7:2]), .TX_OUT(UART_TX_O), .busy(
        UART_TX_Busy), .RX_P_DATA(UART_RX_OUT), .RX_data_valid(UART_RX_V_OUT), 
        .Parity_Error(parity_error), .Stop_Error(STOP_error) );
  sys_ctrl U0_SYS_CTRL ( .CLK(REF_CLK), .RST(n5), .RX_P_DATA(UART_RX_SYNC), 
        .RX_D_VLD(UART_RX_V_SYNC), .RdData(RF_RdData), .RdData_Valid(
        RF_RdData_VLD), .ALU_OUT(ALU_OUT), .OUT_Valid(ALU_OUT_VLD), 
        .FIFO_FULL(FIFO_FULL), .Address(RF_Address), .WrEn(RF_WrEn), .RdEn(
        RF_RdEn), .WrData(RF_WrData), .ALU_FUN(ALU_FUN), .EN(ALU_EN), .CLK_EN(
        CLKG_EN), .TX_P_DATA(UART_TX_IN), .TX_D_VLD(UART_TX_VLD) );
  reg_file_edit U0_RegFile ( .CLK(REF_CLK), .RST(n5), .WrEn(RF_WrEn), .RdEn(
        RF_RdEn), .Address(RF_Address), .WrData(RF_WrData), .RdData(RF_RdData), 
        .RdData_VLD(RF_RdData_VLD), .REG0(Operand_A), .REG1(Operand_B), .REG2(
        UART_Config), .REG3(DIV_RATIO) );
  alu_edit U0_ALU ( .A(Operand_A), .B(Operand_B), .EN(ALU_EN), .ALU_FUN(
        ALU_FUN), .CLK(ALU_CLK), .RST(n5), .ALU_OUT(ALU_OUT), .OUT_VALID(
        ALU_OUT_VLD) );
  CLK_GATE U0_CLK_GATE ( .CLK_EN(CLKG_EN), .CLK(REF_CLK), .GATED_CLK(ALU_CLK)
         );
  INVX2M U2 ( .A(n6), .Y(n5) );
  INVX2M U3 ( .A(UART_TX_V_SYNC), .Y(n1) );
  BUFX2M U4 ( .A(SYNC_RX_RST), .Y(n2) );
  INVX2M U5 ( .A(SYNC_REF_RST), .Y(n6) );
  INVX2M U6 ( .A(n4), .Y(n3) );
  INVX2M U7 ( .A(SYNC_TX_RST), .Y(n4) );
endmodule

