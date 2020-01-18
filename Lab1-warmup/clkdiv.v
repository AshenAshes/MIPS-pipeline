`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:46:23 09/09/2019 
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
module clkdiv(
	input clk200P,
	input clk200N,
	input rst,
	output reg[31:0] clkdiv,
	output clk100mhz
    );
	
	IBUFDS sclk(.I(clk200P),
					//clk:differential clock to signal ended clock
					.IB(clk200N),
					.O(clk200m)
				);
	
	always @(posedge clk200m or posedge rst) begin
		if(rst)
			clkdiv <= 0;
		else
			clkdiv <= clkdiv + 1'b1;
	end
	
	assign clk100mhz=clkdiv[0];
	
endmodule









































