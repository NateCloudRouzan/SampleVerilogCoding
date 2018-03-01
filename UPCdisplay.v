// -------------------------------------------------------------------------------------
// filename: comparator.v
//
//Description:This module returns appropriate HEX displays
//				Case 0: FPGA
//				Case 1: AAA 
//				Case 3: CHIPS
//				Case 4: muLTI
//				Case 5: BOArd
//				Case 6: LEDs
//
//Author: Nate Cloud-Rouzan
// -------------------------------------------------------------------------------------

//
module UPCdisplay(bcd, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5);
	input[2:0]bcd;
	output reg [1:7] HEX0;
	output reg [1:7] HEX1;
	output reg [1:7] HEX2;
	output reg [1:7] HEX3;
	output reg [1:7] HEX4;
	output reg [1:7] HEX5;
	

	always @(bcd) //always blocks excevute always
	//the case statement will excecute whenever bcd changes
	
		case(bcd) //abcdefg
			0: begin //Case for UPC 000 an FPGA board "FPGA"
					HEX5 = 7'b0111000; //"F"
					HEX4 = 7'b0011000; //"P"
					HEX3 = 7'b0100000; //"G"
					HEX2 = 7'b0001000; //"A"
					HEX1 = 7'b1111111; //displays nothing
					HEX0 = 7'b1111111; //displays nothing
				end
				
			1: begin //Case for UPC 001 AAA batteries "AAA"
					HEX5 = 7'b0001000; //"A"
					HEX4 = 7'b0001000; //"A" 
					HEX3 = 7'b0001000; //"A"
					HEX2 = 7'b1111111; //displays nothing
					HEX1 = 7'b1111111; //displays nothing
					HEX0 = 7'b1111111; //displays Nothing
				end
				
			3: begin //Case for UPC 011 Boolean Chips "CHIPS"
					HEX5 = 7'b0110001; //"C" 
					HEX4 = 7'b1001000; //"H"
					HEX3 = 7'b1111001; //"I"
					HEX2 = 7'b0011000; //"P"
					HEX1 = 7'b0100100; //"S"
					HEX0 = 7'b1111111; //displays nothing
				end
				
			4: begin //case for UPC 100 a multimeter. (displays sideways)
				HEX5 = 7'b0110000; //"M" sideways
				HEX4 = 7'b1100110; //"U" sideways
				HEX3 = 7'b1100111; //"l" sideways
				HEX2 = 7'b1111000; //"T" sideways
				HEX1 = 7'b1111110; //"i" sideways
				HEX0 = 7'b1111111; //displays nothing
				end
				
			5: begin //case for UPC 101 breadboard "BOArd"
				HEX5 = 7'b0000000; //"B"
				HEX4 = 7'b0000001; //"O"
				HEX3 = 7'b0001000; //"A"
				HEX2 = 7'b1111010; //"lowercase r"
				HEX1 = 7'b1000010; //"lowercase d"
				HEX0 = 7'b1111111; //LEDs displays nothing
				end
				
			6: begin //case for UPC 110 which are LEDs "LEDS"
				HEX5 = 7'b1110001; //LEDs "L"
				HEX4 = 7'b0110000; //LEDs "E"
				HEX3 = 7'b0000001; //LEDs "D"
				HEX2 = 7'b0100100; //LEDs "s"	
				HEX1 = 7'b1111111; //LEDs displays nothing
				HEX0 = 7'b1111111; //LEDs displays nothing	
				end
			default: begin //allows computer to define cases as dont cares
				HEX5 = 7'bx;
				HEX4 = 7'bx;
				HEX3 = 7'bx;
				HEX2 = 7'bx;
				HEX1 = 7'bx;
				HEX0 = 7'bx;
				end
			endcase
endmodule
			


