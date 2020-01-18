////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.7
//  \   \         Application : 
//  /   /         Filename : xil_10324_48
// /___/   /\     Timestamp : 10/21/2019 15:52:07
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: 
//Design Name: 
//
`timescale 1ns / 1ps

module SCPU(clk, 
            Data_in, 
            inst_in, 
            INT, 
            MIO_ready, 
            reset, 
            Addr_out, 
            CPU_MIO, 
            Data_out, 
            mem_w, 
            PC_out);

    input clk;
    input [31:0] Data_in;
    input [31:0] inst_in;
    input INT;
    input MIO_ready;
    input reset;
   output [31:0] Addr_out;
   output CPU_MIO;
   output [31:0] Data_out;
   output mem_w;
   output [31:0] PC_out;
   
   
endmodule
