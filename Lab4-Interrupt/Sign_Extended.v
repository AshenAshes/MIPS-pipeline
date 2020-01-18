`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:12:47 10/22/2019 
// Design Name: 
// Module Name:    Sign_Extended 
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
module Sign_Extended(
	input ext,
	input [15:0] imm_16,
	output reg [31:0] imm_32
    );
	 
	always@* begin
		if(ext==1'b1)
			imm_32={{16{imm_16[15]}},imm_16[15:0]};
		else
			imm_32 ={{16{1'b0}},imm_16[15:0]};
	end

endmodule
