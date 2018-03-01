// -------------------------------------------------------------------------------------
// filename: fulladder.v
//
//Description:This program works as a simple 3 bit adder. 
//			Connecting these full adders together can work to cascade adding operations
//Author: Nate Cloud-Rouzan
// -------------------------------------------------------------------------------------
module fulladder (A, B, C, sum, carry);

input A, B, C; //three switches that act as bit inputs
output sum, carry; // two outputs that give binary number

//or gate that gives a high value if 1 or 3 switches are in on position
assign sum = A^B^C;

// is 1 if two or three switches are on 
assign carry = (A^B) & C | (A & B);

endmodule