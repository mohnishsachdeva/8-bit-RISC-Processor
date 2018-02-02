////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.58f
//  \   \         Application: netgen
//  /   /         Filename: EXE_synthesis.v
// /___/   /\     Timestamp: Fri Sep 09 15:27:39 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim EXE.ngc EXE_synthesis.v 
// Device	: xc6slx9-3-csg324
// Input file	: EXE.ngc
// Output file	: F:\New Processor\Stage\EXE\netgen\synthesis\EXE_synthesis.v
// # of Modules	: 1
// Design Name	: EXE
// Xilinx        : C:\Xilinx\14.5\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module EXE (
  rst, clk, NFCR, ZFCR, IFgn, IFgz, Ira, Irb, OPALU, OALUD
);
  input rst;
  input clk;
  input NFCR;
  input ZFCR;
  output IFgn;
  output IFgz;
  input [7 : 0] Ira;
  input [7 : 0] Irb;
  input [3 : 0] OPALU;
  output [7 : 0] OALUD;
  wire Ira_7_IBUF_0;
  wire Ira_6_IBUF_1;
  wire Ira_5_IBUF_2;
  wire Ira_4_IBUF_3;
  wire Ira_3_IBUF_4;
  wire Ira_2_IBUF_5;
  wire Ira_1_IBUF_6;
  wire Ira_0_IBUF_7;
  wire Irb_7_IBUF_8;
  wire Irb_6_IBUF_9;
  wire Irb_5_IBUF_10;
  wire Irb_4_IBUF_11;
  wire Irb_3_IBUF_12;
  wire Irb_2_IBUF_13;
  wire Irb_1_IBUF_14;
  wire Irb_0_IBUF_15;
  wire OPALU_3_IBUF_16;
  wire OPALU_2_IBUF_17;
  wire OPALU_1_IBUF_18;
  wire OPALU_0_IBUF_19;
  wire rst_IBUF_20;
  wire clk_BUFGP_21;
  wire NFCR_IBUF_22;
  wire ZFCR_IBUF_23;
  wire OALUD_7_OBUF_24;
  wire OALUD_6_OBUF_25;
  wire OALUD_5_OBUF_26;
  wire OALUD_4_OBUF_27;
  wire OALUD_3_OBUF_28;
  wire OALUD_2_OBUF_29;
  wire OALUD_1_OBUF_30;
  wire OALUD_0_OBUF_31;
  wire OFgn;
  wire OFgz;
  wire \fregN/out_34 ;
  wire \fregZ/out_35 ;
  wire N0;
  wire N1;
  wire \alux/Mmux_n00521 ;
  wire \alux/Mmux_n005211_88 ;
  wire \alux/Mmux_n005212_89 ;
  wire \alux/Mmux_n005213_90 ;
  wire \alux/Mmux_n005216 ;
  wire \alux/n0039<31>1_93 ;
  wire \alux/n0039<30>1_95 ;
  wire \alux/n0039<29>1_97 ;
  wire \alux/n0039<28>1_99 ;
  wire \alux/n0039<27>1_101 ;
  wire \alux/n0039<26>1_103 ;
  wire N2;
  wire N4;
  wire [7 : 0] \alux/Madd__n0093_cy ;
  wire [7 : 0] \alux/Madd__n0093_lut ;
  wire [7 : 0] \alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_cy ;
  wire [7 : 0] \alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_lut ;
  wire [8 : 1] \alux/_n0093 ;
  wire [8 : 0] \alux/GND_2_o_GND_2_o_sub_20_OUT ;
  wire [32 : 26] \alux/n0039 ;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  FDRE   \fregZ/out  (
    .C(clk_BUFGP_21),
    .CE(ZFCR_IBUF_23),
    .D(OFgz),
    .R(rst_IBUF_20),
    .Q(\fregZ/out_35 )
  );
  FDRE   \fregN/out  (
    .C(clk_BUFGP_21),
    .CE(NFCR_IBUF_22),
    .D(OFgn),
    .R(rst_IBUF_20),
    .Q(\fregN/out_34 )
  );
  XORCY   \alux/Madd__n0093_xor<7>  (
    .CI(\alux/Madd__n0093_cy [6]),
    .LI(\alux/Madd__n0093_lut [7]),
    .O(\alux/_n0093 [1])
  );
  MUXCY   \alux/Madd__n0093_cy<7>  (
    .CI(\alux/Madd__n0093_cy [6]),
    .DI(Ira_7_IBUF_0),
    .S(\alux/Madd__n0093_lut [7]),
    .O(\alux/Madd__n0093_cy [7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \alux/Madd__n0093_lut<7>  (
    .I0(Ira_7_IBUF_0),
    .I1(Irb_7_IBUF_8),
    .O(\alux/Madd__n0093_lut [7])
  );
  XORCY   \alux/Madd__n0093_xor<6>  (
    .CI(\alux/Madd__n0093_cy [5]),
    .LI(\alux/Madd__n0093_lut [6]),
    .O(\alux/_n0093 [2])
  );
  MUXCY   \alux/Madd__n0093_cy<6>  (
    .CI(\alux/Madd__n0093_cy [5]),
    .DI(Ira_6_IBUF_1),
    .S(\alux/Madd__n0093_lut [6]),
    .O(\alux/Madd__n0093_cy [6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \alux/Madd__n0093_lut<6>  (
    .I0(Ira_6_IBUF_1),
    .I1(Irb_6_IBUF_9),
    .O(\alux/Madd__n0093_lut [6])
  );
  XORCY   \alux/Madd__n0093_xor<5>  (
    .CI(\alux/Madd__n0093_cy [4]),
    .LI(\alux/Madd__n0093_lut [5]),
    .O(\alux/_n0093 [3])
  );
  MUXCY   \alux/Madd__n0093_cy<5>  (
    .CI(\alux/Madd__n0093_cy [4]),
    .DI(Ira_5_IBUF_2),
    .S(\alux/Madd__n0093_lut [5]),
    .O(\alux/Madd__n0093_cy [5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \alux/Madd__n0093_lut<5>  (
    .I0(Ira_5_IBUF_2),
    .I1(Irb_5_IBUF_10),
    .O(\alux/Madd__n0093_lut [5])
  );
  XORCY   \alux/Madd__n0093_xor<4>  (
    .CI(\alux/Madd__n0093_cy [3]),
    .LI(\alux/Madd__n0093_lut [4]),
    .O(\alux/_n0093 [4])
  );
  MUXCY   \alux/Madd__n0093_cy<4>  (
    .CI(\alux/Madd__n0093_cy [3]),
    .DI(Ira_4_IBUF_3),
    .S(\alux/Madd__n0093_lut [4]),
    .O(\alux/Madd__n0093_cy [4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \alux/Madd__n0093_lut<4>  (
    .I0(Ira_4_IBUF_3),
    .I1(Irb_4_IBUF_11),
    .O(\alux/Madd__n0093_lut [4])
  );
  XORCY   \alux/Madd__n0093_xor<3>  (
    .CI(\alux/Madd__n0093_cy [2]),
    .LI(\alux/Madd__n0093_lut [3]),
    .O(\alux/_n0093 [5])
  );
  MUXCY   \alux/Madd__n0093_cy<3>  (
    .CI(\alux/Madd__n0093_cy [2]),
    .DI(Ira_3_IBUF_4),
    .S(\alux/Madd__n0093_lut [3]),
    .O(\alux/Madd__n0093_cy [3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \alux/Madd__n0093_lut<3>  (
    .I0(Ira_3_IBUF_4),
    .I1(Irb_3_IBUF_12),
    .O(\alux/Madd__n0093_lut [3])
  );
  XORCY   \alux/Madd__n0093_xor<2>  (
    .CI(\alux/Madd__n0093_cy [1]),
    .LI(\alux/Madd__n0093_lut [2]),
    .O(\alux/_n0093 [6])
  );
  MUXCY   \alux/Madd__n0093_cy<2>  (
    .CI(\alux/Madd__n0093_cy [1]),
    .DI(Ira_2_IBUF_5),
    .S(\alux/Madd__n0093_lut [2]),
    .O(\alux/Madd__n0093_cy [2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \alux/Madd__n0093_lut<2>  (
    .I0(Ira_2_IBUF_5),
    .I1(Irb_2_IBUF_13),
    .O(\alux/Madd__n0093_lut [2])
  );
  XORCY   \alux/Madd__n0093_xor<1>  (
    .CI(\alux/Madd__n0093_cy [0]),
    .LI(\alux/Madd__n0093_lut [1]),
    .O(\alux/_n0093 [7])
  );
  MUXCY   \alux/Madd__n0093_cy<1>  (
    .CI(\alux/Madd__n0093_cy [0]),
    .DI(Ira_1_IBUF_6),
    .S(\alux/Madd__n0093_lut [1]),
    .O(\alux/Madd__n0093_cy [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \alux/Madd__n0093_lut<1>  (
    .I0(Ira_1_IBUF_6),
    .I1(Irb_1_IBUF_14),
    .O(\alux/Madd__n0093_lut [1])
  );
  XORCY   \alux/Madd__n0093_xor<0>  (
    .CI(N0),
    .LI(\alux/Madd__n0093_lut [0]),
    .O(\alux/_n0093 [8])
  );
  MUXCY   \alux/Madd__n0093_cy<0>  (
    .CI(N0),
    .DI(Ira_0_IBUF_7),
    .S(\alux/Madd__n0093_lut [0]),
    .O(\alux/Madd__n0093_cy [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \alux/Madd__n0093_lut<0>  (
    .I0(Ira_0_IBUF_7),
    .I1(Irb_0_IBUF_15),
    .O(\alux/Madd__n0093_lut [0])
  );
  XORCY   \alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_xor<8>  (
    .CI(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_cy [7]),
    .LI(N1),
    .O(\alux/GND_2_o_GND_2_o_sub_20_OUT [8])
  );
  XORCY   \alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_xor<7>  (
    .CI(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_cy [6]),
    .LI(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_lut [7]),
    .O(\alux/GND_2_o_GND_2_o_sub_20_OUT [7])
  );
  MUXCY   \alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_cy<7>  (
    .CI(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_cy [6]),
    .DI(Ira_7_IBUF_0),
    .S(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_lut [7]),
    .O(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_cy [7])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_lut<7>  (
    .I0(Ira_7_IBUF_0),
    .I1(Irb_7_IBUF_8),
    .O(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_lut [7])
  );
  XORCY   \alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_xor<6>  (
    .CI(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_cy [5]),
    .LI(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_lut [6]),
    .O(\alux/GND_2_o_GND_2_o_sub_20_OUT [6])
  );
  MUXCY   \alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_cy<6>  (
    .CI(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_cy [5]),
    .DI(Ira_6_IBUF_1),
    .S(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_lut [6]),
    .O(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_cy [6])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_lut<6>  (
    .I0(Ira_6_IBUF_1),
    .I1(Irb_6_IBUF_9),
    .O(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_lut [6])
  );
  XORCY   \alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_xor<5>  (
    .CI(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_cy [4]),
    .LI(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_lut [5]),
    .O(\alux/GND_2_o_GND_2_o_sub_20_OUT [5])
  );
  MUXCY   \alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_cy<5>  (
    .CI(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_cy [4]),
    .DI(Ira_5_IBUF_2),
    .S(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_lut [5]),
    .O(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_cy [5])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_lut<5>  (
    .I0(Ira_5_IBUF_2),
    .I1(Irb_5_IBUF_10),
    .O(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_lut [5])
  );
  XORCY   \alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_xor<4>  (
    .CI(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_cy [3]),
    .LI(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_lut [4]),
    .O(\alux/GND_2_o_GND_2_o_sub_20_OUT [4])
  );
  MUXCY   \alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_cy<4>  (
    .CI(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_cy [3]),
    .DI(Ira_4_IBUF_3),
    .S(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_lut [4]),
    .O(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_cy [4])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_lut<4>  (
    .I0(Ira_4_IBUF_3),
    .I1(Irb_4_IBUF_11),
    .O(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_lut [4])
  );
  XORCY   \alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_xor<3>  (
    .CI(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_cy [2]),
    .LI(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_lut [3]),
    .O(\alux/GND_2_o_GND_2_o_sub_20_OUT [3])
  );
  MUXCY   \alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_cy<3>  (
    .CI(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_cy [2]),
    .DI(Ira_3_IBUF_4),
    .S(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_lut [3]),
    .O(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_cy [3])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_lut<3>  (
    .I0(Ira_3_IBUF_4),
    .I1(Irb_3_IBUF_12),
    .O(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_lut [3])
  );
  XORCY   \alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_xor<2>  (
    .CI(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_cy [1]),
    .LI(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_lut [2]),
    .O(\alux/GND_2_o_GND_2_o_sub_20_OUT [2])
  );
  MUXCY   \alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_cy<2>  (
    .CI(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_cy [1]),
    .DI(Ira_2_IBUF_5),
    .S(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_lut [2]),
    .O(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_cy [2])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_lut<2>  (
    .I0(Ira_2_IBUF_5),
    .I1(Irb_2_IBUF_13),
    .O(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_lut [2])
  );
  XORCY   \alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_xor<1>  (
    .CI(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_cy [0]),
    .LI(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_lut [1]),
    .O(\alux/GND_2_o_GND_2_o_sub_20_OUT [1])
  );
  MUXCY   \alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_cy<1>  (
    .CI(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_cy [0]),
    .DI(Ira_1_IBUF_6),
    .S(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_lut [1]),
    .O(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_cy [1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_lut<1>  (
    .I0(Ira_1_IBUF_6),
    .I1(Irb_1_IBUF_14),
    .O(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_lut [1])
  );
  XORCY   \alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_xor<0>  (
    .CI(N1),
    .LI(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_lut [0]),
    .O(\alux/GND_2_o_GND_2_o_sub_20_OUT [0])
  );
  MUXCY   \alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_cy<0>  (
    .CI(N1),
    .DI(Ira_0_IBUF_7),
    .S(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_lut [0]),
    .O(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_cy [0])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_lut<0>  (
    .I0(Ira_0_IBUF_7),
    .I1(Irb_0_IBUF_15),
    .O(\alux/Msub_GND_2_o_GND_2_o_sub_20_OUT_lut [0])
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAEAAAA ))
  \alux/n0039<25>1  (
    .I0(OFgn),
    .I1(Ira_6_IBUF_1),
    .I2(OPALU_3_IBUF_16),
    .I3(OPALU_1_IBUF_18),
    .I4(OPALU_2_IBUF_17),
    .I5(OPALU_0_IBUF_19),
    .O(OALUD_7_OBUF_24)
  );
  LUT6 #(
    .INIT ( 64'h0000000000010000 ))
  \alux/Mmux_n005211  (
    .I0(OPALU_2_IBUF_17),
    .I1(OPALU_0_IBUF_19),
    .I2(\alux/GND_2_o_GND_2_o_sub_20_OUT [0]),
    .I3(\alux/GND_2_o_GND_2_o_sub_20_OUT [1]),
    .I4(OPALU_1_IBUF_18),
    .I5(\alux/GND_2_o_GND_2_o_sub_20_OUT [2]),
    .O(\alux/Mmux_n00521 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \alux/Mmux_n005212  (
    .I0(\alux/GND_2_o_GND_2_o_sub_20_OUT [4]),
    .I1(\alux/GND_2_o_GND_2_o_sub_20_OUT [3]),
    .O(\alux/Mmux_n005211_88 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000020000 ))
  \alux/Mmux_n005213  (
    .I0(\alux/Mmux_n005211_88 ),
    .I1(\alux/GND_2_o_GND_2_o_sub_20_OUT [5]),
    .I2(\alux/GND_2_o_GND_2_o_sub_20_OUT [6]),
    .I3(\alux/GND_2_o_GND_2_o_sub_20_OUT [7]),
    .I4(\alux/Mmux_n00521 ),
    .I5(\alux/GND_2_o_GND_2_o_sub_20_OUT [8]),
    .O(\alux/Mmux_n005212_89 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \alux/Mmux_n005214  (
    .I0(OPALU_0_IBUF_19),
    .I1(OPALU_2_IBUF_17),
    .I2(Ira_7_IBUF_0),
    .O(\alux/Mmux_n005213_90 )
  );
  LUT6 #(
    .INIT ( 64'h5555555511101010 ))
  \alux/Mmux_n005218  (
    .I0(OPALU_3_IBUF_16),
    .I1(OPALU_1_IBUF_18),
    .I2(\alux/Mmux_n005213_90 ),
    .I3(OPALU_0_IBUF_19),
    .I4(\alux/Mmux_n005216 ),
    .I5(\alux/Mmux_n005212_89 ),
    .O(OFgz)
  );
  LUT6 #(
    .INIT ( 64'h3777266615550444 ))
  \alux/n0039<31>1  (
    .I0(OPALU_2_IBUF_17),
    .I1(OPALU_1_IBUF_18),
    .I2(Irb_1_IBUF_14),
    .I3(Ira_1_IBUF_6),
    .I4(\alux/_n0093 [7]),
    .I5(Ira_2_IBUF_5),
    .O(\alux/n0039 [31])
  );
  LUT6 #(
    .INIT ( 64'hAFEAAAEA05400040 ))
  \alux/n0039<31>2  (
    .I0(OPALU_0_IBUF_19),
    .I1(\alux/GND_2_o_GND_2_o_sub_20_OUT [1]),
    .I2(OPALU_1_IBUF_18),
    .I3(OPALU_2_IBUF_17),
    .I4(Ira_0_IBUF_7),
    .I5(\alux/n0039 [31]),
    .O(\alux/n0039<31>1_93 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \alux/n0039<31>3  (
    .I0(\alux/n0039<31>1_93 ),
    .I1(OPALU_3_IBUF_16),
    .O(OALUD_1_OBUF_30)
  );
  LUT6 #(
    .INIT ( 64'h3777266615550444 ))
  \alux/n0039<30>1  (
    .I0(OPALU_2_IBUF_17),
    .I1(OPALU_1_IBUF_18),
    .I2(Irb_2_IBUF_13),
    .I3(Ira_2_IBUF_5),
    .I4(\alux/_n0093 [6]),
    .I5(Ira_3_IBUF_4),
    .O(\alux/n0039 [30])
  );
  LUT6 #(
    .INIT ( 64'hAFEAAAEA05400040 ))
  \alux/n0039<30>2  (
    .I0(OPALU_0_IBUF_19),
    .I1(\alux/GND_2_o_GND_2_o_sub_20_OUT [2]),
    .I2(OPALU_1_IBUF_18),
    .I3(OPALU_2_IBUF_17),
    .I4(Ira_1_IBUF_6),
    .I5(\alux/n0039 [30]),
    .O(\alux/n0039<30>1_95 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \alux/n0039<30>3  (
    .I0(\alux/n0039<30>1_95 ),
    .I1(OPALU_3_IBUF_16),
    .O(OALUD_2_OBUF_29)
  );
  LUT6 #(
    .INIT ( 64'h3777266615550444 ))
  \alux/n0039<29>1  (
    .I0(OPALU_2_IBUF_17),
    .I1(OPALU_1_IBUF_18),
    .I2(Irb_3_IBUF_12),
    .I3(Ira_3_IBUF_4),
    .I4(\alux/_n0093 [5]),
    .I5(Ira_4_IBUF_3),
    .O(\alux/n0039 [29])
  );
  LUT6 #(
    .INIT ( 64'hAFEAAAEA05400040 ))
  \alux/n0039<29>2  (
    .I0(OPALU_0_IBUF_19),
    .I1(\alux/GND_2_o_GND_2_o_sub_20_OUT [3]),
    .I2(OPALU_1_IBUF_18),
    .I3(OPALU_2_IBUF_17),
    .I4(Ira_2_IBUF_5),
    .I5(\alux/n0039 [29]),
    .O(\alux/n0039<29>1_97 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \alux/n0039<29>3  (
    .I0(\alux/n0039<29>1_97 ),
    .I1(OPALU_3_IBUF_16),
    .O(OALUD_3_OBUF_28)
  );
  LUT6 #(
    .INIT ( 64'h3777266615550444 ))
  \alux/n0039<28>1  (
    .I0(OPALU_2_IBUF_17),
    .I1(OPALU_1_IBUF_18),
    .I2(Irb_4_IBUF_11),
    .I3(Ira_4_IBUF_3),
    .I4(\alux/_n0093 [4]),
    .I5(Ira_5_IBUF_2),
    .O(\alux/n0039 [28])
  );
  LUT6 #(
    .INIT ( 64'hAFEAAAEA05400040 ))
  \alux/n0039<28>2  (
    .I0(OPALU_0_IBUF_19),
    .I1(\alux/GND_2_o_GND_2_o_sub_20_OUT [4]),
    .I2(OPALU_1_IBUF_18),
    .I3(OPALU_2_IBUF_17),
    .I4(Ira_3_IBUF_4),
    .I5(\alux/n0039 [28]),
    .O(\alux/n0039<28>1_99 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \alux/n0039<28>3  (
    .I0(\alux/n0039<28>1_99 ),
    .I1(OPALU_3_IBUF_16),
    .O(OALUD_4_OBUF_27)
  );
  LUT6 #(
    .INIT ( 64'h3777266615550444 ))
  \alux/n0039<27>1  (
    .I0(OPALU_2_IBUF_17),
    .I1(OPALU_1_IBUF_18),
    .I2(Irb_5_IBUF_10),
    .I3(Ira_5_IBUF_2),
    .I4(\alux/_n0093 [3]),
    .I5(Ira_6_IBUF_1),
    .O(\alux/n0039 [27])
  );
  LUT6 #(
    .INIT ( 64'hAFEAAAEA05400040 ))
  \alux/n0039<27>2  (
    .I0(OPALU_0_IBUF_19),
    .I1(\alux/GND_2_o_GND_2_o_sub_20_OUT [5]),
    .I2(OPALU_1_IBUF_18),
    .I3(OPALU_2_IBUF_17),
    .I4(Ira_4_IBUF_3),
    .I5(\alux/n0039 [27]),
    .O(\alux/n0039<27>1_101 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \alux/n0039<27>3  (
    .I0(\alux/n0039<27>1_101 ),
    .I1(OPALU_3_IBUF_16),
    .O(OALUD_5_OBUF_26)
  );
  LUT6 #(
    .INIT ( 64'h3777266615550444 ))
  \alux/n0039<26>1  (
    .I0(OPALU_2_IBUF_17),
    .I1(OPALU_1_IBUF_18),
    .I2(Irb_6_IBUF_9),
    .I3(Ira_6_IBUF_1),
    .I4(\alux/_n0093 [2]),
    .I5(Ira_7_IBUF_0),
    .O(\alux/n0039 [26])
  );
  LUT6 #(
    .INIT ( 64'hAFEAAAEA05400040 ))
  \alux/n0039<26>2  (
    .I0(OPALU_0_IBUF_19),
    .I1(\alux/GND_2_o_GND_2_o_sub_20_OUT [6]),
    .I2(OPALU_1_IBUF_18),
    .I3(OPALU_2_IBUF_17),
    .I4(Ira_5_IBUF_2),
    .I5(\alux/n0039 [26]),
    .O(\alux/n0039<26>1_103 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \alux/n0039<26>3  (
    .I0(\alux/n0039<26>1_103 ),
    .I1(OPALU_3_IBUF_16),
    .O(OALUD_6_OBUF_25)
  );
  LUT6 #(
    .INIT ( 64'h3777266615550444 ))
  \alux/n0039<32>1  (
    .I0(OPALU_2_IBUF_17),
    .I1(OPALU_1_IBUF_18),
    .I2(Irb_0_IBUF_15),
    .I3(Ira_0_IBUF_7),
    .I4(\alux/_n0093 [8]),
    .I5(Ira_1_IBUF_6),
    .O(\alux/n0039 [32])
  );
  LUT6 #(
    .INIT ( 64'h4444544400001000 ))
  \alux/n0039<32>2  (
    .I0(OPALU_3_IBUF_16),
    .I1(OPALU_0_IBUF_19),
    .I2(OPALU_1_IBUF_18),
    .I3(\alux/GND_2_o_GND_2_o_sub_20_OUT [0]),
    .I4(OPALU_2_IBUF_17),
    .I5(\alux/n0039 [32]),
    .O(OALUD_0_OBUF_31)
  );
  LUT4 #(
    .INIT ( 16'hD111 ))
  \alux/n0039<25>2_SW0  (
    .I0(\alux/GND_2_o_GND_2_o_sub_20_OUT [7]),
    .I1(OPALU_0_IBUF_19),
    .I2(Irb_7_IBUF_8),
    .I3(Ira_7_IBUF_0),
    .O(N2)
  );
  LUT6 #(
    .INIT ( 64'h0010000011101100 ))
  \alux/n0039<25>2  (
    .I0(OPALU_3_IBUF_16),
    .I1(OPALU_2_IBUF_17),
    .I2(OPALU_0_IBUF_19),
    .I3(OPALU_1_IBUF_18),
    .I4(\alux/_n0093 [1]),
    .I5(N2),
    .O(OFgn)
  );
  IBUF   Ira_7_IBUF (
    .I(Ira[7]),
    .O(Ira_7_IBUF_0)
  );
  IBUF   Ira_6_IBUF (
    .I(Ira[6]),
    .O(Ira_6_IBUF_1)
  );
  IBUF   Ira_5_IBUF (
    .I(Ira[5]),
    .O(Ira_5_IBUF_2)
  );
  IBUF   Ira_4_IBUF (
    .I(Ira[4]),
    .O(Ira_4_IBUF_3)
  );
  IBUF   Ira_3_IBUF (
    .I(Ira[3]),
    .O(Ira_3_IBUF_4)
  );
  IBUF   Ira_2_IBUF (
    .I(Ira[2]),
    .O(Ira_2_IBUF_5)
  );
  IBUF   Ira_1_IBUF (
    .I(Ira[1]),
    .O(Ira_1_IBUF_6)
  );
  IBUF   Ira_0_IBUF (
    .I(Ira[0]),
    .O(Ira_0_IBUF_7)
  );
  IBUF   Irb_7_IBUF (
    .I(Irb[7]),
    .O(Irb_7_IBUF_8)
  );
  IBUF   Irb_6_IBUF (
    .I(Irb[6]),
    .O(Irb_6_IBUF_9)
  );
  IBUF   Irb_5_IBUF (
    .I(Irb[5]),
    .O(Irb_5_IBUF_10)
  );
  IBUF   Irb_4_IBUF (
    .I(Irb[4]),
    .O(Irb_4_IBUF_11)
  );
  IBUF   Irb_3_IBUF (
    .I(Irb[3]),
    .O(Irb_3_IBUF_12)
  );
  IBUF   Irb_2_IBUF (
    .I(Irb[2]),
    .O(Irb_2_IBUF_13)
  );
  IBUF   Irb_1_IBUF (
    .I(Irb[1]),
    .O(Irb_1_IBUF_14)
  );
  IBUF   Irb_0_IBUF (
    .I(Irb[0]),
    .O(Irb_0_IBUF_15)
  );
  IBUF   OPALU_3_IBUF (
    .I(OPALU[3]),
    .O(OPALU_3_IBUF_16)
  );
  IBUF   OPALU_2_IBUF (
    .I(OPALU[2]),
    .O(OPALU_2_IBUF_17)
  );
  IBUF   OPALU_1_IBUF (
    .I(OPALU[1]),
    .O(OPALU_1_IBUF_18)
  );
  IBUF   OPALU_0_IBUF (
    .I(OPALU[0]),
    .O(OPALU_0_IBUF_19)
  );
  IBUF   rst_IBUF (
    .I(rst),
    .O(rst_IBUF_20)
  );
  IBUF   NFCR_IBUF (
    .I(NFCR),
    .O(NFCR_IBUF_22)
  );
  IBUF   ZFCR_IBUF (
    .I(ZFCR),
    .O(ZFCR_IBUF_23)
  );
  OBUF   OALUD_7_OBUF (
    .I(OALUD_7_OBUF_24),
    .O(OALUD[7])
  );
  OBUF   OALUD_6_OBUF (
    .I(OALUD_6_OBUF_25),
    .O(OALUD[6])
  );
  OBUF   OALUD_5_OBUF (
    .I(OALUD_5_OBUF_26),
    .O(OALUD[5])
  );
  OBUF   OALUD_4_OBUF (
    .I(OALUD_4_OBUF_27),
    .O(OALUD[4])
  );
  OBUF   OALUD_3_OBUF (
    .I(OALUD_3_OBUF_28),
    .O(OALUD[3])
  );
  OBUF   OALUD_2_OBUF (
    .I(OALUD_2_OBUF_29),
    .O(OALUD[2])
  );
  OBUF   OALUD_1_OBUF (
    .I(OALUD_1_OBUF_30),
    .O(OALUD[1])
  );
  OBUF   OALUD_0_OBUF (
    .I(OALUD_0_OBUF_31),
    .O(OALUD[0])
  );
  OBUF   IFgn_OBUF (
    .I(\fregN/out_34 ),
    .O(IFgn)
  );
  OBUF   IFgz_OBUF (
    .I(\fregZ/out_35 ),
    .O(IFgz)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \alux/Mmux_n005217_SW0  (
    .I0(\alux/_n0093 [3]),
    .I1(\alux/_n0093 [4]),
    .I2(\alux/_n0093 [5]),
    .I3(\alux/_n0093 [6]),
    .I4(\alux/_n0093 [7]),
    .I5(\alux/_n0093 [8]),
    .O(N4)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAB00000001 ))
  \alux/Mmux_n005217  (
    .I0(OPALU_2_IBUF_17),
    .I1(\alux/Madd__n0093_cy [7]),
    .I2(\alux/_n0093 [1]),
    .I3(\alux/_n0093 [2]),
    .I4(N4),
    .I5(Ira_0_IBUF_7),
    .O(\alux/Mmux_n005216 )
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_21)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

