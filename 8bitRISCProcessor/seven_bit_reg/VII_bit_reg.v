`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:08:30 09/09/2016 
// Design Name: 
// Module Name:    VII_bit_reg 
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
module VII_bit_reg(
input [6:0] in,
    output reg[6:0] out,
    input we,
    input rst,
    input clk
    );
 always@(posedge clk)
	 begin
	 if (rst==1) begin
	 out=0;
	 end
	 else if (we==1) begin
	 out=in;
	 end
	 end

endmodule
