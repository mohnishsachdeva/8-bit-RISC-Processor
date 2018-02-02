`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:25:06 09/09/2016
// Design Name:   EXE
// Module Name:   F:/New Processor/Stage/EXE/TB_EXE.v
// Project Name:  EXE
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: EXE
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_EXE;

	// Inputs
	reg [7:0] Ira;
	reg [7:0] Irb;
	reg [3:0] OPALU;
	reg rst;
	reg clk;
	reg NFCR;
	reg ZFCR;

	// Outputs
	wire IFgn;
	wire IFgz;
	wire [7:0] OALUD;

	// Instantiate the Unit Under Test (UUT)
	EXE uut (
		.Ira(Ira), 
		.Irb(Irb), 
		.OPALU(OPALU), 
		.IFgn(IFgn), 
		.IFgz(IFgz), 
		.OALUD(OALUD), 
		.rst(rst), 
		.clk(clk), 
		.NFCR(NFCR), 
		.ZFCR(ZFCR)
	);

	initial begin
		// Initialize Inputs
		Ira = 0;
		Irb = 0;
		OPALU = 0;
		rst = 0;
		clk = 0;
		NFCR = 0;
		ZFCR = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		  	
		Ira = 2;
		
Irb = 2;
	
	OPALU = 1;
	
	rst = 0;
	

	clk = 0;
	
	NFCR = 1;
	
	ZFCR = 1;
	
	#100;
		
	
	Ira = 6;
	
	Irb = 3;
	
	OPALU = 2;
	
	rst = 0;
	
	clk = 0;
	
	NFCR = 1;
	
	ZFCR = 1;
	
	#100;

		
Ira = 4;
	
	Irb = 3;
	
	OPALU = 3;
	
	rst = 0;
	
	clk = 0;
	
	NFCR = 1;
	
	ZFCR = 1;
	
	#100;
		// Add stimulus here

	end
      always #10clk=~clk;
endmodule

