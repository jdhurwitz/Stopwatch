`timescale 1ns / 1ps

module SW(
	 input clk,
    input RESET,
    input PAUSE,
    input ADJ,
    input SEL
    );
	 /*
	 SEL = 0  --> minutes
	 SEL = 1	 --> seconds
	 Selected portion of clock is incremented at 2Hz.
	 Unselected portion is paused.
	 
	 PAUSE = 0 (not pressed) --> resume 
	 PAUSE = 1 (pressed) 	 --> pause counter
	 
	 */

wire CLK1;
wire CLK2;
wire CLKF;
wire CLKB;

reg c_out6, c_out10;
reg[3:0] zero = 0;
reg[3:0] one = 0;
reg[3:0] two = 0;
reg[3:0] three = 0;

	clock clk_new(
	.CLK_REF  (clk),
	.CLK_RES	 (RESET),
	.CLK_FAST (CLKF),
	.CLK_2HZ	 (CLK2),
	.CLK_1HZ  (CLK1),
	.CLK_BLINK (CLKB)

	);
/*
	counter count(
    .RESET (RESET),
    .CLK (clk),
    .PAUSE (PAUSE),
    .CARRY6 (c_out6),
	.CARRY10 (c_out10)
    );
	*/
	/*Disgusting implementation of a minte and second counter.*/
	
	always@(posedge CLKF)
	begin
		$display("%d"+"%d"+"%d"+"%d", three, two, one, zero);
		if(zero == 9)
			begin
				if(one == 5)
					begin
						one <= 0;
						zero <= 0;
						if(two == 9)
							begin
								if(three == 5)
									begin
										three <= 0;
									
									end
								else
									begin
										three <= three+1;
									end
									two <= 0;
							end
						else
							begin
								two <= two+1;
							end
					end
				else
					begin
						zero <= 0;
						one <= one+1;
					end
			end
		else
			begin
				zero <= zero+1;
			end
	end 

endmodule
