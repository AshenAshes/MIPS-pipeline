`include "define.vh"


/**
 * MIPS CPU wrapper.
 * Author: Zhao, Hongyu  <power_zhy@foxmail.com>
 */
module mips (
	`ifdef DEBUG
	input wire debug_en,  // debug enable SW[0]
	input wire debug_step,  // debug step clock btn[16]
	input wire [6:0] debug_addr,  // debug address
	output wire [31:0] debug_data,  // debug data
	`endif
	input wire clk,  // main clock
	input wire reset,  // synchronous reset
	input wire [1:0] SW_INT  // interrupt source, for future use
	);
	
	CPU CPU(
		`ifdef DEBUG
		.debug_en(debug_en),
		.debug_step(debug_step),
		.debug_addr(debug_addr),
		.debug_data(debug_data),
		`endif
		.clk(clk),
		.reset(reset),
		.SW_INT(SW_INT)
	);

endmodule
