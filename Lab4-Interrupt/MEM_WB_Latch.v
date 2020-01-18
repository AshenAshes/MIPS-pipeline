`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:04:32 10/21/2019 
// Design Name: 
// Module Name:    MEM_WB_Latch 
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
module MEM_WB_Latch(
	input clk,
	input reset,
	input cpu_en,
	input MEM_WB_bubble,
	
	input MEM_RegWrite,
	input [1:0] MEM_DatatoReg,
	input [31:0] MEM_pc_4,
	
	input [31:0] MEM_mem_data_out,
	input [31:0] MEM_ALU_result,
	input [4:0] MEM_register_write_address,
	
	input MEM_undefined,
	input MEM_outOfRange,
	input MEM_overflow,
	input [31:0] MEM_cp0_read_data,
	
	output reg WB_RegWrite,
	output reg [1:0] WB_DatatoReg,
	output reg [31:0] WB_pc_4,
	
	output reg [31:0] WB_mem_data_out,
	output reg [31:0] WB_ALU_result,
	output reg [4:0] WB_register_write_address,
	
	output reg [31:0] WB_cp0_read_data
    );
	 
	always@(posedge clk) begin
		if(reset == 1'b1) begin
			WB_RegWrite <= 0;
			WB_DatatoReg <= 0;
			WB_pc_4 <= 0;
			WB_mem_data_out <= 0;
			WB_ALU_result <= 0;
			WB_register_write_address <= 0;
			WB_cp0_read_data <= 0;
		end
		else if(cpu_en == 1'b1) begin
			if(MEM_WB_bubble == 1'b1 || MEM_undefined || MEM_outOfRange || MEM_overflow) begin
				WB_RegWrite <= 0;
				WB_DatatoReg <= 0;
				WB_pc_4 <= 0;
				WB_mem_data_out <= 0;
				WB_ALU_result <= 0;
				WB_register_write_address <= 0;
				WB_cp0_read_data <= 0;
			end
			else begin
				WB_RegWrite <= MEM_RegWrite;
				WB_DatatoReg <= MEM_DatatoReg;
				WB_pc_4 <= MEM_pc_4;
				WB_mem_data_out <= MEM_mem_data_out;
				WB_ALU_result <= MEM_ALU_result;
				WB_register_write_address <= MEM_register_write_address;
				WB_cp0_read_data <= MEM_cp0_read_data;
			end
		end
	end

endmodule









