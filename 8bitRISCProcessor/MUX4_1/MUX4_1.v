`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:11:12 09/09/2016 
// Design Name: 
// Module Name:    MUX4_1 
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
module MUX4_1(
    input [7:0] LRa,
    input [7:0] inca,
    input [7:0] ea1,
	 input [7:0] nothing,
    input [1:0] mux1CR,
    output [7:0] mux1op
    );

assign mux1op=(mux1CR==0)?LRa : (mux1CR==1)? inca:ea1;

endmodule
