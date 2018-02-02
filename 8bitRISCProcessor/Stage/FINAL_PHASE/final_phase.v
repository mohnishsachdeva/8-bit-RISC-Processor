`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:26:40 09/09/2016 
// Design Name: 
// Module Name:    final_phase 
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
module final_phase(
	 input rst,
    input clk,
    input [7:0] in,
    output [6:0] Reg1_out,
    output [6:0] Reg2_out
    );
wire [4:0] Oi;
wire cIFgn,cIFgz,cLRCR,cPCCR,cRegCR,cmux2CR,cNFCR,cZFCR, cDMCR, cReg1CR, cReg2CR;
wire [1:0] cWBCR;
wire [1:0] cmux1CR;
wire [3:0] cOPALU;

CR CRX(Oi[4:1],Oi[0],cIFgn,cIFgz,cLRCR,cmux1CR,cPCCR,cRegCR,cmux2CR,cOPALU,cNFCR,cZFCR,cDMCR,cWBCR,cReg1CR,cReg2CR);

FIVE_IN_ONE FIVE_IN_ONEX(cLRCR,cmux1CR,cPCCR,cRegCR,in,cmux2CR,cOPALU,cNFCR,cZFCR,cDMCR,cWBCR,cReg1CR,cReg2CR,clk,rst,Oi,cIFgn,cIFgz,Reg1_out,Reg2_out);

endmodule
