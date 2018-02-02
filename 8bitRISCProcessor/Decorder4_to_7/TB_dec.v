`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:14:57 09/09/2016
// Design Name:   Decorder_4_to_7
// Module Name:   F:/New Processor/Decorder4_to_7/TB_dec.v
// Project Name:  Decorder4_to_7
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Decorder_4_to_7
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_dec;

	// Inputs
	reg [3:0] in;

	// Outputs
	wire [6:0] out;

	// Instantiate the Unit Under Test (UUT)
	Decorder_4_to_7 uut (
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        in = 1;
		#20;
		
		in = 2;
		#20;
		
		in = 3;
		#20;
		
		in = 4;
		#20;
		
		in = 5;
		#20;
		
		in = 6;
		#20;
		
		in = 7;
		#20;
		
		in = 8;
		#20;
		
		in = 9;
		#20;
		
		in = 10;
		#20;
		
		in = 11;
		#20;
		
		in = 12;
		#20;
		
		in = 13;
		#20;
		
		in = 14;
		#20;
		
		in = 15;
		#20;
		// Add stimulus here

	end
      
endmodule

