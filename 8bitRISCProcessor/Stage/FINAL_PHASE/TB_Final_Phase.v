`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:35:07 09/09/2016
// Design Name:   final_phase
// Module Name:   F:/New Processor/Stage/FINAL_PHASE/TB_Final_Phase.v
// Project Name:  FINAL_PHASE
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: final_phase
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_Final_Phase;

	// Inputs
	reg rst;
	reg clk;
	reg [7:0] in;

	// Outputs
	wire [6:0] Reg1_out;
	wire [6:0] Reg2_out;

	// Instantiate the Unit Under Test (UUT)
	final_phase uut (
		.rst(rst), 
		.clk(clk), 
		.in(in), 
		.Reg1_out(Reg1_out), 
		.Reg2_out(Reg2_out)
	);

	initial begin
		// Initialize Inputs
		rst = 1;
		clk = 0;
		in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
rst = 0;
		clk = 0;
		in = 15;
		#100;
	end
      always #10 clk = ~clk ;
endmodule

