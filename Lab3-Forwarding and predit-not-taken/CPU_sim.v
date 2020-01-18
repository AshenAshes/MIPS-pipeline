`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:55:15 11/16/2019
// Design Name:   CPU
// Module Name:   C:/Architecture/Lab3/CPU_sim.v
// Project Name:  Lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CPU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CPU_sim;

	// Inputs
	reg debug_en;
	reg debug_step;
	reg [6:0] debug_addr;
	reg clk;
	reg reset;

	// Outputs
	wire [31:0] debug_data;

	// Instantiate the Unit Under Test (UUT)
	CPU uut (
		.debug_en(debug_en), 
		.debug_step(debug_step), 
		.debug_addr(debug_addr), 
		.debug_data(debug_data), 
		.clk(clk), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		debug_en = 0;
		debug_step = 1;
		debug_addr = 0;
		clk = 0;
		reset = 1;
		#15;
	end
	
	
	integer i;
	always@* begin
		for(i=0;i<3000;i=i+1) begin
			debug_step = ~ debug_step;
			#10;
		end
	end
		


      
endmodule

