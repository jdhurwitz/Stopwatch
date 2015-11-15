`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
/*
7 segment display module
Inputs:  6 bit regs (to support up to the number 64) for hour and min.
Outouts: Outputs are 7 bit regs, one for each of the digits on the display.
*/
//////////////////////////////////////////////////////////////////////////////////
module disp(
	 input CLK,
    input CLK1,
    input CLK2,
	 input RESET,
	 input ADJ,
	 input SEL,
	 input [3:0] d0,
	 input [3:0] d1,
	 input [3:0] d2,
	 input [3:0] d3,
	 
	 output reg[6:0] dispDigit,
	 output reg[3:0] selector
    );
/*
Selector reg determines which of the digits will be selected.
dispDigit holds information regarding which segments of the 7 to illuminate.
*/
reg [3:0] mDigit; //the digit we are currently using
localparam SIZE = 14;
localparam B_SIZE = 24;
reg [SIZE-1:0]count;
reg [B_SIZE-1:0] bcount;


/*
Need to multiplex across all four displays
*/

 /*500Hz Clock*/
 always@(posedge CLK)
 begin
 	if(RESET)
 		begin
 			count <= 0;

 			//CLK_FAST <= 1'b0;
 		end
 	else 
 		begin
 			if(count[SIZE-1:SIZE-3] == 7)
 				begin
 					//CLK_FAST <= ~CLK_FAST;
 					count <= 0;
 				end
 			else
 				begin
 					count <= count + 1;
 				end
 		end
 end
 
 always@(posedge CLK)
 begin
 	if(RESET)
 		begin
 			bcount <= 0;
 		end
 	else 
 		begin
 			if(bcount[B_SIZE-1:B_SIZE-3] == 7)
 				begin
 					bcount <= 0;
 				end
 			else
 				begin
 					bcount <= bcount + 1;
 				end
 		end
 end

always@(posedge CLK)
begin
	if(RESET)
		begin
			//non displayable value
			selector = 4'b1111;
			mDigit = 0;
		end
	else if(ADJ == 1)
		begin
			/*If set to minutes, we want to blink minutes (two and three).
			  Set to seconds means we want to blink (zero and one).*/
			if(SEL == 1)
				begin
					case(count[SIZE-1:SIZE-2])
						2:
							begin
								selector = 4'b1011;
								mDigit = d2;
							end
						3:
							begin
								selector = 4'b0111;
								mDigit = d3;
							end
						default:
							begin
								//mDigit = 0;
							end
					endcase
				
				if(bcount[B_SIZE-1])
					begin
						case(count[SIZE-1:SIZE-2])
							0: //EN digit 0
								begin
									selector = 4'b1110;
									mDigit = d0;
								end
							1: //EN digit 1
								begin
									selector = 4'b1101;
									mDigit = d1;
								end
							default:
								begin
									//mDigit = 0;
								end
						endcase
					end
				else if(!bcount[B_SIZE-1])
					begin
						case(count[SIZE-1:SIZE-2])
							0: //EN digit 0
								begin
									selector = 4'b1111;
									mDigit = d0;
								end
							1: //EN digit 1
								begin
									selector = 4'b1111;
									mDigit = d1;
								end
							default:
								begin
									//mDigit = 0;
								end
						endcase
					end
				end
			else if(SEL == 0)		//mins
				begin
					case(count[SIZE-1:SIZE-2])
						0:
							begin
								selector = 4'b1110;
								mDigit = d0;
							end
						1:
							begin
								selector = 4'b1101;
								mDigit = d1;
							end
						default:
							begin
								//mDigit = 0;
							end
					endcase
				
				if(bcount[B_SIZE-1])
					begin
						case(count[SIZE-1:SIZE-2])
							2: //EN digit 0
								begin
									selector = 4'b1011;
									mDigit = d2;
								end
							3: //EN digit 1
								begin
									selector = 4'b0111;
									mDigit = d3;
								end
							default:
								begin
									//mDigit = 0;
								end
						endcase
					end
				else if(!bcount[B_SIZE-1])
					begin
						case(count[SIZE-1:SIZE-2])
							2: //EN digit 0
								begin
									selector = 4'b1111;
									mDigit = d2;
								end
							3: //EN digit 1
								begin
									selector = 4'b1111;
									mDigit = d3;
								end
							default:
								begin
									//mDigit = 0;
								end
						endcase
					end
				end
			
	end
	else if(ADJ == 0)
		begin
			case(count[SIZE-1:SIZE-2])
				0: //EN digit 0
					begin
						selector = 4'b1110;
						mDigit = d0;
					end
				1: //EN digit 1
					begin
						selector = 4'b1101;
						mDigit = d1;
					end
				2: //EN digit 2
					begin
						selector = 4'b1011;
						mDigit = d2;
					end	
				3: //EN digit 3
					begin
						selector = 4'b0111;
						mDigit = d3;
					end
				default:
					begin
						mDigit = 0;
					end
			endcase
		end
end

/*
Case covering possible values of a 4-bit reg.
7'bgfedcba

We want to change the display digit every time
the mDigit (multiplexed digit) changes.
*/
always@(mDigit)
	if(RESET)
		begin
			dispDigit = 7'b1000000;
		end
	else
		begin 
				case (mDigit)
					 4'b0000 : dispDigit = 7'b1000000;   // 0
					 4'b0001 : dispDigit = 7'b1111001;   // 1
					 4'b0010 : dispDigit = 7'b0100100;   // 2
					 4'b0011 : dispDigit = 7'b0110000;   // 3
					 4'b0100 : dispDigit = 7'b0011001;   // 4
					 4'b0101 : dispDigit = 7'b0010010;   // 5
					 4'b0110 : dispDigit = 7'b0000010;   // 6
					 4'b0111 : dispDigit = 7'b1111000;   // 7
					 4'b1000 : dispDigit = 7'b0000000;   // 8
					 4'b1001 : dispDigit = 7'b0010000;   // 9			 
					 default : dispDigit = 7'b0111111;   // dash
				endcase
		end
endmodule
