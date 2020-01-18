`timescale 1ns / 1ps

//`define DEBUG

`ifdef XILINX_ISIM			//默认的Xilinx ISE的仿真模拟时，会自动定义XILINX_ISIM
	`define SIMULATING		//在源码里面跟仿真有关的代码可以在这里被定�
`endif

//`define NO_MMU  // disable memory management unit
//`define NO_IC  // disable instruction cache
//`define NO_DC  // disable data cache

`define NO_PS2_WRITE
