`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:32:57 05/06/2019
// Design Name:   pc_reg
// Module Name:   C:/shuluo/jizu/exp04_CPU/OExp04-IP2CPU/pc_reg_Test.v
// Project Name:  OExp04-IP2CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pc_reg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pc_reg_Test;

	// Inputs
	reg clk;
	reg rst;
	reg wt;
	reg [31:0] pc_in;

	// Outputs
	wire [31:0] pc_out;

	// Instantiate the Unit Under Test (UUT)
	pc_reg uut (
		.clk(clk), 
		.rst(rst), 
		.wt(wt), 
		.pc_in(pc_in), 
		.pc_out(pc_out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		wt = 0;
		pc_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		rst = 1;#20;
		rst = 0;
		wt = 1;
		pc_in = 32'h00000004;#20;
		pc_in = 32'h00000008;#20;
		pc_in = 32'hffff0000;#20;
	end
	always begin
		clk = ~clk;#10;
	end

     
endmodule

