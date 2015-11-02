`timescale 1ns / 1ps

module SW(
	 input clk,
    input RESET,
    input PAUSE,
    input ADJ,
    input SEL
    );

wire CLK1;
wire CLK2;
wire CLKF;
wire CLKB;

	clock clk_new(
	.CLK_REF  (clk),
	.CLK_FAST (CLKF),
	.CLK_1HZ	 (CLK1),
	.CLK_2HZ  (CLK2),
	.CLK_BLINK (CLKB)

	);



endmodule
