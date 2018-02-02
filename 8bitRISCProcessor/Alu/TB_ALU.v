`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:43:04 09/09/2016
// Design Name:   Alu
// Module Name:   F:/New Processor/Alu/TB_ALU.v
// Project Name:  Alu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_ALU;

	// Inputs
	reg [7:0] IRa;
	reg [7:0] IRb;
	reg [3:0] OPALU;

	// Outputs
	wire OFgn;
	wire OFgz;
	wire [7:0] OALUD;

	// Instantiate the Unit Under Test (UUT)
	Alu uut (
		.IRa(IRa), 
		.IRb(IRb), 
		.OPALU(OPALU), 
		.OFgn(OFgn), 
		.OFgz(OFgz), 
		.OALUD(OALUD)
	);

	initial begin
		// Initialize Inputs
		IRa = 0;
		IRb = 0;
		OPALU = 0;

		// Wait 100 ns for global reset to finish
		#100;
        		IRa = 2;
		IRb = 2;
		OPALU = 1;
			#100;
				IRa = 4;
		IRb = 2;
		OPALU = 2;
			#100;
				IRa = 2;
		IRb = 3;
		OPALU = 3;
			#100;
				IRa = 4;
		IRb = 3;
		OPALU = 4;
			#100;
				IRa = 4;
		IRb = 3;
		OPALU = 5;
			#100;
		// Add stimulus here

	end
      
endmodule

