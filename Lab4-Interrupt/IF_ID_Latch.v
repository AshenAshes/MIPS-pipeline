`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:02:46 10/21/2019 
// Design Name: 
// Module Name:    IF_ID_Latch 
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
module IF_ID_Latch(
	input clk,
	input reset,
	input cpu_en,
	input IF_ID_bubble,
	input IF_ID_stall,
	
	input [31:0] IF_pc_4,
	input [31:0] IF_inst_in,
	
	output reg [31:0] ID_pc_4 = 0,
	output reg [31:0] ID_inst_in = 0
    );
	always@(posedge clk) begin
		if(reset == 1'b1) begin
			ID_pc_4 <= 0;
			ID_inst_in <= 0;
		end
		else if(cpu_en == 1'b1) begin
			if(IF_ID_stall == 1'b1) begin
				ID_pc_4 <= ID_pc_4;
				ID_inst_in <= ID_inst_in;
			end
			else if(IF_ID_bubble == 1'b1) begin
				ID_pc_4 <= 0;
				ID_inst_in <= 0;		
			end
			else begin
				ID_pc_4 <= IF_pc_4;
				ID_inst_in <= IF_inst_in;
			end
		end
	end
endmodule










