// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.1
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module yuv_filter_rgb2yuv (
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
        out_width,
        out_height,
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
        ap_return_0,
        ap_return_1
);

parameter    ap_ST_st1_fsm_0 = 3'b1;
parameter    ap_ST_pp0_stg0_fsm_1 = 3'b10;
parameter    ap_ST_st11_fsm_2 = 3'b100;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv16_0 = 16'b0000000000000000;
parameter    ap_const_lv16_1 = 16'b1;
parameter    ap_const_lv10_0 = 10'b0000000000;
parameter    ap_const_lv8_0 = 8'b00000000;
parameter    ap_const_lv16_FFB6 = 16'b1111111110110110;
parameter    ap_const_lv16_7A = 16'b1111010;
parameter    ap_const_lv6_0 = 6'b000000;
parameter    ap_const_lv7_0 = 7'b0000000;
parameter    ap_const_lv9_80 = 9'b10000000;
parameter    ap_const_lv32_8 = 32'b1000;
parameter    ap_const_lv32_F = 32'b1111;
parameter    ap_const_lv4_0 = 4'b0000;
parameter    ap_const_lv16_80 = 16'b10000000;
parameter    ap_const_lv13_0 = 13'b0000000000000;
parameter    ap_const_lv14_80 = 14'b10000000;
parameter    ap_const_lv8_10 = 8'b10000;
parameter    ap_const_lv8_80 = 8'b10000000;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv16_FFA2 = 16'b1111111110100010;
parameter    ap_const_lv15_7FDA = 15'b111111111011010;
parameter    ap_const_lv13_19 = 13'b11001;

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
input  [15:0] out_width;
input  [15:0] out_height;
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
output  [15:0] ap_return_0;
output  [15:0] ap_return_1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg in_channels_ch1_ce0;
reg in_channels_ch2_ce0;
reg in_channels_ch3_ce0;
reg out_channels_ch1_ce0;
reg out_channels_ch1_we0;
reg out_channels_ch2_ce0;
reg out_channels_ch2_we0;
reg out_channels_ch3_ce0;
reg out_channels_ch3_we0;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_20;
reg   [31:0] indvar_flatten_reg_190;
reg   [15:0] x_reg_201;
reg   [15:0] y_reg_212;
wire   [31:0] bound_fu_558_p2;
reg   [31:0] bound_reg_599;
wire   [0:0] exitcond_flatten_fu_231_p2;
reg   [0:0] exitcond_flatten_reg_604;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_1;
reg    ap_sig_91;
reg    ap_reg_ppiten_pp0_it0;
reg    ap_reg_ppiten_pp0_it1;
reg    ap_reg_ppiten_pp0_it2;
reg    ap_reg_ppiten_pp0_it3;
reg    ap_reg_ppiten_pp0_it4;
reg    ap_reg_ppiten_pp0_it5;
reg    ap_reg_ppiten_pp0_it6;
reg    ap_reg_ppiten_pp0_it7;
reg    ap_reg_ppiten_pp0_it8;
reg   [0:0] ap_reg_ppstg_exitcond_flatten_reg_604_pp0_iter1;
reg   [0:0] ap_reg_ppstg_exitcond_flatten_reg_604_pp0_iter2;
reg   [0:0] ap_reg_ppstg_exitcond_flatten_reg_604_pp0_iter3;
reg   [0:0] ap_reg_ppstg_exitcond_flatten_reg_604_pp0_iter4;
reg   [0:0] ap_reg_ppstg_exitcond_flatten_reg_604_pp0_iter5;
reg   [0:0] ap_reg_ppstg_exitcond_flatten_reg_604_pp0_iter6;
wire   [31:0] indvar_flatten_next_fu_236_p2;
wire   [15:0] tmp_mid2_v_fu_261_p3;
reg   [15:0] tmp_mid2_v_reg_613;
wire   [22:0] tmp_22_fu_303_p2;
reg   [22:0] tmp_22_reg_618;
wire   [15:0] y_2_fu_309_p2;
wire   [63:0] tmp_24_cast_fu_315_p1;
reg   [63:0] tmp_24_cast_reg_628;
reg   [63:0] ap_reg_ppstg_tmp_24_cast_reg_628_pp0_iter2;
reg   [63:0] ap_reg_ppstg_tmp_24_cast_reg_628_pp0_iter3;
reg   [63:0] ap_reg_ppstg_tmp_24_cast_reg_628_pp0_iter4;
reg   [63:0] ap_reg_ppstg_tmp_24_cast_reg_628_pp0_iter5;
reg   [63:0] ap_reg_ppstg_tmp_24_cast_reg_628_pp0_iter6;
reg   [7:0] R_reg_651;
reg   [7:0] ap_reg_ppstg_R_reg_651_pp0_iter5;
reg   [7:0] G_reg_659;
reg   [7:0] ap_reg_ppstg_G_reg_659_pp0_iter5;
reg   [7:0] B_reg_666;
wire   [15:0] tmp_35_cast1_fu_323_p1;
reg   [15:0] tmp_35_cast1_reg_674;
wire   [15:0] tmp_27_fu_326_p2;
reg   [15:0] tmp_27_reg_679;
wire   [15:0] tmp_31_fu_332_p2;
reg   [15:0] tmp_31_reg_684;
reg   [7:0] tmp_25_reg_689;
reg   [7:0] tmp_30_reg_694;
reg   [7:0] tmp_35_reg_699;
reg   [15:0] x_phi_fu_205_p4;
wire   [0:0] exitcond9_fu_248_p2;
wire   [15:0] x_2_fu_242_p2;
wire   [12:0] tmp_fu_269_p1;
wire   [14:0] tmp_20_fu_281_p1;
wire   [22:0] p_shl_cast_fu_273_p3;
wire   [22:0] p_shl7_cast_fu_285_p3;
wire   [15:0] y_mid2_fu_253_p3;
wire   [22:0] tmp_cast_fu_299_p1;
wire   [22:0] tmp_s_fu_293_p2;
wire   [7:0] tmp_27_fu_326_p1;
wire   [7:0] tmp_31_fu_332_p1;
wire   [13:0] p_shl5_fu_341_p3;
wire   [8:0] p_shl6_fu_352_p3;
wire   [14:0] p_shl4_fu_366_p3;
wire   [14:0] p_shl6_cast_fu_359_p1;
wire   [14:0] p_shl5_cast_fu_348_p1;
wire   [14:0] tmp2_fu_380_p2;
wire   [15:0] tmp2_cast_fu_386_p1;
wire   [15:0] p_shl4_cast_fu_373_p1;
wire   [8:0] tmp_35_cast2_fu_363_p1;
wire   [8:0] tmp4_fu_396_p2;
wire   [12:0] grp_fu_579_p3;
wire   [15:0] tmp3_cast_fu_406_p1;
wire   [15:0] tmp1_fu_390_p2;
wire   [15:0] tmp_24_fu_409_p2;
wire   [14:0] p_shl2_fu_425_p3;
wire   [11:0] p_shl3_fu_436_p3;
wire   [15:0] p_shl2_cast_fu_432_p1;
wire   [15:0] p_shl3_cast_fu_447_p1;
wire   [15:0] tmp_28_fu_451_p2;
wire   [15:0] tmp6_fu_457_p2;
wire  signed [15:0] grp_fu_571_p3;
(* use_dsp48 = "no" *) wire   [15:0] tmp_29_fu_463_p2;
wire   [12:0] p_shl3_cast9_fu_443_p1;
wire   [12:0] p_neg_fu_478_p2;
wire   [8:0] p_shl1_fu_488_p3;
wire  signed [13:0] p_neg_cast_fu_484_p1;
wire   [13:0] p_shl1_cast_fu_495_p1;
wire   [13:0] tmp_33_fu_499_p2;
wire   [13:0] tmp8_fu_505_p2;
wire  signed [15:0] tmp8_cast_fu_511_p1;
wire  signed [15:0] grp_fu_564_p3;
(* use_dsp48 = "no" *) wire   [15:0] tmp_34_fu_515_p2;
reg    ap_sig_cseq_ST_st11_fsm_2;
reg    ap_sig_379;
wire   [15:0] bound_fu_558_p0;
wire   [15:0] bound_fu_558_p1;
wire  signed [7:0] grp_fu_564_p0;
wire   [7:0] grp_fu_564_p1;
wire  signed [6:0] grp_fu_571_p0;
wire   [7:0] grp_fu_571_p1;
wire   [5:0] grp_fu_579_p0;
wire   [7:0] grp_fu_579_p1;
wire   [8:0] grp_fu_579_p2;
reg   [2:0] ap_NS_fsm;
wire   [31:0] bound_fu_558_p00;
wire   [31:0] bound_fu_558_p10;
wire   [14:0] grp_fu_571_p10;
wire   [12:0] grp_fu_579_p10;
wire   [12:0] grp_fu_579_p20;
wire   [15:0] tmp_27_fu_326_p10;
wire   [15:0] tmp_31_fu_332_p10;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'b1;
#0 ap_reg_ppiten_pp0_it0 = 1'b0;
#0 ap_reg_ppiten_pp0_it1 = 1'b0;
#0 ap_reg_ppiten_pp0_it2 = 1'b0;
#0 ap_reg_ppiten_pp0_it3 = 1'b0;
#0 ap_reg_ppiten_pp0_it4 = 1'b0;
#0 ap_reg_ppiten_pp0_it5 = 1'b0;
#0 ap_reg_ppiten_pp0_it6 = 1'b0;
#0 ap_reg_ppiten_pp0_it7 = 1'b0;
#0 ap_reg_ppiten_pp0_it8 = 1'b0;
end

yuv_filter_mul_mul_16ns_16ns_32_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 32 ))
yuv_filter_mul_mul_16ns_16ns_32_1_U0(
    .din0(bound_fu_558_p0),
    .din1(bound_fu_558_p1),
    .dout(bound_fu_558_p2)
);

yuv_filter_mac_muladd_8s_8ns_16ns_16_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
yuv_filter_mac_muladd_8s_8ns_16ns_16_1_U1(
    .din0(grp_fu_564_p0),
    .din1(grp_fu_564_p1),
    .din2(tmp_31_reg_684),
    .dout(grp_fu_564_p3)
);

yuv_filter_mac_muladd_7s_8ns_16ns_16_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 7 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
yuv_filter_mac_muladd_7s_8ns_16ns_16_1_U2(
    .din0(grp_fu_571_p0),
    .din1(grp_fu_571_p1),
    .din2(tmp_27_reg_679),
    .dout(grp_fu_571_p3)
);

yuv_filter_mac_muladd_6ns_8ns_9ns_13_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 6 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 9 ),
    .dout_WIDTH( 13 ))
yuv_filter_mac_muladd_6ns_8ns_9ns_13_1_U3(
    .din0(grp_fu_579_p0),
    .din1(grp_fu_579_p1),
    .din2(grp_fu_579_p2),
    .dout(grp_fu_579_p3)
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
        ap_reg_ppiten_pp0_it0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & ~(exitcond_flatten_fu_231_p2 == 1'b0))) begin
            ap_reg_ppiten_pp0_it0 <= 1'b0;
        end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
            ap_reg_ppiten_pp0_it0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (exitcond_flatten_fu_231_p2 == 1'b0))) begin
            ap_reg_ppiten_pp0_it1 <= 1'b1;
        end else if ((((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0)) | ((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & ~(exitcond_flatten_fu_231_p2 == 1'b0)))) begin
            ap_reg_ppiten_pp0_it1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it2 <= 1'b0;
    end else begin
        ap_reg_ppiten_pp0_it2 <= ap_reg_ppiten_pp0_it1;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it3 <= 1'b0;
    end else begin
        ap_reg_ppiten_pp0_it3 <= ap_reg_ppiten_pp0_it2;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it4 <= 1'b0;
    end else begin
        ap_reg_ppiten_pp0_it4 <= ap_reg_ppiten_pp0_it3;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it5 <= 1'b0;
    end else begin
        ap_reg_ppiten_pp0_it5 <= ap_reg_ppiten_pp0_it4;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it6 <= 1'b0;
    end else begin
        ap_reg_ppiten_pp0_it6 <= ap_reg_ppiten_pp0_it5;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it7 <= 1'b0;
    end else begin
        ap_reg_ppiten_pp0_it7 <= ap_reg_ppiten_pp0_it6;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it8 <= 1'b0;
    end else begin
        ap_reg_ppiten_pp0_it8 <= ap_reg_ppiten_pp0_it7;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it0) & (exitcond_flatten_fu_231_p2 == 1'b0))) begin
        indvar_flatten_reg_190 <= indvar_flatten_next_fu_236_p2;
    end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
        indvar_flatten_reg_190 <= ap_const_lv32_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond_flatten_reg_604 == 1'b0))) begin
        x_reg_201 <= tmp_mid2_v_reg_613;
    end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
        x_reg_201 <= ap_const_lv16_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it0) & (exitcond_flatten_fu_231_p2 == 1'b0))) begin
        y_reg_212 <= y_2_fu_309_p2;
    end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
        y_reg_212 <= ap_const_lv16_0;
    end
end

always @ (posedge ap_clk) begin
    if ((ap_reg_ppstg_exitcond_flatten_reg_604_pp0_iter4 == 1'b0)) begin
        B_reg_666 <= in_channels_ch3_q0;
        tmp_27_reg_679 <= tmp_27_fu_326_p2;
        tmp_31_reg_684 <= tmp_31_fu_332_p2;
        tmp_35_cast1_reg_674[7 : 0] <= tmp_35_cast1_fu_323_p1[7 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((ap_reg_ppstg_exitcond_flatten_reg_604_pp0_iter3 == 1'b0)) begin
        G_reg_659 <= in_channels_ch2_q0;
        R_reg_651 <= in_channels_ch1_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == 1'b1)) begin
        ap_reg_ppstg_G_reg_659_pp0_iter5 <= G_reg_659;
        ap_reg_ppstg_R_reg_651_pp0_iter5 <= R_reg_651;
        ap_reg_ppstg_exitcond_flatten_reg_604_pp0_iter2 <= ap_reg_ppstg_exitcond_flatten_reg_604_pp0_iter1;
        ap_reg_ppstg_exitcond_flatten_reg_604_pp0_iter3 <= ap_reg_ppstg_exitcond_flatten_reg_604_pp0_iter2;
        ap_reg_ppstg_exitcond_flatten_reg_604_pp0_iter4 <= ap_reg_ppstg_exitcond_flatten_reg_604_pp0_iter3;
        ap_reg_ppstg_exitcond_flatten_reg_604_pp0_iter5 <= ap_reg_ppstg_exitcond_flatten_reg_604_pp0_iter4;
        ap_reg_ppstg_exitcond_flatten_reg_604_pp0_iter6 <= ap_reg_ppstg_exitcond_flatten_reg_604_pp0_iter5;
        ap_reg_ppstg_tmp_24_cast_reg_628_pp0_iter2[22 : 0] <= tmp_24_cast_reg_628[22 : 0];
        ap_reg_ppstg_tmp_24_cast_reg_628_pp0_iter3[22 : 0] <= ap_reg_ppstg_tmp_24_cast_reg_628_pp0_iter2[22 : 0];
        ap_reg_ppstg_tmp_24_cast_reg_628_pp0_iter4[22 : 0] <= ap_reg_ppstg_tmp_24_cast_reg_628_pp0_iter3[22 : 0];
        ap_reg_ppstg_tmp_24_cast_reg_628_pp0_iter5[22 : 0] <= ap_reg_ppstg_tmp_24_cast_reg_628_pp0_iter4[22 : 0];
        ap_reg_ppstg_tmp_24_cast_reg_628_pp0_iter6[22 : 0] <= ap_reg_ppstg_tmp_24_cast_reg_628_pp0_iter5[22 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1)) begin
        ap_reg_ppstg_exitcond_flatten_reg_604_pp0_iter1 <= exitcond_flatten_reg_604;
        exitcond_flatten_reg_604 <= exitcond_flatten_fu_231_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
        bound_reg_599 <= bound_fu_558_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (exitcond_flatten_fu_231_p2 == 1'b0))) begin
        tmp_22_reg_618 <= tmp_22_fu_303_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (exitcond_flatten_reg_604 == 1'b0))) begin
        tmp_24_cast_reg_628[22 : 0] <= tmp_24_cast_fu_315_p1[22 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((ap_reg_ppstg_exitcond_flatten_reg_604_pp0_iter5 == 1'b0)) begin
        tmp_25_reg_689 <= {{tmp_24_fu_409_p2[ap_const_lv32_F : ap_const_lv32_8]}};
        tmp_30_reg_694 <= {{tmp_29_fu_463_p2[ap_const_lv32_F : ap_const_lv32_8]}};
        tmp_35_reg_699 <= {{tmp_34_fu_515_p2[ap_const_lv32_F : ap_const_lv32_8]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it0) & (exitcond_flatten_fu_231_p2 == 1'b0))) begin
        tmp_mid2_v_reg_613 <= tmp_mid2_v_fu_261_p3;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_sig_cseq_ST_st1_fsm_0)) | (1'b1 == ap_sig_cseq_ST_st11_fsm_2))) begin
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
    if ((1'b1 == ap_sig_cseq_ST_st11_fsm_2)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_91) begin
        ap_sig_cseq_ST_pp0_stg0_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_pp0_stg0_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_379) begin
        ap_sig_cseq_ST_st11_fsm_2 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st11_fsm_2 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_20) begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it2) | (1'b1 == ap_reg_ppiten_pp0_it3) | (1'b1 == ap_reg_ppiten_pp0_it4) | ((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it1)))) begin
        in_channels_ch1_ce0 = 1'b1;
    end else begin
        in_channels_ch1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it2) | (1'b1 == ap_reg_ppiten_pp0_it3) | (1'b1 == ap_reg_ppiten_pp0_it4) | ((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it1)))) begin
        in_channels_ch2_ce0 = 1'b1;
    end else begin
        in_channels_ch2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it2) | (1'b1 == ap_reg_ppiten_pp0_it3) | (1'b1 == ap_reg_ppiten_pp0_it4) | (1'b1 == ap_reg_ppiten_pp0_it5))) begin
        in_channels_ch3_ce0 = 1'b1;
    end else begin
        in_channels_ch3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it7) | (1'b1 == ap_reg_ppiten_pp0_it8))) begin
        out_channels_ch1_ce0 = 1'b1;
    end else begin
        out_channels_ch1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it7) & (ap_reg_ppstg_exitcond_flatten_reg_604_pp0_iter6 == 1'b0))) begin
        out_channels_ch1_we0 = 1'b1;
    end else begin
        out_channels_ch1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it7) | (1'b1 == ap_reg_ppiten_pp0_it8))) begin
        out_channels_ch2_ce0 = 1'b1;
    end else begin
        out_channels_ch2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it7) & (ap_reg_ppstg_exitcond_flatten_reg_604_pp0_iter6 == 1'b0))) begin
        out_channels_ch2_we0 = 1'b1;
    end else begin
        out_channels_ch2_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it7) | (1'b1 == ap_reg_ppiten_pp0_it8))) begin
        out_channels_ch3_ce0 = 1'b1;
    end else begin
        out_channels_ch3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it7) & (ap_reg_ppstg_exitcond_flatten_reg_604_pp0_iter6 == 1'b0))) begin
        out_channels_ch3_we0 = 1'b1;
    end else begin
        out_channels_ch3_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond_flatten_reg_604 == 1'b0))) begin
        x_phi_fu_205_p4 = tmp_mid2_v_reg_613;
    end else begin
        x_phi_fu_205_p4 = x_reg_201;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : begin
            if (~(ap_start == 1'b0)) begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_pp0_stg0_fsm_1 : begin
            if ((~((1'b1 == ap_reg_ppiten_pp0_it8) & ~(1'b1 == ap_reg_ppiten_pp0_it7)) & ~((1'b1 == ap_reg_ppiten_pp0_it0) & ~(exitcond_flatten_fu_231_p2 == 1'b0) & ~(1'b1 == ap_reg_ppiten_pp0_it1)))) begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_1;
            end else if (((1'b1 == ap_reg_ppiten_pp0_it0) & ~(exitcond_flatten_fu_231_p2 == 1'b0) & ~(1'b1 == ap_reg_ppiten_pp0_it1))) begin
                ap_NS_fsm = ap_ST_st11_fsm_2;
            end else begin
                ap_NS_fsm = ap_ST_st11_fsm_2;
            end
        end
        ap_ST_st11_fsm_2 : begin
            ap_NS_fsm = ap_ST_st1_fsm_0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_return_0 = out_width;

assign ap_return_1 = out_height;

always @ (*) begin
    ap_sig_20 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_379 = (1'b1 == ap_CS_fsm[ap_const_lv32_2]);
end

always @ (*) begin
    ap_sig_91 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

assign bound_fu_558_p0 = bound_fu_558_p00;

assign bound_fu_558_p00 = out_height;

assign bound_fu_558_p1 = bound_fu_558_p10;

assign bound_fu_558_p10 = out_width;

assign exitcond9_fu_248_p2 = ((y_reg_212 == out_height) ? 1'b1 : 1'b0);

assign exitcond_flatten_fu_231_p2 = ((indvar_flatten_reg_190 == bound_reg_599) ? 1'b1 : 1'b0);

assign grp_fu_564_p0 = ap_const_lv16_FFA2;

assign grp_fu_564_p1 = tmp_35_cast1_reg_674;

assign grp_fu_571_p0 = ap_const_lv15_7FDA;

assign grp_fu_571_p1 = grp_fu_571_p10;

assign grp_fu_571_p10 = ap_reg_ppstg_R_reg_651_pp0_iter5;

assign grp_fu_579_p0 = ap_const_lv13_19;

assign grp_fu_579_p1 = grp_fu_579_p10;

assign grp_fu_579_p10 = B_reg_666;

assign grp_fu_579_p2 = grp_fu_579_p20;

assign grp_fu_579_p20 = tmp4_fu_396_p2;

assign in_channels_ch1_address0 = tmp_24_cast_fu_315_p1;

assign in_channels_ch2_address0 = tmp_24_cast_fu_315_p1;

assign in_channels_ch3_address0 = tmp_24_cast_reg_628;

assign indvar_flatten_next_fu_236_p2 = (indvar_flatten_reg_190 + ap_const_lv32_1);

assign out_channels_ch1_address0 = ap_reg_ppstg_tmp_24_cast_reg_628_pp0_iter6;

assign out_channels_ch1_d0 = (ap_const_lv8_10 + tmp_25_reg_689);

assign out_channels_ch2_address0 = ap_reg_ppstg_tmp_24_cast_reg_628_pp0_iter6;

assign out_channels_ch2_d0 = (tmp_30_reg_694 ^ ap_const_lv8_80);

assign out_channels_ch3_address0 = ap_reg_ppstg_tmp_24_cast_reg_628_pp0_iter6;

assign out_channels_ch3_d0 = (tmp_35_reg_699 ^ ap_const_lv8_80);

assign p_neg_cast_fu_484_p1 = $signed(p_neg_fu_478_p2);

assign p_neg_fu_478_p2 = (ap_const_lv13_0 - p_shl3_cast9_fu_443_p1);

assign p_shl1_cast_fu_495_p1 = p_shl1_fu_488_p3;

assign p_shl1_fu_488_p3 = {{B_reg_666}, {1'b0}};

assign p_shl2_cast_fu_432_p1 = p_shl2_fu_425_p3;

assign p_shl2_fu_425_p3 = {{B_reg_666}, {ap_const_lv7_0}};

assign p_shl3_cast9_fu_443_p1 = p_shl3_fu_436_p3;

assign p_shl3_cast_fu_447_p1 = p_shl3_fu_436_p3;

assign p_shl3_fu_436_p3 = {{B_reg_666}, {ap_const_lv4_0}};

assign p_shl4_cast_fu_373_p1 = p_shl4_fu_366_p3;

assign p_shl4_fu_366_p3 = {{ap_reg_ppstg_G_reg_659_pp0_iter5}, {ap_const_lv7_0}};

assign p_shl5_cast_fu_348_p1 = p_shl5_fu_341_p3;

assign p_shl5_fu_341_p3 = {{ap_reg_ppstg_R_reg_651_pp0_iter5}, {ap_const_lv6_0}};

assign p_shl6_cast_fu_359_p1 = p_shl6_fu_352_p3;

assign p_shl6_fu_352_p3 = {{ap_reg_ppstg_R_reg_651_pp0_iter5}, {1'b0}};

assign p_shl7_cast_fu_285_p3 = {{tmp_20_fu_281_p1}, {ap_const_lv8_0}};

assign p_shl_cast_fu_273_p3 = {{tmp_fu_269_p1}, {ap_const_lv10_0}};

assign tmp1_fu_390_p2 = (tmp2_cast_fu_386_p1 + p_shl4_cast_fu_373_p1);

assign tmp2_cast_fu_386_p1 = tmp2_fu_380_p2;

assign tmp2_fu_380_p2 = (p_shl6_cast_fu_359_p1 + p_shl5_cast_fu_348_p1);

assign tmp3_cast_fu_406_p1 = grp_fu_579_p3;

assign tmp4_fu_396_p2 = (ap_const_lv9_80 + tmp_35_cast2_fu_363_p1);

assign tmp6_fu_457_p2 = (ap_const_lv16_80 + tmp_28_fu_451_p2);

assign tmp8_cast_fu_511_p1 = $signed(tmp8_fu_505_p2);

assign tmp8_fu_505_p2 = (ap_const_lv14_80 + tmp_33_fu_499_p2);

assign tmp_20_fu_281_p1 = tmp_mid2_v_fu_261_p3[14:0];

assign tmp_22_fu_303_p2 = (tmp_cast_fu_299_p1 + tmp_s_fu_293_p2);

assign tmp_24_cast_fu_315_p1 = tmp_22_reg_618;

assign tmp_24_fu_409_p2 = (tmp3_cast_fu_406_p1 + tmp1_fu_390_p2);

assign tmp_27_fu_326_p1 = tmp_27_fu_326_p10;

assign tmp_27_fu_326_p10 = G_reg_659;

assign tmp_27_fu_326_p2 = ($signed(ap_const_lv16_FFB6) * $signed({{1'b0}, {tmp_27_fu_326_p1}}));

assign tmp_28_fu_451_p2 = (p_shl2_cast_fu_432_p1 - p_shl3_cast_fu_447_p1);

assign tmp_29_fu_463_p2 = ($signed(tmp6_fu_457_p2) + $signed(grp_fu_571_p3));

assign tmp_31_fu_332_p1 = tmp_31_fu_332_p10;

assign tmp_31_fu_332_p10 = R_reg_651;

assign tmp_31_fu_332_p2 = (ap_const_lv16_7A * tmp_31_fu_332_p1);

assign tmp_33_fu_499_p2 = ($signed(p_neg_cast_fu_484_p1) - $signed(p_shl1_cast_fu_495_p1));

assign tmp_34_fu_515_p2 = ($signed(tmp8_cast_fu_511_p1) + $signed(grp_fu_564_p3));

assign tmp_35_cast1_fu_323_p1 = G_reg_659;

assign tmp_35_cast2_fu_363_p1 = ap_reg_ppstg_G_reg_659_pp0_iter5;

assign tmp_cast_fu_299_p1 = y_mid2_fu_253_p3;

assign tmp_fu_269_p1 = tmp_mid2_v_fu_261_p3[12:0];

assign tmp_mid2_v_fu_261_p3 = ((exitcond9_fu_248_p2[0:0] === 1'b1) ? x_2_fu_242_p2 : x_phi_fu_205_p4);

assign tmp_s_fu_293_p2 = (p_shl_cast_fu_273_p3 + p_shl7_cast_fu_285_p3);

assign x_2_fu_242_p2 = (ap_const_lv16_1 + x_phi_fu_205_p4);

assign y_2_fu_309_p2 = (ap_const_lv16_1 + y_mid2_fu_253_p3);

assign y_mid2_fu_253_p3 = ((exitcond9_fu_248_p2[0:0] === 1'b1) ? ap_const_lv16_0 : y_reg_212);

always @ (posedge ap_clk) begin
    tmp_24_cast_reg_628[63:23] <= 41'b00000000000000000000000000000000000000000;
    ap_reg_ppstg_tmp_24_cast_reg_628_pp0_iter2[63:23] <= 41'b00000000000000000000000000000000000000000;
    ap_reg_ppstg_tmp_24_cast_reg_628_pp0_iter3[63:23] <= 41'b00000000000000000000000000000000000000000;
    ap_reg_ppstg_tmp_24_cast_reg_628_pp0_iter4[63:23] <= 41'b00000000000000000000000000000000000000000;
    ap_reg_ppstg_tmp_24_cast_reg_628_pp0_iter5[63:23] <= 41'b00000000000000000000000000000000000000000;
    ap_reg_ppstg_tmp_24_cast_reg_628_pp0_iter6[63:23] <= 41'b00000000000000000000000000000000000000000;
    tmp_35_cast1_reg_674[15:8] <= 8'b00000000;
end

endmodule //yuv_filter_rgb2yuv