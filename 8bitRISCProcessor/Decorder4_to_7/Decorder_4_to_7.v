`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:13:03 09/09/2016 
// Design Name: 
// Module Name:    Decorder_4_to_7 
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
module Decorder_4_to_7(
input [3:0] in,
    output reg [6:0] out
    );
always @ (in) begin 
	 
		if (in == 0) begin 
		
			out = 7'b1111110;
			
		end 
		
		else if (in == 1) begin 
		
			out = 7'b0110000;
			
		end

      else if (in == 2) begin 

			out = 7'b1101101;
			
		end

      else if (in == 3) begin 

			out = 7'b1111001;
			
		end
		
		else if (in == 4) begin

			out = 7'b0110011;
			
		end

		else if (in == 5) begin 
		
			out = 7'b1011011;
			
		end

      else if (in == 6) begin 

          out = 7'b1011111;
			 
		end 
		
		else if (in == 7) begin 
		
		 out = 7'b1110000;
		 
		 end
		 
		else if (in == 8) begin 
		 
		 out = 7'b1111111;
		 
		 end
		 
      else if (in == 9) begin 
		 
		 out = 7'b1111011;
		 
		 end
		 
      else if (in == 10) begin 
		 
		 out = 7'b1110111;
		 
		 end
		 
		else if (in == 11) begin 
		 
		 out = 7'b1111111;
		 
		 end
		 
		else if (in == 12) begin 
		 
		 out = 7'b1001110;
		 
		 end
		 
		else if (in == 13) begin 
		 
		 out = 7'b1111110;
		 
		 end
		 
		else if (in == 14) begin 
		 
		 out = 7'b1001111;
		 
		 end
		 
		else 
		 
		 out = 7'b1000111;
		 
		 end

endmodule
