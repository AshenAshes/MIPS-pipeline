`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:26:38 05/06/2019
// Design Name:   SCPU
// Module Name:   C:/shuluo/jizu/exp04_CPU/OExp04-IP2CPU/SCPU_Test.v
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

module SCPU_Test;

	// Inputs
	//reg clka;
	reg clk;
	wire clk_cpu;
	reg reset;
	wire MIO_ready;
	wire [31:0] inst_in;
	wire [31:0] Data_in;
	reg INT;

	// Outputs
	wire mem_w;
	wire [31:0] PC_out;
	wire [31:0] Addr_out;
	wire [31:0] Data_out;
	wire CPU_MIO;
	//wire [31:0]clkdiv;
	
	// Instantiate the Unit Under Test (UUT)
	SCPU uut (
		.clk(clk_cpu), 
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
	ROM_D r1 (
		.a(PC_out[11:2]), // input [9 : 0] a
		.spo(inst_in) // output [31 : 0] spo
	);
	RAM_B r2 (
		.clka(~clk), // input clka
		.wea(mem_w), // input [0 : 0] wea
		.addra(Addr_out), // input [9 : 0] addra
		.dina(Data_out), // input [31 : 0] dina
		.douta(Data_in) // output [31 : 0] douta
	);
clk_div c1(.clk(clk),
				.rst(reset),
				.SW2(1'b0),
				.clkdiv(clkdiv),
				.Clk_CPU(clk_cpu)
					);
	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		//MIO_ready = 0;
		//inst_in = 0;
		//Data_in = 0;
		//INT = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		reset = 1; #20;
		reset = 0; #20;

	end
   
	always begin
		clk = ~clk;#5;
	end

endmodule

