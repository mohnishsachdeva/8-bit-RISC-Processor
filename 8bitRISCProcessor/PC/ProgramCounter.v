`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:45:28 09/09/2016 
// Design Name: 
// Module Name:    ProgramCounter 
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
module ProgramCounter(
    input [7:0] mux1op,
    input clk,
    input rst,
    input PCCR,
    output reg [7:0] PCa
    );

	 always@(posedge clk)
	 begin
	 if (rst==1) begin
	 PCa=0;
	 end
	 else if (PCCR==1) begin
	 PCa=mux1op;
	 end
	 end

endmodule
