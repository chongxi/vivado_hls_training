// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.1
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="array_io,hls_ip_2016_1,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7k160tfbg484-1,HLS_INPUT_CLOCK=4.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=3.400000,HLS_SYN_LAT=2,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=1155,HLS_SYN_LUT=1058}" *)

module array_io (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        d_o_0_din,
        d_o_0_full_n,
        d_o_0_write,
        d_o_1_din,
        d_o_1_full_n,
        d_o_1_write,
        d_o_2_din,
        d_o_2_full_n,
        d_o_2_write,
        d_o_3_din,
        d_o_3_full_n,
        d_o_3_write,
        d_o_4_din,
        d_o_4_full_n,
        d_o_4_write,
        d_o_5_din,
        d_o_5_full_n,
        d_o_5_write,
        d_o_6_din,
        d_o_6_full_n,
        d_o_6_write,
        d_o_7_din,
        d_o_7_full_n,
        d_o_7_write,
        d_o_8_din,
        d_o_8_full_n,
        d_o_8_write,
        d_o_9_din,
        d_o_9_full_n,
        d_o_9_write,
        d_o_10_din,
        d_o_10_full_n,
        d_o_10_write,
        d_o_11_din,
        d_o_11_full_n,
        d_o_11_write,
        d_o_12_din,
        d_o_12_full_n,
        d_o_12_write,
        d_o_13_din,
        d_o_13_full_n,
        d_o_13_write,
        d_o_14_din,
        d_o_14_full_n,
        d_o_14_write,
        d_o_15_din,
        d_o_15_full_n,
        d_o_15_write,
        d_o_16_din,
        d_o_16_full_n,
        d_o_16_write,
        d_o_17_din,
        d_o_17_full_n,
        d_o_17_write,
        d_o_18_din,
        d_o_18_full_n,
        d_o_18_write,
        d_o_19_din,
        d_o_19_full_n,
        d_o_19_write,
        d_o_20_din,
        d_o_20_full_n,
        d_o_20_write,
        d_o_21_din,
        d_o_21_full_n,
        d_o_21_write,
        d_o_22_din,
        d_o_22_full_n,
        d_o_22_write,
        d_o_23_din,
        d_o_23_full_n,
        d_o_23_write,
        d_o_24_din,
        d_o_24_full_n,
        d_o_24_write,
        d_o_25_din,
        d_o_25_full_n,
        d_o_25_write,
        d_o_26_din,
        d_o_26_full_n,
        d_o_26_write,
        d_o_27_din,
        d_o_27_full_n,
        d_o_27_write,
        d_o_28_din,
        d_o_28_full_n,
        d_o_28_write,
        d_o_29_din,
        d_o_29_full_n,
        d_o_29_write,
        d_o_30_din,
        d_o_30_full_n,
        d_o_30_write,
        d_o_31_din,
        d_o_31_full_n,
        d_o_31_write,
        d_i_0,
        d_i_1,
        d_i_2,
        d_i_3,
        d_i_4,
        d_i_5,
        d_i_6,
        d_i_7,
        d_i_8,
        d_i_9,
        d_i_10,
        d_i_11,
        d_i_12,
        d_i_13,
        d_i_14,
        d_i_15,
        d_i_16,
        d_i_17,
        d_i_18,
        d_i_19,
        d_i_20,
        d_i_21,
        d_i_22,
        d_i_23,
        d_i_24,
        d_i_25,
        d_i_26,
        d_i_27,
        d_i_28,
        d_i_29,
        d_i_30,
        d_i_31
);

parameter    ap_ST_st1_fsm_0 = 3'b1;
parameter    ap_ST_st2_fsm_1 = 3'b10;
parameter    ap_ST_st3_fsm_2 = 3'b100;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_1 = 32'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [15:0] d_o_0_din;
input   d_o_0_full_n;
output   d_o_0_write;
output  [15:0] d_o_1_din;
input   d_o_1_full_n;
output   d_o_1_write;
output  [15:0] d_o_2_din;
input   d_o_2_full_n;
output   d_o_2_write;
output  [15:0] d_o_3_din;
input   d_o_3_full_n;
output   d_o_3_write;
output  [15:0] d_o_4_din;
input   d_o_4_full_n;
output   d_o_4_write;
output  [15:0] d_o_5_din;
input   d_o_5_full_n;
output   d_o_5_write;
output  [15:0] d_o_6_din;
input   d_o_6_full_n;
output   d_o_6_write;
output  [15:0] d_o_7_din;
input   d_o_7_full_n;
output   d_o_7_write;
output  [15:0] d_o_8_din;
input   d_o_8_full_n;
output   d_o_8_write;
output  [15:0] d_o_9_din;
input   d_o_9_full_n;
output   d_o_9_write;
output  [15:0] d_o_10_din;
input   d_o_10_full_n;
output   d_o_10_write;
output  [15:0] d_o_11_din;
input   d_o_11_full_n;
output   d_o_11_write;
output  [15:0] d_o_12_din;
input   d_o_12_full_n;
output   d_o_12_write;
output  [15:0] d_o_13_din;
input   d_o_13_full_n;
output   d_o_13_write;
output  [15:0] d_o_14_din;
input   d_o_14_full_n;
output   d_o_14_write;
output  [15:0] d_o_15_din;
input   d_o_15_full_n;
output   d_o_15_write;
output  [15:0] d_o_16_din;
input   d_o_16_full_n;
output   d_o_16_write;
output  [15:0] d_o_17_din;
input   d_o_17_full_n;
output   d_o_17_write;
output  [15:0] d_o_18_din;
input   d_o_18_full_n;
output   d_o_18_write;
output  [15:0] d_o_19_din;
input   d_o_19_full_n;
output   d_o_19_write;
output  [15:0] d_o_20_din;
input   d_o_20_full_n;
output   d_o_20_write;
output  [15:0] d_o_21_din;
input   d_o_21_full_n;
output   d_o_21_write;
output  [15:0] d_o_22_din;
input   d_o_22_full_n;
output   d_o_22_write;
output  [15:0] d_o_23_din;
input   d_o_23_full_n;
output   d_o_23_write;
output  [15:0] d_o_24_din;
input   d_o_24_full_n;
output   d_o_24_write;
output  [15:0] d_o_25_din;
input   d_o_25_full_n;
output   d_o_25_write;
output  [15:0] d_o_26_din;
input   d_o_26_full_n;
output   d_o_26_write;
output  [15:0] d_o_27_din;
input   d_o_27_full_n;
output   d_o_27_write;
output  [15:0] d_o_28_din;
input   d_o_28_full_n;
output   d_o_28_write;
output  [15:0] d_o_29_din;
input   d_o_29_full_n;
output   d_o_29_write;
output  [15:0] d_o_30_din;
input   d_o_30_full_n;
output   d_o_30_write;
output  [15:0] d_o_31_din;
input   d_o_31_full_n;
output   d_o_31_write;
input  [15:0] d_i_0;
input  [15:0] d_i_1;
input  [15:0] d_i_2;
input  [15:0] d_i_3;
input  [15:0] d_i_4;
input  [15:0] d_i_5;
input  [15:0] d_i_6;
input  [15:0] d_i_7;
input  [15:0] d_i_8;
input  [15:0] d_i_9;
input  [15:0] d_i_10;
input  [15:0] d_i_11;
input  [15:0] d_i_12;
input  [15:0] d_i_13;
input  [15:0] d_i_14;
input  [15:0] d_i_15;
input  [15:0] d_i_16;
input  [15:0] d_i_17;
input  [15:0] d_i_18;
input  [15:0] d_i_19;
input  [15:0] d_i_20;
input  [15:0] d_i_21;
input  [15:0] d_i_22;
input  [15:0] d_i_23;
input  [15:0] d_i_24;
input  [15:0] d_i_25;
input  [15:0] d_i_26;
input  [15:0] d_i_27;
input  [15:0] d_i_28;
input  [15:0] d_i_29;
input  [15:0] d_i_30;
input  [15:0] d_i_31;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg d_o_0_write;
reg d_o_1_write;
reg d_o_2_write;
reg d_o_3_write;
reg d_o_4_write;
reg d_o_5_write;
reg d_o_6_write;
reg d_o_7_write;
reg d_o_8_write;
reg d_o_9_write;
reg d_o_10_write;
reg d_o_11_write;
reg d_o_12_write;
reg d_o_13_write;
reg d_o_14_write;
reg d_o_15_write;
reg d_o_16_write;
reg d_o_17_write;
reg d_o_18_write;
reg d_o_19_write;
reg d_o_20_write;
reg d_o_21_write;
reg d_o_22_write;
reg d_o_23_write;
reg d_o_24_write;
reg d_o_25_write;
reg d_o_26_write;
reg d_o_27_write;
reg d_o_28_write;
reg d_o_29_write;
reg d_o_30_write;
reg d_o_31_write;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_18;
reg   [31:0] acc_0;
reg   [31:0] acc_1;
reg   [31:0] acc_2;
reg   [31:0] acc_3;
reg   [31:0] acc_4;
reg   [31:0] acc_5;
reg   [31:0] acc_6;
reg   [31:0] acc_7;
reg    d_o_0_blk_n;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_199;
reg    d_o_1_blk_n;
reg    d_o_2_blk_n;
reg    d_o_3_blk_n;
reg    d_o_4_blk_n;
reg    d_o_5_blk_n;
reg    d_o_6_blk_n;
reg    d_o_7_blk_n;
reg    d_o_8_blk_n;
reg    d_o_9_blk_n;
reg    d_o_10_blk_n;
reg    d_o_11_blk_n;
reg    d_o_12_blk_n;
reg    d_o_13_blk_n;
reg    d_o_14_blk_n;
reg    d_o_15_blk_n;
reg    d_o_16_blk_n;
reg    d_o_17_blk_n;
reg    d_o_18_blk_n;
reg    d_o_19_blk_n;
reg    d_o_20_blk_n;
reg    d_o_21_blk_n;
reg    d_o_22_blk_n;
reg    d_o_23_blk_n;
reg    d_o_24_blk_n;
reg    d_o_25_blk_n;
reg    d_o_26_blk_n;
reg    d_o_27_blk_n;
reg    d_o_28_blk_n;
reg    d_o_29_blk_n;
reg    d_o_30_blk_n;
reg    d_o_31_blk_n;
wire   [31:0] acc_0_loc_assign_2_fu_586_p2;
reg   [31:0] acc_0_loc_assign_2_reg_1098;
wire   [15:0] tmp_fu_592_p1;
reg   [15:0] tmp_reg_1103;
wire   [31:0] acc_1_loc_assign_2_fu_604_p2;
reg   [31:0] acc_1_loc_assign_2_reg_1108;
wire   [15:0] tmp_1_fu_610_p1;
reg   [15:0] tmp_1_reg_1113;
wire   [31:0] acc_2_loc_assign_2_fu_622_p2;
reg   [31:0] acc_2_loc_assign_2_reg_1118;
wire   [15:0] tmp_3_fu_628_p1;
reg   [15:0] tmp_3_reg_1123;
wire   [31:0] acc_3_loc_assign_2_fu_640_p2;
reg   [31:0] acc_3_loc_assign_2_reg_1128;
wire   [15:0] tmp_4_fu_646_p1;
reg   [15:0] tmp_4_reg_1133;
wire   [31:0] acc_4_loc_assign_2_fu_658_p2;
reg   [31:0] acc_4_loc_assign_2_reg_1138;
wire   [15:0] tmp_5_fu_664_p1;
reg   [15:0] tmp_5_reg_1143;
wire   [31:0] acc_5_loc_assign_2_fu_676_p2;
reg   [31:0] acc_5_loc_assign_2_reg_1148;
wire   [15:0] tmp_6_fu_682_p1;
reg   [15:0] tmp_6_reg_1153;
wire   [31:0] acc_6_loc_assign_2_fu_694_p2;
reg   [31:0] acc_6_loc_assign_2_reg_1158;
wire   [15:0] tmp_7_fu_700_p1;
reg   [15:0] tmp_7_reg_1163;
wire   [31:0] acc_7_loc_assign_2_fu_712_p2;
reg   [31:0] acc_7_loc_assign_2_reg_1168;
wire   [15:0] tmp_8_fu_718_p1;
reg   [15:0] tmp_8_reg_1173;
wire   [15:0] tmp_9_fu_731_p1;
reg   [15:0] tmp_9_reg_1178;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_274;
wire   [15:0] tmp_10_fu_744_p1;
reg   [15:0] tmp_10_reg_1183;
wire   [15:0] tmp_11_fu_757_p1;
reg   [15:0] tmp_11_reg_1188;
wire   [15:0] tmp_12_fu_770_p1;
reg   [15:0] tmp_12_reg_1193;
wire   [15:0] tmp_13_fu_783_p1;
reg   [15:0] tmp_13_reg_1198;
wire   [15:0] tmp_14_fu_796_p1;
reg   [15:0] tmp_14_reg_1203;
wire   [15:0] tmp_15_fu_809_p1;
reg   [15:0] tmp_15_reg_1208;
wire   [15:0] tmp_16_fu_822_p1;
reg   [15:0] tmp_16_reg_1213;
wire   [31:0] acc_0_loc_fu_830_p2;
reg   [31:0] acc_0_loc_reg_1218;
wire   [15:0] tmp_17_fu_836_p1;
reg   [15:0] tmp_17_reg_1223;
wire   [31:0] acc_1_loc_fu_844_p2;
reg   [31:0] acc_1_loc_reg_1228;
wire   [15:0] tmp_18_fu_850_p1;
reg   [15:0] tmp_18_reg_1233;
wire   [31:0] acc_2_loc_fu_858_p2;
reg   [31:0] acc_2_loc_reg_1238;
wire   [15:0] tmp_19_fu_864_p1;
reg   [15:0] tmp_19_reg_1243;
wire   [31:0] acc_3_loc_fu_872_p2;
reg   [31:0] acc_3_loc_reg_1248;
wire   [15:0] tmp_20_fu_878_p1;
reg   [15:0] tmp_20_reg_1253;
wire   [31:0] acc_4_loc_fu_886_p2;
reg   [31:0] acc_4_loc_reg_1258;
wire   [15:0] tmp_21_fu_892_p1;
reg   [15:0] tmp_21_reg_1263;
wire   [31:0] acc_5_loc_fu_900_p2;
reg   [31:0] acc_5_loc_reg_1268;
wire   [15:0] tmp_22_fu_906_p1;
reg   [15:0] tmp_22_reg_1273;
wire   [31:0] acc_6_loc_fu_914_p2;
reg   [31:0] acc_6_loc_reg_1278;
wire   [15:0] tmp_23_fu_920_p1;
reg   [15:0] tmp_23_reg_1283;
wire   [31:0] acc_7_loc_fu_928_p2;
reg   [31:0] acc_7_loc_reg_1288;
wire   [15:0] tmp_24_fu_934_p1;
reg   [15:0] tmp_24_reg_1293;
reg    ap_sig_386;
wire   [31:0] temp_s_fu_942_p2;
wire   [31:0] temp_1_fu_962_p2;
wire   [31:0] temp_2_fu_982_p2;
wire   [31:0] temp_3_fu_1002_p2;
wire   [31:0] temp_4_fu_1022_p2;
wire   [31:0] temp_5_fu_1042_p2;
wire   [31:0] temp_6_fu_1062_p2;
wire   [31:0] temp_7_fu_1082_p2;
wire  signed [31:0] tmp_2_fu_582_p1;
wire  signed [31:0] tmp_2_1_fu_600_p1;
wire  signed [31:0] tmp_2_2_fu_618_p1;
wire  signed [31:0] tmp_2_3_fu_636_p1;
wire  signed [31:0] tmp_2_4_fu_654_p1;
wire  signed [31:0] tmp_2_5_fu_672_p1;
wire  signed [31:0] tmp_2_6_fu_690_p1;
wire  signed [31:0] tmp_2_7_fu_708_p1;
wire  signed [31:0] tmp_2_8_fu_722_p1;
wire   [31:0] acc_0_loc_assign_1_fu_726_p2;
wire  signed [31:0] tmp_2_9_fu_735_p1;
wire   [31:0] acc_1_loc_assign_1_fu_739_p2;
wire  signed [31:0] tmp_2_s_fu_748_p1;
wire   [31:0] acc_2_loc_assign_1_fu_752_p2;
wire  signed [31:0] tmp_2_10_fu_761_p1;
wire   [31:0] acc_3_loc_assign_1_fu_765_p2;
wire  signed [31:0] tmp_2_11_fu_774_p1;
wire   [31:0] acc_4_loc_assign_1_fu_778_p2;
wire  signed [31:0] tmp_2_12_fu_787_p1;
wire   [31:0] acc_5_loc_assign_1_fu_791_p2;
wire  signed [31:0] tmp_2_13_fu_800_p1;
wire   [31:0] acc_6_loc_assign_1_fu_804_p2;
wire  signed [31:0] tmp_2_14_fu_813_p1;
wire   [31:0] acc_7_loc_assign_1_fu_817_p2;
wire  signed [31:0] tmp_2_15_fu_826_p1;
wire  signed [31:0] tmp_2_16_fu_840_p1;
wire  signed [31:0] tmp_2_17_fu_854_p1;
wire  signed [31:0] tmp_2_18_fu_868_p1;
wire  signed [31:0] tmp_2_19_fu_882_p1;
wire  signed [31:0] tmp_2_20_fu_896_p1;
wire  signed [31:0] tmp_2_21_fu_910_p1;
wire  signed [31:0] tmp_2_22_fu_924_p1;
wire  signed [31:0] tmp_2_23_fu_938_p1;
wire  signed [31:0] tmp_2_24_fu_958_p1;
wire  signed [31:0] tmp_2_25_fu_978_p1;
wire  signed [31:0] tmp_2_26_fu_998_p1;
wire  signed [31:0] tmp_2_27_fu_1018_p1;
wire  signed [31:0] tmp_2_28_fu_1038_p1;
wire  signed [31:0] tmp_2_29_fu_1058_p1;
wire  signed [31:0] tmp_2_30_fu_1078_p1;
reg   [2:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'b1;
#0 acc_0 = 32'b00000000000000000000000000000000;
#0 acc_1 = 32'b00000000000000000000000000000000;
#0 acc_2 = 32'b00000000000000000000000000000000;
#0 acc_3 = 32'b00000000000000000000000000000000;
#0 acc_4 = 32'b00000000000000000000000000000000;
#0 acc_5 = 32'b00000000000000000000000000000000;
#0 acc_6 = 32'b00000000000000000000000000000000;
#0 acc_7 = 32'b00000000000000000000000000000000;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~ap_sig_386)) begin
        acc_0 <= temp_s_fu_942_p2;
        acc_1 <= temp_1_fu_962_p2;
        acc_2 <= temp_2_fu_982_p2;
        acc_3 <= temp_3_fu_1002_p2;
        acc_4 <= temp_4_fu_1022_p2;
        acc_5 <= temp_5_fu_1042_p2;
        acc_6 <= temp_6_fu_1062_p2;
        acc_7 <= temp_7_fu_1082_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
        acc_0_loc_assign_2_reg_1098 <= acc_0_loc_assign_2_fu_586_p2;
        acc_1_loc_assign_2_reg_1108 <= acc_1_loc_assign_2_fu_604_p2;
        acc_2_loc_assign_2_reg_1118 <= acc_2_loc_assign_2_fu_622_p2;
        acc_3_loc_assign_2_reg_1128 <= acc_3_loc_assign_2_fu_640_p2;
        acc_4_loc_assign_2_reg_1138 <= acc_4_loc_assign_2_fu_658_p2;
        acc_5_loc_assign_2_reg_1148 <= acc_5_loc_assign_2_fu_676_p2;
        acc_6_loc_assign_2_reg_1158 <= acc_6_loc_assign_2_fu_694_p2;
        acc_7_loc_assign_2_reg_1168 <= acc_7_loc_assign_2_fu_712_p2;
        tmp_1_reg_1113 <= tmp_1_fu_610_p1;
        tmp_3_reg_1123 <= tmp_3_fu_628_p1;
        tmp_4_reg_1133 <= tmp_4_fu_646_p1;
        tmp_5_reg_1143 <= tmp_5_fu_664_p1;
        tmp_6_reg_1153 <= tmp_6_fu_682_p1;
        tmp_7_reg_1163 <= tmp_7_fu_700_p1;
        tmp_8_reg_1173 <= tmp_8_fu_718_p1;
        tmp_reg_1103 <= tmp_fu_592_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        acc_0_loc_reg_1218 <= acc_0_loc_fu_830_p2;
        acc_1_loc_reg_1228 <= acc_1_loc_fu_844_p2;
        acc_2_loc_reg_1238 <= acc_2_loc_fu_858_p2;
        acc_3_loc_reg_1248 <= acc_3_loc_fu_872_p2;
        acc_4_loc_reg_1258 <= acc_4_loc_fu_886_p2;
        acc_5_loc_reg_1268 <= acc_5_loc_fu_900_p2;
        acc_6_loc_reg_1278 <= acc_6_loc_fu_914_p2;
        acc_7_loc_reg_1288 <= acc_7_loc_fu_928_p2;
        tmp_10_reg_1183 <= tmp_10_fu_744_p1;
        tmp_11_reg_1188 <= tmp_11_fu_757_p1;
        tmp_12_reg_1193 <= tmp_12_fu_770_p1;
        tmp_13_reg_1198 <= tmp_13_fu_783_p1;
        tmp_14_reg_1203 <= tmp_14_fu_796_p1;
        tmp_15_reg_1208 <= tmp_15_fu_809_p1;
        tmp_16_reg_1213 <= tmp_16_fu_822_p1;
        tmp_17_reg_1223 <= tmp_17_fu_836_p1;
        tmp_18_reg_1233 <= tmp_18_fu_850_p1;
        tmp_19_reg_1243 <= tmp_19_fu_864_p1;
        tmp_20_reg_1253 <= tmp_20_fu_878_p1;
        tmp_21_reg_1263 <= tmp_21_fu_892_p1;
        tmp_22_reg_1273 <= tmp_22_fu_906_p1;
        tmp_23_reg_1283 <= tmp_23_fu_920_p1;
        tmp_24_reg_1293 <= tmp_24_fu_934_p1;
        tmp_9_reg_1178 <= tmp_9_fu_731_p1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~ap_sig_386)) begin
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
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~ap_sig_386)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_18) begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_274) begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_199) begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        d_o_0_blk_n = d_o_0_full_n;
    end else begin
        d_o_0_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~ap_sig_386)) begin
        d_o_0_write = 1'b1;
    end else begin
        d_o_0_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        d_o_10_blk_n = d_o_10_full_n;
    end else begin
        d_o_10_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~ap_sig_386)) begin
        d_o_10_write = 1'b1;
    end else begin
        d_o_10_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        d_o_11_blk_n = d_o_11_full_n;
    end else begin
        d_o_11_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~ap_sig_386)) begin
        d_o_11_write = 1'b1;
    end else begin
        d_o_11_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        d_o_12_blk_n = d_o_12_full_n;
    end else begin
        d_o_12_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~ap_sig_386)) begin
        d_o_12_write = 1'b1;
    end else begin
        d_o_12_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        d_o_13_blk_n = d_o_13_full_n;
    end else begin
        d_o_13_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~ap_sig_386)) begin
        d_o_13_write = 1'b1;
    end else begin
        d_o_13_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        d_o_14_blk_n = d_o_14_full_n;
    end else begin
        d_o_14_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~ap_sig_386)) begin
        d_o_14_write = 1'b1;
    end else begin
        d_o_14_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        d_o_15_blk_n = d_o_15_full_n;
    end else begin
        d_o_15_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~ap_sig_386)) begin
        d_o_15_write = 1'b1;
    end else begin
        d_o_15_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        d_o_16_blk_n = d_o_16_full_n;
    end else begin
        d_o_16_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~ap_sig_386)) begin
        d_o_16_write = 1'b1;
    end else begin
        d_o_16_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        d_o_17_blk_n = d_o_17_full_n;
    end else begin
        d_o_17_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~ap_sig_386)) begin
        d_o_17_write = 1'b1;
    end else begin
        d_o_17_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        d_o_18_blk_n = d_o_18_full_n;
    end else begin
        d_o_18_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~ap_sig_386)) begin
        d_o_18_write = 1'b1;
    end else begin
        d_o_18_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        d_o_19_blk_n = d_o_19_full_n;
    end else begin
        d_o_19_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~ap_sig_386)) begin
        d_o_19_write = 1'b1;
    end else begin
        d_o_19_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        d_o_1_blk_n = d_o_1_full_n;
    end else begin
        d_o_1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~ap_sig_386)) begin
        d_o_1_write = 1'b1;
    end else begin
        d_o_1_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        d_o_20_blk_n = d_o_20_full_n;
    end else begin
        d_o_20_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~ap_sig_386)) begin
        d_o_20_write = 1'b1;
    end else begin
        d_o_20_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        d_o_21_blk_n = d_o_21_full_n;
    end else begin
        d_o_21_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~ap_sig_386)) begin
        d_o_21_write = 1'b1;
    end else begin
        d_o_21_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        d_o_22_blk_n = d_o_22_full_n;
    end else begin
        d_o_22_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~ap_sig_386)) begin
        d_o_22_write = 1'b1;
    end else begin
        d_o_22_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        d_o_23_blk_n = d_o_23_full_n;
    end else begin
        d_o_23_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~ap_sig_386)) begin
        d_o_23_write = 1'b1;
    end else begin
        d_o_23_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        d_o_24_blk_n = d_o_24_full_n;
    end else begin
        d_o_24_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~ap_sig_386)) begin
        d_o_24_write = 1'b1;
    end else begin
        d_o_24_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        d_o_25_blk_n = d_o_25_full_n;
    end else begin
        d_o_25_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~ap_sig_386)) begin
        d_o_25_write = 1'b1;
    end else begin
        d_o_25_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        d_o_26_blk_n = d_o_26_full_n;
    end else begin
        d_o_26_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~ap_sig_386)) begin
        d_o_26_write = 1'b1;
    end else begin
        d_o_26_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        d_o_27_blk_n = d_o_27_full_n;
    end else begin
        d_o_27_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~ap_sig_386)) begin
        d_o_27_write = 1'b1;
    end else begin
        d_o_27_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        d_o_28_blk_n = d_o_28_full_n;
    end else begin
        d_o_28_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~ap_sig_386)) begin
        d_o_28_write = 1'b1;
    end else begin
        d_o_28_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        d_o_29_blk_n = d_o_29_full_n;
    end else begin
        d_o_29_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~ap_sig_386)) begin
        d_o_29_write = 1'b1;
    end else begin
        d_o_29_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        d_o_2_blk_n = d_o_2_full_n;
    end else begin
        d_o_2_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~ap_sig_386)) begin
        d_o_2_write = 1'b1;
    end else begin
        d_o_2_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        d_o_30_blk_n = d_o_30_full_n;
    end else begin
        d_o_30_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~ap_sig_386)) begin
        d_o_30_write = 1'b1;
    end else begin
        d_o_30_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        d_o_31_blk_n = d_o_31_full_n;
    end else begin
        d_o_31_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~ap_sig_386)) begin
        d_o_31_write = 1'b1;
    end else begin
        d_o_31_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        d_o_3_blk_n = d_o_3_full_n;
    end else begin
        d_o_3_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~ap_sig_386)) begin
        d_o_3_write = 1'b1;
    end else begin
        d_o_3_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        d_o_4_blk_n = d_o_4_full_n;
    end else begin
        d_o_4_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~ap_sig_386)) begin
        d_o_4_write = 1'b1;
    end else begin
        d_o_4_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        d_o_5_blk_n = d_o_5_full_n;
    end else begin
        d_o_5_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~ap_sig_386)) begin
        d_o_5_write = 1'b1;
    end else begin
        d_o_5_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        d_o_6_blk_n = d_o_6_full_n;
    end else begin
        d_o_6_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~ap_sig_386)) begin
        d_o_6_write = 1'b1;
    end else begin
        d_o_6_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        d_o_7_blk_n = d_o_7_full_n;
    end else begin
        d_o_7_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~ap_sig_386)) begin
        d_o_7_write = 1'b1;
    end else begin
        d_o_7_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        d_o_8_blk_n = d_o_8_full_n;
    end else begin
        d_o_8_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~ap_sig_386)) begin
        d_o_8_write = 1'b1;
    end else begin
        d_o_8_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        d_o_9_blk_n = d_o_9_full_n;
    end else begin
        d_o_9_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~ap_sig_386)) begin
        d_o_9_write = 1'b1;
    end else begin
        d_o_9_write = 1'b0;
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
            ap_NS_fsm = ap_ST_st3_fsm_2;
        end
        ap_ST_st3_fsm_2 : begin
            if (~ap_sig_386) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign acc_0_loc_assign_1_fu_726_p2 = ($signed(acc_0_loc_assign_2_reg_1098) + $signed(tmp_2_8_fu_722_p1));

assign acc_0_loc_assign_2_fu_586_p2 = ($signed(acc_0) + $signed(tmp_2_fu_582_p1));

assign acc_0_loc_fu_830_p2 = ($signed(acc_0_loc_assign_1_fu_726_p2) + $signed(tmp_2_15_fu_826_p1));

assign acc_1_loc_assign_1_fu_739_p2 = ($signed(acc_1_loc_assign_2_reg_1108) + $signed(tmp_2_9_fu_735_p1));

assign acc_1_loc_assign_2_fu_604_p2 = ($signed(acc_1) + $signed(tmp_2_1_fu_600_p1));

assign acc_1_loc_fu_844_p2 = ($signed(acc_1_loc_assign_1_fu_739_p2) + $signed(tmp_2_16_fu_840_p1));

assign acc_2_loc_assign_1_fu_752_p2 = ($signed(acc_2_loc_assign_2_reg_1118) + $signed(tmp_2_s_fu_748_p1));

assign acc_2_loc_assign_2_fu_622_p2 = ($signed(acc_2) + $signed(tmp_2_2_fu_618_p1));

assign acc_2_loc_fu_858_p2 = ($signed(acc_2_loc_assign_1_fu_752_p2) + $signed(tmp_2_17_fu_854_p1));

assign acc_3_loc_assign_1_fu_765_p2 = ($signed(acc_3_loc_assign_2_reg_1128) + $signed(tmp_2_10_fu_761_p1));

assign acc_3_loc_assign_2_fu_640_p2 = ($signed(acc_3) + $signed(tmp_2_3_fu_636_p1));

assign acc_3_loc_fu_872_p2 = ($signed(acc_3_loc_assign_1_fu_765_p2) + $signed(tmp_2_18_fu_868_p1));

assign acc_4_loc_assign_1_fu_778_p2 = ($signed(acc_4_loc_assign_2_reg_1138) + $signed(tmp_2_11_fu_774_p1));

assign acc_4_loc_assign_2_fu_658_p2 = ($signed(acc_4) + $signed(tmp_2_4_fu_654_p1));

assign acc_4_loc_fu_886_p2 = ($signed(acc_4_loc_assign_1_fu_778_p2) + $signed(tmp_2_19_fu_882_p1));

assign acc_5_loc_assign_1_fu_791_p2 = ($signed(acc_5_loc_assign_2_reg_1148) + $signed(tmp_2_12_fu_787_p1));

assign acc_5_loc_assign_2_fu_676_p2 = ($signed(acc_5) + $signed(tmp_2_5_fu_672_p1));

assign acc_5_loc_fu_900_p2 = ($signed(acc_5_loc_assign_1_fu_791_p2) + $signed(tmp_2_20_fu_896_p1));

assign acc_6_loc_assign_1_fu_804_p2 = ($signed(acc_6_loc_assign_2_reg_1158) + $signed(tmp_2_13_fu_800_p1));

assign acc_6_loc_assign_2_fu_694_p2 = ($signed(acc_6) + $signed(tmp_2_6_fu_690_p1));

assign acc_6_loc_fu_914_p2 = ($signed(acc_6_loc_assign_1_fu_804_p2) + $signed(tmp_2_21_fu_910_p1));

assign acc_7_loc_assign_1_fu_817_p2 = ($signed(acc_7_loc_assign_2_reg_1168) + $signed(tmp_2_14_fu_813_p1));

assign acc_7_loc_assign_2_fu_712_p2 = ($signed(acc_7) + $signed(tmp_2_7_fu_708_p1));

assign acc_7_loc_fu_928_p2 = ($signed(acc_7_loc_assign_1_fu_817_p2) + $signed(tmp_2_22_fu_924_p1));

always @ (*) begin
    ap_sig_18 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_199 = (1'b1 == ap_CS_fsm[ap_const_lv32_2]);
end

always @ (*) begin
    ap_sig_274 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

always @ (*) begin
    ap_sig_386 = ((d_o_0_full_n == 1'b0) | (d_o_1_full_n == 1'b0) | (d_o_2_full_n == 1'b0) | (d_o_3_full_n == 1'b0) | (d_o_4_full_n == 1'b0) | (d_o_5_full_n == 1'b0) | (d_o_6_full_n == 1'b0) | (d_o_7_full_n == 1'b0) | (d_o_8_full_n == 1'b0) | (d_o_9_full_n == 1'b0) | (d_o_10_full_n == 1'b0) | (d_o_11_full_n == 1'b0) | (d_o_12_full_n == 1'b0) | (d_o_13_full_n == 1'b0) | (d_o_14_full_n == 1'b0) | (d_o_15_full_n == 1'b0) | (d_o_16_full_n == 1'b0) | (d_o_17_full_n == 1'b0) | (d_o_18_full_n == 1'b0) | (d_o_19_full_n == 1'b0) | (d_o_20_full_n == 1'b0) | (d_o_21_full_n == 1'b0) | (d_o_22_full_n == 1'b0) | (d_o_23_full_n == 1'b0) | (d_o_24_full_n == 1'b0) | (d_o_25_full_n == 1'b0) | (d_o_26_full_n == 1'b0) | (d_o_27_full_n == 1'b0) | (d_o_28_full_n == 1'b0) | (d_o_29_full_n == 1'b0) | (d_o_30_full_n == 1'b0) | (d_o_31_full_n == 1'b0));
end

assign d_o_0_din = tmp_reg_1103;

assign d_o_10_din = tmp_11_reg_1188;

assign d_o_11_din = tmp_12_reg_1193;

assign d_o_12_din = tmp_13_reg_1198;

assign d_o_13_din = tmp_14_reg_1203;

assign d_o_14_din = tmp_15_reg_1208;

assign d_o_15_din = tmp_16_reg_1213;

assign d_o_16_din = tmp_17_reg_1223;

assign d_o_17_din = tmp_18_reg_1233;

assign d_o_18_din = tmp_19_reg_1243;

assign d_o_19_din = tmp_20_reg_1253;

assign d_o_1_din = tmp_1_reg_1113;

assign d_o_20_din = tmp_21_reg_1263;

assign d_o_21_din = tmp_22_reg_1273;

assign d_o_22_din = tmp_23_reg_1283;

assign d_o_23_din = tmp_24_reg_1293;

assign d_o_24_din = temp_s_fu_942_p2[15:0];

assign d_o_25_din = temp_1_fu_962_p2[15:0];

assign d_o_26_din = temp_2_fu_982_p2[15:0];

assign d_o_27_din = temp_3_fu_1002_p2[15:0];

assign d_o_28_din = temp_4_fu_1022_p2[15:0];

assign d_o_29_din = temp_5_fu_1042_p2[15:0];

assign d_o_2_din = tmp_3_reg_1123;

assign d_o_30_din = temp_6_fu_1062_p2[15:0];

assign d_o_31_din = temp_7_fu_1082_p2[15:0];

assign d_o_3_din = tmp_4_reg_1133;

assign d_o_4_din = tmp_5_reg_1143;

assign d_o_5_din = tmp_6_reg_1153;

assign d_o_6_din = tmp_7_reg_1163;

assign d_o_7_din = tmp_8_reg_1173;

assign d_o_8_din = tmp_9_reg_1178;

assign d_o_9_din = tmp_10_reg_1183;

assign temp_1_fu_962_p2 = ($signed(acc_1_loc_reg_1228) + $signed(tmp_2_24_fu_958_p1));

assign temp_2_fu_982_p2 = ($signed(acc_2_loc_reg_1238) + $signed(tmp_2_25_fu_978_p1));

assign temp_3_fu_1002_p2 = ($signed(acc_3_loc_reg_1248) + $signed(tmp_2_26_fu_998_p1));

assign temp_4_fu_1022_p2 = ($signed(acc_4_loc_reg_1258) + $signed(tmp_2_27_fu_1018_p1));

assign temp_5_fu_1042_p2 = ($signed(acc_5_loc_reg_1268) + $signed(tmp_2_28_fu_1038_p1));

assign temp_6_fu_1062_p2 = ($signed(acc_6_loc_reg_1278) + $signed(tmp_2_29_fu_1058_p1));

assign temp_7_fu_1082_p2 = ($signed(acc_7_loc_reg_1288) + $signed(tmp_2_30_fu_1078_p1));

assign temp_s_fu_942_p2 = ($signed(acc_0_loc_reg_1218) + $signed(tmp_2_23_fu_938_p1));

assign tmp_10_fu_744_p1 = acc_1_loc_assign_1_fu_739_p2[15:0];

assign tmp_11_fu_757_p1 = acc_2_loc_assign_1_fu_752_p2[15:0];

assign tmp_12_fu_770_p1 = acc_3_loc_assign_1_fu_765_p2[15:0];

assign tmp_13_fu_783_p1 = acc_4_loc_assign_1_fu_778_p2[15:0];

assign tmp_14_fu_796_p1 = acc_5_loc_assign_1_fu_791_p2[15:0];

assign tmp_15_fu_809_p1 = acc_6_loc_assign_1_fu_804_p2[15:0];

assign tmp_16_fu_822_p1 = acc_7_loc_assign_1_fu_817_p2[15:0];

assign tmp_17_fu_836_p1 = acc_0_loc_fu_830_p2[15:0];

assign tmp_18_fu_850_p1 = acc_1_loc_fu_844_p2[15:0];

assign tmp_19_fu_864_p1 = acc_2_loc_fu_858_p2[15:0];

assign tmp_1_fu_610_p1 = acc_1_loc_assign_2_fu_604_p2[15:0];

assign tmp_20_fu_878_p1 = acc_3_loc_fu_872_p2[15:0];

assign tmp_21_fu_892_p1 = acc_4_loc_fu_886_p2[15:0];

assign tmp_22_fu_906_p1 = acc_5_loc_fu_900_p2[15:0];

assign tmp_23_fu_920_p1 = acc_6_loc_fu_914_p2[15:0];

assign tmp_24_fu_934_p1 = acc_7_loc_fu_928_p2[15:0];

assign tmp_2_10_fu_761_p1 = $signed(d_i_11);

assign tmp_2_11_fu_774_p1 = $signed(d_i_12);

assign tmp_2_12_fu_787_p1 = $signed(d_i_13);

assign tmp_2_13_fu_800_p1 = $signed(d_i_14);

assign tmp_2_14_fu_813_p1 = $signed(d_i_15);

assign tmp_2_15_fu_826_p1 = $signed(d_i_16);

assign tmp_2_16_fu_840_p1 = $signed(d_i_17);

assign tmp_2_17_fu_854_p1 = $signed(d_i_18);

assign tmp_2_18_fu_868_p1 = $signed(d_i_19);

assign tmp_2_19_fu_882_p1 = $signed(d_i_20);

assign tmp_2_1_fu_600_p1 = $signed(d_i_1);

assign tmp_2_20_fu_896_p1 = $signed(d_i_21);

assign tmp_2_21_fu_910_p1 = $signed(d_i_22);

assign tmp_2_22_fu_924_p1 = $signed(d_i_23);

assign tmp_2_23_fu_938_p1 = $signed(d_i_24);

assign tmp_2_24_fu_958_p1 = $signed(d_i_25);

assign tmp_2_25_fu_978_p1 = $signed(d_i_26);

assign tmp_2_26_fu_998_p1 = $signed(d_i_27);

assign tmp_2_27_fu_1018_p1 = $signed(d_i_28);

assign tmp_2_28_fu_1038_p1 = $signed(d_i_29);

assign tmp_2_29_fu_1058_p1 = $signed(d_i_30);

assign tmp_2_2_fu_618_p1 = $signed(d_i_2);

assign tmp_2_30_fu_1078_p1 = $signed(d_i_31);

assign tmp_2_3_fu_636_p1 = $signed(d_i_3);

assign tmp_2_4_fu_654_p1 = $signed(d_i_4);

assign tmp_2_5_fu_672_p1 = $signed(d_i_5);

assign tmp_2_6_fu_690_p1 = $signed(d_i_6);

assign tmp_2_7_fu_708_p1 = $signed(d_i_7);

assign tmp_2_8_fu_722_p1 = $signed(d_i_8);

assign tmp_2_9_fu_735_p1 = $signed(d_i_9);

assign tmp_2_fu_582_p1 = $signed(d_i_0);

assign tmp_2_s_fu_748_p1 = $signed(d_i_10);

assign tmp_3_fu_628_p1 = acc_2_loc_assign_2_fu_622_p2[15:0];

assign tmp_4_fu_646_p1 = acc_3_loc_assign_2_fu_640_p2[15:0];

assign tmp_5_fu_664_p1 = acc_4_loc_assign_2_fu_658_p2[15:0];

assign tmp_6_fu_682_p1 = acc_5_loc_assign_2_fu_676_p2[15:0];

assign tmp_7_fu_700_p1 = acc_6_loc_assign_2_fu_694_p2[15:0];

assign tmp_8_fu_718_p1 = acc_7_loc_assign_2_fu_712_p2[15:0];

assign tmp_9_fu_731_p1 = acc_0_loc_assign_1_fu_726_p2[15:0];

assign tmp_fu_592_p1 = acc_0_loc_assign_2_fu_586_p2[15:0];

endmodule //array_io
