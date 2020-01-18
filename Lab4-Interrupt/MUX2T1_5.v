`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:05:46 04/09/2019 
// Design Name: 
// Module Name:    MUX2T1_5 
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
module MUX2T1_5(
input s,
input [4:0]I0,
input [4:0]I1,
output reg[4:0]o
    );

always @*
case(s)
1'b0:o=I0;
1'b1:o=I1;
endcase
endmodule
