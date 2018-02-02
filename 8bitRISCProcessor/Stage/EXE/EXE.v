`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:12:04 09/09/2016 
// Design Name: 
// Module Name:    EXE 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module EXE(
    input [7:0] Ira,
    input [7:0] Irb,
    input [3:0] OPALU,
    output IFgn,
    output IFgz,
   output [7:0] OALUD,
    input rst,
    input clk,
    input NFCR,
    input ZFCR
    );
 wire NZ_rst,NZ_clk,OFgn,OFgz;
	 
    Alu alux (Ira,Irb,OPALU,OFgn,OFgz,OALUD);
	 
    one_bit_register fregN(OFgn,IFgn,NZ_rst,NZ_clk,NFCR);
	 
    one_bit_register fregZ(OFgz,IFgz,NZ_rst,NZ_clk,ZFCR);

assign NZ_rst=rst;
assign NZ_clk=clk;

endmodule
