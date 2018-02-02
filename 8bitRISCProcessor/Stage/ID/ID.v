`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:28:15 09/09/2016 
// Design Name: 
// Module Name:    ID 
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
module ID(
    input [3:0] regaddrc,
    input RegCR,
    output [7:0] ORa,
    output [7:0] ORb,
    input [7:0] in,
    input [7:0] AorD,
    input mux2CR,
    input clk,
    input rst
    );
	 
	  wire [3:0] regaddr;
	 wire [7:0] mux2OP;
	 
	 Reg_file reg_fileX (regaddr[3:2], regaddr[1:0], regaddr[3:2], mux2OP, clk, rst, RegCR, ORa, ORb);
	 
    MUX2 mux2 (in,AorD,mux2CR,mux2OP);
	 
	 assign regaddr = regaddrc;


endmodule
