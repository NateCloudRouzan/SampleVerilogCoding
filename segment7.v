// -------------------------------------------------------------------------------------
// filename: segment7.v
//
//Description:This program works as a simple binary to hex converter. it takes in
//				a 4 bit bcd value and returns the correct hex value 
//
//Author: Nate Cloud-Rouzan
// -------------------------------------------------------------------------------------

module segment7(bcd, leds);
	input[3:0]bcd;
	output reg [1:7] leds;

	always @(bcd) //always blocks excevute always
	//the case statement will excecute whenever bcd changes
	
		case(bcd) //abcdefg
			0: leds = 7'b0000001;
			1: leds = 7'b1001111;
			2: leds = 7'b0010010;
			3: leds = 7'b0000110;
			4: leds = 7'b1001100;
			5: leds = 7'b0100100;
			6: leds = 7'b0100000;
			7: leds = 7'b0001111;
			8: leds = 7'b0000000;
			9: leds = 7'b0000100;
			default: leds = 7'bx;
			endcase
endmodule