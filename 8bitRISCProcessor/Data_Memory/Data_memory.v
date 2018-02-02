`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:31:19 09/09/2016 
// Design Name: 
// Module Name:    Data_memory 
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
module Data_memory(
    input [7:0] Iea2,
    input [7:0] IRa,
    input clk,
    input DMCR,
    output [7:0] ODM
    );
DMEE DMx(Iea2, IRa, clk, DMCR, ODM);

endmodule
