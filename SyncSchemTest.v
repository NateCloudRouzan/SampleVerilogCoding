// -------------------------------------------------------------------------------------
// filename: SyncSchemTest.v
//
//Description:This program works as a test bench for the Schematic created for the 
//			synchronous down counter  It takes only a clock and reset as inputs 
//			and should start at 15 and count down to 0 Testbench will display 
//			multiple resets and clock cycles
//
//Author: Nate Cloud-Rouzan
// -------------------------------------------------------------------------------------

`include "SyncSchem.v"//Module for testing 
module testBench;
 // connect the two modules
 wire  clk, rst;
 wire out0, out1, out2, out3;
 
// declare an instance of the SyncSchem module
  SyncSchem mySyncSchem (rst, clk, out0, out1, out2, out3);
// declare an instance of the testIt module
 Tester aTester (rst, clk, out0, out1, out2, out3);

// file for gtkwave
 initial
begin
// these two files support gtkwave and are required
 $dumpfile("SyncSchem.vcd");
 $dumpvars(1,mySyncSchem);
end
endmodule

// This is the testing module for counter
module Tester (rst, clk, out0, out1, out2, out3);

 //Declare variables
 input out0, out1, out2, out3;
 output clk, rst;
 reg clk, rst;
 
 parameter stimDelay = 20; //Taken from meat Computer
 
 //Displays results of test
 initial // Response
 begin
$display("\t\t clk \t rst \t output \t");
 $monitor("\t\t %b\t %b \t %b ", clk, rst, out0, out1, out2, out3);
 end

 
 //Since it is a regular counter just clock cycles and resets will be tested
 initial // Stimulus
 begin
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