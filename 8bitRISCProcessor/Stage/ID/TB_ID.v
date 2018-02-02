`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:30:55 09/09/2016
// Design Name:   ID
// Module Name:   F:/New Processor/Stage/ID/TB_ID.v
// Project Name:  ID
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ID
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_ID;

	// Inputs
	reg [3:0] regaddrc;
	reg RegCR;
	reg [7:0] in;
	reg [7:0] AorD;
	reg mux2CR;
	reg clk;
	reg rst;

	// Outputs
	wire [7:0] ORa;
	wire [7:0] ORb;

	// Instantiate the Unit Under Test (UUT)
	ID uut (
		.regaddrc(regaddrc), 
		.RegCR(RegCR), 
		.ORa(ORa), 
		.ORb(ORb), 
		.in(in), 
		.AorD(AorD), 
		.mux2CR(mux2CR), 
		.clk(clk), 
		.rst(rst)
	);

	initial begin
		// Initialize Inputs
		regaddrc = 0;
		RegCR = 0;
		in = 0;
		AorD = 0;
		mux2CR = 0;
		clk = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#100;
        	regaddrc = 0;
		RegCR = 0;
		in = 0;
		AorD = 0;
		mux2CR = 0;
		clk = 0;
		rst = 0;
		#100;
			regaddrc = 11;
		RegCR = 1;
		in = 80;
		AorD = 90;
		mux2CR = 0;
		clk = 0;
		rst = 0;
		#100;
			regaddrc = 11;
		RegCR = 0;
		in = 0;
		AorD = 80;
		mux2CR = 90;
		clk = 0;
		rst = 0;
		#100;
		// Add stimulus here

	end
      always #10 clk = ~ clk;
endmodule

