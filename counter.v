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
    output CARRY
    );

integer count = 0;
always@ (posedge CLK)
	begin 
		if(PAUSE)
			begin
			end
		if(RESET)
			begin
				count <= 4'b0000;
				CARRY = 0;
			end
		else if(count == 4'b1001)
			begin
				count <= 4'b0000;
				CARRY = 1;
			end
		else
			begin
				count <= count + 1;
				CARRY = 0;
			end
	end
	
endmodule



