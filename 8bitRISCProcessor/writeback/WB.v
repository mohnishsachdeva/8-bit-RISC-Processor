`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:40:04 09/09/2016 
// Design Name: 
// Module Name:    WB 
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
module WB(
    input [7:0] IALUD,
    input [7:0] IDM,
    input [7:0] IMOV,
    input [7:0] Iea2,
    input [1:0] WBCR,
    output [7:0] AorD
    );
assign AorD =(WBCR==0)?IALUD :(WBCR==1)?IDM :(WBCR==2) ? IMOV:Iea2;

endmodule
