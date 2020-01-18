`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:03:44 10/21/2019 
// Design Name: 
// Module Name:    EXE_Stage 
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
module EXE_Stage(
	input clk,
	input reset,
	
	input [31:0] shamt_32,
	input [31:0] rsdata,
	input [31:0] rtdata,
	input [31:0] imm_32,
	
	input ALUSrc_A,
	input ALUSrc_B,
	input [3:0] ALU_Control,
	
	output [31:0] ALU_result,
	//debug output
	output [31:0] ALU_input_A,
	output [31:0] ALU_input_B
    );
	
	MUX2T1_32 ALUSrc_A_MUX(
		.s(ALUSrc_A),
		.I0(rsdata),
		.I1(shamt_32),
		.o(ALU_input_A)
	);
	
	MUX2T1_32 ALUSrc_B_MUX(
		.s(ALUSrc_B),
		.I0(rtdata),
		.I1(imm_32),
		.o(ALU_input_B)
	);
	
	ALU ALU(
		.ALU_operation(ALU_Control),
		.A(ALU_input_A),
		.B(ALU_input_B),
		.res(ALU_result)
	);


endmodule
