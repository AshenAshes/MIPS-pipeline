`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:38:03 12/09/2019 
// Design Name: 
// Module Name:    cp0 
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
module cp0 (
	input clk,  // main clock
	// debug
	`ifdef DEBUG
	input [4:0] debug_addr,  // debug address
	output reg [31:0] debug_data,  // debug data
	`endif
	// operations (read in ID stage and write in EXE stage)
	input [1:0] operation,  // CP0 operation type
	input [4:0] read_address_rd,  // read address
	output reg [31:0] read_data,  // read data
	input [4:0] write_address_rd,  // write address
	input [31:0] write_data,  // write data
	// control signal
	input rst,  // synchronous reset
	input overflow,
	input undefined,
	input outOfRange,
	input ir_en,  // interrupt enable
	input [1:0] SW_INT,  // external interrupt input
	input [31:0] EPC_interrupt,  // target instruction address to store when interrupt occurred
	input [31:0] EPC_exception,  // target instruction address to store when exception occurred
	output reg flush,		// flush the inst before MEM stage when INT or EXCEPTION or ERET occur
	output reg jump_en,  // force jump enable signal when interrupt authorised or ERET occurred
	output reg [31:0] jump_addr  // target instruction address to jump to
);

	reg[31:0] EHB;
	reg[31:0] status;			//$12
	reg[31:0] cause;			//$13 the interrupt cause
	reg[31:0] EPC;				//$14 
	reg[31:0] INT_priority; //$15 5>4>3>2>1>0

	initial begin
		EHB = 32'd4;
		status = 32'd1;
		cause = 32'd0;
		EPC = 32'd0;
		INT_priority = 32'd0;
	end

	wire [31:0] cause_req = overflow ? 32'd5 : 
						  undefined  ? 32'd4 :
						  outOfRange ? 32'd3 :
						  SW_INT[1]  ? 32'd2 :
						  SW_INT[0]  ? 32'd1 : 32'b0;
							 
	wire interruptRequest = cause_req == 32'b0 ? 1'b0 :
									  status == 32'b1 ? 1'b0 : 1'b1;
		
	always @(*) begin
		//read
		case(read_address_rd) 
			32'd12: read_data = status;
			32'd13: read_data = cause;
			32'd14: read_data = EPC;
			32'd15: read_data = INT_priority;
			default: read_data = 32'b0;
		endcase
	end
	
	always @(posedge clk) begin
		if(rst) begin
			status <= 32'b1;
			EPC <= 0;
			cause <= 0;
			INT_priority <= 0;
			jump_en <= 0;
			jump_addr <= 0;
		end
		//update EPC
		else if(interruptRequest && cause_req > INT_priority) begin
			jump_addr <= 32'h4;
			jump_en <= 1'b1;
			flush <= 1'b1;
			if(cause_req <= 2)
				EPC <= EPC_interrupt;
			else
				EPC <= EPC_exception;
			cause <= cause_req;
			status <= 32'b1;
		end
		//eret
		else if(operation == 2'b11) begin
			jump_addr <= EPC;
			jump_en <= 1'b1;
			flush <= 1'b1;
			status <= 32'b0;
		end
		//write data: mtc0
		else if(operation == 2'b10) begin
			case(write_address_rd)
				32'd12: status <= write_data;
				32'd13: cause <= write_data;
				32'd14: EPC <= write_data;
				32'd15: INT_priority <= write_data;
			endcase
		end
		else begin
			jump_en <= 1'b0;
			flush <= 1'b0;
		end
	end
	
endmodule












