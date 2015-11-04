`timescale 1ns / 1ps
module tb;

	// Inputs
	reg CLK_REF;

	// Outputs
	wire CLK_FAST;
	wire CLK_2HZ;
	wire CLK_1HZ;
	wire CLK_BLINK;

	reg clk, reset;

initial clk = 0;
	clock uut (
		.CLK_REF(clk), 
		.CLK_RES(reset),
		.CLK_FAST(CLK_FAST), 
		.CLK_2HZ(CLK_2HZ), 
		.CLK_1HZ(CLK_1HZ), 
		.CLK_BLINK(CLK_BLINK)
	);	
	
	initial begin
		clk = 0;

	   forever
			begin
				#5 clk = ~clk;
			end
   end
	initial begin
		// Initialize Inputs
		reset = 1;

		// Wait 100 ns for global reset to finish
		#100;
		reset = 0;
        
		// Add stimulus here
		
		
	end
		
		/*
		always@(posedge clk)
			begin
				uut.CLK_REF = clk;
			end
			
		always@(negedge clk)
			begin
				uut.CLK_REF = 0;
			end
			*/

      
endmodule

