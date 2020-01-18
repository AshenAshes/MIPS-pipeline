`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:02:06 10/28/2019
// Design Name:   SCPU
// Module Name:   C:/Architecture/Lab2/CPU_sim.v
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

module CPU_sim;
	// Inputs
	reg clk;
	reg reset;
	reg [1:0] SW_INT;

	// Instantiate the Unit Under Test (UUT)
	CPU uut (
		.clk(clk), 
		.reset(reset),
		.SW_INT(SW_INT)
	);

	initial begin
		// Initialize Inputs
		clk = 1;
		reset=1;
		SW_INT=2'b00;
		#15;
		reset=0;
	end
	
	integer i;
	always@*begin
		for(i =0;i<3000;i=i+1) begin
			clk = ~clk;
			#10;
			if(i == 226)
				SW_INT = 2'b01;
			if(i == 242)
				SW_INT = 2'b11;
			if(i == 246)
				SW_INT = 2'b01;
			if(i == 260)
				SW_INT = 2'b11;
		end
	end
endmodule

