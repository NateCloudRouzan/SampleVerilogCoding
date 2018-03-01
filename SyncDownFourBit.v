// -------------------------------------------------------------------------------------
// filename: SyncDownFourBit.v
//
//Description:This program works as a Synchronous down counter. 
//			Which means that all of the Flip flops operate on the same clock
//		This program has been specified as a dataflow model which has the following requirements:
//					allows for Operators((&^!~|)
//					allows for the assign function
//					Does not allow the 'always' function
//			The Synchronous down counter follows the patter shown below:
//				Starts with a value of 1111(15) and decreases by one to 0000 (0)
//
//Author: Nate Cloud-Rouzan
// -------------------------------------------------------------------------------------


module  SyncDownFourBit (clk, rst, out);
  input clk, rst;
  wire [3:0] q, qBar;
  output [3:0] out;
  
	//Least significant bit 
	DFlipFlop A0(.q(q[0]), .qBar(qBar[0]), .D(~q[0]),
								 .clk(clk), .rst(rst));
	
	DFlipFlop A1(.q(q[1]), .qBar(qBar[1]), .D(~(q[0]^q[1])),                  
								 .clk(clk), .rst(rst));
	
	DFlipFlop A2(.q(q[2]), .qBar(qBar[2]), .D((q[2] & q[1]) | (~q[2] & ~q[1] & ~q[0]) | (q[2] & ~q[1] & q[0])), 
								 .clk(clk), .rst(rst));
	
	//Most Significant bit
	DFlipFlop A3(.q(q[3]), .qBar(qBar[3]), .D((q[3] & (q[2] | q[1] | q[0])) | (~q[3] & ~(q[2] | q[1] | q[0]))),
								 .clk(clk), .rst(rst)); 
  
	//For down counter you invert outputs of regular counter
	assign out[0] = q[0];
	assign out[1] = q[1];
	assign out[2] = q[2];
	assign out[3] = q[3];
endmodule 