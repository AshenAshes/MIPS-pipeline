`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:38:13 05/06/2019
// Design Name:   SCPU
// Module Name:   C:/shuluo/jizu/exp04_CPU/OExp04-IP2CPU/SCPU_test0.v
// Project Name:  OExp04-IP2CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SCPU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SCPU_test0;

	// Inputs
	reg clk;
	reg reset;
	reg MIO_ready;
	reg [31:0] inst_in;
	reg [31:0] Data_in;
	reg INT;

	// Outputs
	wire mem_w;
	wire [31:0] PC_out;
	wire [31:0] Addr_out;
	wire [31:0] Data_out;
	wire CPU_MIO;

	// Instantiate the Unit Under Test (UUT)
	SCPU uut (
		.clk(clk), 
		.reset(reset), 
		.MIO_ready(MIO_ready), 
		.inst_in(inst_in), 
		.Data_in(Data_in), 
		.mem_w(mem_w), 
		.PC_out(PC_out), 
		.Addr_out(Addr_out), 
		.Data_out(Data_out), 
		.CPU_MIO(CPU_MIO), 
		.INT(INT)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		MIO_ready = 0;
		inst_in = 0;
		Data_in = 0;
		INT = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		reset = 1; #10;
		reset = 0; #10;
		inst_in = 32'h00000827; #100;//nor $at, $zero, $zero; // op = 0, rd = 1, rs = 0, rt = 0, 0 nor 0 = 0xffffffff.
		inst_in = 32'b00100000000000010000000000001000;#100; /*addi $0, $1, 8 => $1 = 8 */
		inst_in = 32'b00000000010000010001100000100010;#100;/*sub $3, $2, $1 =>$3 = -8*/
	end
   always begin
		clk = ~clk;#10;
	end
endmodule

