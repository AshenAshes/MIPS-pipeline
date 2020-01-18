`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:22:39 03/10/2019 
// Design Name: 
// Module Name:    SPIO 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module 	SPIO(input clk,							//时钟
					input rst,                    //复位
					input Start,                  //串行扫描启动
					input EN,                     //PIO/LED显示刷新使能
					input [31:0] P_Data,          //并行输入，用于串行输出数据
					output reg[1:0] counter_set,  //用于计数/定时模块控制，本实验不用
					output [15:0] LED_out,        //并行输出数据
					output wire led_clk,          //串行移位时钟
					output wire led_sout,         //串行输出
					output wire led_clrn,         //LED显示清零
					output wire LED_PEN,          //LED显示刷新使能
					output reg[13:0] GPIOf0			//待用：GPIO			 
					);
		reg [15:0] LED;
		assign LED_out = LED;
		always @(negedge clk or posedge rst)begin
				if(rst)begin LED <= 8'h2A; counter_set <= 2'b00; end
				else if(EN) { GPIOf0[13:0], LED, counter_set} <= P_Data;
				else begin LED <= LED; counter_set <= counter_set; end
		end
		
		LEDP2S #(.DATA_BITS(16),.DATA_COUNT_BITS(4),.DIR(0))
					LED_P2S(.clk(clk),.rst(rst),.Start(Start),.PData(~LED),
								.sclk(led_clk),
								.sclrn(led_clrn),
								.sout(led_sout),
								.EN(LED_PEN)
							  );/*LED[15],LED[14],LED[13],LED[12],LED[11],LED[10],LED[9],LED[8],LED[7],LED[6],LED[5],
								LED[4],LED[3],LED[2],LED[1],LED[0]
								LED[0],LED[1],LED[2],LED[3],LED[4],LED[5],LED[6],LED[7],LED[8],LED[9],LED[10],
								LED[11],LED[12],LED[13],LED[14],LED[15]*/

endmodule

