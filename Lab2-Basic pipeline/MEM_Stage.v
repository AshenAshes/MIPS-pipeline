`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:04:17 10/21/2019 
// Design Name: 
// Module Name:    MEM_Stage 
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
module MEM_Stage(
	input clk,
	input reset,
	input mem_w,
	
	input [31:0] ALU_result,
	input [31:0] rtdata,
	
	output [31:0] mem_data_out
    );
	
	DataMemory DataMemory(
		.clka(~clk),
		.wea(mem_w),
		.addra(ALU_result[11:2]),
		.dina(rtdata),
		.douta(mem_data_out)
	);


endmodule
