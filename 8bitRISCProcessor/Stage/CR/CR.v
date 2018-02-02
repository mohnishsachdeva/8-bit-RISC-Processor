`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:22:48 09/09/2016 
// Design Name: 
// Module Name:    CR 
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
module CR(
	 input [3:0] Oi,
    input brx,
    input IFgn,
    input IFgz,
    output LRCR,
    output [1:0] mux1CR,
    output PCCR,
    output RegCR,
    output mux2CR,
    output [3:0] OPALU,
    output NFCR,
    output ZFCR,
    output DMCR,
    output [1:0] WBCR,
    output Reg1CR,
    output Reg2CR
    );
wire [3:0] OPALUc;
	 
	 assign LRCR = (Oi == 11) ? 1:0;
	 
	 assign mux1CR = (Oi == 12) ? 0: (Oi == 9 || (Oi == 10 && brx == 0 && IFgz == 1) || (Oi == 10 && brx == 1 && IFgn == 1) || Oi == 11) ? 2 : 1;
	 
	 assign PCCR = 1;
	 
	 assign RegCR = (Oi == 0 || Oi == 6 || Oi == 9 || Oi == 10 || Oi == 11 || Oi == 12 || Oi == 14) ? 0 : 1;
	 
	 assign mux2CR = (Oi == 7) ? 0 : 1;
	 
	 assign OPALUc = Oi;
	 
	 assign OPALU = OPALUc;
	 
	 assign NFCR = (Oi == 1 || Oi == 2 || Oi == 3) ? 1 : 0;
	 
	 assign ZFCR = (Oi == 1 || Oi == 2 || Oi == 3 || Oi == 4 || Oi == 5) ? 1 : 0;
	 
	 assign DMCR = (Oi == 14) ? 1 : 0;
	 
	 assign WBCR = (Oi == 1 || Oi == 2 || Oi == 3 || Oi == 4 || Oi == 5) ? 0 : (Oi == 13) ? 1 : (Oi == 8) ? 2 : 3;
	 
	 assign Reg1CR = (Oi == 6) ? 1 : 0;
	 
	 assign Reg2CR = (Oi == 6) ? 1 : 0;

endmodule
