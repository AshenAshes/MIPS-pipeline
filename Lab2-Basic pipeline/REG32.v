`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:04:18 04/02/2019 
// Design Name: 
// Module Name:    REG32 
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
module REG32(
input clk,
input rst,
input [31:0]D,
input CE,
output reg [31:0]Q
    );
always @(posedge clk or posedge rst)begin
	if(rst==1)
		Q<=0;
	else if(CE)
		Q<=D;
end

endmodule
