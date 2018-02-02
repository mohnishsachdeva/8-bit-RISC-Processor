`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:07:11 09/09/2016 
// Design Name: 
// Module Name:    Reg_file 
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
module Reg_file(
    input [1:0] src1,
    input [1:0] src2,
    input [1:0] dst,
    input [7:0] ip,
    input clk,
    input rst,
    input we,
    output [7:0] op1,
    output [7:0] op2
    );
			reg [7:0] reg_arr [3:0];
			
			always @ (posedge clk) begin
			if (rst==1) 
			begin	
			
						reg_arr[0] = 0;
						reg_arr[1] = 0;
						reg_arr[2] = 0;
						reg_arr[3] = 0;
			
		end 
		
		else if (we == 1) begin 
		
			reg_arr[dst] = ip;
			
		end

	end
	
	assign op1 = reg_arr[src1];
	
	assign op2 = reg_arr[src2];

endmodule
