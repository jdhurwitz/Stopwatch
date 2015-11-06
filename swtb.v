`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:21:11 11/04/2015
// Design Name:   SW
// Module Name:   C:/Users/152/Documents/Ram and Jonny/Stopwatch-master/swtb.v
// Project Name:  stopwatch
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SW
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module swtb;

	// Inputs
	reg clk;
	reg RESET;
	reg PAUSE;
	reg ADJ;
	reg SEL;

	// Instantiate the Unit Under Test (UUT)
	SW uut (
		.clk(clk), 
		.RESET(RESET), 
		.PAUSE(PAUSE), 
		.ADJ(ADJ), 
		.SEL(SEL)
	);

	initial begin
	clk = 0;
		forever
		begin
			#100 clk = ~clk;
		end
	end
	initial begin
		// Initialize Inputs
		RESET = 1;
		PAUSE = 0;
		ADJ = 0;
		SEL = 0;

		// Wait 100 ns for global reset to finish
		#100;
		RESET = 0;
        
		// Add stimulus here

	end
      
endmodule
