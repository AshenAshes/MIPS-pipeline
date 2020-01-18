`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:04:51 10/21/2019 
// Design Name: 
// Module Name:    WB_Stage 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module WB_Stage(
	input clk,
	input reset,
	
	input DatatoReg,
	
	input [31:0] mem_data_out,
	input [31:0] ALU_result,
	
	output [31:0] ID_register_data_in
    );

	MUX2T1_32 DatatoReg_MUX(
		.s(DatatoReg),
		.I0(ALU_result),
		.I1(mem_data_out),
		.o(ID_register_data_in)
	);


endmodule
