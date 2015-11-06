`timescale 1ns / 1ps

module SW(
	 input clk,
    input RESET,
    input PAUSE,
    input ADJ,
    input SEL,
	 
	 output[6:0] dispDigit,
	 output[3:0] selector
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

reg[3:0] zero = 0;
reg[3:0] one = 0;
reg[3:0] two = 0;
reg[3:0] three = 0;

wire[3:0] d0, d1, d2, d3;
//reg[6:0] dispDigit; //7-seg 
//reg[3:0] selector;  //which segment to display

	clock clk_new(
	.CLK_REF  (clk),
	.CLK_RES	 (RESET),
	.CLK_FAST (CLKF),
	.CLK_2HZ	 (CLK2),
	.CLK_1HZ  (CLK1),
	.CLK_BLINK (CLKB)

	);

	disp sevenSeg(
	.CLK	(clk),
	.RESET (RESET),
	.d0	 (d0),
	.d1	 (d1),
	.d2	 (d2),
	.d3	 (d3),
	
	.dispDigit (dispDigit),
	.selector  (selector)
	);
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
	  assign d0[3:0] = zero[3:0];
	  assign d1[3:0] = one[3:0];
	  assign d2[3:0] = two[3:0];
	  assign d3[3:0] = three[3:0];
endmodule
