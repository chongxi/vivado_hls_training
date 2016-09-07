// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.1
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _yuv_filter_rgb2yuv_HH_
#define _yuv_filter_rgb2yuv_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "yuv_filter_mac_muladd_8ns_8s_16ns_16_1.h"
#include "yuv_filter_mac_muladd_8ns_7s_16ns_16_1.h"
#include "yuv_filter_mac_muladd_8ns_6ns_9ns_13_1.h"

namespace ap_rtl {

struct yuv_filter_rgb2yuv : public sc_module {
    // Port declarations 31
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<22> > in_channels_ch1_address0;
    sc_out< sc_logic > in_channels_ch1_ce0;
    sc_in< sc_lv<8> > in_channels_ch1_q0;
    sc_out< sc_lv<22> > in_channels_ch2_address0;
    sc_out< sc_logic > in_channels_ch2_ce0;
    sc_in< sc_lv<8> > in_channels_ch2_q0;
    sc_out< sc_lv<22> > in_channels_ch3_address0;
    sc_out< sc_logic > in_channels_ch3_ce0;
    sc_in< sc_lv<8> > in_channels_ch3_q0;
    sc_in< sc_lv<16> > out_width;
    sc_in< sc_lv<16> > out_height;
    sc_out< sc_lv<22> > out_channels_ch1_address0;
    sc_out< sc_logic > out_channels_ch1_ce0;
    sc_out< sc_logic > out_channels_ch1_we0;
    sc_out< sc_lv<8> > out_channels_ch1_d0;
    sc_out< sc_lv<22> > out_channels_ch2_address0;
    sc_out< sc_logic > out_channels_ch2_ce0;
    sc_out< sc_logic > out_channels_ch2_we0;
    sc_out< sc_lv<8> > out_channels_ch2_d0;
    sc_out< sc_lv<22> > out_channels_ch3_address0;
    sc_out< sc_logic > out_channels_ch3_ce0;
    sc_out< sc_logic > out_channels_ch3_we0;
    sc_out< sc_lv<8> > out_channels_ch3_d0;
    sc_out< sc_lv<16> > ap_return_0;
    sc_out< sc_lv<16> > ap_return_1;


    // Module declarations
    yuv_filter_rgb2yuv(sc_module_name name);
    SC_HAS_PROCESS(yuv_filter_rgb2yuv);

    ~yuv_filter_rgb2yuv();

    sc_trace_file* mVcdFile;

    yuv_filter_mac_muladd_8ns_8s_16ns_16_1<1,1,8,8,16,16>* yuv_filter_mac_muladd_8ns_8s_16ns_16_1_U0;
    yuv_filter_mac_muladd_8ns_7s_16ns_16_1<1,1,8,7,16,16>* yuv_filter_mac_muladd_8ns_7s_16ns_16_1_U1;
    yuv_filter_mac_muladd_8ns_6ns_9ns_13_1<1,1,8,6,9,13>* yuv_filter_mac_muladd_8ns_6ns_9ns_13_1_U2;
    sc_signal< sc_lv<10> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_27;
    sc_signal< sc_lv<16> > x_2_fu_213_p2;
    sc_signal< sc_lv<16> > x_2_reg_552;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_90;
    sc_signal< sc_lv<23> > tmp_22_fu_243_p2;
    sc_signal< sc_lv<23> > tmp_22_reg_557;
    sc_signal< sc_lv<1> > exitcond1_fu_208_p2;
    sc_signal< sc_lv<16> > y_2_fu_264_p2;
    sc_signal< sc_lv<16> > y_2_reg_565;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_105;
    sc_signal< sc_lv<64> > tmp_24_cast_fu_279_p1;
    sc_signal< sc_lv<64> > tmp_24_cast_reg_570;
    sc_signal< sc_lv<1> > exitcond_fu_259_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st4_fsm_3;
    sc_signal< bool > ap_sig_123;
    sc_signal< sc_lv<8> > R_reg_593;
    sc_signal< sc_logic > ap_sig_cseq_ST_st6_fsm_5;
    sc_signal< bool > ap_sig_131;
    sc_signal< sc_lv<8> > G_reg_601;
    sc_signal< sc_lv<8> > B_reg_608;
    sc_signal< sc_logic > ap_sig_cseq_ST_st7_fsm_6;
    sc_signal< bool > ap_sig_140;
    sc_signal< sc_lv<16> > tmp_35_cast1_fu_288_p1;
    sc_signal< sc_lv<16> > tmp_35_cast1_reg_616;
    sc_signal< sc_lv<16> > tmp_29_fu_291_p2;
    sc_signal< sc_lv<16> > tmp_29_reg_621;
    sc_signal< sc_lv<16> > tmp_33_fu_297_p2;
    sc_signal< sc_lv<16> > tmp_33_reg_626;
    sc_signal< sc_lv<8> > tmp_27_reg_631;
    sc_signal< sc_logic > ap_sig_cseq_ST_st8_fsm_7;
    sc_signal< bool > ap_sig_155;
    sc_signal< sc_lv<8> > tmp_32_reg_636;
    sc_signal< sc_lv<8> > tmp_37_reg_641;
    sc_signal< sc_logic > ap_sig_cseq_ST_st9_fsm_8;
    sc_signal< bool > ap_sig_168;
    sc_signal< sc_lv<16> > x_reg_186;
    sc_signal< sc_lv<16> > y_reg_197;
    sc_signal< sc_logic > ap_sig_cseq_ST_st10_fsm_9;
    sc_signal< bool > ap_sig_192;
    sc_signal< sc_logic > ap_sig_cseq_ST_st5_fsm_4;
    sc_signal< bool > ap_sig_200;
    sc_signal< sc_lv<13> > tmp_fu_219_p1;
    sc_signal< sc_lv<15> > tmp_21_fu_231_p1;
    sc_signal< sc_lv<23> > p_shl_cast_fu_223_p3;
    sc_signal< sc_lv<23> > p_shl7_cast_fu_235_p3;
    sc_signal< sc_lv<23> > tmp_cast_fu_270_p1;
    sc_signal< sc_lv<23> > tmp_24_fu_274_p2;
    sc_signal< sc_lv<8> > tmp_29_fu_291_p0;
    sc_signal< sc_lv<8> > tmp_33_fu_297_p0;
    sc_signal< sc_lv<14> > p_shl5_fu_306_p3;
    sc_signal< sc_lv<9> > p_shl6_fu_317_p3;
    sc_signal< sc_lv<15> > p_shl4_fu_331_p3;
    sc_signal< sc_lv<15> > p_shl6_cast_fu_324_p1;
    sc_signal< sc_lv<15> > p_shl5_cast_fu_313_p1;
    sc_signal< sc_lv<15> > tmp2_fu_345_p2;
    sc_signal< sc_lv<16> > tmp2_cast_fu_351_p1;
    sc_signal< sc_lv<16> > p_shl4_cast_fu_338_p1;
    sc_signal< sc_lv<9> > tmp_35_cast2_fu_328_p1;
    sc_signal< sc_lv<9> > tmp4_fu_361_p2;
    sc_signal< sc_lv<13> > grp_fu_528_p3;
    sc_signal< sc_lv<16> > tmp3_cast_fu_371_p1;
    sc_signal< sc_lv<16> > tmp1_fu_355_p2;
    sc_signal< sc_lv<16> > tmp_26_fu_374_p2;
    sc_signal< sc_lv<15> > p_shl2_fu_390_p3;
    sc_signal< sc_lv<12> > p_shl3_fu_401_p3;
    sc_signal< sc_lv<16> > p_shl2_cast_fu_397_p1;
    sc_signal< sc_lv<16> > p_shl3_cast_fu_412_p1;
    sc_signal< sc_lv<16> > tmp_30_fu_416_p2;
    sc_signal< sc_lv<16> > tmp6_fu_422_p2;
    sc_signal< sc_lv<16> > grp_fu_520_p3;
    sc_signal< sc_lv<16> > tmp_31_fu_428_p2;
    sc_signal< sc_lv<13> > p_shl3_cast9_fu_408_p1;
    sc_signal< sc_lv<13> > p_neg_fu_443_p2;
    sc_signal< sc_lv<9> > p_shl1_fu_453_p3;
    sc_signal< sc_lv<14> > p_neg_cast_fu_449_p1;
    sc_signal< sc_lv<14> > p_shl1_cast_fu_460_p1;
    sc_signal< sc_lv<14> > tmp_35_fu_464_p2;
    sc_signal< sc_lv<14> > tmp8_fu_470_p2;
    sc_signal< sc_lv<16> > tmp8_cast_fu_476_p1;
    sc_signal< sc_lv<16> > grp_fu_513_p3;
    sc_signal< sc_lv<16> > tmp_36_fu_480_p2;
    sc_signal< sc_lv<8> > grp_fu_513_p0;
    sc_signal< sc_lv<8> > grp_fu_513_p1;
    sc_signal< sc_lv<8> > grp_fu_520_p0;
    sc_signal< sc_lv<7> > grp_fu_520_p1;
    sc_signal< sc_lv<8> > grp_fu_528_p0;
    sc_signal< sc_lv<6> > grp_fu_528_p1;
    sc_signal< sc_lv<9> > grp_fu_528_p2;
    sc_signal< sc_lv<10> > ap_NS_fsm;
    sc_signal< sc_lv<15> > grp_fu_520_p00;
    sc_signal< sc_lv<13> > grp_fu_528_p00;
    sc_signal< sc_lv<13> > grp_fu_528_p20;
    sc_signal< sc_lv<16> > tmp_29_fu_291_p00;
    sc_signal< sc_lv<16> > tmp_33_fu_297_p00;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<10> ap_ST_st1_fsm_0;
    static const sc_lv<10> ap_ST_st2_fsm_1;
    static const sc_lv<10> ap_ST_st3_fsm_2;
    static const sc_lv<10> ap_ST_st4_fsm_3;
    static const sc_lv<10> ap_ST_st5_fsm_4;
    static const sc_lv<10> ap_ST_st6_fsm_5;
    static const sc_lv<10> ap_ST_st7_fsm_6;
    static const sc_lv<10> ap_ST_st8_fsm_7;
    static const sc_lv<10> ap_ST_st9_fsm_8;
    static const sc_lv<10> ap_ST_st10_fsm_9;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<16> ap_const_lv16_1;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<16> ap_const_lv16_FFB6;
    static const sc_lv<16> ap_const_lv16_7A;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<9> ap_const_lv9_80;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<16> ap_const_lv16_80;
    static const sc_lv<13> ap_const_lv13_0;
    static const sc_lv<14> ap_const_lv14_80;
    static const sc_lv<8> ap_const_lv8_10;
    static const sc_lv<8> ap_const_lv8_80;
    static const sc_lv<16> ap_const_lv16_FFA2;
    static const sc_lv<15> ap_const_lv15_7FDA;
    static const sc_lv<13> ap_const_lv13_19;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_ap_sig_105();
    void thread_ap_sig_123();
    void thread_ap_sig_131();
    void thread_ap_sig_140();
    void thread_ap_sig_155();
    void thread_ap_sig_168();
    void thread_ap_sig_192();
    void thread_ap_sig_200();
    void thread_ap_sig_27();
    void thread_ap_sig_90();
    void thread_ap_sig_cseq_ST_st10_fsm_9();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_ap_sig_cseq_ST_st4_fsm_3();
    void thread_ap_sig_cseq_ST_st5_fsm_4();
    void thread_ap_sig_cseq_ST_st6_fsm_5();
    void thread_ap_sig_cseq_ST_st7_fsm_6();
    void thread_ap_sig_cseq_ST_st8_fsm_7();
    void thread_ap_sig_cseq_ST_st9_fsm_8();
    void thread_exitcond1_fu_208_p2();
    void thread_exitcond_fu_259_p2();
    void thread_grp_fu_513_p0();
    void thread_grp_fu_513_p1();
    void thread_grp_fu_520_p0();
    void thread_grp_fu_520_p00();
    void thread_grp_fu_520_p1();
    void thread_grp_fu_528_p0();
    void thread_grp_fu_528_p00();
    void thread_grp_fu_528_p1();
    void thread_grp_fu_528_p2();
    void thread_grp_fu_528_p20();
    void thread_in_channels_ch1_address0();
    void thread_in_channels_ch1_ce0();
    void thread_in_channels_ch2_address0();
    void thread_in_channels_ch2_ce0();
    void thread_in_channels_ch3_address0();
    void thread_in_channels_ch3_ce0();
    void thread_out_channels_ch1_address0();
    void thread_out_channels_ch1_ce0();
    void thread_out_channels_ch1_d0();
    void thread_out_channels_ch1_we0();
    void thread_out_channels_ch2_address0();
    void thread_out_channels_ch2_ce0();
    void thread_out_channels_ch2_d0();
    void thread_out_channels_ch2_we0();
    void thread_out_channels_ch3_address0();
    void thread_out_channels_ch3_ce0();
    void thread_out_channels_ch3_d0();
    void thread_out_channels_ch3_we0();
    void thread_p_neg_cast_fu_449_p1();
    void thread_p_neg_fu_443_p2();
    void thread_p_shl1_cast_fu_460_p1();
    void thread_p_shl1_fu_453_p3();
    void thread_p_shl2_cast_fu_397_p1();
    void thread_p_shl2_fu_390_p3();
    void thread_p_shl3_cast9_fu_408_p1();
    void thread_p_shl3_cast_fu_412_p1();
    void thread_p_shl3_fu_401_p3();
    void thread_p_shl4_cast_fu_338_p1();
    void thread_p_shl4_fu_331_p3();
    void thread_p_shl5_cast_fu_313_p1();
    void thread_p_shl5_fu_306_p3();
    void thread_p_shl6_cast_fu_324_p1();
    void thread_p_shl6_fu_317_p3();
    void thread_p_shl7_cast_fu_235_p3();
    void thread_p_shl_cast_fu_223_p3();
    void thread_tmp1_fu_355_p2();
    void thread_tmp2_cast_fu_351_p1();
    void thread_tmp2_fu_345_p2();
    void thread_tmp3_cast_fu_371_p1();
    void thread_tmp4_fu_361_p2();
    void thread_tmp6_fu_422_p2();
    void thread_tmp8_cast_fu_476_p1();
    void thread_tmp8_fu_470_p2();
    void thread_tmp_21_fu_231_p1();
    void thread_tmp_22_fu_243_p2();
    void thread_tmp_24_cast_fu_279_p1();
    void thread_tmp_24_fu_274_p2();
    void thread_tmp_26_fu_374_p2();
    void thread_tmp_29_fu_291_p0();
    void thread_tmp_29_fu_291_p00();
    void thread_tmp_29_fu_291_p2();
    void thread_tmp_30_fu_416_p2();
    void thread_tmp_31_fu_428_p2();
    void thread_tmp_33_fu_297_p0();
    void thread_tmp_33_fu_297_p00();
    void thread_tmp_33_fu_297_p2();
    void thread_tmp_35_cast1_fu_288_p1();
    void thread_tmp_35_cast2_fu_328_p1();
    void thread_tmp_35_fu_464_p2();
    void thread_tmp_36_fu_480_p2();
    void thread_tmp_cast_fu_270_p1();
    void thread_tmp_fu_219_p1();
    void thread_x_2_fu_213_p2();
    void thread_y_2_fu_264_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
