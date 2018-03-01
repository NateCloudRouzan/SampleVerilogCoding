// -------------------------------------------------------------------------------------
// filename: comparator.v
//
//Description:This program works as a simple ten bit comparator. if the A bit contains
//				a greater binary number than the other binary number it will return that 
//				it is greater than.
//Author: Nate Cloud-Rouzan
// -------------------------------------------------------------------------------------

module comparator(A, B, greaterthan);
	input [9:0] A, B;
	reg greater;
	output greaterthan;

	always begin //Combinational logic 
		if (A > B) greater = 1'b1;
		else greater = 1'b0;
	end
	assign greaterthan = greater;
	
endmodule 