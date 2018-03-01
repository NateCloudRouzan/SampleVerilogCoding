// -------------------------------------------------------------------------------------
// filename: SyncDownTest.v
//
//Description:This program works as a test bench for the 4 bit Johnson Down Counter (Behavior module)
//			It takes only a clock and reset as inputs and should start at 1111 and cycle through 
//			Testbench will display multiple resets and clock cycles
//
//Author: Nate Cloud-Rouzan
// -------------------------------------------------------------------------------------

`include "SyncDownFourBit.v"//Module for testing
`include "DFlipFlop.v" //Module given in spec

module testBench;
 // connect the two modules
 wire  clk, rst;
 wire [3:0] out;
 
// declare an instance of the SyncDownFourBit module
  SyncDownFourBit mySyncDown (clk, rst, out);
// declare an instance of the testIt module
 Tester aTester (clk, rst, out);

// file for gtkwave
 initial
begin
// these two files support gtkwave and are required
 $dumpfile("SyncDownFourBit.vcd");
 $dumpvars(1,mySyncDown);
end
endmodule

// module to control inputs for testing
module Tester (clk, rst, Q);
 //Declare variables
 input[3:0] Q;
 output clk, rst;
 reg clk, rst;
 parameter stimDelay = 20; //
 
 //For displaying results of test
 initial // Response
 begin
$display("\t\t clk rst \t output \t Time ");
 $monitor("\t\t %b\t %b \t %b ", clk, rst, Q);
 end

 // Run  resets and clock progressions 
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
 
 //Run a reset and double the clock time to ensure accuracy
  rst = 'b0;
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