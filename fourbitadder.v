// -------------------------------------------------------------------------------------
// filename: fourbitadder.v
//
//Description:This program works as a simple four bit adder. returns the binary count of
//					how many of these inputs are true via [overlow, carry, sum]
//
//Author: Nate Cloud-Rouzan
// -------------------------------------------------------------------------------------
module fourbitadder (A, B, C, D, overflow, carry, sum);

//Assign four inputs which will be the switches 
input A, B, C, D;

output overflow, carry, sum;//outputs which will be the LEDS

//This is the MSB returns true if all four are on
assign overflow = A & B & C & D;

//this is the second LSB. it returns true on 2 & 3 high values  
assign carry = !(A & B & C & D) & (A & B | A & C | A & D| B & C| B & D | C & D);

assign sum = A^B^C^D; //LSB (Odd or even bit)

endmodule 