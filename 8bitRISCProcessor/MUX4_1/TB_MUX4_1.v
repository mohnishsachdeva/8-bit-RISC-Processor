`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:13:10 09/09/2016
// Design Name:   MUX4_1
// Module Name:   F:/New Processor/MUX4_1/TB_MUX4_1.v
// Project Name:  MUX4_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX4_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_MUX4_1;

	// Inputs
	reg [7:0] LRa;
	reg [7:0] inca;
	reg [7:0] ea1;
	reg [1:0] mux1CR;

	// Outputs
	wire [7:0] mux1op;

	// Instantiate the Unit Under Test (UUT)
	MUX4_1 uut (
		.LRa(LRa), 
		.inca(inca), 
		.ea1(ea1), 
		.mux1CR(mux1CR), 
		.mux1op(mux1op)
	);

	initial begin
		// Initialize Inputs
		LRa = 0;
		inca = 0;
		ea1 = 0;
		mux1CR = 0;

		// Wait 100 ns for global reset to finish
		#100;
        LRa = 81;
		inca = 83;
		ea1 = 45;
		mux1CR = 0;
		#100;
		
		LRa = 1;
		inca = 3;
		ea1 = 5;
		mux1CR = 1;
		#100;
		
	   LRa = 23;
		inca = 25;
		ea1 = 12;
		mux1CR = 2;
		#100;
		// Add stimulus here

	end
      
endmodule

