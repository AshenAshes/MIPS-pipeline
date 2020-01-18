`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:48:04 05/06/2019 
// Design Name: 
// Module Name:    pc_reg 
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
module pc_reg(input clk,
					input rst,
					input wt,
					input [31:0] pc_in,
					output [31:0] pc_out
    );
		reg [31:0] register;
		assign pc_out = register;
		always@(posedge clk or posedge rst) begin
			if(rst == 1) register <= 0; //reset
			else begin
				if(wt == 1) register <= pc_in;
				else register <= register; //write
			end
		end
endmodule
