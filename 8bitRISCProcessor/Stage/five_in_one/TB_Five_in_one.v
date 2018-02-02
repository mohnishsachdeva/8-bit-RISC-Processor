`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:16:54 09/09/2016
// Design Name:   FIVE_IN_ONE
// Module Name:   F:/New Processor/Stage/five_in_one/TB_five_in_one.v
// Project Name:  five_in_one
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FIVE_IN_ONE
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_five_in_one;

	// Inputs
	reg LRCR;
	reg [1:0] mux1CR;
	reg PCCR;
	reg RegCR;
	reg [7:0] in;
	reg mux2CR;
	reg [3:0] OPALU;
	reg NFCR;
	reg ZFCR;
	reg DMCR;
	reg [1:0] WBCR;
	reg Reg1CR;
	reg Reg2CR;
	reg clk;
	reg rst;

	// Outputs
	wire [4:0] Oi;
	wire IFgn;
	wire IFgz;
	wire [6:0] Reg1_out;
	wire [6:0] Reg2_out;

	// Instantiate the Unit Under Test (UUT)
	FIVE_IN_ONE uut (
		.LRCR(LRCR), 
		.mux1CR(mux1CR), 
		.PCCR(PCCR), 
		.RegCR(RegCR), 
		.in(in), 
		.mux2CR(mux2CR), 
		.OPALU(OPALU), 
		.NFCR(NFCR), 
		.ZFCR(ZFCR), 
		.DMCR(DMCR), 
		.WBCR(WBCR), 
		.Reg1CR(Reg1CR), 
		.Reg2CR(Reg2CR), 
		.clk(clk), 
		.rst(rst), 
		.Oi(Oi), 
		.IFgn(IFgn), 
		.IFgz(IFgz), 
		.Reg1_out(Reg1_out), 
		.Reg2_out(Reg2_out)
	);

	initial begin
		// Initialize Inputs
		LRCR = 0;
		mux1CR = 0;
		PCCR = 0;
		RegCR = 0;
		in = 0;
		mux2CR = 0;
		OPALU = 0;
		NFCR = 0;
		ZFCR = 0;
		DMCR = 0;
		WBCR = 0;
		Reg1CR = 0;
		Reg2CR = 0;
		clk = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#100;
				LRCR = 0;
		mux1CR = 1;
		PCCR = 1;
		RegCR = 1;
		in = 15;
		mux2CR = 0;
		OPALU = 1;
		NFCR = 1;
		ZFCR = 1;
		DMCR = 0;
		WBCR = 0;
		Reg1CR = 1;
		Reg2CR = 1;
		clk = 0;
		rst = 0;
        #100;
		// Add stimulus here

	end
      always #10clk=~clk;
endmodule

