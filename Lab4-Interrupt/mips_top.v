`include "define.vh"
/**
 * Top module for MIPS 5-stage pipeline CPU.
 * Author: Zhao, Hongyu  <power_zhy@foxmail.com>
 */
module mips_top (
	input wire CLK_200M_P,CLK_200M_N,
	input wire [7:0] SW,
	input wire RSTN,
	output wire [4:0] BTN_X,	//matrix button for output
	input wire [3:0] BTN_Y,	//matrix button for input
	output wire SEGLED_CLK,
	output wire SEGLED_DO, 
	output wire SEGLED_PEN,
	output wire LED_PEN, 
	output wire LED_DO, 
	output wire LED_CLK,
	output wire [3:0]VGA_B,
	output wire [3:0]VGA_G,
	output wire [3:0]VGA_R,
	output wire HS, VS
	);
	
	// clock generator
	wire clk_cpu, clk_disp;
	wire locked;
	wire clk200MHz;
	wire clk100MHz;
	wire [7:0] SW_OK;
	
	clk_diff CLK_DIFF (
		.clk200P(CLK_200M_P),
		.clk200N(CLK_200M_N),
		.clk200MHz(clk200MHz)
	);
	my_clk_gen CLK_GEN (
		.clkin1(clk200MHz),
		.CLK_OUT1(clk100MHz), //100MHz
		.CLK_OUT2(), //50MHz
		.CLK_OUT3(clk_disp), //25MHz
		.CLK_OUT4(clk_cpu) //10MHz
		);
	
	reg [31:0] clk_div;
	always @ (posedge clk100MHz)
	   clk_div = clk_div + 1'b1;
	
	antijitters antijitters_(
	   .clk(clk_div[15]),
	   .SW(SW),
	   .BTN(BTN),
	   .RSTN(RSTN),
	   .SW_OK(SW_OK),
	   .BTN_OK(BTN_OK),
	   .rst(rst)
	);	

	wire [19:0] btn;
	wire btn_reset, btn_step;
	wire btn_interrupt;
	wire [1:0] SW_INT;
	wire disp_prev, disp_next;

	btn_scan #(
		.CLK_FREQ(25)
		) BTN_SCAN (
		.clk(clk_disp),
		.rst(1'b0),
		.btn_x(BTN_X),
		.btn_y(BTN_Y),
		.result(btn)
		);
	
	assign
		btn_step = btn[16],
		btn_interrupt = btn[19],
		SW_INT = SW_OK[2:1];
	
	`ifndef SIMULATING
	`else
	assign
	`endif
	
	// reset
	reg rst_all;
	reg [15:0] rst_count = 16'hFFFF;
	
	always @(posedge clk_cpu) begin
		rst_all <= (rst_count != 0);
		rst_count <= {rst_count[14:0], (!RSTN)};
	end

	wire [31:0] disp_data;
	
	display DISPLAY (
		.clk(clk_disp),
		.rst(rst_all),
		.en(8'b11111111),
		.data(0),
		.dot(8'b00000000),
		.led(~{btn_step, btn_interrupt, 6'b0, SW}),
		.led_clk(LED_CLK),
		.led_en(LED_PEN),
		.led_do(LED_DO),
		.seg_clk(SEGLED_CLK),
		.seg_en(SEGLED_PEN),
		.seg_do(SEGLED_DO)
		);
	wire [6:0] debug_addr;
	wire [31:0] debug_data;
	
	mips MIPS (
		`ifdef DEBUG
		.debug_en(SW[0]),
		.debug_step(btn_step),
		.debug_addr(debug_addr),
		.debug_data(debug_data),
		`endif
		.clk(clk_cpu),
		.reset(rst_all),
		.SW_INT(SW_INT)
		);
		
	wire [9:0] vga_h_count;
	wire [9:0] vga_v_count;
	wire	vga_rdn;
	wire [11:0] vga_data;
		
	vga VGA(
		.clk(clk_disp),					// vga clk = 25MHz
		.rst(0),  // never reset
		.Din(vga_data),	
		.h_count(vga_h_count),
		.v_count(vga_v_count),
		.rdn(vga_rdn),
		.R(VGA_R),
		.G(VGA_G),
		.B(VGA_B),
		.HS(HS),
		.VS(VS)
		); 
	
	vga_debug VGA_DEBUG(
	.clk(clk_disp),
	.debug_data(debug_data),
	.h_count(vga_h_count),
	.v_count(vga_v_count),
	.debug_addr(debug_addr),
	.dout(vga_data)
	
    );
endmodule