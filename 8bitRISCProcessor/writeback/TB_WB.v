`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:44:17 09/09/2016
// Design Name:   WB
// Module Name:   F:/New Processor/writeback/TB_WB.v
// Project Name:  writeback
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: WB
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_WB;

	// Inputs
	reg [7:0] IALUD;
	reg [7:0] IDM;
	reg [7:0] IMOV;
	reg [7:0] Iea2;
	reg [1:0] WBCR;

	// Outputs
	wire [7:0] AorD;

	// Instantiate the Unit Under Test (UUT)
	WB uut (
		.IALUD(IALUD), 
		.IDM(IDM), 
		.IMOV(IMOV), 
		.Iea2(Iea2), 
		.WBCR(WBCR), 
		.AorD(AorD)
	);

	initial begin
		// Initialize Inputs
		IALUD = 0;
		IDM = 0;
		IMOV = 0;
		Iea2 = 0;
		WBCR = 0;

		// Wait 100 ns for global reset to finish
		#100;
        IALUD = 1;
		IDM = 2;
		IMOV = 3;
		Iea2 = 4;
		WBCR = 2;
		// Add stimulus here

	end
      
endmodule

