`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:24:01 09/23/2019 
// Design Name: 
// Module Name:    SCPU_More 
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
module SCPU_More(
	input clk,
	input reset,
	input [31:0] inst_in,
	input [31:0] Data_in,
	input INT,
	input MIO_ready,
	
	output [31:0] PC_out,
	output mem_w,
	output [31:0] Addr_out,
	output [31:0] Data_out,
	output CPU_MIO
    );
	
	wire zero;
	wire RegDst,ALUSrc_A,ALUSrc_B,Jal,RegWrite,ext,Branch;
	wire [1:0] DatatoReg,PCSource;
	wire [3:0] ALU_Control;
	
	SCPU_ctrl_more U11(
		.OPcode(inst_in[31:26]),
		.Fun(inst_in[5:0]),
		.MIO_ready(MIO_ready),
		.zero(zero),
		
		.RegDst(RegDst),
		.ALUSrc_B(ALUSrc_B),
		.DatatoReg(DatatoReg),
		.Jal(Jal),
		.PCSource(PCSource),
		.RegWrite(RegWrite),
		.ALU_Control(ALU_Control[3:0]),
		.mem_w(mem_w),
		.ext(ext),
		.ALUSrc_A(ALUSrc_A),
		.CPU_MIO(CPU_MIO),
		.Branch(Branch)
	);
	
	Data_path_more U12(
		.PCSource(PCSource),
		.clk(clk),
		.rst(reset),
		.ALUSrc_A(ALUSrc_A),
		.ALU_Control(ALU_Control[3:0]),
		.ALUSrc_B(ALUSrc_B),
		.RegWrite(RegWrite),
		.Jal(Jal),
		.RegDst(RegDst),
		.inst_field(inst_in[25:0]),
		.DatatoReg(DatatoReg),
		.Data_in(Data_in),
		.ext(ext),
		.Branch(Branch),
		
		.PC_out(PC_out),
		.zero(zero),
		.ALU_out(Addr_out),
		.overflow(),
		.Data_out(Data_out)
	);

endmodule

















