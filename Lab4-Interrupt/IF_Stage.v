`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:59:38 10/21/2019 
// Design Name: 
// Module Name:    IF_Stage 
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
module IF_Stage(
	input clk,
	input [31:0] pc,
	input branch,
	input cp0_jump_en,
	input [31:0] cp0_jump_addr,
	input [31:0] pc_branch_or_jump,
	
	output [31:0] pc_4,
	output [31:0] inst_in,
	output [31:0] pc_next
    );
	
	
	InstructionMemory InstructionMemory(
		.clk(~clk),
		.a(pc[11:2]),
		.spo(inst_in[31:0])
	);
	
	assign pc_4 = pc + 4;
	assign pc_next = cp0_jump_en ? cp0_jump_addr : 
						  branch ? pc_branch_or_jump : pc_4;
	
	
	
endmodule
