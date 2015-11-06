`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
/*
7 segment display module
Inputs:  6 bit regs (to support up to the number 64) for hour and min.
Outouts: Outputs are 7 bit regs, one for each of the digits on the display.
*/
//////////////////////////////////////////////////////////////////////////////////
module disp(
    input CLK,
	 input RESET,
	 input [3:0] d0,
	 input [3:0] d1,
	 input [3:0] d2,
	 input [3:0] d3,
	 
	 output reg[6:0] dispDigit
    );

reg [3:0] mDigit; //multiplexed digit
/*
Need to multiplex across all four displays
*/


/*
Case covering possible values of a 4-bit reg.
*/
always@(mDigit)
begin
		case (mDigit)
					 4'b0000	: dispDigit = 7'b1000000;   // 0
					 4'b0001 : dispDigit = 7'b1111001;   // 1
					 4'b0010 : dispDigit = 7'b0100100;   // 2
					 4'b0011 : dispDigit = 7'b0110000;   // 3
					 4'b0100 : dispDigit = 7'b0011001;   // 4
					 4'b0101 : dispDigit = 7'b0010010;   // 5
					 4'b0110 : dispDigit = 7'b0000010;   // 6
					 4'b0111 : dispDigit = 7'b1111000;   // 7
					 4'b1000 : dispDigit = 7'b0000000;   // 8
					 4'b1001 : dispDigit = 7'b0010000;   // 9			 
					 default : dispDigit = 7'b0111111;   // dash
		endcase
end
endmodule
