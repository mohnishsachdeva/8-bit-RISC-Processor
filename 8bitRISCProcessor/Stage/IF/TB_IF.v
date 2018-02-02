`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:34:48 09/09/2016
// Design Name:   IF
// Module Name:   F:/New Processor/Stage/IF/TB_IF.v
// Project Name:  IF
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: IF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_IF;

	// Inputs
	reg LRCR;
	reg [1:0] mux1CR;
	reg PCCR;
	reg clk;
	reg rst;

	// Outputs
	wire [15:0] Oi;

	// Instantiate the Unit Under Test (UUT)
	IF uut (
		.LRCR(LRCR), 
		.mux1CR(mux1CR), 
		.PCCR(PCCR), 
		.Oi(Oi), 
		.clk(clk), 
		.rst(rst)
	);

	initial begin
		// Initialize Inputs
		LRCR = 0;
		mux1CR = 0;
		PCCR = 0;
		clk = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#100;
        rst = 0;
		mux1CR = 1;
		PCCR = 1;
		// Add stimulus here

	end
      always #10 clk=~clk;
endmodule

