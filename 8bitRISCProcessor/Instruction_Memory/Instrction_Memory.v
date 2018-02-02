`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:20:20 09/09/2016 
// Design Name: 
// Module Name:    Instrction_Memory 
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
module Instrction_Memory(
    input [7:0] PCa,
    output [15:0] Oi
    );
wire [7:0] PCa1;
	 wire [7:0] IMx_out;
	 wire [7:0] IM1x_out;
	 
   INMM  mi1x(PCa1, IMx_out);
	 
	INMM  mi2x(PCa1+1, IM1x_out);
	 
	 assign PCa1 = PCa;
	 
	 assign Oi = {IMx_out,IM1x_out};

endmodule
