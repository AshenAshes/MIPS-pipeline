`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:59:22 10/22/2019 
// Design Name: 
// Module Name:    PC_Latch 
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
module PC_Latch(
	input clk,
	input reset,
	input cpu_en,
	input PC_stall,
	input [31:0] IF_pc_next,
	
	output reg [31:0] IF_pc = 0
    );
	
	always@(posedge clk) begin
		if(reset == 1'b1)
			IF_pc <= 0;
		else if(cpu_en == 1'b1) begin
			if(PC_stall == 1'b1)
				IF_pc <= IF_pc;
			else
				IF_pc <= IF_pc_next;
		end
	end
	
endmodule
