// -------------------------------------------------------------------------------------
// filename: RippleDownTest.v
//
//Description:This program works as a test bench for the 4 bit Sycnchronous down counter
//			It takes only a clock and reset as inputs and should start at 1111(15) and cycle down 
//			Testbench will display multiple resets and clock cycles
//
//Author: Nate Cloud-Rouzan
// -------------------------------------------------------------------------------------


`include "RippleDown.v" //Module for testing
`include "DFlipFlop.v" // module given from spec

module testBench;
 // connect the two modules
 wire  clock, reset;
 wire [3:0] q;
 
// declare an instance of the RippleDown module
  RippleDown myRipple (clock, reset, q);
// declare an instance of the testIt module
 Tester aTester (clock, reset, q);

// file for gtkwave
 initial
begin
// these two files support gtkwave and are required
 $dumpfile("RippleDown.vcd");
 $dumpvars(1,myRipple);
end
endmodule

// andorTop0.v cont.
module Tester (clk, rst, q);
//Declare variables
 input [3:0] q;
 output clk, rst;
 reg clk, rst;
 parameter stimDelay = 20; //Taken from meat computer
 
 //To display results
 initial // Response
 begin
$display("\t\t clk rst \t output \t Time ");
 $monitor("\t\t %b\t %b \t %b", clk, rst, q);
 end

 initial // Stimulus
 begin
 rst = 'b0;
 #stimDelay rst = 'b1; 
 #stimDelay;
 #stimDelay clk = 'b1;
 #stimDelay clk = 'b0;
 #stimDelay clk = 'b1;
 #stimDelay clk = 'b0;
 #stimDelay clk = 'b1;
 #stimDelay clk = 'b0;
 #stimDelay clk = 'b1;
 #stimDelay clk = 'b0;
 #stimDelay clk = 'b1;
 #stimDelay clk = 'b0;
 #stimDelay clk = 'b1;
 #stimDelay clk = 'b0;
 #stimDelay clk = 'b1;
 #stimDelay clk = 'b0;
 #stimDelay clk = 'b1;
 #stimDelay clk = 'b0;
 #stimDelay clk = 'b1;
 #stimDelay clk = 'b0;
 #stimDelay clk = 'b1;
 #stimDelay clk = 'b0;
 #stimDelay clk = 'b1;
 #stimDelay clk = 'b0;
 #stimDelay clk = 'b1;
 #stimDelay clk = 'b0;
  #stimDelay clk = 'b1;
 #stimDelay clk = 'b0;
 #stimDelay clk = 'b1;
 #stimDelay clk = 'b0;
 #stimDelay clk = 'b1;
 #stimDelay clk = 'b0;
 #stimDelay clk = 'b1;
 #stimDelay clk = 'b0;
 #stimDelay clk = 'b1;
 #stimDelay clk = 'b0;
 
 //Do another reset and clock cycling
  rst = 'b0;
  #stimDelay clk = 'b1;
 #stimDelay clk = 'b0;
 #stimDelay clk = 'b1;
 #stimDelay clk = 'b0;
 #stimDelay clk = 'b1;
 #stimDelay clk = 'b0;
 #stimDelay clk = 'b1;
 #stimDelay clk = 'b0;
 #stimDelay rst = 'b1; 
 #stimDelay clk = 'b1;
 #stimDelay clk = 'b0;
 #stimDelay clk = 'b1;
 #stimDelay clk = 'b0;
 #stimDelay clk = 'b1;
 #stimDelay clk = 'b0;
 #stimDelay clk = 'b1;
 #stimDelay clk = 'b0;
 #stimDelay clk = 'b1;
 #stimDelay clk = 'b0;
 #stimDelay clk = 'b1;
 #stimDelay clk = 'b0;
 #stimDelay clk = 'b1;
 #stimDelay clk = 'b0;
 #stimDelay clk = 'b1;
 #stimDelay clk = 'b0;
 #stimDelay clk = 'b1;
 #stimDelay clk = 'b0;
 #stimDelay clk = 'b1;
 #stimDelay clk = 'b0;
 #stimDelay clk = 'b1;
 #stimDelay clk = 'b0;
 #stimDelay clk = 'b1;
 #stimDelay clk = 'b0;
  #stimDelay clk = 'b1;
 #stimDelay clk = 'b0;
 #stimDelay clk = 'b1;
 #stimDelay clk = 'b0;
 #stimDelay clk = 'b1;
 #stimDelay clk = 'b0;
 #stimDelay clk = 'b1;
 #stimDelay clk = 'b0;
 #stimDelay clk = 'b1;
 #stimDelay clk = 'b0;
 #(2*stimDelay); // needed to see END of simulation
 $finish; // finish simulation
 end
endmodule