// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.1
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dct_dct_2d (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        in_block_address0,
        in_block_ce0,
        in_block_q0,
        out_block_address0,
        out_block_ce0,
        out_block_we0,
        out_block_d0
);

parameter    ap_ST_st1_fsm_0 = 8'b1;
parameter    ap_ST_st2_fsm_1 = 8'b10;
parameter    ap_ST_st3_fsm_2 = 8'b100;
parameter    ap_ST_pp0_stg0_fsm_3 = 8'b1000;
parameter    ap_ST_st6_fsm_4 = 8'b10000;
parameter    ap_ST_st7_fsm_5 = 8'b100000;
parameter    ap_ST_pp1_stg0_fsm_6 = 8'b1000000;
parameter    ap_ST_st10_fsm_7 = 8'b10000000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv32_6 = 32'b110;
parameter    ap_const_lv4_0 = 4'b0000;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv7_0 = 7'b0000000;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_const_lv4_8 = 4'b1000;
parameter    ap_const_lv4_1 = 4'b1;
parameter    ap_const_lv7_40 = 7'b1000000;
parameter    ap_const_lv7_1 = 7'b1;
parameter    ap_const_lv3_0 = 3'b000;
parameter    ap_const_lv32_7 = 32'b111;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] in_block_address0;
output   in_block_ce0;
input  [15:0] in_block_q0;
output  [5:0] out_block_address0;
output   out_block_ce0;
output   out_block_we0;
output  [15:0] out_block_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg out_block_ce0;
reg out_block_we0;

(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_25;
reg   [6:0] indvar_flatten_reg_133;
reg   [3:0] j_reg_144;
reg   [3:0] i_1_reg_155;
reg   [6:0] indvar_flatten1_reg_178;
reg   [3:0] j_1_reg_189;
reg   [3:0] i_3_reg_200;
wire   [0:0] exitcond5_fu_226_p2;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_62;
wire   [3:0] i_4_fu_232_p2;
reg   [3:0] i_4_reg_450;
wire   [0:0] exitcond_flatten_fu_238_p2;
reg   [0:0] exitcond_flatten_reg_455;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_3;
reg    ap_sig_73;
reg    ap_reg_ppiten_pp0_it0;
reg    ap_reg_ppiten_pp0_it1;
wire   [6:0] indvar_flatten_next_fu_244_p2;
wire   [3:0] i_1_mid2_fu_262_p3;
reg   [3:0] i_1_mid2_reg_464;
wire   [3:0] tmp_mid2_v_fu_270_p3;
reg   [3:0] tmp_mid2_v_reg_469;
wire   [3:0] i_6_fu_305_p2;
wire   [0:0] exitcond2_fu_336_p2;
reg    ap_sig_cseq_ST_st6_fsm_4;
reg    ap_sig_101;
wire   [3:0] i_5_fu_342_p2;
reg   [3:0] i_5_reg_489;
wire   [0:0] exitcond_flatten1_fu_348_p2;
reg   [0:0] exitcond_flatten1_reg_494;
reg    ap_sig_cseq_ST_pp1_stg0_fsm_6;
reg    ap_sig_112;
reg    ap_reg_ppiten_pp1_it0;
reg    ap_reg_ppiten_pp1_it1;
wire   [6:0] indvar_flatten_next1_fu_354_p2;
wire   [3:0] i_3_mid2_fu_372_p3;
reg   [3:0] i_3_mid2_reg_503;
wire   [3:0] tmp_4_mid2_v_fu_380_p3;
reg   [3:0] tmp_4_mid2_v_reg_508;
wire   [3:0] i_7_fu_415_p2;
reg   [5:0] row_outbuf_address0;
reg    row_outbuf_ce0;
reg    row_outbuf_we0;
wire   [15:0] row_outbuf_q0;
reg   [5:0] col_outbuf_address0;
reg    col_outbuf_ce0;
reg    col_outbuf_we0;
wire   [15:0] col_outbuf_q0;
reg   [5:0] col_inbuf_address0;
reg    col_inbuf_ce0;
reg    col_inbuf_we0;
wire   [15:0] col_inbuf_q0;
wire    grp_dct_dct_1d2_fu_211_ap_start;
wire    grp_dct_dct_1d2_fu_211_ap_done;
wire    grp_dct_dct_1d2_fu_211_ap_idle;
wire    grp_dct_dct_1d2_fu_211_ap_ready;
wire   [5:0] grp_dct_dct_1d2_fu_211_src_address0;
wire    grp_dct_dct_1d2_fu_211_src_ce0;
reg   [15:0] grp_dct_dct_1d2_fu_211_src_q0;
reg   [3:0] grp_dct_dct_1d2_fu_211_tmp_2;
wire   [5:0] grp_dct_dct_1d2_fu_211_dst_address0;
wire    grp_dct_dct_1d2_fu_211_dst_ce0;
wire    grp_dct_dct_1d2_fu_211_dst_we0;
wire   [15:0] grp_dct_dct_1d2_fu_211_dst_d0;
reg   [3:0] grp_dct_dct_1d2_fu_211_tmp_21;
reg   [3:0] i_reg_121;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_198;
reg   [3:0] j_phi_fu_148_p4;
reg   [3:0] i_2_reg_166;
reg    ap_sig_cseq_ST_st7_fsm_5;
reg    ap_sig_217;
reg   [3:0] j_1_phi_fu_193_p4;
reg    ap_reg_grp_dct_dct_1d2_fu_211_ap_start;
wire   [63:0] tmp_7_cast_fu_300_p1;
wire   [63:0] tmp_9_cast_fu_331_p1;
wire   [63:0] tmp_15_cast_fu_410_p1;
wire   [63:0] tmp_12_cast_fu_441_p1;
wire   [0:0] exitcond_fu_256_p2;
wire   [3:0] j_2_fu_250_p2;
wire   [6:0] tmp_2_fu_282_p3;
wire   [7:0] tmp_mid2_cast_fu_278_p1;
wire   [7:0] tmp_4_cast_fu_290_p1;
wire   [7:0] tmp_7_fu_294_p2;
wire   [6:0] tmp_fu_311_p3;
wire   [7:0] tmp_3_cast_fu_322_p1;
wire   [7:0] tmp_1_cast_fu_318_p1;
wire   [7:0] tmp_9_fu_325_p2;
wire   [0:0] exitcond4_fu_366_p2;
wire   [3:0] j_3_fu_360_p2;
wire   [6:0] tmp_3_fu_392_p3;
wire   [7:0] tmp_4_mid2_cast_fu_388_p1;
wire   [7:0] tmp_14_cast_fu_400_p1;
wire   [7:0] tmp_4_fu_404_p2;
wire   [6:0] tmp_s_fu_421_p3;
wire   [7:0] tmp_5_cast_fu_432_p1;
wire   [7:0] tmp_11_cast_fu_428_p1;
wire   [7:0] tmp_1_fu_435_p2;
reg    ap_sig_cseq_ST_st10_fsm_7;
reg    ap_sig_385;
reg   [7:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 8'b1;
#0 ap_reg_ppiten_pp0_it0 = 1'b0;
#0 ap_reg_ppiten_pp0_it1 = 1'b0;
#0 ap_reg_ppiten_pp1_it0 = 1'b0;
#0 ap_reg_ppiten_pp1_it1 = 1'b0;
#0 ap_reg_grp_dct_dct_1d2_fu_211_ap_start = 1'b0;
end

dct_dct_2d_row_outbuf #(
    .DataWidth( 16 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
row_outbuf_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(row_outbuf_address0),
    .ce0(row_outbuf_ce0),
    .we0(row_outbuf_we0),
    .d0(grp_dct_dct_1d2_fu_211_dst_d0),
    .q0(row_outbuf_q0)
);

dct_dct_2d_row_outbuf #(
    .DataWidth( 16 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
col_outbuf_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(col_outbuf_address0),
    .ce0(col_outbuf_ce0),
    .we0(col_outbuf_we0),
    .d0(grp_dct_dct_1d2_fu_211_dst_d0),
    .q0(col_outbuf_q0)
);

dct_dct_2d_row_outbuf #(
    .DataWidth( 16 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
col_inbuf_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(col_inbuf_address0),
    .ce0(col_inbuf_ce0),
    .we0(col_inbuf_we0),
    .d0(row_outbuf_q0),
    .q0(col_inbuf_q0)
);

dct_dct_1d2 grp_dct_dct_1d2_fu_211(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_dct_dct_1d2_fu_211_ap_start),
    .ap_done(grp_dct_dct_1d2_fu_211_ap_done),
    .ap_idle(grp_dct_dct_1d2_fu_211_ap_idle),
    .ap_ready(grp_dct_dct_1d2_fu_211_ap_ready),
    .src_address0(grp_dct_dct_1d2_fu_211_src_address0),
    .src_ce0(grp_dct_dct_1d2_fu_211_src_ce0),
    .src_q0(grp_dct_dct_1d2_fu_211_src_q0),
    .tmp_2(grp_dct_dct_1d2_fu_211_tmp_2),
    .dst_address0(grp_dct_dct_1d2_fu_211_dst_address0),
    .dst_ce0(grp_dct_dct_1d2_fu_211_dst_ce0),
    .dst_we0(grp_dct_dct_1d2_fu_211_dst_we0),
    .dst_d0(grp_dct_dct_1d2_fu_211_dst_d0),
    .tmp_21(grp_dct_dct_1d2_fu_211_tmp_21)
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
        ap_reg_grp_dct_dct_1d2_fu_211_ap_start <= 1'b0;
    end else begin
        if ((((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond5_fu_226_p2 == 1'b0)) | ((1'b1 == ap_sig_cseq_ST_st6_fsm_4) & (1'b0 == exitcond2_fu_336_p2)))) begin
            ap_reg_grp_dct_dct_1d2_fu_211_ap_start <= 1'b1;
        end else if ((1'b1 == grp_dct_dct_1d2_fu_211_ap_ready)) begin
            ap_reg_grp_dct_dct_1d2_fu_211_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_3) & ~(exitcond_flatten_fu_238_p2 == 1'b0))) begin
            ap_reg_ppiten_pp0_it0 <= 1'b0;
        end else if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond5_fu_226_p2 == 1'b0))) begin
            ap_reg_ppiten_pp0_it0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_3) & (exitcond_flatten_fu_238_p2 == 1'b0))) begin
            ap_reg_ppiten_pp0_it1 <= 1'b1;
        end else if ((((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond5_fu_226_p2 == 1'b0)) | ((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_3) & ~(exitcond_flatten_fu_238_p2 == 1'b0)))) begin
            ap_reg_ppiten_pp0_it1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp1_it0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_pp1_stg0_fsm_6) & ~(1'b0 == exitcond_flatten1_fu_348_p2))) begin
            ap_reg_ppiten_pp1_it0 <= 1'b0;
        end else if (((1'b1 == ap_sig_cseq_ST_st6_fsm_4) & ~(1'b0 == exitcond2_fu_336_p2))) begin
            ap_reg_ppiten_pp1_it0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp1_it1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_pp1_stg0_fsm_6) & (1'b0 == exitcond_flatten1_fu_348_p2))) begin
            ap_reg_ppiten_pp1_it1 <= 1'b1;
        end else if ((((1'b1 == ap_sig_cseq_ST_st6_fsm_4) & ~(1'b0 == exitcond2_fu_336_p2)) | ((1'b1 == ap_sig_cseq_ST_pp1_stg0_fsm_6) & ~(1'b0 == exitcond_flatten1_fu_348_p2)))) begin
            ap_reg_ppiten_pp1_it1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond5_fu_226_p2 == 1'b0))) begin
        i_1_reg_155 <= ap_const_lv4_0;
    end else if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_3) & (1'b1 == ap_reg_ppiten_pp0_it0) & (exitcond_flatten_fu_238_p2 == 1'b0))) begin
        i_1_reg_155 <= i_6_fu_305_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_3) & (1'b1 == ap_reg_ppiten_pp0_it0) & ~(exitcond_flatten_fu_238_p2 == 1'b0))) begin
        i_2_reg_166 <= ap_const_lv4_0;
    end else if ((~(1'b0 == grp_dct_dct_1d2_fu_211_ap_done) & (1'b1 == ap_sig_cseq_ST_st7_fsm_5))) begin
        i_2_reg_166 <= i_5_reg_489;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st6_fsm_4) & ~(1'b0 == exitcond2_fu_336_p2))) begin
        i_3_reg_200 <= ap_const_lv4_0;
    end else if (((1'b1 == ap_sig_cseq_ST_pp1_stg0_fsm_6) & (1'b1 == ap_reg_ppiten_pp1_it0) & (1'b0 == exitcond_flatten1_fu_348_p2))) begin
        i_3_reg_200 <= i_7_fu_415_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(1'b0 == grp_dct_dct_1d2_fu_211_ap_done))) begin
        i_reg_121 <= i_4_reg_450;
    end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
        i_reg_121 <= ap_const_lv4_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st6_fsm_4) & ~(1'b0 == exitcond2_fu_336_p2))) begin
        indvar_flatten1_reg_178 <= ap_const_lv7_0;
    end else if (((1'b1 == ap_sig_cseq_ST_pp1_stg0_fsm_6) & (1'b1 == ap_reg_ppiten_pp1_it0) & (1'b0 == exitcond_flatten1_fu_348_p2))) begin
        indvar_flatten1_reg_178 <= indvar_flatten_next1_fu_354_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond5_fu_226_p2 == 1'b0))) begin
        indvar_flatten_reg_133 <= ap_const_lv7_0;
    end else if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_3) & (1'b1 == ap_reg_ppiten_pp0_it0) & (exitcond_flatten_fu_238_p2 == 1'b0))) begin
        indvar_flatten_reg_133 <= indvar_flatten_next_fu_244_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st6_fsm_4) & ~(1'b0 == exitcond2_fu_336_p2))) begin
        j_1_reg_189 <= ap_const_lv4_0;
    end else if (((1'b1 == ap_sig_cseq_ST_pp1_stg0_fsm_6) & (1'b1 == ap_reg_ppiten_pp1_it1) & (1'b0 == exitcond_flatten1_reg_494))) begin
        j_1_reg_189 <= tmp_4_mid2_v_reg_508;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond5_fu_226_p2 == 1'b0))) begin
        j_reg_144 <= ap_const_lv4_0;
    end else if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_3) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond_flatten_reg_455 == 1'b0))) begin
        j_reg_144 <= tmp_mid2_v_reg_469;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_pp1_stg0_fsm_6)) begin
        exitcond_flatten1_reg_494 <= exitcond_flatten1_fu_348_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_3)) begin
        exitcond_flatten_reg_455 <= exitcond_flatten_fu_238_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_3) & (exitcond_flatten_fu_238_p2 == 1'b0))) begin
        i_1_mid2_reg_464 <= i_1_mid2_fu_262_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp1_stg0_fsm_6) & (1'b0 == exitcond_flatten1_fu_348_p2))) begin
        i_3_mid2_reg_503 <= i_3_mid2_fu_372_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        i_4_reg_450 <= i_4_fu_232_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st6_fsm_4)) begin
        i_5_reg_489 <= i_5_fu_342_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp1_stg0_fsm_6) & (1'b1 == ap_reg_ppiten_pp1_it0) & (1'b0 == exitcond_flatten1_fu_348_p2))) begin
        tmp_4_mid2_v_reg_508 <= tmp_4_mid2_v_fu_380_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_3) & (1'b1 == ap_reg_ppiten_pp0_it0) & (exitcond_flatten_fu_238_p2 == 1'b0))) begin
        tmp_mid2_v_reg_469 <= tmp_mid2_v_fu_270_p3;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_sig_cseq_ST_st1_fsm_0)) | (1'b1 == ap_sig_cseq_ST_st10_fsm_7))) begin
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
    if ((1'b1 == ap_sig_cseq_ST_st10_fsm_7)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_73) begin
        ap_sig_cseq_ST_pp0_stg0_fsm_3 = 1'b1;
    end else begin
        ap_sig_cseq_ST_pp0_stg0_fsm_3 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_112) begin
        ap_sig_cseq_ST_pp1_stg0_fsm_6 = 1'b1;
    end else begin
        ap_sig_cseq_ST_pp1_stg0_fsm_6 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_385) begin
        ap_sig_cseq_ST_st10_fsm_7 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st10_fsm_7 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_25) begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_62) begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_198) begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_101) begin
        ap_sig_cseq_ST_st6_fsm_4 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st6_fsm_4 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_217) begin
        ap_sig_cseq_ST_st7_fsm_5 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st7_fsm_5 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_3) & (1'b1 == ap_reg_ppiten_pp0_it1))) begin
        col_inbuf_address0 = tmp_9_cast_fu_331_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st7_fsm_5)) begin
        col_inbuf_address0 = grp_dct_dct_1d2_fu_211_src_address0;
    end else begin
        col_inbuf_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_3) & (1'b1 == ap_reg_ppiten_pp0_it1))) begin
        col_inbuf_ce0 = 1'b1;
    end else if ((1'b1 == ap_sig_cseq_ST_st7_fsm_5)) begin
        col_inbuf_ce0 = grp_dct_dct_1d2_fu_211_src_ce0;
    end else begin
        col_inbuf_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_3) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond_flatten_reg_455 == 1'b0))) begin
        col_inbuf_we0 = 1'b1;
    end else begin
        col_inbuf_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp1_stg0_fsm_6) & (1'b1 == ap_reg_ppiten_pp1_it0))) begin
        col_outbuf_address0 = tmp_15_cast_fu_410_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st7_fsm_5)) begin
        col_outbuf_address0 = grp_dct_dct_1d2_fu_211_dst_address0;
    end else begin
        col_outbuf_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp1_stg0_fsm_6) & (1'b1 == ap_reg_ppiten_pp1_it0))) begin
        col_outbuf_ce0 = 1'b1;
    end else if ((1'b1 == ap_sig_cseq_ST_st7_fsm_5)) begin
        col_outbuf_ce0 = grp_dct_dct_1d2_fu_211_dst_ce0;
    end else begin
        col_outbuf_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st7_fsm_5)) begin
        col_outbuf_we0 = grp_dct_dct_1d2_fu_211_dst_we0;
    end else begin
        col_outbuf_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st7_fsm_5)) begin
        grp_dct_dct_1d2_fu_211_src_q0 = col_inbuf_q0;
    end else if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        grp_dct_dct_1d2_fu_211_src_q0 = in_block_q0;
    end else begin
        grp_dct_dct_1d2_fu_211_src_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st7_fsm_5)) begin
        grp_dct_dct_1d2_fu_211_tmp_2 = i_2_reg_166;
    end else if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        grp_dct_dct_1d2_fu_211_tmp_2 = i_reg_121;
    end else begin
        grp_dct_dct_1d2_fu_211_tmp_2 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st7_fsm_5)) begin
        grp_dct_dct_1d2_fu_211_tmp_21 = i_2_reg_166;
    end else if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        grp_dct_dct_1d2_fu_211_tmp_21 = i_reg_121;
    end else begin
        grp_dct_dct_1d2_fu_211_tmp_21 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp1_stg0_fsm_6) & (1'b1 == ap_reg_ppiten_pp1_it1) & (1'b0 == exitcond_flatten1_reg_494))) begin
        j_1_phi_fu_193_p4 = tmp_4_mid2_v_reg_508;
    end else begin
        j_1_phi_fu_193_p4 = j_1_reg_189;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_3) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond_flatten_reg_455 == 1'b0))) begin
        j_phi_fu_148_p4 = tmp_mid2_v_reg_469;
    end else begin
        j_phi_fu_148_p4 = j_reg_144;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp1_stg0_fsm_6) & (1'b1 == ap_reg_ppiten_pp1_it1))) begin
        out_block_ce0 = 1'b1;
    end else begin
        out_block_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp1_stg0_fsm_6) & (1'b1 == ap_reg_ppiten_pp1_it1) & (1'b0 == exitcond_flatten1_reg_494))) begin
        out_block_we0 = 1'b1;
    end else begin
        out_block_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_3) & (1'b1 == ap_reg_ppiten_pp0_it0))) begin
        row_outbuf_address0 = tmp_7_cast_fu_300_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        row_outbuf_address0 = grp_dct_dct_1d2_fu_211_dst_address0;
    end else begin
        row_outbuf_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_3) & (1'b1 == ap_reg_ppiten_pp0_it0))) begin
        row_outbuf_ce0 = 1'b1;
    end else if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        row_outbuf_ce0 = grp_dct_dct_1d2_fu_211_dst_ce0;
    end else begin
        row_outbuf_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        row_outbuf_we0 = grp_dct_dct_1d2_fu_211_dst_we0;
    end else begin
        row_outbuf_we0 = 1'b0;
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
            if (~(exitcond5_fu_226_p2 == 1'b0)) begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        end
        ap_ST_st3_fsm_2 : begin
            if (~(1'b0 == grp_dct_dct_1d2_fu_211_ap_done)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        end
        ap_ST_pp0_stg0_fsm_3 : begin
            if (~((1'b1 == ap_reg_ppiten_pp0_it0) & ~(exitcond_flatten_fu_238_p2 == 1'b0))) begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_st6_fsm_4;
            end
        end
        ap_ST_st6_fsm_4 : begin
            if (~(1'b0 == exitcond2_fu_336_p2)) begin
                ap_NS_fsm = ap_ST_pp1_stg0_fsm_6;
            end else begin
                ap_NS_fsm = ap_ST_st7_fsm_5;
            end
        end
        ap_ST_st7_fsm_5 : begin
            if (~(1'b0 == grp_dct_dct_1d2_fu_211_ap_done)) begin
                ap_NS_fsm = ap_ST_st6_fsm_4;
            end else begin
                ap_NS_fsm = ap_ST_st7_fsm_5;
            end
        end
        ap_ST_pp1_stg0_fsm_6 : begin
            if (~((1'b1 == ap_reg_ppiten_pp1_it0) & ~(1'b0 == exitcond_flatten1_fu_348_p2))) begin
                ap_NS_fsm = ap_ST_pp1_stg0_fsm_6;
            end else begin
                ap_NS_fsm = ap_ST_st10_fsm_7;
            end
        end
        ap_ST_st10_fsm_7 : begin
            ap_NS_fsm = ap_ST_st1_fsm_0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

always @ (*) begin
    ap_sig_101 = (1'b1 == ap_CS_fsm[ap_const_lv32_4]);
end

always @ (*) begin
    ap_sig_112 = (1'b1 == ap_CS_fsm[ap_const_lv32_6]);
end

always @ (*) begin
    ap_sig_198 = (1'b1 == ap_CS_fsm[ap_const_lv32_2]);
end

always @ (*) begin
    ap_sig_217 = (1'b1 == ap_CS_fsm[ap_const_lv32_5]);
end

always @ (*) begin
    ap_sig_25 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_385 = (1'b1 == ap_CS_fsm[ap_const_lv32_7]);
end

always @ (*) begin
    ap_sig_62 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

always @ (*) begin
    ap_sig_73 = (1'b1 == ap_CS_fsm[ap_const_lv32_3]);
end

assign exitcond2_fu_336_p2 = ((i_2_reg_166 == ap_const_lv4_8) ? 1'b1 : 1'b0);

assign exitcond4_fu_366_p2 = ((i_3_reg_200 == ap_const_lv4_8) ? 1'b1 : 1'b0);

assign exitcond5_fu_226_p2 = ((i_reg_121 == ap_const_lv4_8) ? 1'b1 : 1'b0);

assign exitcond_flatten1_fu_348_p2 = ((indvar_flatten1_reg_178 == ap_const_lv7_40) ? 1'b1 : 1'b0);

assign exitcond_flatten_fu_238_p2 = ((indvar_flatten_reg_133 == ap_const_lv7_40) ? 1'b1 : 1'b0);

assign exitcond_fu_256_p2 = ((i_1_reg_155 == ap_const_lv4_8) ? 1'b1 : 1'b0);

assign grp_dct_dct_1d2_fu_211_ap_start = ap_reg_grp_dct_dct_1d2_fu_211_ap_start;

assign i_1_mid2_fu_262_p3 = ((exitcond_fu_256_p2[0:0] === 1'b1) ? ap_const_lv4_0 : i_1_reg_155);

assign i_3_mid2_fu_372_p3 = ((exitcond4_fu_366_p2[0:0] === 1'b1) ? ap_const_lv4_0 : i_3_reg_200);

assign i_4_fu_232_p2 = (i_reg_121 + ap_const_lv4_1);

assign i_5_fu_342_p2 = (i_2_reg_166 + ap_const_lv4_1);

assign i_6_fu_305_p2 = (i_1_mid2_fu_262_p3 + ap_const_lv4_1);

assign i_7_fu_415_p2 = (i_3_mid2_fu_372_p3 + ap_const_lv4_1);

assign in_block_address0 = grp_dct_dct_1d2_fu_211_src_address0;

assign in_block_ce0 = grp_dct_dct_1d2_fu_211_src_ce0;

assign indvar_flatten_next1_fu_354_p2 = (indvar_flatten1_reg_178 + ap_const_lv7_1);

assign indvar_flatten_next_fu_244_p2 = (indvar_flatten_reg_133 + ap_const_lv7_1);

assign j_2_fu_250_p2 = (j_phi_fu_148_p4 + ap_const_lv4_1);

assign j_3_fu_360_p2 = (j_1_phi_fu_193_p4 + ap_const_lv4_1);

assign out_block_address0 = tmp_12_cast_fu_441_p1;

assign out_block_d0 = col_outbuf_q0;

assign tmp_11_cast_fu_428_p1 = tmp_s_fu_421_p3;

assign tmp_12_cast_fu_441_p1 = tmp_1_fu_435_p2;

assign tmp_14_cast_fu_400_p1 = tmp_3_fu_392_p3;

assign tmp_15_cast_fu_410_p1 = tmp_4_fu_404_p2;

assign tmp_1_cast_fu_318_p1 = tmp_fu_311_p3;

assign tmp_1_fu_435_p2 = (tmp_5_cast_fu_432_p1 + tmp_11_cast_fu_428_p1);

assign tmp_2_fu_282_p3 = {{i_1_mid2_fu_262_p3}, {ap_const_lv3_0}};

assign tmp_3_cast_fu_322_p1 = i_1_mid2_reg_464;

assign tmp_3_fu_392_p3 = {{i_3_mid2_fu_372_p3}, {ap_const_lv3_0}};

assign tmp_4_cast_fu_290_p1 = tmp_2_fu_282_p3;

assign tmp_4_fu_404_p2 = (tmp_4_mid2_cast_fu_388_p1 + tmp_14_cast_fu_400_p1);

assign tmp_4_mid2_cast_fu_388_p1 = tmp_4_mid2_v_fu_380_p3;

assign tmp_4_mid2_v_fu_380_p3 = ((exitcond4_fu_366_p2[0:0] === 1'b1) ? j_3_fu_360_p2 : j_1_phi_fu_193_p4);

assign tmp_5_cast_fu_432_p1 = i_3_mid2_reg_503;

assign tmp_7_cast_fu_300_p1 = tmp_7_fu_294_p2;

assign tmp_7_fu_294_p2 = (tmp_mid2_cast_fu_278_p1 + tmp_4_cast_fu_290_p1);

assign tmp_9_cast_fu_331_p1 = tmp_9_fu_325_p2;

assign tmp_9_fu_325_p2 = (tmp_3_cast_fu_322_p1 + tmp_1_cast_fu_318_p1);

assign tmp_fu_311_p3 = {{tmp_mid2_v_reg_469}, {ap_const_lv3_0}};

assign tmp_mid2_cast_fu_278_p1 = tmp_mid2_v_fu_270_p3;

assign tmp_mid2_v_fu_270_p3 = ((exitcond_fu_256_p2[0:0] === 1'b1) ? j_2_fu_250_p2 : j_phi_fu_148_p4);

assign tmp_s_fu_421_p3 = {{tmp_4_mid2_v_reg_508}, {ap_const_lv3_0}};

endmodule //dct_dct_2d
