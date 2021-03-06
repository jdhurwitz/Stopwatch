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


reg [26:0]count1 = 0;

/*
always@(posedge CLK_RES)
begin
	CLK_FAST  <= 1'b0;
	CLK_2HZ   <= 1'b0;
	CLK_1HZ   <= 1'b0;
	CLK_BLINK <= 1'b0;
end
*/

/* 1Hz and 2Hz outputs*/
always@(posedge CLK_REF)
begin
	if(CLK_RES)
		begin
			count1[26:0] <= 20'h00000;
			CLK_1HZ <= 1'b0;
			CLK_2HZ <= 1'b0;
		end
	else
		begin
			 if(count1[26:0] == 50000000) //2Hz
				begin
					CLK_2HZ <= 1;
					count1 <= count1 +1;
				end
			else if(count1[26:0] == 100000000) //1Hz
				begin
					CLK_1HZ <= 1;
					CLK_2HZ <= 1;
					count1 <= 20'h00000;
				end
			else
				begin
					CLK_2HZ <= 0;
					CLK_1HZ <= 0;
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
