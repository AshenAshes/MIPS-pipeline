`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:09:32 03/10/2019 
// Design Name: 
// Module Name:    HexTo8SEG 
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
module HexTo8SEG(input flash,
						input [31:0] Hexs,
						input [7:0] points,
						input [7:0] LES,
						output [63:0] SEG_TXT
						);
		wire AND_0, AND_1, AND_2, AND_3, AND_4, AND_5, AND_6, AND_7;
		AND2 a0(.I0(flash),.I1(LES[0]),.O(AND_0));
		AND2 a1(.I0(flash),.I1(LES[1]),.O(AND_1));
		AND2 a2(.I0(flash),.I1(LES[2]),.O(AND_2));
		AND2 a3(.I0(flash),.I1(LES[3]),.O(AND_3));
		AND2 a4(.I0(flash),.I1(LES[4]),.O(AND_4));
		AND2 a5(.I0(flash),.I1(LES[5]),.O(AND_5));
		AND2 a6(.I0(flash),.I1(LES[6]),.O(AND_6));
		AND2 a7(.I0(flash),.I1(LES[7]),.O(AND_7));
		
		MC14495_ZJU m0(.D0(Hexs[0]),.D1(Hexs[1]),.D2(Hexs[2]),.D3(Hexs[3]),.LE(AND_0),.point(points[0]),
							.a(SEG_TXT[63]),.b(SEG_TXT[62]),.c(SEG_TXT[61]),.d(SEG_TXT[60]),.e(SEG_TXT[59]),
							.f(SEG_TXT[58]),.g(SEG_TXT[57]),.p(SEG_TXT[56]));
							
		MC14495_ZJU m1(.D0(Hexs[4]),.D1(Hexs[5]),.D2(Hexs[6]),.D3(Hexs[7]),.LE(AND_1),.point(points[1]),
							.a(SEG_TXT[55]),.b(SEG_TXT[54]),.c(SEG_TXT[53]),.d(SEG_TXT[52]),.e(SEG_TXT[51]),
							.f(SEG_TXT[50]),.g(SEG_TXT[49]),.p(SEG_TXT[48]));
							
		MC14495_ZJU m2(.D0(Hexs[8]),.D1(Hexs[9]),.D2(Hexs[10]),.D3(Hexs[11]),.LE(AND_2),.point(points[2]),
					   	.a(SEG_TXT[47]),.b(SEG_TXT[46]),.c(SEG_TXT[45]),.d(SEG_TXT[44]),.e(SEG_TXT[43]),
							.f(SEG_TXT[42]),.g(SEG_TXT[41]),.p(SEG_TXT[40]));
							
		MC14495_ZJU m3(.D0(Hexs[12]),.D1(Hexs[13]),.D2(Hexs[14]),.D3(Hexs[15]),.LE(AND_3),.point(points[3]),
							.a(SEG_TXT[39]),.b(SEG_TXT[38]),.c(SEG_TXT[37]),.d(SEG_TXT[36]),.e(SEG_TXT[35]),
							.f(SEG_TXT[34]),.g(SEG_TXT[33]),.p(SEG_TXT[32]));
							
		MC14495_ZJU m4(.D0(Hexs[16]),.D1(Hexs[17]),.D2(Hexs[18]),.D3(Hexs[19]),.LE(AND_4),.point(points[4]),
							.a(SEG_TXT[31]),.b(SEG_TXT[30]),.c(SEG_TXT[29]),.d(SEG_TXT[28]),.e(SEG_TXT[27]),
							.f(SEG_TXT[26]),.g(SEG_TXT[25]),.p(SEG_TXT[24]));
							
		MC14495_ZJU m5(.D0(Hexs[20]),.D1(Hexs[21]),.D2(Hexs[22]),.D3(Hexs[23]),.LE(AND_5),.point(points[5]),
							.a(SEG_TXT[23]),.b(SEG_TXT[22]),.c(SEG_TXT[21]),.d(SEG_TXT[20]),.e(SEG_TXT[19]),
							.f(SEG_TXT[18]),.g(SEG_TXT[17]),.p(SEG_TXT[16]));
							
		MC14495_ZJU m6(.D0(Hexs[24]),.D1(Hexs[25]),.D2(Hexs[26]),.D3(Hexs[27]),.LE(AND_6),.point(points[6]),
							.a(SEG_TXT[15]),.b(SEG_TXT[14]),.c(SEG_TXT[13]),.d(SEG_TXT[12]),.e(SEG_TXT[11]),
							.f(SEG_TXT[10]),.g(SEG_TXT[9]),.p(SEG_TXT[8]));
							
		MC14495_ZJU m7(.D0(Hexs[28]),.D1(Hexs[29]),.D2(Hexs[30]),.D3(Hexs[31]),.LE(AND_7),.point(points[7]),
							.a(SEG_TXT[7]),.b(SEG_TXT[6]),.c(SEG_TXT[5]),.d(SEG_TXT[4]),.e(SEG_TXT[3]),
							.f(SEG_TXT[2]),.g(SEG_TXT[1]),.p(SEG_TXT[0]));


endmodule
