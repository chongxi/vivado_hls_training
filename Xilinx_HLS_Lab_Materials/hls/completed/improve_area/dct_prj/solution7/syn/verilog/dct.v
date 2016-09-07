// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.1
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="dct,hls_ip_2016_1,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=10.790000,HLS_SYN_LAT=607,HLS_SYN_TPT=131,HLS_SYN_MEM=22,HLS_SYN_DSP=16,HLS_SYN_FF=1714,HLS_SYN_LUT=5146}" *)

module dct (
        ap_clk,
        ap_rst,
        input_r_address0,
        input_r_ce0,
        input_r_d0,
        input_r_q0,
        input_r_we0,
        input_r_address1,
        input_r_ce1,
        input_r_d1,
        input_r_q1,
        input_r_we1,
        output_r_address0,
        output_r_ce0,
        output_r_d0,
        output_r_q0,
        output_r_we0,
        output_r_address1,
        output_r_ce1,
        output_r_d1,
        output_r_q1,
        output_r_we1,
        ap_done,
        ap_start,
        ap_ready,
        ap_idle
);

parameter    ap_const_lv6_0 = 6'b000000;
parameter    ap_const_lv16_0 = 16'b0000000000000000;
parameter    ap_const_lv128_lc_2 = 128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;

input   ap_clk;
input   ap_rst;
output  [5:0] input_r_address0;
output   input_r_ce0;
output  [15:0] input_r_d0;
input  [15:0] input_r_q0;
output   input_r_we0;
output  [5:0] input_r_address1;
output   input_r_ce1;
output  [15:0] input_r_d1;
input  [15:0] input_r_q1;
output   input_r_we1;
output  [5:0] output_r_address0;
output   output_r_ce0;
output  [15:0] output_r_d0;
input  [15:0] output_r_q0;
output   output_r_we0;
output  [5:0] output_r_address1;
output   output_r_ce1;
output  [15:0] output_r_d1;
input  [15:0] output_r_q1;
output   output_r_we1;
output   ap_done;
input   ap_start;
output   ap_ready;
output   ap_idle;

reg ap_idle;

wire   [15:0] row_outbuf_i_i_q0;
wire   [15:0] row_outbuf_i_t_q0;
wire   [15:0] col_outbuf_i_i_q0;
wire   [15:0] col_outbuf_i_t_q0;
wire   [127:0] col_inbuf_i_q0;
wire   [127:0] col_inbuf_t_q0;
wire   [127:0] buf_2d_in_i_q0;
wire   [127:0] buf_2d_in_t_q0;
wire   [15:0] buf_2d_out_i_q0;
wire   [15:0] buf_2d_out_t_q0;
wire    dct_read_data_U0_ap_start;
wire    dct_read_data_U0_ap_done;
wire    dct_read_data_U0_ap_continue;
wire    dct_read_data_U0_ap_idle;
wire    dct_read_data_U0_ap_ready;
wire   [5:0] dct_read_data_U0_input_r_address0;
wire    dct_read_data_U0_input_r_ce0;
wire   [2:0] dct_read_data_U0_buf_r_address0;
wire    dct_read_data_U0_buf_r_ce0;
wire    dct_read_data_U0_buf_r_we0;
wire   [127:0] dct_read_data_U0_buf_r_d0;
wire    ap_chn_write_dct_read_data_U0_buf_2d_in;
wire    dct_read_data_U0_buf_r_pipo_status;
wire    dct_Loop_Row_DCT_Loop_proc_U0_ap_start;
wire    dct_Loop_Row_DCT_Loop_proc_U0_ap_done;
wire    dct_Loop_Row_DCT_Loop_proc_U0_ap_continue;
wire    dct_Loop_Row_DCT_Loop_proc_U0_ap_idle;
wire    dct_Loop_Row_DCT_Loop_proc_U0_ap_ready;
wire   [2:0] dct_Loop_Row_DCT_Loop_proc_U0_buf_2d_in_address0;
wire    dct_Loop_Row_DCT_Loop_proc_U0_buf_2d_in_ce0;
wire   [5:0] dct_Loop_Row_DCT_Loop_proc_U0_row_outbuf_i_address0;
wire    dct_Loop_Row_DCT_Loop_proc_U0_row_outbuf_i_ce0;
wire    dct_Loop_Row_DCT_Loop_proc_U0_row_outbuf_i_we0;
wire   [15:0] dct_Loop_Row_DCT_Loop_proc_U0_row_outbuf_i_d0;
wire    ap_chn_write_dct_Loop_Row_DCT_Loop_proc_U0_row_outbuf_i;
wire    dct_Loop_Row_DCT_Loop_proc_U0_row_outbuf_i_pipo_status;
wire    dct_Loop_Xpose_Row_Outer_Loop_proc_U0_ap_start;
wire    dct_Loop_Xpose_Row_Outer_Loop_proc_U0_ap_done;
wire    dct_Loop_Xpose_Row_Outer_Loop_proc_U0_ap_continue;
wire    dct_Loop_Xpose_Row_Outer_Loop_proc_U0_ap_idle;
wire    dct_Loop_Xpose_Row_Outer_Loop_proc_U0_ap_ready;
wire   [5:0] dct_Loop_Xpose_Row_Outer_Loop_proc_U0_row_outbuf_i_address0;
wire    dct_Loop_Xpose_Row_Outer_Loop_proc_U0_row_outbuf_i_ce0;
wire   [2:0] dct_Loop_Xpose_Row_Outer_Loop_proc_U0_col_inbuf_address0;
wire    dct_Loop_Xpose_Row_Outer_Loop_proc_U0_col_inbuf_ce0;
wire    dct_Loop_Xpose_Row_Outer_Loop_proc_U0_col_inbuf_we0;
wire   [127:0] dct_Loop_Xpose_Row_Outer_Loop_proc_U0_col_inbuf_d0;
wire    ap_chn_write_dct_Loop_Xpose_Row_Outer_Loop_proc_U0_col_inbuf;
wire    dct_Loop_Xpose_Row_Outer_Loop_proc_U0_col_inbuf_pipo_status;
wire    dct_Loop_Col_DCT_Loop_proc_U0_ap_start;
wire    dct_Loop_Col_DCT_Loop_proc_U0_ap_done;
wire    dct_Loop_Col_DCT_Loop_proc_U0_ap_continue;
wire    dct_Loop_Col_DCT_Loop_proc_U0_ap_idle;
wire    dct_Loop_Col_DCT_Loop_proc_U0_ap_ready;
wire   [2:0] dct_Loop_Col_DCT_Loop_proc_U0_col_inbuf_address0;
wire    dct_Loop_Col_DCT_Loop_proc_U0_col_inbuf_ce0;
wire   [5:0] dct_Loop_Col_DCT_Loop_proc_U0_col_outbuf_i_address0;
wire    dct_Loop_Col_DCT_Loop_proc_U0_col_outbuf_i_ce0;
wire    dct_Loop_Col_DCT_Loop_proc_U0_col_outbuf_i_we0;
wire   [15:0] dct_Loop_Col_DCT_Loop_proc_U0_col_outbuf_i_d0;
wire    ap_chn_write_dct_Loop_Col_DCT_Loop_proc_U0_col_outbuf_i;
wire    dct_Loop_Col_DCT_Loop_proc_U0_col_outbuf_i_pipo_status;
wire    dct_Loop_Xpose_Col_Outer_Loop_proc_U0_ap_start;
wire    dct_Loop_Xpose_Col_Outer_Loop_proc_U0_ap_done;
wire    dct_Loop_Xpose_Col_Outer_Loop_proc_U0_ap_continue;
wire    dct_Loop_Xpose_Col_Outer_Loop_proc_U0_ap_idle;
wire    dct_Loop_Xpose_Col_Outer_Loop_proc_U0_ap_ready;
wire   [5:0] dct_Loop_Xpose_Col_Outer_Loop_proc_U0_col_outbuf_i_address0;
wire    dct_Loop_Xpose_Col_Outer_Loop_proc_U0_col_outbuf_i_ce0;
wire   [5:0] dct_Loop_Xpose_Col_Outer_Loop_proc_U0_buf_2d_out_address0;
wire    dct_Loop_Xpose_Col_Outer_Loop_proc_U0_buf_2d_out_ce0;
wire    dct_Loop_Xpose_Col_Outer_Loop_proc_U0_buf_2d_out_we0;
wire   [15:0] dct_Loop_Xpose_Col_Outer_Loop_proc_U0_buf_2d_out_d0;
wire    ap_chn_write_dct_Loop_Xpose_Col_Outer_Loop_proc_U0_buf_2d_out;
wire    dct_Loop_Xpose_Col_Outer_Loop_proc_U0_buf_2d_out_pipo_status;
wire    dct_write_data_U0_ap_start;
wire    dct_write_data_U0_ap_done;
wire    dct_write_data_U0_ap_continue;
wire    dct_write_data_U0_ap_idle;
wire    dct_write_data_U0_ap_ready;
wire   [5:0] dct_write_data_U0_buf_r_address0;
wire    dct_write_data_U0_buf_r_ce0;
wire   [5:0] dct_write_data_U0_output_r_address0;
wire    dct_write_data_U0_output_r_ce0;
wire    dct_write_data_U0_output_r_we0;
wire   [15:0] dct_write_data_U0_output_r_d0;
wire    ap_sig_hs_continue;
wire    buf_2d_in_i_full_n;
wire    buf_2d_in_t_empty_n;
wire    row_outbuf_i_i_full_n;
wire    row_outbuf_i_t_empty_n;
wire    col_inbuf_i_full_n;
wire    col_inbuf_t_empty_n;
wire    col_outbuf_i_i_full_n;
wire    col_outbuf_i_t_empty_n;
wire    buf_2d_out_i_full_n;
wire    buf_2d_out_t_empty_n;
reg    ap_sig_hs_done;
wire    ap_sig_hs_ready;

dct_row_outbuf_i #(
    .DataWidth( 16 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
row_outbuf_i_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .i_address0(dct_Loop_Row_DCT_Loop_proc_U0_row_outbuf_i_address0),
    .i_ce0(dct_Loop_Row_DCT_Loop_proc_U0_row_outbuf_i_ce0),
    .i_we0(dct_Loop_Row_DCT_Loop_proc_U0_row_outbuf_i_we0),
    .i_d0(dct_Loop_Row_DCT_Loop_proc_U0_row_outbuf_i_d0),
    .i_q0(row_outbuf_i_i_q0),
    .t_address0(dct_Loop_Xpose_Row_Outer_Loop_proc_U0_row_outbuf_i_address0),
    .t_ce0(dct_Loop_Xpose_Row_Outer_Loop_proc_U0_row_outbuf_i_ce0),
    .t_we0(1'b0),
    .t_d0(ap_const_lv16_0),
    .t_q0(row_outbuf_i_t_q0),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(row_outbuf_i_i_full_n),
    .i_write(dct_Loop_Row_DCT_Loop_proc_U0_ap_done),
    .t_empty_n(row_outbuf_i_t_empty_n),
    .t_read(dct_Loop_Xpose_Row_Outer_Loop_proc_U0_ap_ready)
);

dct_row_outbuf_i #(
    .DataWidth( 16 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
col_outbuf_i_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .i_address0(dct_Loop_Col_DCT_Loop_proc_U0_col_outbuf_i_address0),
    .i_ce0(dct_Loop_Col_DCT_Loop_proc_U0_col_outbuf_i_ce0),
    .i_we0(dct_Loop_Col_DCT_Loop_proc_U0_col_outbuf_i_we0),
    .i_d0(dct_Loop_Col_DCT_Loop_proc_U0_col_outbuf_i_d0),
    .i_q0(col_outbuf_i_i_q0),
    .t_address0(dct_Loop_Xpose_Col_Outer_Loop_proc_U0_col_outbuf_i_address0),
    .t_ce0(dct_Loop_Xpose_Col_Outer_Loop_proc_U0_col_outbuf_i_ce0),
    .t_we0(1'b0),
    .t_d0(ap_const_lv16_0),
    .t_q0(col_outbuf_i_t_q0),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(col_outbuf_i_i_full_n),
    .i_write(dct_Loop_Col_DCT_Loop_proc_U0_ap_done),
    .t_empty_n(col_outbuf_i_t_empty_n),
    .t_read(dct_Loop_Xpose_Col_Outer_Loop_proc_U0_ap_ready)
);

dct_col_inbuf #(
    .DataWidth( 128 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
col_inbuf_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .i_address0(dct_Loop_Xpose_Row_Outer_Loop_proc_U0_col_inbuf_address0),
    .i_ce0(dct_Loop_Xpose_Row_Outer_Loop_proc_U0_col_inbuf_ce0),
    .i_we0(dct_Loop_Xpose_Row_Outer_Loop_proc_U0_col_inbuf_we0),
    .i_d0(dct_Loop_Xpose_Row_Outer_Loop_proc_U0_col_inbuf_d0),
    .i_q0(col_inbuf_i_q0),
    .t_address0(dct_Loop_Col_DCT_Loop_proc_U0_col_inbuf_address0),
    .t_ce0(dct_Loop_Col_DCT_Loop_proc_U0_col_inbuf_ce0),
    .t_we0(1'b0),
    .t_d0(ap_const_lv128_lc_2),
    .t_q0(col_inbuf_t_q0),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(col_inbuf_i_full_n),
    .i_write(dct_Loop_Xpose_Row_Outer_Loop_proc_U0_ap_done),
    .t_empty_n(col_inbuf_t_empty_n),
    .t_read(dct_Loop_Col_DCT_Loop_proc_U0_ap_ready)
);

dct_col_inbuf #(
    .DataWidth( 128 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
buf_2d_in_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .i_address0(dct_read_data_U0_buf_r_address0),
    .i_ce0(dct_read_data_U0_buf_r_ce0),
    .i_we0(dct_read_data_U0_buf_r_we0),
    .i_d0(dct_read_data_U0_buf_r_d0),
    .i_q0(buf_2d_in_i_q0),
    .t_address0(dct_Loop_Row_DCT_Loop_proc_U0_buf_2d_in_address0),
    .t_ce0(dct_Loop_Row_DCT_Loop_proc_U0_buf_2d_in_ce0),
    .t_we0(1'b0),
    .t_d0(ap_const_lv128_lc_2),
    .t_q0(buf_2d_in_t_q0),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(buf_2d_in_i_full_n),
    .i_write(dct_read_data_U0_ap_done),
    .t_empty_n(buf_2d_in_t_empty_n),
    .t_read(dct_Loop_Row_DCT_Loop_proc_U0_ap_ready)
);

dct_row_outbuf_i #(
    .DataWidth( 16 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
buf_2d_out_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .i_address0(dct_Loop_Xpose_Col_Outer_Loop_proc_U0_buf_2d_out_address0),
    .i_ce0(dct_Loop_Xpose_Col_Outer_Loop_proc_U0_buf_2d_out_ce0),
    .i_we0(dct_Loop_Xpose_Col_Outer_Loop_proc_U0_buf_2d_out_we0),
    .i_d0(dct_Loop_Xpose_Col_Outer_Loop_proc_U0_buf_2d_out_d0),
    .i_q0(buf_2d_out_i_q0),
    .t_address0(dct_write_data_U0_buf_r_address0),
    .t_ce0(dct_write_data_U0_buf_r_ce0),
    .t_we0(1'b0),
    .t_d0(ap_const_lv16_0),
    .t_q0(buf_2d_out_t_q0),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(buf_2d_out_i_full_n),
    .i_write(dct_Loop_Xpose_Col_Outer_Loop_proc_U0_ap_done),
    .t_empty_n(buf_2d_out_t_empty_n),
    .t_read(dct_write_data_U0_ap_ready)
);

dct_read_data dct_read_data_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(dct_read_data_U0_ap_start),
    .ap_done(dct_read_data_U0_ap_done),
    .ap_continue(dct_read_data_U0_ap_continue),
    .ap_idle(dct_read_data_U0_ap_idle),
    .ap_ready(dct_read_data_U0_ap_ready),
    .input_r_address0(dct_read_data_U0_input_r_address0),
    .input_r_ce0(dct_read_data_U0_input_r_ce0),
    .input_r_q0(input_r_q0),
    .buf_r_address0(dct_read_data_U0_buf_r_address0),
    .buf_r_ce0(dct_read_data_U0_buf_r_ce0),
    .buf_r_we0(dct_read_data_U0_buf_r_we0),
    .buf_r_d0(dct_read_data_U0_buf_r_d0),
    .buf_r_q0(buf_2d_in_i_q0)
);

dct_Loop_Row_DCT_Loop_proc dct_Loop_Row_DCT_Loop_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(dct_Loop_Row_DCT_Loop_proc_U0_ap_start),
    .ap_done(dct_Loop_Row_DCT_Loop_proc_U0_ap_done),
    .ap_continue(dct_Loop_Row_DCT_Loop_proc_U0_ap_continue),
    .ap_idle(dct_Loop_Row_DCT_Loop_proc_U0_ap_idle),
    .ap_ready(dct_Loop_Row_DCT_Loop_proc_U0_ap_ready),
    .buf_2d_in_address0(dct_Loop_Row_DCT_Loop_proc_U0_buf_2d_in_address0),
    .buf_2d_in_ce0(dct_Loop_Row_DCT_Loop_proc_U0_buf_2d_in_ce0),
    .buf_2d_in_q0(buf_2d_in_t_q0),
    .row_outbuf_i_address0(dct_Loop_Row_DCT_Loop_proc_U0_row_outbuf_i_address0),
    .row_outbuf_i_ce0(dct_Loop_Row_DCT_Loop_proc_U0_row_outbuf_i_ce0),
    .row_outbuf_i_we0(dct_Loop_Row_DCT_Loop_proc_U0_row_outbuf_i_we0),
    .row_outbuf_i_d0(dct_Loop_Row_DCT_Loop_proc_U0_row_outbuf_i_d0)
);

dct_Loop_Xpose_Row_Outer_Loop_proc dct_Loop_Xpose_Row_Outer_Loop_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(dct_Loop_Xpose_Row_Outer_Loop_proc_U0_ap_start),
    .ap_done(dct_Loop_Xpose_Row_Outer_Loop_proc_U0_ap_done),
    .ap_continue(dct_Loop_Xpose_Row_Outer_Loop_proc_U0_ap_continue),
    .ap_idle(dct_Loop_Xpose_Row_Outer_Loop_proc_U0_ap_idle),
    .ap_ready(dct_Loop_Xpose_Row_Outer_Loop_proc_U0_ap_ready),
    .row_outbuf_i_address0(dct_Loop_Xpose_Row_Outer_Loop_proc_U0_row_outbuf_i_address0),
    .row_outbuf_i_ce0(dct_Loop_Xpose_Row_Outer_Loop_proc_U0_row_outbuf_i_ce0),
    .row_outbuf_i_q0(row_outbuf_i_t_q0),
    .col_inbuf_address0(dct_Loop_Xpose_Row_Outer_Loop_proc_U0_col_inbuf_address0),
    .col_inbuf_ce0(dct_Loop_Xpose_Row_Outer_Loop_proc_U0_col_inbuf_ce0),
    .col_inbuf_we0(dct_Loop_Xpose_Row_Outer_Loop_proc_U0_col_inbuf_we0),
    .col_inbuf_d0(dct_Loop_Xpose_Row_Outer_Loop_proc_U0_col_inbuf_d0),
    .col_inbuf_q0(col_inbuf_i_q0)
);

dct_Loop_Col_DCT_Loop_proc dct_Loop_Col_DCT_Loop_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(dct_Loop_Col_DCT_Loop_proc_U0_ap_start),
    .ap_done(dct_Loop_Col_DCT_Loop_proc_U0_ap_done),
    .ap_continue(dct_Loop_Col_DCT_Loop_proc_U0_ap_continue),
    .ap_idle(dct_Loop_Col_DCT_Loop_proc_U0_ap_idle),
    .ap_ready(dct_Loop_Col_DCT_Loop_proc_U0_ap_ready),
    .col_inbuf_address0(dct_Loop_Col_DCT_Loop_proc_U0_col_inbuf_address0),
    .col_inbuf_ce0(dct_Loop_Col_DCT_Loop_proc_U0_col_inbuf_ce0),
    .col_inbuf_q0(col_inbuf_t_q0),
    .col_outbuf_i_address0(dct_Loop_Col_DCT_Loop_proc_U0_col_outbuf_i_address0),
    .col_outbuf_i_ce0(dct_Loop_Col_DCT_Loop_proc_U0_col_outbuf_i_ce0),
    .col_outbuf_i_we0(dct_Loop_Col_DCT_Loop_proc_U0_col_outbuf_i_we0),
    .col_outbuf_i_d0(dct_Loop_Col_DCT_Loop_proc_U0_col_outbuf_i_d0)
);

dct_Loop_Xpose_Col_Outer_Loop_proc dct_Loop_Xpose_Col_Outer_Loop_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(dct_Loop_Xpose_Col_Outer_Loop_proc_U0_ap_start),
    .ap_done(dct_Loop_Xpose_Col_Outer_Loop_proc_U0_ap_done),
    .ap_continue(dct_Loop_Xpose_Col_Outer_Loop_proc_U0_ap_continue),
    .ap_idle(dct_Loop_Xpose_Col_Outer_Loop_proc_U0_ap_idle),
    .ap_ready(dct_Loop_Xpose_Col_Outer_Loop_proc_U0_ap_ready),
    .col_outbuf_i_address0(dct_Loop_Xpose_Col_Outer_Loop_proc_U0_col_outbuf_i_address0),
    .col_outbuf_i_ce0(dct_Loop_Xpose_Col_Outer_Loop_proc_U0_col_outbuf_i_ce0),
    .col_outbuf_i_q0(col_outbuf_i_t_q0),
    .buf_2d_out_address0(dct_Loop_Xpose_Col_Outer_Loop_proc_U0_buf_2d_out_address0),
    .buf_2d_out_ce0(dct_Loop_Xpose_Col_Outer_Loop_proc_U0_buf_2d_out_ce0),
    .buf_2d_out_we0(dct_Loop_Xpose_Col_Outer_Loop_proc_U0_buf_2d_out_we0),
    .buf_2d_out_d0(dct_Loop_Xpose_Col_Outer_Loop_proc_U0_buf_2d_out_d0)
);

dct_write_data dct_write_data_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(dct_write_data_U0_ap_start),
    .ap_done(dct_write_data_U0_ap_done),
    .ap_continue(dct_write_data_U0_ap_continue),
    .ap_idle(dct_write_data_U0_ap_idle),
    .ap_ready(dct_write_data_U0_ap_ready),
    .buf_r_address0(dct_write_data_U0_buf_r_address0),
    .buf_r_ce0(dct_write_data_U0_buf_r_ce0),
    .buf_r_q0(buf_2d_out_t_q0),
    .output_r_address0(dct_write_data_U0_output_r_address0),
    .output_r_ce0(dct_write_data_U0_output_r_ce0),
    .output_r_we0(dct_write_data_U0_output_r_we0),
    .output_r_d0(dct_write_data_U0_output_r_d0)
);

always @ (*) begin
    if (((1'b1 == dct_read_data_U0_ap_idle) & (1'b1 == dct_Loop_Row_DCT_Loop_proc_U0_ap_idle) & (1'b1 == dct_Loop_Xpose_Row_Outer_Loop_proc_U0_ap_idle) & (1'b1 == dct_Loop_Col_DCT_Loop_proc_U0_ap_idle) & (1'b1 == dct_Loop_Xpose_Col_Outer_Loop_proc_U0_ap_idle) & (1'b1 == dct_write_data_U0_ap_idle) & (1'b0 == buf_2d_in_t_empty_n) & (1'b0 == row_outbuf_i_t_empty_n) & (1'b0 == col_inbuf_t_empty_n) & (1'b0 == col_outbuf_i_t_empty_n) & (1'b0 == buf_2d_out_t_empty_n))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == dct_write_data_U0_ap_done)) begin
        ap_sig_hs_done = 1'b1;
    end else begin
        ap_sig_hs_done = 1'b0;
    end
end

assign ap_chn_write_dct_Loop_Col_DCT_Loop_proc_U0_col_outbuf_i = dct_Loop_Col_DCT_Loop_proc_U0_ap_done;

assign ap_chn_write_dct_Loop_Row_DCT_Loop_proc_U0_row_outbuf_i = dct_Loop_Row_DCT_Loop_proc_U0_ap_done;

assign ap_chn_write_dct_Loop_Xpose_Col_Outer_Loop_proc_U0_buf_2d_out = dct_Loop_Xpose_Col_Outer_Loop_proc_U0_ap_done;

assign ap_chn_write_dct_Loop_Xpose_Row_Outer_Loop_proc_U0_col_inbuf = dct_Loop_Xpose_Row_Outer_Loop_proc_U0_ap_done;

assign ap_chn_write_dct_read_data_U0_buf_2d_in = dct_read_data_U0_ap_done;

assign ap_done = ap_sig_hs_done;

assign ap_ready = dct_read_data_U0_ap_ready;

assign ap_sig_hs_continue = 1'b1;

assign ap_sig_hs_ready = dct_read_data_U0_ap_ready;

assign dct_Loop_Col_DCT_Loop_proc_U0_ap_continue = col_outbuf_i_i_full_n;

assign dct_Loop_Col_DCT_Loop_proc_U0_ap_start = col_inbuf_t_empty_n;

assign dct_Loop_Col_DCT_Loop_proc_U0_col_outbuf_i_pipo_status = col_outbuf_i_i_full_n;

assign dct_Loop_Row_DCT_Loop_proc_U0_ap_continue = row_outbuf_i_i_full_n;

assign dct_Loop_Row_DCT_Loop_proc_U0_ap_start = buf_2d_in_t_empty_n;

assign dct_Loop_Row_DCT_Loop_proc_U0_row_outbuf_i_pipo_status = row_outbuf_i_i_full_n;

assign dct_Loop_Xpose_Col_Outer_Loop_proc_U0_ap_continue = buf_2d_out_i_full_n;

assign dct_Loop_Xpose_Col_Outer_Loop_proc_U0_ap_start = col_outbuf_i_t_empty_n;

assign dct_Loop_Xpose_Col_Outer_Loop_proc_U0_buf_2d_out_pipo_status = buf_2d_out_i_full_n;

assign dct_Loop_Xpose_Row_Outer_Loop_proc_U0_ap_continue = col_inbuf_i_full_n;

assign dct_Loop_Xpose_Row_Outer_Loop_proc_U0_ap_start = row_outbuf_i_t_empty_n;

assign dct_Loop_Xpose_Row_Outer_Loop_proc_U0_col_inbuf_pipo_status = col_inbuf_i_full_n;

assign dct_read_data_U0_ap_continue = buf_2d_in_i_full_n;

assign dct_read_data_U0_ap_start = ap_start;

assign dct_read_data_U0_buf_r_pipo_status = buf_2d_in_i_full_n;

assign dct_write_data_U0_ap_continue = 1'b1;

assign dct_write_data_U0_ap_start = buf_2d_out_t_empty_n;

assign input_r_address0 = dct_read_data_U0_input_r_address0;

assign input_r_address1 = ap_const_lv6_0;

assign input_r_ce0 = dct_read_data_U0_input_r_ce0;

assign input_r_ce1 = 1'b0;

assign input_r_d0 = ap_const_lv16_0;

assign input_r_d1 = ap_const_lv16_0;

assign input_r_we0 = 1'b0;

assign input_r_we1 = 1'b0;

assign output_r_address0 = dct_write_data_U0_output_r_address0;

assign output_r_address1 = ap_const_lv6_0;

assign output_r_ce0 = dct_write_data_U0_output_r_ce0;

assign output_r_ce1 = 1'b0;

assign output_r_d0 = dct_write_data_U0_output_r_d0;

assign output_r_d1 = ap_const_lv16_0;

assign output_r_we0 = dct_write_data_U0_output_r_we0;

assign output_r_we1 = 1'b0;

endmodule //dct
