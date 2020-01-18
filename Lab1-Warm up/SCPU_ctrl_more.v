`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:04:46 04/15/2019 
// Design Name: 
// Module Name:    SCPU_ctrl_more 
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
`define CPU_ctrl_signals {RegDst,ALUSrc_B,DatatoReg[1],DatatoReg[0],Jal,PCSource[1],PCSource[0],RegWrite,mem_w,ext,ALUSrc_A}

module SCPU_ctrl_more(
	input [5:0]OPcode,
	input [5:0]Fun,
	input MIO_ready,
	input zero,
	output reg RegDst,
	output reg ALUSrc_B,
	output reg [1:0]DatatoReg,
	output reg Jal,
	output reg [1:0]PCSource,
	output reg RegWrite,
	output reg [3:0]ALU_Control,
	output reg mem_w,
	output reg ext,
	output reg ALUSrc_A,
	output reg Branch,
	output CPU_MIO
    );
	 
assign CPU_MIO=0;

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

always@*begin
	case(OPcode)
		6'b000000:
		case(Fun)	//R-type
			6'b100000: begin //add 
								`CPU_ctrl_signals=11'b10000001000;
								ALU_Control = ALU_ADD;
							end 
			6'b100010: begin //sub
								`CPU_ctrl_signals=11'b10000001000;
								ALU_Control = ALU_SUB;
							end 
			6'b100100: begin //and 
								`CPU_ctrl_signals=11'b10000001000;
								ALU_Control = ALU_AND;
							end 
			6'b100101: begin //or 
								`CPU_ctrl_signals=11'b10000001000;
								ALU_Control = ALU_OR;
							end 
			6'b100110: begin //xor 
								`CPU_ctrl_signals=11'b10000001000;
								ALU_Control = ALU_XOR;
							end 
			6'b100111: begin //nor 
								`CPU_ctrl_signals=11'b10000001000;
								ALU_Control = ALU_NOR;
							end 
			6'b101010: begin //slt 
								`CPU_ctrl_signals=11'b10000001010;
								ALU_Control = ALU_SLT;
							end 
			6'b000010: begin //srl 
								`CPU_ctrl_signals=11'b10000001001;
								ALU_Control = ALU_SRL;
							end 
			6'b000000: begin //sll 
								`CPU_ctrl_signals=11'b10000001001;
								ALU_Control = ALU_SLL;
							end 
			6'b001000: begin //jr 
								`CPU_ctrl_signals=11'b10001110000;
								ALU_Control = ALU_AND;
							end 
			6'b001001: begin //jarl 
								`CPU_ctrl_signals=11'b10111111000;
								ALU_Control = ALU_ADD;
							end 
			default:   begin 
								`CPU_ctrl_signals=11'b10000001000;
								ALU_Control = 4'bx;
							end
		endcase
		6'b001000:begin //addi
							`CPU_ctrl_signals=11'b01000001010; 
							ALU_Control = ALU_ADD;
						end 
		6'b001100:begin //andi
							`CPU_ctrl_signals=11'b01000001000;
							ALU_Control = ALU_AND;
						end 
		6'b001101:begin //ori
							`CPU_ctrl_signals=11'b01000001000;
							ALU_Control = ALU_OR;
						end 
		6'b001110:begin //xori
							`CPU_ctrl_signals=11'b01000001000; 
							ALU_Control = ALU_XOR;
						end 
		6'b001010:begin //slti
							`CPU_ctrl_signals=11'b01000001010; 
							ALU_Control = ALU_SLT;
						end 
		6'b101011:begin //sw
							//`CPU_ctrl_signals=11'b01000000110; 
							`CPU_ctrl_signals=11'b11000000110; 
							ALU_Control = ALU_ADD;
						end 
		6'b100011:begin //lw
							`CPU_ctrl_signals=11'b01010001010; 
							ALU_Control = ALU_ADD;
						end 
		6'b001111:begin //lui
							`CPU_ctrl_signals=11'b00100001010; 
							ALU_Control = ALU_ADD;
						end 
		6'b000100:begin //beq
							Branch=1'b1;
							`CPU_ctrl_signals={11'b00000010010};  
							ALU_Control = ALU_SUB;
						end 
		6'b000101:begin //bne
							Branch=1'b0;
							`CPU_ctrl_signals={11'b00000010010}; 
							ALU_Control = ALU_SUB;
						end 
		6'b000010:begin //j
							`CPU_ctrl_signals=11'b00000100010; 
							ALU_Control = ALU_AND;
						end 
		6'b000011:begin //jal
							`CPU_ctrl_signals=11'b00111101010; 
							ALU_Control = ALU_ADD;
						end 
		default:  begin `CPU_ctrl_signals=11'bx; 
							ALU_Control = 4'bx;
						end
	endcase
end

endmodule
