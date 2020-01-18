`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:20:55 09/23/2019 
// Design Name: 
// Module Name:    Data_path_more 
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
module Data_path_more(
	input [1:0] PCSource,
	input clk,
	input rst,
	input ALUSrc_A,
	input [3:0] ALU_Control,
	input ALUSrc_B,
	input RegWrite,
	input Jal,
	input RegDst,
	input [25:0] inst_field,
	input [1:0] DatatoReg,
	input [31:0] Data_in,
	input ext,
	input Branch,
	
	output [31:0] PC_out,
	output zero,
	output [31:0] ALU_out,
	output overflow,
	output [31:0] Data_out
    );
	 
	 wire V5,N0;
	 wire [4:0] Wt_addr_branch1_out1,Wt_addr_branch1_out2;
	 wire [31:0] PC_4,branch_pc,branch_pc_result,next_PC;
	 wire [31:0] rdata_A,rdata_B,Wt_data;
	 wire [31:0] A,B;
	 wire [31:0] Imm_32,Imm5_32;
	 
	 assign V5=1'b1,N0=1'b0;
	 assign Data_out=rdata_B;
	 
	 
	 REG32 U1(
		.clk(clk),
		.rst(rst),
		.CE(V5),
		.D(next_PC),
		.Q(PC_out)
	 );
	 
	 add_32 add1(
		.a(PC_out),
		.b(32'h00000004),
		.c(PC_4)
	 );
	 
	 add_32 add2(
		.a(PC_4),
		.b({Imm_32[29:0],N0,N0}),
		.c(branch_pc)
	 );
	 
	 MUX4T1_32 Branch_pc_MUX(
		.s({zero,Branch}),
		.I0(branch_pc),
		.I1(PC_4),
		.I2(PC_4),
		.I3(branch_pc),
		.o(branch_pc_result)
	 );
	 
	 MUX4T1_32 Branch3(
		.s(PCSource),
		.I0(PC_4),
		.I1(branch_pc_result),
		.I2({PC_4[31:28],inst_field[25:0],N0,N0}),
		.I3(rdata_A),
		.o(next_PC)
	 );

	 MUX2T1_5 Wt_addr_branch1(
		.s(Jal),
		.I0(inst_field[20:16]),
		.I1({V5,V5,V5,V5,V5}),
		.o(Wt_addr_branch1_out1)
	 );
	 
	 MUX2T1_5 Wt_addr_branch2(
		.s(RegDst),
		.I0(Wt_addr_branch1_out1),
		.I1(inst_field[15:11]),
		.o(Wt_addr_branch1_out2)
	 );

	 MUX4T1_32 Wt_data_branch(
		.s(DatatoReg),
		.I0(ALU_out),
		.I1(Data_in),
		.I2({inst_field[15:0],16'b0}),
		.I3(PC_4),
		.o(Wt_data)
	 );
	 
	 Ext_32 ext_32(
		.ext(ext),
		.imm_16(inst_field[15:0]),
		.Imm_32(Imm_32)
	 );
	 
	 Ext5_32 ext5_32(
		.imm_5(inst_field[10:6]),
		.Imm_32(Imm5_32)
	 );
	 
	 Regs regs(
		.clk(clk),
		.rst(rst),
		.R_addr_A(inst_field[25:21]),
		.R_addr_B(inst_field[20:16]),
		.Wt_addr(Wt_addr_branch1_out2),
		.Wt_data(Wt_data),
		.L_S(RegWrite),
		.rdata_A(rdata_A),
		.rdata_B(rdata_B)
	 );
	 
	 MUX2T1_32 branch_A(
		.s(ALUSrc_A),
		.I0(rdata_A),
		.I1(Imm5_32),
		.o(A)
	 );
	 
	 MUX2T1_32 branch_B(
		.s(ALUSrc_B),
		.I0(rdata_B),
		.I1(Imm_32),
		.o(B)
	 );

	alu myalu(
		.A(A),
		.B(B),
		.ALU_operation(ALU_Control),
		.zero(zero),
		.res(ALU_out),
		.overflow(overflow)
	);
	
endmodule
