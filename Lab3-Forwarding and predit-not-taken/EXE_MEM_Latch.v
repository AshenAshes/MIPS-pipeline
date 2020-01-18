`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:03:58 10/21/2019 
// Design Name: 
// Module Name:    EXE_MEM_Latch 
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
module EXE_MEM_Latch(
	input clk,
	input reset,
	input cpu_en,
	
	input EXE_RegWrite,
	input EXE_mem_w,
	input EXE_DatatoReg,
	input [31:0] EXE_pc_4,
	
	input [31:0] EXE_ALU_result,
	input [31:0] EXE_rtdata,
	input [4:0] EXE_register_write_address,
	
	output reg MEM_RegWrite,
	output reg MEM_mem_w,
	output reg MEM_DatatoReg,
	output reg [31:0] MEM_pc_4,
	
	output reg [31:0] MEM_ALU_result,
	output reg [31:0] MEM_rtdata,
	output reg [4:0] MEM_register_write_address
	);

	always@(posedge clk) begin
		if(reset == 1'b1) begin
			MEM_RegWrite <= 0;
			MEM_mem_w <= 0;
			MEM_DatatoReg <= 0;
			MEM_ALU_result <= 0;
			MEM_pc_4 <= 0;
			MEM_rtdata <= 0;
			MEM_register_write_address <= 0;
		end
		else if(cpu_en == 1'b1) begin
			MEM_RegWrite <= EXE_RegWrite;
			MEM_mem_w <= EXE_mem_w;
			MEM_DatatoReg <= EXE_DatatoReg;
			MEM_ALU_result <= EXE_ALU_result;
			MEM_pc_4 <= EXE_pc_4;
			MEM_rtdata <= EXE_rtdata;
			MEM_register_write_address <= EXE_register_write_address;
		end
	end

endmodule
