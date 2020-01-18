`include "define.vh"
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:52:12 10/23/2019 
// Design Name: 
// Module Name:    Ctrl_Unit 
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
module Ctrl_Unit(
	`ifdef DEBUG
	input wire debug_en,  // debug enable
	input wire debug_step,  // debug step clock
	`endif
	input clk,
	input rst,
	input [5:0] OPcode,
	input [5:0] Fun,
	input zero,
	input [4:0] rs,
	input [4:0] rt,
	input [4:0] EXE_register_write_address,
	input EXE_RegWrite,
	input [4:0] MEM_register_write_address,
	input MEM_RegWrite,
	input [1:0] EXE_DatatoReg,
	input [1:0] MEM_DatatoReg,
	
	output reg RegDst,
	output reg ALUSrc_A,
	output reg ALUSrc_B,
	output reg Jal,
	output reg RegWrite,
	output reg mem_w,
	output reg ext,
	output reg branch,
	output reg [1:0] DatatoReg,
	output reg [1:0] PCSource,
	output reg [3:0] ALU_Control,
	output reg Lui,
	
	output reg [1:0] forwardingSrc_A,
	output reg [1:0] forwardingSrc_B,
	output reg data_hazard_stall,
	output reg control_hazard_stall,
	
	//interrupt
	output reg undefined,
	output reg [1:0] cp0_operation,
	output reg cp0_jump_en,
	
	// debug control
	output reg cpu_rst,  // cpu reset signal
	output reg cpu_en  // cpu enable signal
    );
	`include "mips_define.vh"
	
	localparam
		ALU_ADD = 4'b0010,
		ALU_SUB = 4'b0110,
		ALU_AND = 4'b0000,
		ALU_OR  = 4'b0001,
		ALU_XOR = 4'b0011,
		ALU_NOR = 4'b0100,
		ALU_SLT = 4'b0111,
		ALU_SRL = 4'b0101,
		ALU_SLL = 4'b1000;
		
	localparam
		CODE_R_TYPE = 6'b000000,
		CODE_ADDI   = 6'b001000,
		CODE_ANDI   = 6'b001100,
		CODE_ORI    = 6'b001101,
		CODE_XORI   = 6'b001110,
		CODE_SLTI   = 6'b001010,
		CODE_SW     = 6'b101011,
		CODE_LW     = 6'b100011,
		CODE_LUI    = 6'b001111,
		CODE_BEQ    = 6'b000100,
		CODE_BNE    = 6'b000101,
		CODE_J      = 6'b000010,
		CODE_JAL    = 6'b000011,
		CODE_MC0    = 6'b010000;
		
	localparam
		FUN_ADD  = 6'b100000,
		FUN_SUB  = 6'b100010,
		FUN_AND  = 6'b100100,
		FUN_OR   = 6'b100101,
		FUN_XOR  = 6'b100110,
		FUN_NOR  = 6'b100111,
		FUN_SLT  = 6'b101010,
		FUN_SRL  = 6'b000010,
		FUN_SLL  = 6'b000000,
		FUN_JR   = 6'b001000,
		FUN_JARL = 6'b001001,
		FUN_ERET = 6'b011000;
		
	localparam
		MF = 5'b00000,
		MT = 5'b00100;
	
	wire is_R_type = OPcode == CODE_R_TYPE;
	wire is_Sw = OPcode == CODE_SW;
	wire is_J = 
		OPcode == CODE_J   ||
		OPcode == CODE_JAL
	;
	wire is_Jr = is_R_type && (Fun == FUN_JR || Fun == FUN_JARL);
	wire is_J_link = (is_R_type && Fun == FUN_JARL) || OPcode == CODE_JAL;
	wire is_Beq = OPcode == CODE_BEQ;
	wire is_Bne = OPcode == CODE_BNE;
	wire is_Beq_or_Bne = (
		is_Beq ||
		is_Bne
	);
	wire is_Lui = OPcode == CODE_LUI;
	wire is_MFC0_or_MTC0 = (
		OPcode == CODE_MC0
	);
	wire is_MFC0 = (
		is_MFC0_or_MTC0 &&
		rs == MF
	);
	wire is_MTC0 = (
		is_MFC0_or_MTC0 &&
		rs == MT
	);
	wire is_ERET = (
		OPcode == CODE_MC0 &&
		rs == 5'b10000 &&
		Fun == FUN_ERET
	);
	wire register_write_rt = (
		OPcode == CODE_ADDI ||
		OPcode == CODE_ANDI ||
		OPcode == CODE_ORI  ||
		OPcode == CODE_XORI ||
		OPcode == CODE_SLTI ||
		OPcode == CODE_LW   ||
		OPcode == CODE_LUI  ||
		is_MFC0
	);
	wire register_write_rd = (
		is_R_type && 
		Fun != FUN_JR && 
		Fun != FUN_JARL
	);
	wire register_write_ra = (is_R_type && Fun == FUN_JARL) || (
		OPcode == CODE_JAL
	);

	wire sw_not_stall = (rt == EXE_register_write_address && is_Sw && rs != EXE_register_write_address);

	wire EXE_will_write_register_rs = (EXE_register_write_address == rs && rs != 0) && EXE_RegWrite;
	wire EXE_will_write_register_rt = (EXE_register_write_address == rt && rt != 0 && !register_write_rt) && EXE_RegWrite;
	wire MEM_will_write_register_rs = (MEM_register_write_address == rs && rs != 0) && MEM_RegWrite;
	wire MEM_will_write_register_rt = (MEM_register_write_address == rt && rt != 0 && !register_write_rt) && MEM_RegWrite;
	
	wire forwarding_rs_with_EXE_aluout = EXE_will_write_register_rs && (EXE_DatatoReg == 2'b00);
	wire forwarding_rt_with_EXE_aluout = EXE_will_write_register_rt && (EXE_DatatoReg == 2'b00);
	wire forwarding_rs_with_MEM_aluout = MEM_will_write_register_rs && (MEM_DatatoReg == 2'b00);
	wire forwarding_rt_with_MEM_aluout = MEM_will_write_register_rt && (MEM_DatatoReg == 2'b00);
	wire forwarding_rs_with_MEM_data_out = MEM_will_write_register_rs && (MEM_DatatoReg == 2'b01);
	wire forwarding_rt_with_MEM_data_out =	MEM_will_write_register_rt && (MEM_DatatoReg == 2'b01);
	
	always@(*) begin	
		//output signals
		undefined = 1'b0;
		//write rd
		RegDst = register_write_rd || is_MTC0;
		ALUSrc_A = is_R_type && (
			Fun == FUN_SLL ||
			Fun == FUN_SRL
		);
		ALUSrc_B = (
			OPcode == CODE_ADDI ||
			OPcode == CODE_ANDI ||
			OPcode == CODE_ORI  ||
			OPcode == CODE_XORI ||
			OPcode == CODE_SLTI ||
			OPcode == CODE_SW   ||
			OPcode == CODE_LW
		);
		//link $31
		Jal = (is_Jr && Fun == FUN_JARL) || (
			OPcode == CODE_JAL
		);
		//write regs
		RegWrite = (is_R_type && Fun != FUN_JR) || (
			register_write_rt ||
			register_write_rd ||
			register_write_ra
		);
		//write data memory
		mem_w = OPcode == CODE_SW;
		//signed extend
		ext = (
			OPcode == CODE_ADDI ||
			OPcode == CODE_LW   ||
			OPcode == CODE_SW   ||
			OPcode == CODE_BEQ  ||
			OPcode == CODE_BNE  ||
			OPcode == CODE_SLTI
		);
		//not pc_4 in IF
		branch = (
			is_J				||
			is_Jr 		   ||
			is_Beq_or_Bne	
		);
		//DatatoReg
		if(OPcode == CODE_LW)
			DatatoReg = 2'b01;
		else if(is_MFC0)
			DatatoReg = 2'b10;
		else
			DatatoReg = 2'b00;
		//PCSource
		if(is_Jr == 1'b1)
			PCSource = 2'b11;
		else if(is_J == 1'b1)
			PCSource = 2'b10;
		else if((is_Beq && zero) || (is_Bne && ~zero))
			PCSource = 2'b01;
		else
			PCSource = 2'b00;;
			
		//ALU_Control
		if((is_R_type && Fun == FUN_SUB) || is_Beq_or_Bne)
			ALU_Control = ALU_SUB;
		else if((is_R_type && Fun == FUN_AND) || OPcode == CODE_ANDI)
			ALU_Control = ALU_AND;
		else if((is_R_type && Fun == FUN_OR) || OPcode == CODE_ORI)
			ALU_Control = ALU_OR;
		else if((is_R_type && Fun == FUN_XOR) || OPcode == CODE_XORI)
			ALU_Control = ALU_XOR;
		else if((is_R_type && Fun == FUN_SLT) || OPcode == CODE_SLTI)
			ALU_Control = ALU_SLT;
		else if((is_R_type && Fun == FUN_NOR))
			ALU_Control = ALU_NOR;
		else if((is_R_type && Fun == FUN_SLL))
			ALU_Control = ALU_SLL;
		else if((is_R_type && Fun == FUN_SRL))
			ALU_Control = ALU_SRL;
		else
			ALU_Control = ALU_ADD;
		
		//Lui
		Lui = is_Lui;
		
		//forwardingSrc_A
		if(forwarding_rs_with_EXE_aluout)
			forwardingSrc_A = 2'b01;
		else if(forwarding_rs_with_MEM_aluout)
			forwardingSrc_A = 2'b10;
		else if(forwarding_rs_with_MEM_data_out)
			forwardingSrc_A = 2'b11;
		else
			forwardingSrc_A = 2'b00;
			
		//forwardingSrc_B
		if(forwarding_rt_with_EXE_aluout)
			forwardingSrc_B = 2'b01;
		else if(forwarding_rt_with_MEM_aluout)
			forwardingSrc_B = 2'b01;
		else if(forwarding_rt_with_MEM_data_out)
			forwardingSrc_B = 2'b11;
		else
			forwardingSrc_B = 2'b00;
		
		//stall
		data_hazard_stall = (EXE_will_write_register_rs || EXE_will_write_register_rt) && (EXE_DatatoReg == 2'b01) && !sw_not_stall;
		control_hazard_stall = is_J || is_Jr || is_Beq && zero || is_Bne && !zero;
		
		//undefined
		if(is_R_type)
			undefined = (
				Fun != FUN_ADD &&
				Fun != FUN_SUB &&
				Fun != FUN_AND &&
				Fun != FUN_OR  &&
				Fun != FUN_XOR &&
				Fun != FUN_NOR &&
				Fun != FUN_SLT &&
				Fun != FUN_SRL &&
				Fun != FUN_SLL &&
				Fun != FUN_JR  &&
				Fun != FUN_JARL
			);
		else
			undefined = (
				OPcode != CODE_ADDI &&
				OPcode != CODE_ANDI &&
				OPcode != CODE_ORI  &&
				OPcode != CODE_XORI &&
				OPcode != CODE_SLTI &&
				OPcode != CODE_SW   &&
				OPcode != CODE_LW   &&
				OPcode != CODE_LUI  &&
				OPcode != CODE_BEQ  &&
				OPcode != CODE_BNE  &&
				OPcode != CODE_J    &&
				OPcode != CODE_JAL  &&
				OPcode != CODE_MC0  &&
				!is_MFC0				&&
				!is_MTC0				&&
				!is_ERET
			);
			
		//cp0_operation
		if(is_MFC0) 		//read
			cp0_operation = 2'b01;
		else if(is_MTC0)  //write
			cp0_operation = 2'b10;
		else if(is_ERET)  //cp0 pc jump
			cp0_operation = 2'b11;
		else					//no operation
			cp0_operation = 2'b00;

		//cp0_jump_en
		if(is_ERET)
			cp0_jump_en = 1'b1;
		else 
			cp0_jump_en = 1'b0;

	end

	// debug control
	`ifdef DEBUG
	reg debug_step_prev;
	
	always @(posedge clk) begin
		debug_step_prev <= debug_step;
	end
	`endif
	
	always @(*) begin
		cpu_rst = 0;
		cpu_en = 1;
		if (rst) begin
			cpu_rst = 1;
		end
		`ifdef DEBUG
		// suspend and step execution
		else if ((debug_en) && ~(~debug_step_prev && debug_step)) begin
			cpu_en = 0;
		end
		`endif
	end

endmodule
