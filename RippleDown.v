// -------------------------------------------------------------------------------------
// filename: RippleDown.v
//
//Description:This program works as a RippleDownCounter. 
//			This means that the output of the LSB will inform the next signifigant bit
//			This program has been specified as a Structural model this means that:
//							has no boolean operators (^&*|)
//							does not contain "assign" fuction
//							Should rely upon calling other modules
//			This style works well with the Ripple down counter
//			The Ripple down counter should start at 1111(15) and decrease by one till 0000(0)
//
//Author: Nate Cloud-Rouzan
// -------------------------------------------------------------------------------------

module RippleDown(clk, rst, q);
	input clk, rst;
	output [3:0] q;

	wire q0Bar, q1Bar, q2Bar, q3Bar;
		
		//Connect QBar so that it will count down
		DFlipFlop A0(.q(q[0]), .qBar(q0Bar), .D(q0Bar), .clk(clk), .rst(rst));
		DFlipFlop A1(.q(q[1]), .qBar(q1Bar), .D(q1Bar), .clk(q[0]),  .rst(rst));
		DFlipFlop A2(.q(q[2]), .qBar(q2Bar), .D(q2Bar), .clk(q[1]),  .rst(rst));
		DFlipFlop A3(.q(q[3]), .qBar(q3Bar), .D(q3Bar), .clk(q[2]),  .rst(rst));
endmodule 
