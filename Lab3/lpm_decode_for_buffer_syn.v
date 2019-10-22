// megafunction wizard: %LPM_DECODE%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: lpm_decode 

// ============================================================
// File Name: lpm_decode_for_buffer.v
// Megafunction Name(s):
// 			lpm_decode
//
// Simulation Library Files(s):
// 			lpm
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 9.1 Build 222 10/21/2009 SJ Web Edition
// ************************************************************


//Copyright (C) 1991-2009 Altera Corporation
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, Altera MegaCore Function License 
//Agreement, or other applicable license agreement, including, 
//without limitation, that your use is for the sole purpose of 
//programming logic devices manufactured by Altera and sold by 
//Altera or its authorized distributors.  Please refer to the 
//applicable agreement for further details.


//lpm_decode DEVICE_FAMILY="Stratix II" LPM_DECODES=4 LPM_WIDTH=2 data enable eq
//VERSION_BEGIN 9.1 cbx_cycloneii 2009:10:21:21:22:16:SJ cbx_lpm_add_sub 2009:10:21:21:22:16:SJ cbx_lpm_compare 2009:10:21:21:22:16:SJ cbx_lpm_decode 2009:10:21:21:22:16:SJ cbx_mgl 2009:10:21:21:37:49:SJ cbx_stratix 2009:10:21:21:22:16:SJ cbx_stratixii 2009:10:21:21:22:16:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463


//synthesis_resources = lut 4 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  lpm_decode_for_buffer_decode
	( 
	data,
	enable,
	eq) /* synthesis synthesis_clearbox=1 */;
	input   [1:0]  data;
	input   enable;
	output   [3:0]  eq;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   [1:0]  data;
	tri1   enable;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire  [1:0]  data_wire;
	wire  enable_wire;
	wire  [3:0]  eq_node;
	wire  [3:0]  eq_wire;
	wire  [2:0]  w_anode14w;
	wire  [2:0]  w_anode1w;
	wire  [2:0]  w_anode22w;
	wire  [2:0]  w_anode30w;

	assign
		data_wire = data,
		enable_wire = enable,
		eq = eq_node,
		eq_node = eq_wire[3:0],
		eq_wire = {w_anode30w[2], w_anode22w[2], w_anode14w[2], w_anode1w[2]},
		w_anode14w = {(w_anode14w[1] & (~ data_wire[1])), (w_anode14w[0] & data_wire[0]), enable_wire},
		w_anode1w = {(w_anode1w[1] & (~ data_wire[1])), (w_anode1w[0] & (~ data_wire[0])), enable_wire},
		w_anode22w = {(w_anode22w[1] & data_wire[1]), (w_anode22w[0] & (~ data_wire[0])), enable_wire},
		w_anode30w = {(w_anode30w[1] & data_wire[1]), (w_anode30w[0] & data_wire[0]), enable_wire};
endmodule //lpm_decode_for_buffer_decode
//VALID FILE


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module lpm_decode_for_buffer (
	data,
	enable,
	eq0,
	eq1,
	eq2,
	eq3)/* synthesis synthesis_clearbox = 1 */;

	input	[1:0]  data;
	input	  enable;
	output	  eq0;
	output	  eq1;
	output	  eq2;
	output	  eq3;

	wire [3:0] sub_wire0;
	wire [3:3] sub_wire4 = sub_wire0[3:3];
	wire [2:2] sub_wire3 = sub_wire0[2:2];
	wire [1:1] sub_wire2 = sub_wire0[1:1];
	wire [0:0] sub_wire1 = sub_wire0[0:0];
	wire  eq0 = sub_wire1;
	wire  eq1 = sub_wire2;
	wire  eq2 = sub_wire3;
	wire  eq3 = sub_wire4;

	lpm_decode_for_buffer_decode	lpm_decode_for_buffer_decode_component (
				.enable (enable),
				.data (data),
				.eq (sub_wire0));

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: BaseDec NUMERIC "1"
// Retrieval info: PRIVATE: EnableInput NUMERIC "1"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Stratix II"
// Retrieval info: PRIVATE: LPM_PIPELINE NUMERIC "1"
// Retrieval info: PRIVATE: Latency NUMERIC "0"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "1"
// Retrieval info: PRIVATE: aclr NUMERIC "0"
// Retrieval info: PRIVATE: clken NUMERIC "0"
// Retrieval info: PRIVATE: eq0 NUMERIC "1"
// Retrieval info: PRIVATE: eq1 NUMERIC "1"
// Retrieval info: PRIVATE: eq2 NUMERIC "1"
// Retrieval info: PRIVATE: eq3 NUMERIC "1"
// Retrieval info: PRIVATE: nBit NUMERIC "2"
// Retrieval info: CONSTANT: LPM_DECODES NUMERIC "4"
// Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_DECODE"
// Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "2"
// Retrieval info: USED_PORT: @eq 0 0 LPM_DECODES 0 OUTPUT NODEFVAL @eq[LPM_DECODES-1..0]
// Retrieval info: USED_PORT: data 0 0 2 0 INPUT NODEFVAL data[1..0]
// Retrieval info: USED_PORT: enable 0 0 0 0 INPUT NODEFVAL enable
// Retrieval info: USED_PORT: eq0 0 0 0 0 OUTPUT NODEFVAL eq0
// Retrieval info: USED_PORT: eq1 0 0 0 0 OUTPUT NODEFVAL eq1
// Retrieval info: USED_PORT: eq2 0 0 0 0 OUTPUT NODEFVAL eq2
// Retrieval info: USED_PORT: eq3 0 0 0 0 OUTPUT NODEFVAL eq3
// Retrieval info: CONNECT: @data 0 0 2 0 data 0 0 2 0
// Retrieval info: CONNECT: @enable 0 0 0 0 enable 0 0 0 0
// Retrieval info: CONNECT: eq0 0 0 0 0 @eq 0 0 1 0
// Retrieval info: CONNECT: eq1 0 0 0 0 @eq 0 0 1 1
// Retrieval info: CONNECT: eq2 0 0 0 0 @eq 0 0 1 2
// Retrieval info: CONNECT: eq3 0 0 0 0 @eq 0 0 1 3
// Retrieval info: LIBRARY: lpm lpm.lpm_components.all
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_decode_for_buffer.tdf TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_decode_for_buffer.inc TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_decode_for_buffer.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_decode_for_buffer.bsf TRUE FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_decode_for_buffer_inst.tdf FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_decode_for_buffer_syn.v TRUE
// Retrieval info: LIB_FILE: lpm