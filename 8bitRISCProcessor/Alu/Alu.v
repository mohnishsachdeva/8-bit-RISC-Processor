`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:42:05 09/09/2016 
// Design Name: 
// Module Name:    Alu 
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
module Alu(
    input [7:0] IRa,
    input [7:0] IRb,
    input [3:0] OPALU,
    output OFgn,
    output OFgz,
    output [7:0] OALUD
    );
assign OFgz = (OPALU == 4) ? IRa[7] : (OPALU == 5) ? IRa[0] : ((OPALU == 1 && (IRa+IRb) == 0) || (OPALU == 2 && (IRa-IRb) == 0) || (OPALU == 3 && ~(IRa && IRb) == 0)) ? 1 : 0; 

assign OALUD =(OPALU==1)? (IRa+IRb):(OPALU==2)? (IRa-IRb) :(OPALU==3)? ~(IRa & IRb) :(OPALU==4)? (IRa<<1) /*SHL*/ : (OPALU==5)? (IRa>>1) /*SHR*/:0;

assign OFgn = ((OPALU == 1 && OALUD[7] == 1) || (OPALU == 2 && OALUD[7] == 1) || (OPALU == 3 && OALUD[7] == 1)) ? 1 : 0;  

endmodule
