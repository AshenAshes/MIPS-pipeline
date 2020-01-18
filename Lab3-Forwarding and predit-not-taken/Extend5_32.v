`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:09:35 10/23/2019 
// Design Name: 
// Module Name:    Extend5_32 
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
module Extend5_32(
	input [4:0] imm_5,
	output reg [31:0] imm_32
    );
	 
	 always@* begin
		imm_32 = {{27{1'b0}},imm_5[4:0]};
	 end

endmodule
