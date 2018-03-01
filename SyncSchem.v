// Copyright (C) 2017  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 17.1.0 Build 590 10/25/2017 SJ Standard Edition"
// CREATED		"Wed Jan 17 11:33:39 2018"

module SyncSchem(
	rst,
	clk,
	out0,
	out1,
	out2,
	out3
);


input wire	rst;
input wire	clk;
output wire	out0;
output wire	out1;
output wire	out2;
output wire	out3;

reg	SYNTHESIZED_WIRE_16;
reg	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
reg	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
reg	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;




assign	SYNTHESIZED_WIRE_9 = SYNTHESIZED_WIRE_16 & SYNTHESIZED_WIRE_17 & SYNTHESIZED_WIRE_0;

assign	SYNTHESIZED_WIRE_7 = SYNTHESIZED_WIRE_1 & SYNTHESIZED_WIRE_18;

assign	SYNTHESIZED_WIRE_8 = SYNTHESIZED_WIRE_2 & SYNTHESIZED_WIRE_18;

assign	SYNTHESIZED_WIRE_10 = SYNTHESIZED_WIRE_3 & SYNTHESIZED_WIRE_19;

assign	SYNTHESIZED_WIRE_1 =  ~SYNTHESIZED_WIRE_16;

assign	out0 =  ~SYNTHESIZED_WIRE_19;

assign	out1 =  ~SYNTHESIZED_WIRE_18;

assign	out2 =  ~SYNTHESIZED_WIRE_17;

assign	SYNTHESIZED_WIRE_12 =  ~SYNTHESIZED_WIRE_16;

assign	out3 =  ~SYNTHESIZED_WIRE_16;

assign	SYNTHESIZED_WIRE_11 = SYNTHESIZED_WIRE_20 & SYNTHESIZED_WIRE_5;

assign	SYNTHESIZED_WIRE_5 =  ~SYNTHESIZED_WIRE_19;

assign	SYNTHESIZED_WIRE_0 =  ~SYNTHESIZED_WIRE_18;

assign	SYNTHESIZED_WIRE_2 =  ~SYNTHESIZED_WIRE_17;

assign	SYNTHESIZED_WIRE_20 = SYNTHESIZED_WIRE_16 & SYNTHESIZED_WIRE_17 & SYNTHESIZED_WIRE_18;

assign	SYNTHESIZED_WIRE_3 =  ~SYNTHESIZED_WIRE_20;

assign	SYNTHESIZED_WIRE_14 = SYNTHESIZED_WIRE_7 | SYNTHESIZED_WIRE_8 | SYNTHESIZED_WIRE_9;

assign	SYNTHESIZED_WIRE_15 = SYNTHESIZED_WIRE_10 | SYNTHESIZED_WIRE_11;


always@(posedge clk or negedge rst)
begin
if (!rst)
	begin
	SYNTHESIZED_WIRE_16 <= 1;
	end
else
	begin
	SYNTHESIZED_WIRE_16 <= SYNTHESIZED_WIRE_12;
	end
end


always@(posedge clk or negedge rst)
begin
if (!rst)
	begin
	SYNTHESIZED_WIRE_17 <= 1;
	end
else
	begin
	SYNTHESIZED_WIRE_17 <= SYNTHESIZED_WIRE_13;
	end
end


always@(posedge clk or negedge rst)
begin
if (!rst)
	begin
	SYNTHESIZED_WIRE_18 <= 1;
	end
else
	begin
	SYNTHESIZED_WIRE_18 <= SYNTHESIZED_WIRE_14;
	end
end


always@(posedge clk or negedge rst)
begin
if (!rst)
	begin
	SYNTHESIZED_WIRE_19 <= 1;
	end
else
	begin
	SYNTHESIZED_WIRE_19 <= SYNTHESIZED_WIRE_15;
	end
end

assign	SYNTHESIZED_WIRE_13 = SYNTHESIZED_WIRE_16 ^ SYNTHESIZED_WIRE_17;


endmodule
