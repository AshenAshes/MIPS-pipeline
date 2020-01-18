`include "define.vh"
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:53:23 03/21/2019 
// Design Name: 
// Module Name:    regs 
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
module Regs(
	`ifdef DEBUG
	input wire [4:0] debug_addr,  // debug address
	output wire [31:0] debug_data,  // debug data
	`endif
	input clk,rst,L_S,
	input [4:0] R_addr_A,R_addr_B,Wt_addr,
	input [31:0] Wt_data,
	output [31:0] rdata_A,rdata_B
	);
	integer i;
	integer j;
	reg [31:0] register[0:31]; 
	
	assign rdata_A = (R_addr_A == 0) ? 32'b0 : register[R_addr_A];
	assign rdata_B = (R_addr_B == 0) ? 32'b0 : register[R_addr_B];	

	initial begin
		for (j = 0; j < 32; j = j + 1) begin
			register[j] = 0;
		end
	end		

	always @(negedge clk or posedge rst) begin   
		if (rst == 1'b1)  
			for (i=0; i<32; i=i+1) begin
				register[i] <= 0;
			end
		else if((Wt_addr != 0) && (L_S == 1'b1)) 
			register[Wt_addr] <= Wt_data;
	end
	
// debug
	`ifdef DEBUG
	assign debug_data = (debug_addr == 0) ? 0 : register[debug_addr];
//	always @(*) begin
//		debug_data = debug_addr == 0 ? 0 : regfile[debug_addr];
//	end
	`endif
	
endmodule
