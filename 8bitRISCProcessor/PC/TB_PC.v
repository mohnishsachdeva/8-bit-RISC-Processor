`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:50:28 09/09/2016
// Design Name:   ProgramCounter
// Module Name:   F:/New Processor/PC/TB_PC.v
// Project Name:  PC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ProgramCounter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_PC;

	// Inputs
	reg [7:0] mux1op;
	reg clk;
	reg rst;
	reg PCCR;

	// Outputs
	wire [7:0] PCa;

	// Instantiate the Unit Under Test (UUT)
	ProgramCounter uut (
		.mux1op(mux1op), 
		.clk(clk), 
		.rst(rst), 
		.PCCR(PCCR), 
		.PCa(PCa)
	);

	initial begin
		// Initialize Inputs
		mux1op = 0;
		clk = 0;
		rst = 1;
		PCCR = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		  mux1op = 7;
		rst = 0;
		PCCR = 1;
		#10;
		// Add stimulus here

	end
always 
#10clk=~clk;      
endmodule

