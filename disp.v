`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
/*
7 segment display module
Inputs:  6 bit regs (to support up to the number 64) for hour and min.
Outouts: Outputs are 7 bit regs, one for each of the digits on the display.
*/
//////////////////////////////////////////////////////////////////////////////////
module disp(
    input [5:0] hour,
    input [5:0] min,
    output [6:0] digit3,
    output [6:0] digit2,
    output [6:0] digit1,
    output [6:0] digit0
    );

/*
When the hour changes, display a new value to the
upper two digits.
*/
always@(hour[5:0])
	begin
	end

/*
When the minute changes, display a new value to the 
lower two digits.
*/
always@(min[5:0])
	begin
	end

endmodule
