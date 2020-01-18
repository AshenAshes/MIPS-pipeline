`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:53:27 12/10/2019 
// Design Name: 
// Module Name:    antijitters 
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
module antijitters(
	input wire clk, 
	input wire [15:0] SW,
	input wire [4:0] BTN,
	input wire RSTN,
	output wire [15:0] SW_OK,
	output wire [4:0] BTN_OK,
	output wire rst
);

	antijitter #(.WIDTH(4), .INIT(1'b0)) SWFilter[15:0] (.clk(clk), .I(SW), .O(SW_OK));
	antijitter #(.WIDTH(4), .INIT(1'b0)) BTNFilter[4:0] (.clk(clk), .I(BTN), .O(BTN_OK));
	antijitter #(.WIDTH(4), .INIT(1'b1)) RSTNFilter (.clk(clk), .I(~RSTN), .O(rst));

endmodule
 
module antijitter #(
	parameter WIDTH = 20,
	parameter INIT = 1'b0
)(
	input clk, input I, output reg O = INIT
);
	reg [WIDTH-1:0] cnt = {WIDTH{INIT}};

	always @ (posedge clk)
	begin
		if(I)
		begin
			if(&cnt)
				O <= 1'b1;
			else
				cnt <= cnt + 1'b1;
		end
		else
		begin
			if(|cnt)
				cnt <= cnt - 1'b1;
			else
				O <= 1'b0;
		end
	end

endmodule
