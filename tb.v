`timescale 1ns / 1ps
module tb;

	// Inputs
	reg CLK_REF;

	// Outputs
	wire CLK_FAST;
	wire CLK_2HZ;
	wire CLK_1HZ;
	wire CLK_BLINK;

	reg clk;

initial clk = 0;
	clock uut (
		.CLK_REF(clk), 
		.CLK_FAST(CLK_FAST), 
		.CLK_2HZ(CLK_2HZ), 
		.CLK_1HZ(CLK_1HZ), 
		.CLK_BLINK(CLK_BLINK)
	);	
	
	
	   always #5 clk = ~clk;
	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
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

