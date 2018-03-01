// -------------------------------------------------------------------------------------
// filename: memory16x6.v
//
//Description:This program takes a 4 bit adress as well as 6 bits of data and stores it into
// 				memory. To write to the memory block 'we' or (Write enable) must be set at high
//
//
//Author: Nate Cloud-Rouzan
// -------------------------------------------------------------------------------------

module memory16x6 (data_out, data_in, addr, we, clk);
output reg  [5:0]  data_out; //reads what the current value is at address
input  wire [5:0]  data_in;	
input  wire  [3:0]  addr;
input  wire         we, clk;
reg         [5:0]  mem       [15:0];
	always @(posedge clk) begin
		data_out <= mem[addr];
		if (we) mem[addr] <= data_in;
	end
endmodule 