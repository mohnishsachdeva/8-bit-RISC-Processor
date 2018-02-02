`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:05:16 09/09/2016 
// Design Name: 
// Module Name:    outport 
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
module outport(
    input [3:0] ind1,
    input [3:0] ind2,
    input Reg1CR,
    input Reg2CR,
    input clk,
    input rst,
    output [6:0] Reg1_out,
    output [6:0] Reg2_out
    );
	 wire reg_rst12,reg_clk12;

	 wire [6:0] do1ri1, do2ri2;
	 
	VII_bit_reg Reg1(do1ri1,Reg1_out,Reg1CR,reg_rst12,reg_clk12);


	VII_bit_reg Reg2(do2ri2,Reg2_out,Reg2CR,reg_rst12,reg_clk12);


	Decorder_4_to_7 dec1 (ind1, do1ri1);


	Decorder_4_to_7 dec2 (ind2, do2ri2);

	
assign reg_clk12 = clk;

	
assign reg_rst12 = rst;

endmodule
