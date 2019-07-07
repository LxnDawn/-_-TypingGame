// Copyright (C) 2017  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.


// Generated by Quartus Prime Version 17.1 (Build Build 590 10/25/2017)
// Created on Wed Dec 12 21:42:22 2018

vga_ctrl vga_ctrl_inst
(
	.pclk(pclk_sig) ,	// input  pclk_sig
	.reset(reset_sig) ,	// input  reset_sig
	.bit(bit_sig) ,	// input  bit_sig
	.h_addr(h_addr_sig) ,	// output [9:0] h_addr_sig
	.v_addr(v_addr_sig) ,	// output [9:0] v_addr_sig
	.hsync(hsync_sig) ,	// output  hsync_sig
	.vsync(vsync_sig) ,	// output  vsync_sig
	.valid(valid_sig) ,	// output  valid_sig
	.vga_r(vga_r_sig) ,	// output [7:0] vga_r_sig
	.vga_g(vga_g_sig) ,	// output [7:0] vga_g_sig
	.vga_b(vga_b_sig) 	// output [7:0] vga_b_sig
);

defparam vga_ctrl_inst.h_frontporch = 96;
defparam vga_ctrl_inst.h_active = 144;
defparam vga_ctrl_inst.h_backporch = 784;
defparam vga_ctrl_inst.h_total = 800;
defparam vga_ctrl_inst.v_frontporch = 2;
defparam vga_ctrl_inst.v_active = 35;
defparam vga_ctrl_inst.v_backporch = 515;
defparam vga_ctrl_inst.v_total = 525;