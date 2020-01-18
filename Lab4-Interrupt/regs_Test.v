`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:14:20 05/06/2019
// Design Name:   regs
// Module Name:   C:/shuluo/jizu/exp04_CPU/OExp04-IP2CPU/regs_Test.v
// Project Name:  OExp04-IP2CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: regs
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module regs_Test;

	// Inputs
	reg clk;
	reg rst;
	reg wt;
	reg [4:0] reg_addr_A;
	reg [4:0] reg_addr_B;
	reg [4:0] reg_wt_addr;
	reg [31:0] Data_in;

	// Outputs
	wire [31:0] rdata_A;
	wire [31:0] rdata_B;

	// Instantiate the Unit Under Test (UUT)
	regs uut (
		.clk(clk), 
		.rst(rst), 
		.wt(wt), 
		.reg_addr_A(reg_addr_A), 
		.reg_addr_B(reg_addr_B), 
		.reg_wt_addr(reg_wt_addr), 
		.Data_in(Data_in), 
		.rdata_A(rdata_A), 
		.rdata_B(rdata_B)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		wt = 0;
		reg_addr_A = 0;
		reg_addr_B = 0;
		reg_wt_addr = 0;
		Data_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		rst = 1; #40;
		rst = 0;
		wt = 1;
		reg_wt_addr = 5;
		Data_in = 32'ha5a5a5a5; #40;
		reg_wt_addr = 6;
		Data_in = 32'h1234ffff; #40;
		reg_wt_addr = 0;
		Data_in = 32'haaaaaaaa; #40;
		wt = 0;
		reg_addr_A = 5;
		reg_addr_B = 6; #40;
		reg_addr_A = 0; #40;
		
		
	end
      
	always begin
		clk = ~clk;#10;
	end
endmodule

