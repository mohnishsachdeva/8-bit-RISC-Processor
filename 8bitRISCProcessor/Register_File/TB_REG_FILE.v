`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:12:29 09/09/2016
// Design Name:   Reg_file
// Module Name:   F:/New Processor/Register_File/TB_REG_FILE.v
// Project Name:  Register_File
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Reg_file
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_REG_FILE;

	// Inputs
	reg [1:0] src1;
	reg [1:0] src2;
	reg [1:0] dst;
	reg [7:0] ip;
	reg clk;
	reg rst;
	reg we;

	// Outputs
	wire [7:0] op1;
	wire [7:0] op2;

	// Instantiate the Unit Under Test (UUT)
	Reg_file uut (
		.src1(src1), 
		.src2(src2), 
		.dst(dst), 
		.ip(ip), 
		.clk(clk), 
		.rst(rst), 
		.we(we), 
		.op1(op1), 
		.op2(op2)
	);

	initial begin
		// Initialize Inputs
		src1 = 0;
		src2 = 0;
		dst = 0;
		ip = 0;
		clk = 0;
		rst = 0;
		we = 0;

		// Wait 100 ns for global reset to finish
		#100;
        dst = 0;
		ip = 11;
		we = 1;
		rst = 0;
		
		#20;
		
		dst = 1;
		ip = 21;
		we = 1;
		rst = 1;
		
		#20;
		
		dst = 2;
		ip = 31;
		we = 1;
		rst = 0;
		
		#20;
		
		dst = 3;
		ip = 41;
		we = 1;
		rst = 0;
		
		#20;
		
		src1 = 2;
		src2 = 3;
		we = 0;
		// Add stimulus here

	end
      always #10 clk =~clk;
endmodule

