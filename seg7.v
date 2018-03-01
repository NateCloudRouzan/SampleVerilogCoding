// -------------------------------------------------------------------------------------
// filename: seg7.v
//
//Description:This program intantiates the segment 7 module twice  with 6 different switches
//
//
//Author: Nate Cloud-Rouzan
// -------------------------------------------------------------------------------------

module seg7 (SW0, SW1, HEX0, HEX1);
	
	input [3:0] SW0; // uses switches 0-3
	input [3:0] SW1; // uses 4-7
	output [0:6] HEX0; // displayes on HEX0
	output [0:6] HEX1; //displays on HEX1
	
	segment7 digit0(SW0, HEX0); // pairs switches 0-3 with Hex0
	segment7 digit1(SW1, HEX1); //pairs switches 4-7 with Hex1

endmodule 