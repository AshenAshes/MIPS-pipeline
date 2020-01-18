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

	// Instantiate the Unit Under Test (UUT)
	CPU uut (
		.clk(clk), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		clk = 1;
		reset=1;#15;
		reset=0;

	end
	
	integer i;
	always@*begin
		for(i =0;i<3000;i=i+1)begin
			clk = ~clk;
			#10;
		end
	end
endmodule

