// -------------------------------------------------------------------------------------
// filename: HEXUPC.v
//
//Description:This program takes in a 3bit UPC and a 1bit mark value and returns via the
//				the LEDs whether the item is on sale as well as wheter it is stolen.
//				It also passes the value of the upc to the hex display to the UPCdisplay module
//
//Author: Nate Cloud-Rouzan
// -------------------------------------------------------------------------------------
module HEXUPC (mark, UPC, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, sale, stolen);
	
	input mark;
	input [2:0] UPC; // UPC code given by switches
	output [0:6] HEX0; //last digit displays on HEX0
	output [0:6] HEX1; //5th letter displayed on HEX1
	output [0:6] HEX2; //4th letter displayed on HEX2
	output [0:6] HEX3; //3rd letter in HEX3
	output [0:6] HEX4; //second letter on HEX4
	output [0:6] HEX5; //first letteron HEX5 
	output sale, stolen; //same variables as in lab 2

	//Sale is given to specific UPC codes
	assign sale = UPC[1] | (UPC[2]& UPC[0]);
	
	//Stolen is given a high value when it is expensive and has no mark
	assign stolen = ~mark & ~UPC[1] & (UPC[2] | ~UPC[0]);

	
	UPCdisplay a1(UPC, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5);

endmodule 