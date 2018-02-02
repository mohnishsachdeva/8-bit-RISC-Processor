`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:22:55 09/09/2016
// Design Name:   Instrction_Memory
// Module Name:   F:/New Processor/Instruction_Memory/TB_IM.v
// Project Name:  Instruction_Memory
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Instrction_Memory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_IM;

	// Inputs
	reg [7:0] PCa;

	// Outputs
	wire [15:0] Oi;

	// Instantiate the Unit Under Test (UUT)
	Instrction_Memory uut (
		.PCa(PCa), 
		.Oi(Oi)
	);

	initial begin
		// Initialize Inputs
		PCa = 0;

		// Wait 100 ns for global reset to finish
		#100;
        PCa = 84;
		#100;
			PCa = 42;
		#100;
			PCa = 34;
		#100;
			PCa = 15;
		#100;
		// Add stimulus here

	end
      
endmodule

