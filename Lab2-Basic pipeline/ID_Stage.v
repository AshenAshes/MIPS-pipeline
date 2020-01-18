`include "define.vh"
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:03:01 10/21/2019 
// Design Name: 
// Module Name:    ID_Stage 
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
module ID_Stage(
	`ifdef DEBUG
	input wire debug_en,  // debug enable
	input wire debug_step,  // debug step clock
	input wire [4:0] debug_addr,  // debug address
	output [31:0] debug_data_reg,
	`endif
	input clk,
	input reset,
	input [31:0] IF_pc_4,
	input [31:0] inst_in,
	input [4:0] Wt_addr,
	input [31:0] Wt_data,
	input WB_RegWrite,
	
	input [4:0] EXE_register_write_address,
	input EXE_RegWrite,
	input [4:0] MEM_register_write_address,
	input MEM_RegWrite,
	
	output branch,
	output ALUSrc_A,
	output ALUSrc_B,
	output RegWrite,
	output mem_w,
	output [1:0] DatatoReg,
	output [3:0] ALU_Control,
	
	output [31:0] shamt_32,
	output [31:0] imm_32,
	output [31:0] pc_branch_or_jump,
	output [31:0] rsdata,
	output [31:0] rtdata,
	output [31:0] lui_32,
	output [4:0] register_write_address,
	
	output data_hazard_stall,
	output control_hazard_stall,
	
	// debug control
	output cpu_rst,  // cpu reset signal
	output cpu_en    // cpu enable signal
    );

	 wire [4:0] rs,rt,rd,shamt;
	 wire [5:0] OPcode,funct;
	 wire [15:0] imm_16;
	 wire [25:0] address;
	 wire V5,N0;
	 
	 //1 and 0
	 assign V5=1'b1;
	 assign N0=1'b0;
	 
	 //R-type
	 assign OPcode=inst_in[31:26];
	 assign rs=inst_in[25:21];
	 assign rt=inst_in[20:16];
	 assign rd=inst_in[15:11];
	 assign shamt=inst_in[10:6];
	 assign funct=inst_in[5:0];
	 //I-type
	 assign imm_16=inst_in[15:0];
	 //j
	 assign address=inst_in[25:0];
	 //other
	 assign lui_32 = {imm_16,16'b0};
	 
	 //rsdata and rtdata
	 assign rsdata=rdata_A;
	 assign rtdata=rdata_B;
	 
	 //ctrl signals(others are in the output ports)
	 wire zero,RegDst,Jal,ext;
	 wire [1:0] PCSource;
	 
	 Ctrl_Unit Ctrl_Unit(
		`ifdef DEBUG
		.debug_en(debug_en),
		.debug_step(debug_step),
		`endif
		.clk(clk),
		.rst(reset),
		.OPcode(OPcode),
		.Fun(funct),
		.zero(zero),
		.rs(rs),
		.rt(rt),
		.EXE_register_write_address(EXE_register_write_address),
		.EXE_RegWrite(EXE_RegWrite),
		.MEM_register_write_address(MEM_register_write_address),
		.MEM_RegWrite(MEM_RegWrite),
		
		.RegDst(RegDst),
		.ALUSrc_A(ALUSrc_A),
		.ALUSrc_B(ALUSrc_B),
		.Jal(Jal),
		.RegWrite(RegWrite),
		.mem_w(mem_w),
		.ext(ext),
		.branch(branch),
		.DatatoReg(DatatoReg),
		.PCSource(PCSource),
		.ALU_Control(ALU_Control),
		
		.data_hazard_stall(data_hazard_stall),
		.control_hazard_stall(control_hazard_stall),
		
		//debug control
		.cpu_rst(cpu_rst),
		.cpu_en(cpu_en)
	 );
	 
	 wire [31:0] rdata_A,rdata_B;
	 wire [31:0] branch_pc;
	 add_32 branch_pc_add(
		.a(IF_pc_4),
		.b({imm_32[29:0],N0,N0}),
		.c(branch_pc)
	 );
	 
	 MUX4T1_32 pc_mux(
		.s(PCSource),
		.I0(IF_pc_4),
		.I1(branch_pc),
		.I2({IF_pc_4[31:28],inst_in[25:0],N0,N0}),
		.I3(rdata_A),
		.o(pc_branch_or_jump)
	 );
	 
	 Regs Regs(
		`ifdef DEBUG
		.debug_addr(debug_addr[4:0]),
		.debug_data(debug_data_reg),
		`endif
		.clk(clk),
		.rst(reset),
		.L_S(WB_RegWrite),
		.R_addr_A(rs),
		.R_addr_B(rt),
		.Wt_addr(Wt_addr),
		.Wt_data(Wt_data),
		.rdata_A(rdata_A),
		.rdata_B(rdata_B)
	 );
	 
	 assign zero = (rdata_A == rdata_B); //whether rs==rt
	 
	 Sign_Extended Sign_Extented(
		.ext(ext),
		.imm_16(imm_16),
		.imm_32(imm_32)
	 );
	 
	 Extend5_32 shamt5_32(
		.imm_5(shamt),
		.imm_32(shamt_32)
	 );
	 
	 wire [4:0] register_write_rt_or_rd;
	 MUX2T1_5 write_rs_or_rt(
		.s(RegDst),
		.I0(rt),	
		.I1(rd),	
		.o(register_write_rt_or_rd)
	 );
	 
	 MUX2T1_5 write_register_or_ra_MUX(
		.s(Jal),
		.I0(register_write_rt_or_rd),
		.I1({V5,V5,V5,V5,V5}),
		.o(register_write_address)
	 );
	 
	 
endmodule
