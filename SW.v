`timescale 1ns / 1ps

module SW(
	input clk,
    input RESET,
    input PAUSE,
    input ADJ,
    input SEL
    );

reg CLK1;
reg CLK2;
reg CLKF;
reg CLKB;

reg c_out6, c_out10;
reg[3:0] zero = 0;
reg[3:0] one = 0;
reg[3:0] two = 0;
reg[3:0] three = 0;

	clock clk_new(
	.CLK_REF  (clk),
	.CLK_RES	 (RESET),
	.CLK_FAST (CLKF),
	.CLK_1HZ	 (CLK1),
	.CLK_2HZ  (CLK2),
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
	/*Increment last digit from 0-9, then carry to next digit.
	Digit 2: counts from 0-6
	Digit 3: counts from 0-9
	Digit 4: counts from 0-6*/
	
	always@(posedge clk)
	begin
		$display("%d"+"%d"+"%d"+"%d", three, two, one, zero);
		if(zero == 9)
			begin
				if(one == 5)
					begin
						one <= 0;
						zero <= 0;
						two <= two+1;
					end
				else
					begin
						zero <= 0;
						one <= one+1;
					end
			end

		else if(two == 9)
			begin
				if(three == 5)
					begin
						three <= 0;
						two <= 0;
						one <= 0;
					end
				else
					begin
						zero <= zero+1;
					end
				
			end
		else
			begin
				zero <= zero+1;
			end
	end 

endmodule
