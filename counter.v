`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
/*
Modulo-10 counter implementation. 
Implements pause functionality and reset.

Output is CARRY, which will denote that the counter will loop around.
*/
//////////////////////////////////////////////////////////////////////////////////
module counter(
    input RESET,
    input CLK,
    input PAUSE,
    output reg CARRY6,
	output reg CARRY10
    );

integer count6 = 0;
integer count10 = 0;
always@ (posedge CLK)
	begin 
		if(PAUSE)
			begin
			end
		if(RESET)
			begin
				count10 <= 4'b0000;
				CARRY10 = 0;
			end
		else if(count10 == 4'b1001)
			begin
				count10 <= 4'b0000;
				CARRY10 = 1;
			end
		else
			begin
				count10 <= count10 + 1;
				CARRY10 <= 0;
			end
	end
	

always@ (posedge CLK)
	begin 
		if(PAUSE)
			begin
			end
		if(RESET)
			begin
				count6 <= 4'b0000;
				CARRY6 = 0;
			end
		else if(count6 == 4'b0101)
			begin
				count6 <= 4'b0000;
				CARRY6 = 1;
			end

		else
			begin
				count6 <= count6 + 1;
				CARRY6 <= 0;
			end
	end
	
endmodule


