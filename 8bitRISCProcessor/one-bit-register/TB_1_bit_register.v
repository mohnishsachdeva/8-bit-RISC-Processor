`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:58:52 09/09/2016
// Design Name:   one_bit_register
// Module Name:   F:/New Processor/one-bit-register/TB_1_bit_register.v
// Project Name:  one-bit-register
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: one_bit_register
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_1_bit_register;

	// Inputs
	reg in;
	reg rst;
	reg clk;
	reg we;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	one_bit_register uut (
		.in(in), 
		.out(out), 
		.rst(rst), 
		.clk(clk), 
		.we(we)
	);

	initial begin
		// Initialize Inputs
		in = 0;
		rst = 0;
		clk = 0;
		we = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
in = 1;
		rst = 1;
		clk = 0;
		we = 0;
		#100;
		
		in = 1;
		rst = 0;
		clk = 0;
		we = 1;
		#100;
	end
      always #10clk=~clk;
endmodule

