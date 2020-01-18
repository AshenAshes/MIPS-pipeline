`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:34:38 09/23/2019 
// Design Name: 
// Module Name:    Ext5_32 
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
module Ext5_32(input [4:0] imm_5,
					output reg[31:0] Imm_32
    );
	 
	 always@* begin
		 Imm_32 = {{27{imm_5[4]}},imm_5[4:0]};
	 end


endmodule
