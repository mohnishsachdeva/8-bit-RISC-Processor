`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:59:48 09/09/2016
// Design Name:   Adder
// Module Name:   F:/New Processor/Adder/TB_ADDER.v
// Project Name:  Adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_ADDER;

	// Inputs
	reg [7:0] PCa;

	// Outputs
	wire [7:0] inca;

	// Instantiate the Unit Under Test (UUT)
	Adder uut (
		.PCa(PCa), 
		.inca(inca)
	);

	initial begin
		// Initialize Inputs
		PCa = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		  PCa = 2;
		#100;
   	PCa = 5;
		#100;
		// Add stimulus here

	end
      
endmodule

