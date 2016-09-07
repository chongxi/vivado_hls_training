// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.1
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="yuv_filter,hls_ip_2016_1,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=11.190000,HLS_SYN_LAT=18047565,HLS_SYN_TPT=none,HLS_SYN_MEM=12288,HLS_SYN_DSP=12,HLS_SYN_FF=716,HLS_SYN_LUT=760}" *)

module yuv_filter (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        in_channels_ch1_address0,
        in_channels_ch1_ce0,
        in_channels_ch1_q0,
        in_channels_ch2_address0,
        in_channels_ch2_ce0,
        in_channels_ch2_q0,
        in_channels_ch3_address0,
        in_channels_ch3_ce0,
        in_channels_ch3_q0,
        in_width,
        in_height,
        out_channels_ch1_address0,
        out_channels_ch1_ce0,
        out_channels_ch1_we0,
        out_channels_ch1_d0,
        out_channels_ch2_address0,
        out_channels_ch2_ce0,
        out_channels_ch2_we0,
        out_channels_ch2_d0,
        out_channels_ch3_address0,
        out_channels_ch3_ce0,
        out_channels_ch3_we0,
        out_channels_ch3_d0,
        out_width,
        out_width_ap_vld,
        out_height,
        out_height_ap_vld,
        Y_scale,
        U_scale,
        V_scale
);

parameter    ap_ST_st1_fsm_0 = 11'b1;
parameter    ap_ST_st2_fsm_1 = 11'b10;
parameter    ap_ST_st3_fsm_2 = 11'b100;
parameter    ap_ST_st4_fsm_3 = 11'b1000;
parameter    ap_ST_st5_fsm_4 = 11'b10000;
parameter    ap_ST_st6_fsm_5 = 11'b100000;
parameter    ap_ST_st7_fsm_6 = 11'b1000000;
parameter    ap_ST_st8_fsm_7 = 11'b10000000;
parameter    ap_ST_st9_fsm_8 = 11'b100000000;
parameter    ap_ST_st10_fsm_9 = 11'b1000000000;
parameter    ap_ST_st11_fsm_10 = 11'b10000000000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv32_6 = 32'b110;
parameter    ap_const_lv32_7 = 32'b111;
parameter    ap_const_lv32_8 = 32'b1000;
parameter    ap_const_lv16_0 = 16'b0000000000000000;
parameter    ap_const_lv32_9 = 32'b1001;
parameter    ap_const_lv32_A = 32'b1010;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_const_lv16_1 = 16'b1;
parameter    ap_const_lv10_0 = 10'b0000000000;
parameter    ap_const_lv8_0 = 8'b00000000;
parameter    ap_const_lv32_E = 32'b1110;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [21:0] in_channels_ch1_address0;
output   in_channels_ch1_ce0;
input  [7:0] in_channels_ch1_q0;
output  [21:0] in_channels_ch2_address0;
output   in_channels_ch2_ce0;
input  [7:0] in_channels_ch2_q0;
output  [21:0] in_channels_ch3_address0;
output   in_channels_ch3_ce0;
input  [7:0] in_channels_ch3_q0;
input  [15:0] in_width;
input  [15:0] in_height;
output  [21:0] out_channels_ch1_address0;
output   out_channels_ch1_ce0;
output   out_channels_ch1_we0;
output  [7:0] out_channels_ch1_d0;
output  [21:0] out_channels_ch2_address0;
output   out_channels_ch2_ce0;
output   out_channels_ch2_we0;
output  [7:0] out_channels_ch2_d0;
output  [21:0] out_channels_ch3_address0;
output   out_channels_ch3_ce0;
output   out_channels_ch3_we0;
output  [7:0] out_channels_ch3_d0;
output  [15:0] out_width;
output   out_width_ap_vld;
output  [15:0] out_height;
output   out_height_ap_vld;
input  [7:0] Y_scale;
input  [7:0] U_scale;
input  [7:0] V_scale;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg out_width_ap_vld;
reg out_height_ap_vld;

(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_26;
reg   [15:0] p_yuv_width_reg_441;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_95;
wire    grp_yuv_filter_rgb2yuv_fu_244_ap_done;
reg   [15:0] p_yuv_height_reg_447;
wire   [14:0] tmp_i_cast_fu_287_p1;
reg   [14:0] tmp_i_cast_reg_453;
wire   [14:0] tmp_1_i_cast_fu_291_p1;
reg   [14:0] tmp_1_i_cast_reg_458;
wire   [14:0] tmp_2_i_cast_fu_295_p1;
reg   [14:0] tmp_2_i_cast_reg_463;
wire   [15:0] x_fu_304_p2;
reg   [15:0] x_reg_471;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_116;
wire   [22:0] tmp_2_fu_334_p2;
reg   [22:0] tmp_2_reg_476;
wire   [0:0] exitcond1_i_fu_299_p2;
wire   [15:0] y_fu_345_p2;
reg   [15:0] y_reg_484;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_131;
wire   [63:0] tmp_3_cast_fu_360_p1;
reg   [63:0] tmp_3_cast_reg_489;
wire   [0:0] exitcond_i_fu_340_p2;
wire   [7:0] p_yuv_channels_ch1_q0;
reg   [7:0] Y_reg_511;
reg    ap_sig_cseq_ST_st7_fsm_6;
reg    ap_sig_151;
wire   [7:0] p_yuv_channels_ch2_q0;
reg   [7:0] U_reg_516;
wire   [7:0] p_yuv_channels_ch3_q0;
reg   [7:0] V_reg_521;
reg   [7:0] tmp_10_i_reg_526;
reg    ap_sig_cseq_ST_st8_fsm_7;
reg    ap_sig_164;
reg   [7:0] tmp_11_i_reg_531;
reg   [7:0] tmp_12_i_reg_536;
reg    ap_sig_cseq_ST_st9_fsm_8;
reg    ap_sig_177;
reg   [21:0] p_yuv_channels_ch1_address0;
reg    p_yuv_channels_ch1_ce0;
reg    p_yuv_channels_ch1_we0;
reg   [21:0] p_yuv_channels_ch2_address0;
reg    p_yuv_channels_ch2_ce0;
reg    p_yuv_channels_ch2_we0;
reg   [21:0] p_yuv_channels_ch3_address0;
reg    p_yuv_channels_ch3_ce0;
reg    p_yuv_channels_ch3_we0;
reg   [21:0] p_scale_channels_ch1_address0;
reg    p_scale_channels_ch1_ce0;
reg    p_scale_channels_ch1_we0;
wire   [7:0] p_scale_channels_ch1_q0;
reg   [21:0] p_scale_channels_ch2_address0;
reg    p_scale_channels_ch2_ce0;
reg    p_scale_channels_ch2_we0;
wire   [7:0] p_scale_channels_ch2_q0;
reg   [21:0] p_scale_channels_ch3_address0;
reg    p_scale_channels_ch3_ce0;
reg    p_scale_channels_ch3_we0;
wire   [7:0] p_scale_channels_ch3_q0;
wire    grp_yuv_filter_rgb2yuv_fu_244_ap_start;
wire    grp_yuv_filter_rgb2yuv_fu_244_ap_idle;
wire    grp_yuv_filter_rgb2yuv_fu_244_ap_ready;
wire   [21:0] grp_yuv_filter_rgb2yuv_fu_244_in_channels_ch1_address0;
wire    grp_yuv_filter_rgb2yuv_fu_244_in_channels_ch1_ce0;
wire   [21:0] grp_yuv_filter_rgb2yuv_fu_244_in_channels_ch2_address0;
wire    grp_yuv_filter_rgb2yuv_fu_244_in_channels_ch2_ce0;
wire   [21:0] grp_yuv_filter_rgb2yuv_fu_244_in_channels_ch3_address0;
wire    grp_yuv_filter_rgb2yuv_fu_244_in_channels_ch3_ce0;
wire   [21:0] grp_yuv_filter_rgb2yuv_fu_244_out_channels_ch1_address0;
wire    grp_yuv_filter_rgb2yuv_fu_244_out_channels_ch1_ce0;
wire    grp_yuv_filter_rgb2yuv_fu_244_out_channels_ch1_we0;
wire   [7:0] grp_yuv_filter_rgb2yuv_fu_244_out_channels_ch1_d0;
wire   [21:0] grp_yuv_filter_rgb2yuv_fu_244_out_channels_ch2_address0;
wire    grp_yuv_filter_rgb2yuv_fu_244_out_channels_ch2_ce0;
wire    grp_yuv_filter_rgb2yuv_fu_244_out_channels_ch2_we0;
wire   [7:0] grp_yuv_filter_rgb2yuv_fu_244_out_channels_ch2_d0;
wire   [21:0] grp_yuv_filter_rgb2yuv_fu_244_out_channels_ch3_address0;
wire    grp_yuv_filter_rgb2yuv_fu_244_out_channels_ch3_ce0;
wire    grp_yuv_filter_rgb2yuv_fu_244_out_channels_ch3_we0;
wire   [7:0] grp_yuv_filter_rgb2yuv_fu_244_out_channels_ch3_d0;
wire   [15:0] grp_yuv_filter_rgb2yuv_fu_244_ap_return_0;
wire   [15:0] grp_yuv_filter_rgb2yuv_fu_244_ap_return_1;
wire    grp_yuv_filter_yuv2rgb_fu_264_ap_start;
wire    grp_yuv_filter_yuv2rgb_fu_264_ap_done;
wire    grp_yuv_filter_yuv2rgb_fu_264_ap_idle;
wire    grp_yuv_filter_yuv2rgb_fu_264_ap_ready;
wire   [21:0] grp_yuv_filter_yuv2rgb_fu_264_in_channels_ch1_address0;
wire    grp_yuv_filter_yuv2rgb_fu_264_in_channels_ch1_ce0;
wire   [21:0] grp_yuv_filter_yuv2rgb_fu_264_in_channels_ch2_address0;
wire    grp_yuv_filter_yuv2rgb_fu_264_in_channels_ch2_ce0;
wire   [21:0] grp_yuv_filter_yuv2rgb_fu_264_in_channels_ch3_address0;
wire    grp_yuv_filter_yuv2rgb_fu_264_in_channels_ch3_ce0;
wire   [21:0] grp_yuv_filter_yuv2rgb_fu_264_out_channels_ch1_address0;
wire    grp_yuv_filter_yuv2rgb_fu_264_out_channels_ch1_ce0;
wire    grp_yuv_filter_yuv2rgb_fu_264_out_channels_ch1_we0;
wire   [7:0] grp_yuv_filter_yuv2rgb_fu_264_out_channels_ch1_d0;
wire   [21:0] grp_yuv_filter_yuv2rgb_fu_264_out_channels_ch2_address0;
wire    grp_yuv_filter_yuv2rgb_fu_264_out_channels_ch2_ce0;
wire    grp_yuv_filter_yuv2rgb_fu_264_out_channels_ch2_we0;
wire   [7:0] grp_yuv_filter_yuv2rgb_fu_264_out_channels_ch2_d0;
wire   [21:0] grp_yuv_filter_yuv2rgb_fu_264_out_channels_ch3_address0;
wire    grp_yuv_filter_yuv2rgb_fu_264_out_channels_ch3_ce0;
wire    grp_yuv_filter_yuv2rgb_fu_264_out_channels_ch3_we0;
wire   [7:0] grp_yuv_filter_yuv2rgb_fu_264_out_channels_ch3_d0;
wire   [15:0] grp_yuv_filter_yuv2rgb_fu_264_ap_return_0;
wire   [15:0] grp_yuv_filter_yuv2rgb_fu_264_ap_return_1;
reg   [15:0] x_i_reg_222;
reg   [15:0] y_i_reg_233;
reg    ap_sig_cseq_ST_st10_fsm_9;
reg    ap_sig_308;
reg    ap_reg_grp_yuv_filter_rgb2yuv_fu_244_ap_start;
reg    ap_reg_grp_yuv_filter_yuv2rgb_fu_264_ap_start;
reg    ap_sig_cseq_ST_st11_fsm_10;
reg    ap_sig_321;
reg    ap_sig_cseq_ST_st5_fsm_4;
reg    ap_sig_336;
reg    ap_sig_cseq_ST_st6_fsm_5;
reg    ap_sig_344;
wire   [12:0] tmp_fu_310_p1;
wire   [14:0] tmp_1_fu_322_p1;
wire   [22:0] p_shl_cast_fu_314_p3;
wire   [22:0] p_shl3_cast_fu_326_p3;
wire   [22:0] tmp_5_i_cast_fu_351_p1;
wire   [22:0] tmp_3_fu_355_p2;
wire   [7:0] tmp_7_i_fu_370_p0;
wire   [7:0] tmp_7_i_fu_370_p1;
wire   [7:0] tmp_i_fu_378_p0;
wire   [7:0] tmp_i_fu_378_p1;
wire   [7:0] tmp_8_i_fu_386_p0;
wire   [7:0] tmp_8_i_fu_386_p1;
wire   [14:0] tmp_7_i_fu_370_p2;
wire   [14:0] tmp_i_fu_378_p2;
wire   [14:0] tmp_8_i_fu_386_p2;
reg   [10:0] ap_NS_fsm;
wire   [14:0] tmp_7_i_fu_370_p10;
wire   [14:0] tmp_8_i_fu_386_p10;
wire   [14:0] tmp_i_fu_378_p10;

// power-on initialization
initial begin
#0 ap_CS_fsm = 11'b1;
#0 ap_reg_grp_yuv_filter_rgb2yuv_fu_244_ap_start = 1'b0;
#0 ap_reg_grp_yuv_filter_yuv2rgb_fu_264_ap_start = 1'b0;
end

yuv_filter_p_yuv_channels_ch1 #(
    .DataWidth( 8 ),
    .AddressRange( 2457600 ),
    .AddressWidth( 22 ))
p_yuv_channels_ch1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(p_yuv_channels_ch1_address0),
    .ce0(p_yuv_channels_ch1_ce0),
    .we0(p_yuv_channels_ch1_we0),
    .d0(grp_yuv_filter_rgb2yuv_fu_244_out_channels_ch1_d0),
    .q0(p_yuv_channels_ch1_q0)
);

yuv_filter_p_yuv_channels_ch1 #(
    .DataWidth( 8 ),
    .AddressRange( 2457600 ),
    .AddressWidth( 22 ))
p_yuv_channels_ch2_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(p_yuv_channels_ch2_address0),
    .ce0(p_yuv_channels_ch2_ce0),
    .we0(p_yuv_channels_ch2_we0),
    .d0(grp_yuv_filter_rgb2yuv_fu_244_out_channels_ch2_d0),
    .q0(p_yuv_channels_ch2_q0)
);

yuv_filter_p_yuv_channels_ch1 #(
    .DataWidth( 8 ),
    .AddressRange( 2457600 ),
    .AddressWidth( 22 ))
p_yuv_channels_ch3_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(p_yuv_channels_ch3_address0),
    .ce0(p_yuv_channels_ch3_ce0),
    .we0(p_yuv_channels_ch3_we0),
    .d0(grp_yuv_filter_rgb2yuv_fu_244_out_channels_ch3_d0),
    .q0(p_yuv_channels_ch3_q0)
);

yuv_filter_p_yuv_channels_ch1 #(
    .DataWidth( 8 ),
    .AddressRange( 2457600 ),
    .AddressWidth( 22 ))
p_scale_channels_ch1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(p_scale_channels_ch1_address0),
    .ce0(p_scale_channels_ch1_ce0),
    .we0(p_scale_channels_ch1_we0),
    .d0(tmp_10_i_reg_526),
    .q0(p_scale_channels_ch1_q0)
);

yuv_filter_p_yuv_channels_ch1 #(
    .DataWidth( 8 ),
    .AddressRange( 2457600 ),
    .AddressWidth( 22 ))
p_scale_channels_ch2_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(p_scale_channels_ch2_address0),
    .ce0(p_scale_channels_ch2_ce0),
    .we0(p_scale_channels_ch2_we0),
    .d0(tmp_11_i_reg_531),
    .q0(p_scale_channels_ch2_q0)
);

yuv_filter_p_yuv_channels_ch1 #(
    .DataWidth( 8 ),
    .AddressRange( 2457600 ),
    .AddressWidth( 22 ))
p_scale_channels_ch3_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(p_scale_channels_ch3_address0),
    .ce0(p_scale_channels_ch3_ce0),
    .we0(p_scale_channels_ch3_we0),
    .d0(tmp_12_i_reg_536),
    .q0(p_scale_channels_ch3_q0)
);

yuv_filter_rgb2yuv grp_yuv_filter_rgb2yuv_fu_244(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_yuv_filter_rgb2yuv_fu_244_ap_start),
    .ap_done(grp_yuv_filter_rgb2yuv_fu_244_ap_done),
    .ap_idle(grp_yuv_filter_rgb2yuv_fu_244_ap_idle),
    .ap_ready(grp_yuv_filter_rgb2yuv_fu_244_ap_ready),
    .in_channels_ch1_address0(grp_yuv_filter_rgb2yuv_fu_244_in_channels_ch1_address0),
    .in_channels_ch1_ce0(grp_yuv_filter_rgb2yuv_fu_244_in_channels_ch1_ce0),
    .in_channels_ch1_q0(in_channels_ch1_q0),
    .in_channels_ch2_address0(grp_yuv_filter_rgb2yuv_fu_244_in_channels_ch2_address0),
    .in_channels_ch2_ce0(grp_yuv_filter_rgb2yuv_fu_244_in_channels_ch2_ce0),
    .in_channels_ch2_q0(in_channels_ch2_q0),
    .in_channels_ch3_address0(grp_yuv_filter_rgb2yuv_fu_244_in_channels_ch3_address0),
    .in_channels_ch3_ce0(grp_yuv_filter_rgb2yuv_fu_244_in_channels_ch3_ce0),
    .in_channels_ch3_q0(in_channels_ch3_q0),
    .out_width(in_width),
    .out_height(in_height),
    .out_channels_ch1_address0(grp_yuv_filter_rgb2yuv_fu_244_out_channels_ch1_address0),
    .out_channels_ch1_ce0(grp_yuv_filter_rgb2yuv_fu_244_out_channels_ch1_ce0),
    .out_channels_ch1_we0(grp_yuv_filter_rgb2yuv_fu_244_out_channels_ch1_we0),
    .out_channels_ch1_d0(grp_yuv_filter_rgb2yuv_fu_244_out_channels_ch1_d0),
    .out_channels_ch2_address0(grp_yuv_filter_rgb2yuv_fu_244_out_channels_ch2_address0),
    .out_channels_ch2_ce0(grp_yuv_filter_rgb2yuv_fu_244_out_channels_ch2_ce0),
    .out_channels_ch2_we0(grp_yuv_filter_rgb2yuv_fu_244_out_channels_ch2_we0),
    .out_channels_ch2_d0(grp_yuv_filter_rgb2yuv_fu_244_out_channels_ch2_d0),
    .out_channels_ch3_address0(grp_yuv_filter_rgb2yuv_fu_244_out_channels_ch3_address0),
    .out_channels_ch3_ce0(grp_yuv_filter_rgb2yuv_fu_244_out_channels_ch3_ce0),
    .out_channels_ch3_we0(grp_yuv_filter_rgb2yuv_fu_244_out_channels_ch3_we0),
    .out_channels_ch3_d0(grp_yuv_filter_rgb2yuv_fu_244_out_channels_ch3_d0),
    .ap_return_0(grp_yuv_filter_rgb2yuv_fu_244_ap_return_0),
    .ap_return_1(grp_yuv_filter_rgb2yuv_fu_244_ap_return_1)
);

yuv_filter_yuv2rgb grp_yuv_filter_yuv2rgb_fu_264(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_yuv_filter_yuv2rgb_fu_264_ap_start),
    .ap_done(grp_yuv_filter_yuv2rgb_fu_264_ap_done),
    .ap_idle(grp_yuv_filter_yuv2rgb_fu_264_ap_idle),
    .ap_ready(grp_yuv_filter_yuv2rgb_fu_264_ap_ready),
    .in_channels_ch1_address0(grp_yuv_filter_yuv2rgb_fu_264_in_channels_ch1_address0),
    .in_channels_ch1_ce0(grp_yuv_filter_yuv2rgb_fu_264_in_channels_ch1_ce0),
    .in_channels_ch1_q0(p_scale_channels_ch1_q0),
    .in_channels_ch2_address0(grp_yuv_filter_yuv2rgb_fu_264_in_channels_ch2_address0),
    .in_channels_ch2_ce0(grp_yuv_filter_yuv2rgb_fu_264_in_channels_ch2_ce0),
    .in_channels_ch2_q0(p_scale_channels_ch2_q0),
    .in_channels_ch3_address0(grp_yuv_filter_yuv2rgb_fu_264_in_channels_ch3_address0),
    .in_channels_ch3_ce0(grp_yuv_filter_yuv2rgb_fu_264_in_channels_ch3_ce0),
    .in_channels_ch3_q0(p_scale_channels_ch3_q0),
    .out_width(p_yuv_width_reg_441),
    .out_height(p_yuv_height_reg_447),
    .out_channels_ch1_address0(grp_yuv_filter_yuv2rgb_fu_264_out_channels_ch1_address0),
    .out_channels_ch1_ce0(grp_yuv_filter_yuv2rgb_fu_264_out_channels_ch1_ce0),
    .out_channels_ch1_we0(grp_yuv_filter_yuv2rgb_fu_264_out_channels_ch1_we0),
    .out_channels_ch1_d0(grp_yuv_filter_yuv2rgb_fu_264_out_channels_ch1_d0),
    .out_channels_ch2_address0(grp_yuv_filter_yuv2rgb_fu_264_out_channels_ch2_address0),
    .out_channels_ch2_ce0(grp_yuv_filter_yuv2rgb_fu_264_out_channels_ch2_ce0),
    .out_channels_ch2_we0(grp_yuv_filter_yuv2rgb_fu_264_out_channels_ch2_we0),
    .out_channels_ch2_d0(grp_yuv_filter_yuv2rgb_fu_264_out_channels_ch2_d0),
    .out_channels_ch3_address0(grp_yuv_filter_yuv2rgb_fu_264_out_channels_ch3_address0),
    .out_channels_ch3_ce0(grp_yuv_filter_yuv2rgb_fu_264_out_channels_ch3_ce0),
    .out_channels_ch3_we0(grp_yuv_filter_yuv2rgb_fu_264_out_channels_ch3_we0),
    .out_channels_ch3_d0(grp_yuv_filter_yuv2rgb_fu_264_out_channels_ch3_d0),
    .ap_return_0(grp_yuv_filter_yuv2rgb_fu_264_ap_return_0),
    .ap_return_1(grp_yuv_filter_yuv2rgb_fu_264_ap_return_1)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_yuv_filter_rgb2yuv_fu_244_ap_start <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
            ap_reg_grp_yuv_filter_rgb2yuv_fu_244_ap_start <= 1'b1;
        end else if ((1'b1 == grp_yuv_filter_rgb2yuv_fu_244_ap_ready)) begin
            ap_reg_grp_yuv_filter_rgb2yuv_fu_244_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_yuv_filter_yuv2rgb_fu_264_ap_start <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(exitcond1_i_fu_299_p2 == 1'b0))) begin
            ap_reg_grp_yuv_filter_yuv2rgb_fu_264_ap_start <= 1'b1;
        end else if ((1'b1 == grp_yuv_filter_yuv2rgb_fu_264_ap_ready)) begin
            ap_reg_grp_yuv_filter_yuv2rgb_fu_264_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st4_fsm_3) & ~(1'b0 == exitcond_i_fu_340_p2))) begin
        x_i_reg_222 <= x_reg_471;
    end else if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(1'b0 == grp_yuv_filter_rgb2yuv_fu_244_ap_done))) begin
        x_i_reg_222 <= ap_const_lv16_0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st10_fsm_9)) begin
        y_i_reg_233 <= y_reg_484;
    end else if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & (exitcond1_i_fu_299_p2 == 1'b0))) begin
        y_i_reg_233 <= ap_const_lv16_0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st7_fsm_6)) begin
        U_reg_516 <= p_yuv_channels_ch2_q0;
        V_reg_521 <= p_yuv_channels_ch3_q0;
        Y_reg_511 <= p_yuv_channels_ch1_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(1'b0 == grp_yuv_filter_rgb2yuv_fu_244_ap_done))) begin
        p_yuv_height_reg_447 <= grp_yuv_filter_rgb2yuv_fu_244_ap_return_1;
        p_yuv_width_reg_441 <= grp_yuv_filter_rgb2yuv_fu_244_ap_return_0;
        tmp_1_i_cast_reg_458[7 : 0] <= tmp_1_i_cast_fu_291_p1[7 : 0];
        tmp_2_i_cast_reg_463[7 : 0] <= tmp_2_i_cast_fu_295_p1[7 : 0];
        tmp_i_cast_reg_453[7 : 0] <= tmp_i_cast_fu_287_p1[7 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st8_fsm_7)) begin
        tmp_10_i_reg_526 <= {{tmp_7_i_fu_370_p2[ap_const_lv32_E : ap_const_lv32_7]}};
        tmp_11_i_reg_531 <= {{tmp_i_fu_378_p2[ap_const_lv32_E : ap_const_lv32_7]}};
        tmp_12_i_reg_536 <= {{tmp_8_i_fu_386_p2[ap_const_lv32_E : ap_const_lv32_7]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & (exitcond1_i_fu_299_p2 == 1'b0))) begin
        tmp_2_reg_476[22 : 8] <= tmp_2_fu_334_p2[22 : 8];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st4_fsm_3) & (1'b0 == exitcond_i_fu_340_p2))) begin
        tmp_3_cast_reg_489[22 : 0] <= tmp_3_cast_fu_360_p1[22 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        x_reg_471 <= x_fu_304_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        y_reg_484 <= y_fu_345_p2;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st11_fsm_10) & ~(1'b0 == grp_yuv_filter_yuv2rgb_fu_264_ap_done))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_sig_cseq_ST_st1_fsm_0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st11_fsm_10) & ~(1'b0 == grp_yuv_filter_yuv2rgb_fu_264_ap_done))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_308) begin
        ap_sig_cseq_ST_st10_fsm_9 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st10_fsm_9 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_321) begin
        ap_sig_cseq_ST_st11_fsm_10 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st11_fsm_10 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_26) begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_95) begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_116) begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_131) begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_336) begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_344) begin
        ap_sig_cseq_ST_st6_fsm_5 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st6_fsm_5 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_151) begin
        ap_sig_cseq_ST_st7_fsm_6 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st7_fsm_6 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_164) begin
        ap_sig_cseq_ST_st8_fsm_7 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st8_fsm_7 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_177) begin
        ap_sig_cseq_ST_st9_fsm_8 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st9_fsm_8 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st11_fsm_10) & ~(1'b0 == grp_yuv_filter_yuv2rgb_fu_264_ap_done))) begin
        out_height_ap_vld = 1'b1;
    end else begin
        out_height_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st11_fsm_10) & ~(1'b0 == grp_yuv_filter_yuv2rgb_fu_264_ap_done))) begin
        out_width_ap_vld = 1'b1;
    end else begin
        out_width_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st9_fsm_8)) begin
        p_scale_channels_ch1_address0 = tmp_3_cast_reg_489;
    end else if ((1'b1 == ap_sig_cseq_ST_st11_fsm_10)) begin
        p_scale_channels_ch1_address0 = grp_yuv_filter_yuv2rgb_fu_264_in_channels_ch1_address0;
    end else begin
        p_scale_channels_ch1_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st9_fsm_8) | (1'b1 == ap_sig_cseq_ST_st10_fsm_9))) begin
        p_scale_channels_ch1_ce0 = 1'b1;
    end else if ((1'b1 == ap_sig_cseq_ST_st11_fsm_10)) begin
        p_scale_channels_ch1_ce0 = grp_yuv_filter_yuv2rgb_fu_264_in_channels_ch1_ce0;
    end else begin
        p_scale_channels_ch1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st9_fsm_8)) begin
        p_scale_channels_ch1_we0 = 1'b1;
    end else begin
        p_scale_channels_ch1_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st9_fsm_8)) begin
        p_scale_channels_ch2_address0 = tmp_3_cast_reg_489;
    end else if ((1'b1 == ap_sig_cseq_ST_st11_fsm_10)) begin
        p_scale_channels_ch2_address0 = grp_yuv_filter_yuv2rgb_fu_264_in_channels_ch2_address0;
    end else begin
        p_scale_channels_ch2_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st9_fsm_8) | (1'b1 == ap_sig_cseq_ST_st10_fsm_9))) begin
        p_scale_channels_ch2_ce0 = 1'b1;
    end else if ((1'b1 == ap_sig_cseq_ST_st11_fsm_10)) begin
        p_scale_channels_ch2_ce0 = grp_yuv_filter_yuv2rgb_fu_264_in_channels_ch2_ce0;
    end else begin
        p_scale_channels_ch2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st9_fsm_8)) begin
        p_scale_channels_ch2_we0 = 1'b1;
    end else begin
        p_scale_channels_ch2_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st9_fsm_8)) begin
        p_scale_channels_ch3_address0 = tmp_3_cast_reg_489;
    end else if ((1'b1 == ap_sig_cseq_ST_st11_fsm_10)) begin
        p_scale_channels_ch3_address0 = grp_yuv_filter_yuv2rgb_fu_264_in_channels_ch3_address0;
    end else begin
        p_scale_channels_ch3_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st9_fsm_8) | (1'b1 == ap_sig_cseq_ST_st10_fsm_9))) begin
        p_scale_channels_ch3_ce0 = 1'b1;
    end else if ((1'b1 == ap_sig_cseq_ST_st11_fsm_10)) begin
        p_scale_channels_ch3_ce0 = grp_yuv_filter_yuv2rgb_fu_264_in_channels_ch3_ce0;
    end else begin
        p_scale_channels_ch3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st9_fsm_8)) begin
        p_scale_channels_ch3_we0 = 1'b1;
    end else begin
        p_scale_channels_ch3_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        p_yuv_channels_ch1_address0 = tmp_3_cast_fu_360_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        p_yuv_channels_ch1_address0 = grp_yuv_filter_rgb2yuv_fu_244_out_channels_ch1_address0;
    end else begin
        p_yuv_channels_ch1_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st4_fsm_3) | (1'b1 == ap_sig_cseq_ST_st7_fsm_6) | (1'b1 == ap_sig_cseq_ST_st5_fsm_4) | (1'b1 == ap_sig_cseq_ST_st6_fsm_5))) begin
        p_yuv_channels_ch1_ce0 = 1'b1;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        p_yuv_channels_ch1_ce0 = grp_yuv_filter_rgb2yuv_fu_244_out_channels_ch1_ce0;
    end else begin
        p_yuv_channels_ch1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        p_yuv_channels_ch1_we0 = grp_yuv_filter_rgb2yuv_fu_244_out_channels_ch1_we0;
    end else begin
        p_yuv_channels_ch1_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        p_yuv_channels_ch2_address0 = tmp_3_cast_fu_360_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        p_yuv_channels_ch2_address0 = grp_yuv_filter_rgb2yuv_fu_244_out_channels_ch2_address0;
    end else begin
        p_yuv_channels_ch2_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st4_fsm_3) | (1'b1 == ap_sig_cseq_ST_st7_fsm_6) | (1'b1 == ap_sig_cseq_ST_st5_fsm_4) | (1'b1 == ap_sig_cseq_ST_st6_fsm_5))) begin
        p_yuv_channels_ch2_ce0 = 1'b1;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        p_yuv_channels_ch2_ce0 = grp_yuv_filter_rgb2yuv_fu_244_out_channels_ch2_ce0;
    end else begin
        p_yuv_channels_ch2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        p_yuv_channels_ch2_we0 = grp_yuv_filter_rgb2yuv_fu_244_out_channels_ch2_we0;
    end else begin
        p_yuv_channels_ch2_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        p_yuv_channels_ch3_address0 = tmp_3_cast_fu_360_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        p_yuv_channels_ch3_address0 = grp_yuv_filter_rgb2yuv_fu_244_out_channels_ch3_address0;
    end else begin
        p_yuv_channels_ch3_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st4_fsm_3) | (1'b1 == ap_sig_cseq_ST_st7_fsm_6) | (1'b1 == ap_sig_cseq_ST_st5_fsm_4) | (1'b1 == ap_sig_cseq_ST_st6_fsm_5))) begin
        p_yuv_channels_ch3_ce0 = 1'b1;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        p_yuv_channels_ch3_ce0 = grp_yuv_filter_rgb2yuv_fu_244_out_channels_ch3_ce0;
    end else begin
        p_yuv_channels_ch3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        p_yuv_channels_ch3_we0 = grp_yuv_filter_rgb2yuv_fu_244_out_channels_ch3_we0;
    end else begin
        p_yuv_channels_ch3_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : begin
            if (~(ap_start == 1'b0)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : begin
            if (~(1'b0 == grp_yuv_filter_rgb2yuv_fu_244_ap_done)) begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end else begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end
        end
        ap_ST_st3_fsm_2 : begin
            if ((exitcond1_i_fu_299_p2 == 1'b0)) begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_st11_fsm_10;
            end
        end
        ap_ST_st4_fsm_3 : begin
            if (~(1'b0 == exitcond_i_fu_340_p2)) begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end else begin
                ap_NS_fsm = ap_ST_st5_fsm_4;
            end
        end
        ap_ST_st5_fsm_4 : begin
            ap_NS_fsm = ap_ST_st6_fsm_5;
        end
        ap_ST_st6_fsm_5 : begin
            ap_NS_fsm = ap_ST_st7_fsm_6;
        end
        ap_ST_st7_fsm_6 : begin
            ap_NS_fsm = ap_ST_st8_fsm_7;
        end
        ap_ST_st8_fsm_7 : begin
            ap_NS_fsm = ap_ST_st9_fsm_8;
        end
        ap_ST_st9_fsm_8 : begin
            ap_NS_fsm = ap_ST_st10_fsm_9;
        end
        ap_ST_st10_fsm_9 : begin
            ap_NS_fsm = ap_ST_st4_fsm_3;
        end
        ap_ST_st11_fsm_10 : begin
            if (~(1'b0 == grp_yuv_filter_yuv2rgb_fu_264_ap_done)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_st11_fsm_10;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

always @ (*) begin
    ap_sig_116 = (1'b1 == ap_CS_fsm[ap_const_lv32_2]);
end

always @ (*) begin
    ap_sig_131 = (1'b1 == ap_CS_fsm[ap_const_lv32_3]);
end

always @ (*) begin
    ap_sig_151 = (1'b1 == ap_CS_fsm[ap_const_lv32_6]);
end

always @ (*) begin
    ap_sig_164 = (1'b1 == ap_CS_fsm[ap_const_lv32_7]);
end

always @ (*) begin
    ap_sig_177 = (1'b1 == ap_CS_fsm[ap_const_lv32_8]);
end

always @ (*) begin
    ap_sig_26 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_308 = (1'b1 == ap_CS_fsm[ap_const_lv32_9]);
end

always @ (*) begin
    ap_sig_321 = (1'b1 == ap_CS_fsm[ap_const_lv32_A]);
end

always @ (*) begin
    ap_sig_336 = (1'b1 == ap_CS_fsm[ap_const_lv32_4]);
end

always @ (*) begin
    ap_sig_344 = (1'b1 == ap_CS_fsm[ap_const_lv32_5]);
end

always @ (*) begin
    ap_sig_95 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

assign exitcond1_i_fu_299_p2 = ((x_i_reg_222 == p_yuv_width_reg_441) ? 1'b1 : 1'b0);

assign exitcond_i_fu_340_p2 = ((y_i_reg_233 == p_yuv_height_reg_447) ? 1'b1 : 1'b0);

assign grp_yuv_filter_rgb2yuv_fu_244_ap_start = ap_reg_grp_yuv_filter_rgb2yuv_fu_244_ap_start;

assign grp_yuv_filter_yuv2rgb_fu_264_ap_start = ap_reg_grp_yuv_filter_yuv2rgb_fu_264_ap_start;

assign in_channels_ch1_address0 = grp_yuv_filter_rgb2yuv_fu_244_in_channels_ch1_address0;

assign in_channels_ch1_ce0 = grp_yuv_filter_rgb2yuv_fu_244_in_channels_ch1_ce0;

assign in_channels_ch2_address0 = grp_yuv_filter_rgb2yuv_fu_244_in_channels_ch2_address0;

assign in_channels_ch2_ce0 = grp_yuv_filter_rgb2yuv_fu_244_in_channels_ch2_ce0;

assign in_channels_ch3_address0 = grp_yuv_filter_rgb2yuv_fu_244_in_channels_ch3_address0;

assign in_channels_ch3_ce0 = grp_yuv_filter_rgb2yuv_fu_244_in_channels_ch3_ce0;

assign out_channels_ch1_address0 = grp_yuv_filter_yuv2rgb_fu_264_out_channels_ch1_address0;

assign out_channels_ch1_ce0 = grp_yuv_filter_yuv2rgb_fu_264_out_channels_ch1_ce0;

assign out_channels_ch1_d0 = grp_yuv_filter_yuv2rgb_fu_264_out_channels_ch1_d0;

assign out_channels_ch1_we0 = grp_yuv_filter_yuv2rgb_fu_264_out_channels_ch1_we0;

assign out_channels_ch2_address0 = grp_yuv_filter_yuv2rgb_fu_264_out_channels_ch2_address0;

assign out_channels_ch2_ce0 = grp_yuv_filter_yuv2rgb_fu_264_out_channels_ch2_ce0;

assign out_channels_ch2_d0 = grp_yuv_filter_yuv2rgb_fu_264_out_channels_ch2_d0;

assign out_channels_ch2_we0 = grp_yuv_filter_yuv2rgb_fu_264_out_channels_ch2_we0;

assign out_channels_ch3_address0 = grp_yuv_filter_yuv2rgb_fu_264_out_channels_ch3_address0;

assign out_channels_ch3_ce0 = grp_yuv_filter_yuv2rgb_fu_264_out_channels_ch3_ce0;

assign out_channels_ch3_d0 = grp_yuv_filter_yuv2rgb_fu_264_out_channels_ch3_d0;

assign out_channels_ch3_we0 = grp_yuv_filter_yuv2rgb_fu_264_out_channels_ch3_we0;

assign out_height = grp_yuv_filter_yuv2rgb_fu_264_ap_return_1;

assign out_width = grp_yuv_filter_yuv2rgb_fu_264_ap_return_0;

assign p_shl3_cast_fu_326_p3 = {{tmp_1_fu_322_p1}, {ap_const_lv8_0}};

assign p_shl_cast_fu_314_p3 = {{tmp_fu_310_p1}, {ap_const_lv10_0}};

assign tmp_1_fu_322_p1 = x_i_reg_222[14:0];

assign tmp_1_i_cast_fu_291_p1 = U_scale;

assign tmp_2_fu_334_p2 = (p_shl_cast_fu_314_p3 + p_shl3_cast_fu_326_p3);

assign tmp_2_i_cast_fu_295_p1 = V_scale;

assign tmp_3_cast_fu_360_p1 = tmp_3_fu_355_p2;

assign tmp_3_fu_355_p2 = (tmp_2_reg_476 + tmp_5_i_cast_fu_351_p1);

assign tmp_5_i_cast_fu_351_p1 = y_i_reg_233;

assign tmp_7_i_fu_370_p0 = tmp_i_cast_reg_453;

assign tmp_7_i_fu_370_p1 = tmp_7_i_fu_370_p10;

assign tmp_7_i_fu_370_p10 = Y_reg_511;

assign tmp_7_i_fu_370_p2 = (tmp_7_i_fu_370_p0 * tmp_7_i_fu_370_p1);

assign tmp_8_i_fu_386_p0 = tmp_2_i_cast_reg_463;

assign tmp_8_i_fu_386_p1 = tmp_8_i_fu_386_p10;

assign tmp_8_i_fu_386_p10 = V_reg_521;

assign tmp_8_i_fu_386_p2 = (tmp_8_i_fu_386_p0 * tmp_8_i_fu_386_p1);

assign tmp_fu_310_p1 = x_i_reg_222[12:0];

assign tmp_i_cast_fu_287_p1 = Y_scale;

assign tmp_i_fu_378_p0 = tmp_1_i_cast_reg_458;

assign tmp_i_fu_378_p1 = tmp_i_fu_378_p10;

assign tmp_i_fu_378_p10 = U_reg_516;

assign tmp_i_fu_378_p2 = (tmp_i_fu_378_p0 * tmp_i_fu_378_p1);

assign x_fu_304_p2 = (x_i_reg_222 + ap_const_lv16_1);

assign y_fu_345_p2 = (y_i_reg_233 + ap_const_lv16_1);

always @ (posedge ap_clk) begin
    tmp_i_cast_reg_453[14:8] <= 7'b0000000;
    tmp_1_i_cast_reg_458[14:8] <= 7'b0000000;
    tmp_2_i_cast_reg_463[14:8] <= 7'b0000000;
    tmp_2_reg_476[7:0] <= 8'b00000000;
    tmp_3_cast_reg_489[63:23] <= 41'b00000000000000000000000000000000000000000;
end

endmodule //yuv_filter