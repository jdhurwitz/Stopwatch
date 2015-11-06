`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:27:44 11/04/2015
// Design Name:   counter
// Module Name:   C:/Users/152/Documents/Ram and Jonny/Stopwatch-master/tbcount.v
// Project Name:  stopwatch
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tbcount;

	// Inputs
	reg RESET;
	reg CLK;
	reg PAUSE;

	// Outputs
	wire CARRY10;
	wire CARRY6;

	// Instantiate the Unit Under Test (UUT)
	counter uut (
		.RESET(RESET), 
		.CLK(CLK), 
		.PAUSE(PAUSE), 
		.CARRY6(CARRY6),
		.CARRY10(CARRY10)
	);
	
	initial begin
		CLK = 0;

	   forever
			begin
				#1000 CLK = ~CLK;
			end
   end
   
	initial begin
		// Initialize Inputs
		RESET = 1;
		CLK = 0;
		PAUSE = 0;

		// Wait 100 ns for global reset to finish
		#100;
		RESET = 0;
		
        
		// Add stimulus here

	end
      
endmodule

