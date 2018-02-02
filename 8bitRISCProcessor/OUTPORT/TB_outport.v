`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:17:54 09/09/2016
// Design Name:   outport
// Module Name:   F:/New Processor/OUTPORT/TB_outport.v
// Project Name:  OUTPORT
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: outport
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_outport;

	// Inputs
	reg [3:0] ind1;
	reg [3:0] ind2;
	reg Reg1CR;
	reg Reg2CR;
	reg clk;
	reg rst;

	// Outputs
	wire [6:0] Reg1_out;
	wire [6:0] Reg2_out;

	// Instantiate the Unit Under Test (UUT)
	outport uut (
		.ind1(ind1), 
		.ind2(ind2), 
		.Reg1CR(Reg1CR), 
		.Reg2CR(Reg2CR), 
		.clk(clk), 
		.rst(rst), 
		.Reg1_out(Reg1_out), 
		.Reg2_out(Reg2_out)
	);

	initial begin
		// Initialize Inputs
		ind1 = 0;
		ind2 = 0;
		Reg1CR = 0;
		Reg2CR = 0;
		clk = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
      
		ind1 = 4;
		ind2 = 8;
		Reg1CR = 1;
		Reg2CR = 1;
		rst = 0;  
				#100;
		// Add stimulus here

	end
  always 
	
	#10 clk = ~ clk;    
endmodule

