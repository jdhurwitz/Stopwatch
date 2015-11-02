`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
/*

*/
//////////////////////////////////////////////////////////////////////////////////
module clock(
    input CLK_REF,
    output reg CLK_FAST,
    output reg CLK_2HZ,
    output reg CLK_1HZ,
    output reg CLK_BLINK
    );

integer counter_2hz=0, counter_1hz=0, counter_fast=0;
integer counter_b = 0;

/*
CLK_FAST implementation.
*/
always@(posedge CLK_REF)
begin
	counter_fast = counter_fast+1;
	if(counter_fast <= 2*(10**6))
		begin
			CLK_FAST = 1;
		end
	else if(counter_fast > 2*(10**6))
		begin
			counter_fast = 0;
			CLK_FAST = 0;
		end
end

/*
CLK_2Hz implementation.
*/
always@(posedge CLK_REF)
begin
	counter_2hz = counter_2hz+1;
	if(counter_2hz <= 5*(10**7))
		begin
			CLK_2HZ = 1;
		end
	else if(counter_2hz > 5*(10**7))
		begin
			counter_2hz = 0;
			CLK_2HZ = 0;
		end
end

/*
CLK_1Hz implementation.
*/
always@(posedge CLK_REF)
begin
counter_1hz = counter_1hz+1;
	if(counter_1hz <= 1*(10**8))
		begin
			CLK_1HZ = 1;
		end
	else if(counter_1hz > 1*(10**8))
		begin
			counter_1hz = 0;
			CLK_1HZ = 0;
		end
end

/*
CLK_BLINK implementation.
*/
always@(posedge CLK_REF)
begin
	if(counter_b <= 8*(10**7))
			begin
				CLK_BLINK = 1;
			end
		else if(counter_b > 8*(10**7))
			begin
				counter_b  = 0;
				CLK_BLINK = 0;
			end
end


endmodule
