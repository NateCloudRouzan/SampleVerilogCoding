// -------------------------------------------------------------------------------------
// filename: UPC.v
//
//Description:This program works as a simple barcode scanner. it takes in a 3 bit
//					UPC code and as well as wheter it has been marked as sold
//					This module returns whethe the item is on sale or stolen
//
//Author: Nate Cloud-Rouzan
// -------------------------------------------------------------------------------------


module UPC (U, P, C, mark, sale, stolen);
	//Three bit code (UPC) that signifies what item is being purchased and secret switch "mark" that tells 
	//U, P, C are given inputs Switch 210 (AF9, AC12, AB12) 
	//Mark is given by switch 9 (AE12)
	input U, P, C, mark;
	
	//Sale is given by LEDR0 (PIN_V16)
	// stolen is given of LEDR1 (PIN_W16) 
	output sale, stolen;

	//Sale is given to specific UPC codes
	assign sale = P | (U& C);
	
	//Stolen is given a high value when it is expensive and has no mark
	assign stolen = ~mark & ~P & (U | ~C);


endmodule
