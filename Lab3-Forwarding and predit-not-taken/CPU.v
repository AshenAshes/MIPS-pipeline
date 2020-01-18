`include "define.vh"
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:43:55 10/21/2019 
// Design Name: 
// Module Name:    CPU 
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
module CPU(
	// debug
	`ifdef DEBUG
	input wire debug_en,  // debug enable
	input wire debug_step,  // debug step clock
	input wire [6:0] debug_addr,  // debug address
	output wire [31:0] debug_data,  // debug data
	`endif
	input clk,
	input reset
    );
	`include "mips_define.vh"
	
	wire [31:0] IF_pc_next,IF_pc_4,IF_pc;
	
	wire [31:0] IF_inst_in;
	wire ID_branch;
	wire [31:0] ID_pc_branch_or_jump;
	wire [31:0] ID_pc_4, ID_inst_in;
	
	wire [31:0] ID_register_data_in;
	wire ID_data_hazard_stall, ID_control_hazard_stall;
	wire [1:0] forwardingSrc_A,forwardingSrc_B;

	wire [4:0] WB_register_write_address;
	wire RegWrite,ID_ALUSrc_A,ID_ALUSrc_B,ID_mem_w;
	wire ID_DatatoReg;
	wire [3:0] ID_ALU_Control;
	wire [31:0] ID_shamt_32,ID_imm_32;
	wire [31:0] ID_rsdata,ID_rtdata,ID_lui_32;
	wire [4:0] ID_register_write_address;
	
	wire [31:0] EXE_pc_4;
	wire EXE_ALUSrc_A,EXE_ALUSrc_B,EXE_RegWrite;
	wire EXE_DatatoReg;
	wire [3:0] EXE_ALU_Control;
	wire [4:0] EXE_register_write_address;
	wire [31:0] EXE_shamt_32,EXE_rsdata,EXE_rtdata,EXE_imm_32;
	wire [31:0] EXE_ALU_result;
	
	wire [31:0] MEM_pc_4;
	wire MEM_RegWrite,MEM_mem_w;
	wire MEM_DatatoReg;
	wire [4:0] MEM_register_write_address;
	wire [31:0] MEM_ALU_result,MEM_rtdata;
	wire [31:0] MEM_mem_data_out;
	
	wire WB_RegWrite;
	wire WB_DatatoReg;
	wire [31:0] WB_mem_data_out,WB_ALU_result;
	
	//debug wire
	wire cpu_rst, cpu_en;
	wire [31:0] ALU_input_A,ALU_input_B;
	
	// debug
	`ifdef DEBUG
	wire [31:0] debug_data_reg;
	reg [31:0] debug_data_signal;
	//?
	wire inst_ren=1'b1;
	wire mem_ren=1'b1;
	
	always @(posedge clk) begin
		case (debug_addr[4:0])
			0: debug_data_signal <= IF_pc;
			1: debug_data_signal <= IF_inst_in;
			2: debug_data_signal <= ID_pc_4;
			3: debug_data_signal <= {30'b0,forwardingSrc_A};
			4: debug_data_signal <= EXE_pc_4;
			5: debug_data_signal <= {30'b0,forwardingSrc_B};
			6: debug_data_signal <= MEM_pc_4;
			7: debug_data_signal <= 0;
			8: debug_data_signal <= {27'b0, ID_inst_in[25:21]};
			9: debug_data_signal <= ID_rsdata;
			10: debug_data_signal <= {27'b0, ID_inst_in[20:16]};
			11: debug_data_signal <= ID_rtdata;
			12: debug_data_signal <= ID_imm_32;
			13: debug_data_signal <= ALU_input_A;
			14: debug_data_signal <= ALU_input_B;
			15: debug_data_signal <= EXE_ALU_result;
			16: debug_data_signal <= 0;
			17: debug_data_signal <= 0;
			18: debug_data_signal <= {19'b0, inst_ren, 7'b0, mem_ren, 3'b0, MEM_mem_w};
			19: debug_data_signal <= MEM_ALU_result;
			20: debug_data_signal <= MEM_mem_data_out;
			21: debug_data_signal <= MEM_rtdata;
			22: debug_data_signal <= {27'b0, WB_register_write_address};
			23: debug_data_signal <= ID_register_data_in;
			default: debug_data_signal <= 32'hFFFF_FFFF;
		endcase
	end
	
	assign
		debug_data = debug_addr[5] ? debug_data_signal : debug_data_reg;
	`endif

	PC_Latch PC_Latch(
		.clk(clk),
		.reset(reset),
		.cpu_en(cpu_en),
		.PC_stall(ID_data_hazard_stall),
		.IF_pc_next(IF_pc_next),
		
		.IF_pc(IF_pc)
	);
	
	IF_Stage IF_Stage(
		.clk(clk),
		.pc(IF_pc),
		.branch(ID_branch),
		.pc_branch_or_jump(ID_pc_branch_or_jump),
		
		.pc_4(IF_pc_4),
		.inst_in(IF_inst_in),
		.pc_next(IF_pc_next)
	);
	
	IF_ID_Latch IF_ID_Latch(
		.clk(clk),
		.reset(reset),
		.cpu_en(cpu_en),
		.IF_ID_bubble(ID_control_hazard_stall && !ID_data_hazard_stall),
		.IF_ID_stall(ID_data_hazard_stall),
		
		.IF_pc_4(IF_pc_4),
		.IF_inst_in(IF_inst_in),
		
		//out
		.ID_pc_4(ID_pc_4),
		.ID_inst_in(ID_inst_in)
	);
	
	ID_Stage	ID_Stage(
		`ifdef DEBUG
		.debug_en(debug_en),
		.debug_step(debug_step),
		.debug_addr(debug_addr[4:0]),
		.debug_data_reg(debug_data_reg),
		`endif
		.clk(clk),
		.reset(reset),
		.IF_pc_4(ID_pc_4),
		.inst_in(ID_inst_in),
		.Wt_addr(WB_register_write_address),
		.Wt_data(ID_register_data_in),
		.WB_RegWrite(WB_RegWrite),
		.EXE_register_write_address(EXE_register_write_address),
		.EXE_RegWrite(EXE_RegWrite),
		.MEM_register_write_address(MEM_register_write_address),
		.MEM_RegWrite(MEM_RegWrite),		
		.EXE_DatatoReg(EXE_DatatoReg),
		.MEM_DatatoReg(MEM_DatatoReg),
		.EXE_ALU_result(EXE_ALU_result),
		.MEM_ALU_result(MEM_ALU_result),
		.MEM_mem_data_out(MEM_mem_data_out),
		
		//out
		.branch(ID_branch),
		.ALUSrc_A(ID_ALUSrc_A),
		.ALUSrc_B(ID_ALUSrc_B),
		.RegWrite(ID_RegWrite),
		.mem_w(ID_mem_w),
		.DatatoReg(ID_DatatoReg),
		.ALU_Control(ID_ALU_Control),
		
		.shamt_32(ID_shamt_32),
		.imm_32(ID_imm_32),
		.pc_branch_or_jump(ID_pc_branch_or_jump),
		.rsdata(ID_rsdata),
		.rtdata(ID_rtdata),
		.register_write_address(ID_register_write_address),
		
		.data_hazard_stall(ID_data_hazard_stall),
		.control_hazard_stall(ID_control_hazard_stall),
		.forwardingSrc_A(forwardingSrc_A),
		.forwardingSrc_B(forwardingSrc_B),		
		//debug control
		.cpu_rst(cpu_rst),
		.cpu_en(cpu_en)
	);	

	ID_EXE_Latch ID_EXE_Latch(
		.clk(clk),
		.reset(reset),
		.cpu_en(cpu_en),
		.ID_EXE_bubble(ID_data_hazard_stall),
		
		.ID_ALUSrc_A(ID_ALUSrc_A),
		.ID_ALUSrc_B(ID_ALUSrc_B),
		.ID_RegWrite(ID_RegWrite),
		.ID_mem_w(ID_mem_w),
		.ID_DatatoReg(ID_DatatoReg),
		.ID_ALU_Control(ID_ALU_Control),
		.ID_pc_4(ID_pc_4),
		
		.ID_shamt_32(ID_shamt_32),
		.ID_rsdata(ID_rsdata),
		.ID_rtdata(ID_rtdata),
		.ID_imm_32(ID_imm_32),
		.ID_register_write_address(ID_register_write_address),
		
		//out
		.EXE_ALUSrc_A(EXE_ALUSrc_A),
		.EXE_ALUSrc_B(EXE_ALUSrc_B),
		.EXE_RegWrite(EXE_RegWrite),
		.EXE_mem_w(EXE_mem_w),
		.EXE_DatatoReg(EXE_DatatoReg),
		.EXE_ALU_Control(EXE_ALU_Control),
		.EXE_pc_4(EXE_pc_4),
		
		.EXE_shamt_32(EXE_shamt_32),
		.EXE_rsdata(EXE_rsdata),
		.EXE_rtdata(EXE_rtdata),
		.EXE_imm_32(EXE_imm_32),
		.EXE_register_write_address(EXE_register_write_address)
	);

	EXE_Stage EXE_Stage(
		.clk(clk),
		.reset(reset),
		
		.shamt_32(EXE_shamt_32),
		.rsdata(EXE_rsdata),
		.rtdata(EXE_rtdata),
		.imm_32(EXE_imm_32),
		
		.ALUSrc_A(EXE_ALUSrc_A),
		.ALUSrc_B(EXE_ALUSrc_B),
		.ALU_Control(EXE_ALU_Control),
	
		//out
		.ALU_result(EXE_ALU_result),
		//debug output
		.ALU_input_A(ALU_input_A),
		.ALU_input_B(ALU_input_B)
	);	

	EXE_MEM_Latch EXE_MEM_Latch(
		.clk(clk),
		.reset(reset),
		.cpu_en(cpu_en),
		
		.EXE_RegWrite(EXE_RegWrite),
		.EXE_mem_w(EXE_mem_w),
		.EXE_DatatoReg(EXE_DatatoReg),
		.EXE_pc_4(EXE_pc_4),
	
		.EXE_ALU_result(EXE_ALU_result),
		.EXE_rtdata(EXE_rtdata),
		.EXE_register_write_address(EXE_register_write_address),
		
		//out
		.MEM_RegWrite(MEM_RegWrite),
		.MEM_mem_w(MEM_mem_w),
		.MEM_DatatoReg(MEM_DatatoReg),
		.MEM_pc_4(MEM_pc_4),
		
		.MEM_ALU_result(MEM_ALU_result),
		.MEM_rtdata(MEM_rtdata),
		.MEM_register_write_address(MEM_register_write_address)
	);
	
	wire forwardingSwLw = WB_DatatoReg && WB_RegWrite && (WB_register_write_address == MEM_register_write_address) && MEM_mem_w;
	wire [31:0] MEM_mem_datain;
	
	MUX2T1_32 rtdata_or_lwdata_mux(
		.s(forwardingSwLw),
		.I0(MEM_rtdata),
		.I1(WB_mem_data_out),
		.o(MEM_mem_datain)
	);
	
	MEM_Stage MEM_Stage(
		.clk(clk),
		.reset(reset),
		.mem_w(MEM_mem_w),
		
		.ALU_result(MEM_ALU_result),
		.rtdata(MEM_mem_datain),
		
		//out
		.mem_data_out(MEM_mem_data_out)
		);	
	
	MEM_WB_Latch MEM_WB_Latch(
		.clk(clk),
		.reset(reset),
		.cpu_en(cpu_en),
		
		.MEM_RegWrite(MEM_RegWrite),
		.MEM_DatatoReg(MEM_DatatoReg),
	
		.MEM_mem_data_out(MEM_mem_data_out),
		.MEM_ALU_result(MEM_ALU_result),
		.MEM_register_write_address(MEM_register_write_address),
	
		//out
		.WB_RegWrite(WB_RegWrite),
		.WB_DatatoReg(WB_DatatoReg),
		
		.WB_mem_data_out(WB_mem_data_out),
		.WB_ALU_result(WB_ALU_result),
		.WB_register_write_address(WB_register_write_address)
	);
	
	WB_Stage	WB_Stage(
		.clk(clk),
		.reset(reset),
		
		.DatatoReg(WB_DatatoReg),
		
		.mem_data_out(WB_mem_data_out),
		.ALU_result(WB_ALU_result),
		
		//out
		.ID_register_data_in(ID_register_data_in)
	);	

endmodule
