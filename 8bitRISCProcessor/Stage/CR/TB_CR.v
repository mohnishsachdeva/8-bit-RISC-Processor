`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:24:40 09/09/2016
// Design Name:   CR
// Module Name:   F:/New Processor/Stage/CR/TB_CR.v
// Project Name:  CR
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CR
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_CR;

	// Inputs
	reg [3:0] Oi;
	reg brx;
	reg IFgn;
	reg IFgz;

	// Outputs
	wire LRCR;
	wire [1:0] mux1CR;
	wire PCCR;
	wire RegCR;
	wire mux2CR;
	wire [3:0] OPALU;
	wire NFCR;
	wire ZFCR;
	wire DMCR;
	wire [1:0] WBCR;
	wire Reg1CR;
	wire Reg2CR;

	// Instantiate the Unit Under Test (UUT)
	CR uut (
		.Oi(Oi), 
		.brx(brx), 
		.IFgn(IFgn), 
		.IFgz(IFgz), 
		.LRCR(LRCR), 
		.mux1CR(mux1CR), 
		.PCCR(PCCR), 
		.RegCR(RegCR), 
		.mux2CR(mux2CR), 
		.OPALU(OPALU), 
		.NFCR(NFCR), 
		.ZFCR(ZFCR), 
		.DMCR(DMCR), 
		.WBCR(WBCR), 
		.Reg1CR(Reg1CR), 
		.Reg2CR(Reg2CR)
	);

	initial begin
		// Initialize Inputs
		Oi = 0;
		brx = 0;
		IFgn = 0;
		IFgz = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

