`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:00:45 09/16/2019 
// Design Name: 
// Module Name:    clkdiv 
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
module clkdiv(input clk200P,clk200N,
					input rst,
					output reg[31:0]clkdiv,
					output clk100MHz
    );
	 IBUFDS sclk(.I(clk200P),.IB(clk200N),.O(clk200m));
	 
	 assign clk100MHz = clkdiv[0];
	 
	 always @ (posedge clk200m or posedge rst)begin
		if(rst) clkdiv <= 0;
		else clkdiv <= clkdiv + 1'b1;
	 end
	 
endmodule
