`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:23:15 09/09/2016
// Design Name:   MUX2
// Module Name:   F:/New Processor/MUX2_1/TB_MUX2.v
// Project Name:  MUX2_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_MUX2;

	// Inputs
	reg [7:0] ip1;
	reg [7:0] ip2;
	reg sel;

	// Outputs
	wire [7:0] op;

	// Instantiate the Unit Under Test (UUT)
	MUX2 uut (
		.ip1(ip1), 
		.ip2(ip2), 
		.sel(sel), 
		.op(op)
	);

	initial begin
		// Initialize Inputs
		ip1 = 0;
		ip2 = 0;
		sel = 0;

		// Wait 100 ns for global reset to finish
		#100;
        		ip1 = 21;
		ip2 = 31;
		sel = 0;
			#100;
				ip1 = 42;
		ip2 = 53;
		sel = 1;
		#100;
		// Add stimulus here

	end
      
endmodule

