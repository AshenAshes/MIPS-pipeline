`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:13:34 05/06/2019
// Design Name:   ALU
// Module Name:   C:/shuluo/jizu/exp04_CPU/OExp04-IP2CPU/ALU_Test.v
// Project Name:  OExp04-IP2CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_Test;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg [2:0] ALUoper;

	// Outputs
	wire zero;
	wire [31:0] result;
	wire overflow;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.A(A), 
		.B(B), 
		.ALUoper(ALUoper), 
		.zero(zero), 
		.result(result), 
		.overflow(overflow)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		ALUoper = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		A = 32'hA5A5A5A5;
		B = 32'h5A5A5A5A;
		ALUoper = 3'b111; #100; //slt
		ALUoper = 3'b110; #100; //sub
		ALUoper = 3'b101; #100; //srl
		ALUoper = 3'b100; #100; //nor
		ALUoper = 3'b011; #100; //xor
		ALUoper = 3'b010; #100; //add
		ALUoper = 3'b001; #100; //or
		ALUoper = 3'b000; #100; //and
		A = 32'h01234567;
		B = 32'h76543210;
		ALUoper = 3'b111; #100; //slt
		A = 32'hFFFFFFFF;
		B = 32'h80000000;
		ALUoper = 3'b010; #100; //add overflow
		A = 32'h00000003;
		B = 32'h01010101;
		ALUoper = 3'b101; #100; //srl
	end
      
endmodule

