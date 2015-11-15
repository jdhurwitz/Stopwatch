`timescale 1ns / 1ps

module SW(
	  input clk,
    input RESET,
    input PAUSE,
    input ADJ,
    input SEL,
	 
  // output Led0,
   //output Led1,
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

wire digReset;

reg[3:0] zero = 0;
reg[3:0] one = 0;
reg[3:0] two = 0;
reg[3:0] three = 0;

reg int_clk = 0;

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
	.CLK1 	(CLK1),
	.CLK2	(CLK2),
	.RESET (RESET),
	.ADJ (ADJ),
	.SEL (SEL),
	.d0	 (zero),
	.d1	 (one),
	.d2	 (two),
	.d3	 (three),
	
	.dispDigit (dispDigit),
	.selector  (selector)
	);
	/*Disgusting implementation of a minte and second counter.*/


	always@(posedge clk)
	begin
        
        if(PAUSE) //pause
          begin
          end
        else if(RESET) //reset
            begin
                zero <= 0;
                one  <= 0;
                two  <= 0;
                three <= 0;
            end
        else if(!ADJ && CLK1)
          begin
            //Led0 <= 0;
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
        if(ADJ && CLK2)            
          begin
          $display("%d"+"%d"+"%d"+"%d", three, two, one, zero);
            //Led0 <= 1;
            if(SEL == 1) //seconds
                begin
                 // Led1 <= 1;

                    if(zero == 9)
                        begin
                            if(one == 5 )
                                begin
                                    zero <= 0;
                                    one <= 0;
                                end
                            else
                                begin
                                    one <= one + 1;
                                    zero <= 0;
                                end
                        end
                     else
                        begin
                            zero <= zero + 1;
                        end
                end
            else if(SEL == 0) //minutes
                begin
                       // Led1 <= 0;

                    if(two == 9)
                        begin
                            if(three == 5)
                                begin
                                    two <= 0;
                                    three <= 0;
                                end
                            else
                                begin
                                    three <= three + 1;
                                    two <= 0;
                                end
                        end
                     else
                        begin
                            two <= two + 1;
                        end
                end
          end

 end
    

endmodule
