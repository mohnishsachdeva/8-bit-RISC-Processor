`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:22:15 09/09/2016 
// Design Name: 
// Module Name:    MUX2 
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
module MUX2(
    input [7:0] ip1,
    input [7:0] ip2,
    input sel,
    output [7:0] op
    );

assign op =(sel==0) ? ip1:ip2;

endmodule
