// -------------------------------------------------------------------------------------
// filename: Johnson4BitDown.v
//
//Description:This program works as a Johnson down counter. This program has been specified
//			as a Behavioural model which has the loosest requirements for coding style
//			The johnson down counter follows the patter shown below
//				1111>0111>0011>0001>0000>1000>1100>1110>1111 > repeat
//
//Author: Nate Cloud-Rouzan
// -------------------------------------------------------------------------------------

//Behavioural model
module Johnson4BitDown (clk, rst, Count);
    //input ports and their sizes
    input clk,rst;
	
    //output ports and their size
    output [3 : 0] Count;
    //Internal variables
    reg [3 : 0] Count = 4'b0000;  
    
     always @(posedge(clk))
     //Will reset synchronously with the clock back to all on
	 begin
        if(!rst) 
            Count <= 4'b0000;
     //Connects DFF in a shift register
	 //all DFF pass on same value except Count[3] as Johnson requires
		else  begin  
/* 			Count[0] <= ~Count[3];
			Count[1] <= Count[0];
			Count[2] <= Count[1];
			Count[3] <= Count[2]; */
			
			Count[0] <= ~Count[3];
			Count[1] <= Count[0];
			Count[2] <= Count[1];
			Count[3] <= 1'b0;			
			
			end
     end    
    
endmodule