`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:27:50 09/09/2016 
// Design Name: 
// Module Name:    IF 
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
module IF(
    input LRCR,
    input [1:0] mux1CR,
    input PCCR,
    output [15:0] Oi,
    input clk,
    input rst
    );
wire [15:0] inOi;//effective address 1
	 wire [7:0] mux1op_PC, PCa, inca, LRa;
	 wire lrpc_clk, lrpc_rst;
	 
	  ProgramCounter PC (mux1op_PC, lrpc_clk, lrpc_rst, PCCR, PCa);
	  ProgramCounter LR (inca, lrpc_clk, lrpc_rst, LRCR, LRa);
	  Adder inchw (PCa, inca);
	  MUX4_1 mux1 (LRa, inca, inOi[7:0], 8'b00000000, mux1CR, mux1op_PC); 
	  Instrction_Memory IM (PCa, inOi);

    assign lrpc_clk = clk;

    assign lrpc_rst = rst;	 
	 
	 assign Oi = inOi;

endmodule
