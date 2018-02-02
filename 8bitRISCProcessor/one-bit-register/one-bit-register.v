`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:49:29 09/09/2016 
// Design Name: 
// Module Name:    one-bit-register 
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
module one_bit_register(
    input in,
    output reg out,
    input rst,
    input clk,
    input we
    );
always @(posedge clk)
begin 
if (rst==1) begin
out=0;
end
else if (we==1) begin
out=in;
end
end

endmodule
