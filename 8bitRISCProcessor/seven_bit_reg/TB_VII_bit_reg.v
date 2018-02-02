`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:09:40 09/09/2016
// Design Name:   VII_bit_reg
// Module Name:   F:/New Processor/seven_bit_reg/TB_VII_bit_reg.v
// Project Name:  seven_bit_reg
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: VII_bit_reg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_VII_bit_reg;

	// Inputs
	reg [6:0] in;
	reg we;
	reg rst;
	reg clk;

	// Outputs
	wire [6:0] out;

	// Instantiate the Unit Under Test (UUT)
	VII_bit_reg uut (
		.in(in), 
		.out(out), 
		.we(we), 
		.rst(rst), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		in = 0;
		we = 0;
		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
      in = 2;
		we = 1;
		rst = 0;
		clk = 1;
		#100;
			
		in = 1;
		we = 1;
		rst = 0;
		clk = 1;
		#100;
			
	end
      
      always #10clk=~clk;
endmodule

