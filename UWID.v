// -------------------------------------------------------------------------------------
// filename: UWID.v
//
//Description:This program takes in a four bit binary number and returns whether 
//					or not a given bit is correct
//					Pin assignments are shown in comments below 
//
//Author: Nate Cloud-Rouzan
// -------------------------------------------------------------------------------------

module UWID (A, B, C, D, out);
	//Takes in 4 right most switches as bit inputs (AF10, AF9, AC12, AB12)
	input A, B, C, D;
	
	//output is defined as out LEDR0 (Pin_V16)
	output out;

	//using 3 gates and three inverters this line defines out as HIGH value if given bit value of 0010
	assign out = ~(~(~A & ~B) | ~(C & ~D)) ;


endmodule