`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:03:23 10/21/2019 
// Design Name: 
// Module Name:    ID_EXE_Latch 
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
module ID_EXE_Latch(
	input clk,
	input reset,
	input cpu_en,
	input ID_EXE_bubble,
	
	input ID_ALUSrc_A,
	input ID_ALUSrc_B,
	input ID_RegWrite,
	input ID_mem_w,
	input [1:0] ID_DatatoReg,
	input [3:0] ID_ALU_Control,
	
	input [31:0] ID_shamt_32,
	input [31:0] ID_rsdata,
	input [31:0] ID_rtdata,
	input [31:0] ID_imm_32,
	input [31:0] ID_pc_4,
	input [31:0] ID_lui_32,
	input [4:0] ID_register_write_address,
	
	output reg EXE_ALUSrc_A,
	output reg EXE_ALUSrc_B,
	output reg EXE_RegWrite,
	output reg EXE_mem_w,
	output reg [1:0] EXE_DatatoReg,
	output reg [3:0] EXE_ALU_Control,
	
	output reg [31:0] EXE_shamt_32,
	output reg [31:0] EXE_rsdata,
	output reg [31:0] EXE_rtdata,
	output reg [31:0] EXE_imm_32,
	output reg [31:0] EXE_pc_4,
	output reg [31:0] EXE_lui_32,
	output reg [4:0] EXE_register_write_address 
    );

	always@(posedge clk) begin
		if(reset == 1'b1) begin
			EXE_ALUSrc_A <= 0;
			EXE_ALUSrc_B <= 0;
			EXE_RegWrite <= 0;
			EXE_mem_w <= 0;
			EXE_DatatoReg <= 0;
			EXE_ALU_Control <= 0;			
			EXE_shamt_32 <= 0;
			EXE_rsdata <= 0;
			EXE_rtdata <= 0;
			EXE_imm_32 <= 0;
			EXE_pc_4 <= 0;
			EXE_lui_32 <= 0;
			EXE_register_write_address <= 0;
		end
		else if(cpu_en ==1'b1) begin
			if(ID_EXE_bubble == 1'b1) begin
				EXE_ALUSrc_A <= 0;
				EXE_ALUSrc_B <= 0;
				EXE_RegWrite <= 0;
				EXE_mem_w <= 0;
				EXE_DatatoReg <= 0;
				EXE_ALU_Control <= 0;			
				EXE_shamt_32 <= 0;
				EXE_rsdata <= 0;
				EXE_rtdata <= 0;
				EXE_imm_32 <= 0;
				EXE_pc_4 <= 0;
				EXE_lui_32 <= 0;
				EXE_register_write_address <= 0;
			end
			else begin
				EXE_ALUSrc_A <= ID_ALUSrc_A;
				EXE_ALUSrc_B <= ID_ALUSrc_B;
				EXE_RegWrite <= ID_RegWrite;
				EXE_mem_w <= ID_mem_w;
				EXE_DatatoReg <= ID_DatatoReg;
				EXE_ALU_Control <= ID_ALU_Control;
				EXE_shamt_32 <= ID_shamt_32;
				EXE_rsdata <= ID_rsdata;
				EXE_rtdata <= ID_rtdata;
				EXE_imm_32 <= ID_imm_32;
				EXE_pc_4 <= ID_pc_4;
				EXE_lui_32 <= ID_lui_32;
				EXE_register_write_address <= ID_register_write_address;
			end			
		end
	end

/*
	always@(posedge clk) begin
		if(reset == 1'b1 || ID_EXE_bubble == 1'b1) begin
			EXE_ALUSrc_A <= 0;
			EXE_ALUSrc_B <= 0;
			EXE_RegWrite <= 0;
			EXE_mem_w <= 0;
			EXE_DatatoReg <= 0;
			EXE_ALU_Control <= 0;			
			EXE_shamt_32 <= 0;
			EXE_rsdata <= 0;
			EXE_rtdata <= 0;
			EXE_imm_32 <= 0;
			EXE_pc_4 <= 0;
			EXE_lui_32 <= 0;
			EXE_register_write_address <= 0;
		end
		else begin
			EXE_ALUSrc_A <= ID_ALUSrc_A;
			EXE_ALUSrc_B <= ID_ALUSrc_B;
			EXE_RegWrite <= ID_RegWrite;
			EXE_mem_w <= ID_mem_w;
			EXE_DatatoReg <= ID_DatatoReg;
			EXE_ALU_Control <= ID_ALU_Control;
			EXE_shamt_32 <= ID_shamt_32;
			EXE_rsdata <= ID_rsdata;
			EXE_rtdata <= ID_rtdata;
			EXE_imm_32 <= ID_imm_32;
			EXE_pc_4 <= ID_pc_4;
			EXE_lui_32 <= ID_lui_32;
			EXE_register_write_address <= ID_register_write_address;
		end			
	end
*/
endmodule
