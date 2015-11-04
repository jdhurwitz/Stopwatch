`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
/*

*/
//////////////////////////////////////////////////////////////////////////////////
module clock(
    input CLK_REF,
	 input CLK_RES,
    output reg CLK_FAST,
    output reg CLK_2HZ,
    output reg CLK_1HZ,
    output reg CLK_BLINK
    );


integer RESET = 0;
reg [19:0]count1;


/*
CLK_FAST implementation.

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
*/
/*
CLK_2Hz implementation.

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
*/
/*
CLK_1Hz implementation.
*/
always@(posedge CLK_REF)
begin
	if(CLK_RES)
		begin
			count1[19:0] <= 20'h00000;
			CLK_1HZ <= 1'b0;
			CLK_2HZ <= 1'b0;
		end
	else
		begin
			if(count1[19:0] == 250000)
				begin
					CLK_2HZ <= ~CLK_2HZ;
				end
			else if(count1[19:0] == 500000)
				begin
					CLK_1HZ <= ~CLK_1HZ;
					CLK_2HZ <= ~CLK_2HZ;
					count1 <= 20'h00000;
				end
			else
				begin
					count1 <= count1 + 1;
				end
		end

		
end

/*
CLK_BLINK implementation.

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
*/

endmodule
