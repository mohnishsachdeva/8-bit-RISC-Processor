`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:34:21 09/09/2016
// Design Name:   Data_memory
// Module Name:   F:/New Processor/Data_Memory/TB_DM.v
// Project Name:  Data_Memory
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Data_memory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_DM;

	// Inputs
	reg [7:0] Iea2;
	reg [7:0] IRa;
	reg clk;
	reg DMCR;

	// Outputs
	wire [7:0] ODM;

	// Instantiate the Unit Under Test (UUT)
	Data_memory uut (
		.Iea2(Iea2), 
		.IRa(IRa), 
		.clk(clk), 
		.DMCR(DMCR), 
		.ODM(ODM)
	);

	initial begin
		// Initialize Inputs
		Iea2 = 0;
		IRa = 0;
		clk = 0;
		DMCR = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		Iea2 = 81;
		IRa = 2;
		DMCR = 1;
		#100;
		
		Iea2 = 31;
		IRa = 5;
		DMCR = 1;
		#100;
		
		Iea2 = 81;
		DMCR = 0;
		#100;
		
		Iea2 = 31;
		DMCR = 0;
		#100;
		// Add stimulus here

	end
      always #10clk = ~clk;
endmodule

