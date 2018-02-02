`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:59:08 09/09/2016 
// Design Name: 
// Module Name:    FIVE_IN_ONE 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module FIVE_IN_ONE(
input LRCR,
    input [1:0] mux1CR,
    input PCCR,
    input RegCR,
    input [7:0] in,
    input mux2CR,
    input [3:0] OPALU,
    input NFCR,
    input ZFCR,
    input DMCR,
    input [1:0] WBCR,
    input Reg1CR,
    input Reg2CR,
    input clk,
    input rst,
    output [4:0] Oi,
    output IFgn,
    output IFgz,
    output [6:0] Reg1_out,
    output [6:0] Reg2_out
    );
 wire [15:0] wOi;
	 wire comrst, comclk;
	 wire [7:0] Ra,Rb;
	 wire [7:0] AorD;
	 wire [7:0] ALUD;
	 wire [7:0] ODM;
	 
	 IF IFX (LRCR, mux1CR, PCCR, wOi, comclk, comrst);
	 
	 ID IDX (wOi[11:8],RegCR,Ra,Rb,in,AorD,mux2CR,comclk,comrst);
	 
	 EXE EXEX (Ra,Rb,OPALU,IFgn,IFgz,ALUD,comrst,comclk,NFCR,ZFCR);
	 
	 Data_memory DMX(wOi[7:0],Ra,comclk,DMCR,ODM);
	 
	 WB WBX(ALUD,ODM,Rb,wOi[7:0],WBCR,AorD);
	 
	 outport outportX (Ra[7:4], Ra[3:0], Reg1CR, Reg2CR, comclk, comrst, Reg1_out, Reg2_out);
	 
	 assign comclk = clk;
	 
	 assign comrst = rst;
	 
	 assign Oi = wOi[15:11];

endmodule
