`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:02:55 10/23/2019 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
	input [3:0] ALU_operation,
	input [31:0] A,
	input [31:0] B,
	output reg [31:0] res,
	output reg overflow
    );
	
	wire signA = A[31];
	wire signB = B[31];
	reg [31:0] result;
	
	always @* begin
		if(signA == signB) begin
			if(ALU_operation == 4'b0010) begin//add
				result = $signed(A)+$signed(B);
				if(result[31] != signA)
					overflow = 1'b1;
				else
					overflow = 1'b0;
			end
			else
				overflow = 1'b0;
		end
		else if(signA != signB) begin
			if(ALU_operation == 4'b0110) begin//sub
				result = $signed(A)-$signed(B);
				if(result[31] != signA)
					overflow = 1'b1;
				else
					overflow = 1'b0;
			end
			else
				overflow = 1'b0;
		end
		else
			overflow = 1'b0;
	end
	 
	always@* begin
		case(ALU_operation)
			4'b0000: begin //and
				res = A&B;
			end
			4'b0001: begin //or
				res = A|B;
			end
			4'b0010: begin //add
				res = $signed(A)+$signed(B);	
			end
			4'b0011: begin //xor
				res = A^B;
			end
			4'b0100: begin //nor
				res = ~(A|B);
			end
			4'b0101: begin //srl
				res = B>>A;
			end
			4'b0110: begin //sub
				res = $signed(A)-$signed(B);
			end
			4'b0111: begin //slt		
				res = {31'b0, $signed(A) < $signed(B)};	
			end
			4'b1000: begin //sll
				res = B<<A;
			end
			default:
				res = 32'bx;
		endcase
	end	

endmodule
