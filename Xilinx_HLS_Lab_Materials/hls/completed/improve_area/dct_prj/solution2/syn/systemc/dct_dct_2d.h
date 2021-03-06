// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.1
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _dct_dct_2d_HH_
#define _dct_dct_2d_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "dct_dct_1d2.h"
#include "dct_dct_2d_row_outbuf.h"

namespace ap_rtl {

struct dct_dct_2d : public sc_module {
    // Port declarations 13
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<6> > in_block_address0;
    sc_out< sc_logic > in_block_ce0;
    sc_in< sc_lv<16> > in_block_q0;
    sc_out< sc_lv<6> > out_block_address0;
    sc_out< sc_logic > out_block_ce0;
    sc_out< sc_logic > out_block_we0;
    sc_out< sc_lv<16> > out_block_d0;


    // Module declarations
    dct_dct_2d(sc_module_name name);
    SC_HAS_PROCESS(dct_dct_2d);

    ~dct_dct_2d();

    sc_trace_file* mVcdFile;

    dct_dct_2d_row_outbuf* row_outbuf_U;
    dct_dct_2d_row_outbuf* col_outbuf_U;
    dct_dct_2d_row_outbuf* col_inbuf_U;
    dct_dct_1d2* grp_dct_dct_1d2_fu_211;
    sc_signal< sc_lv<8> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_25;
    sc_signal< sc_lv<7> > indvar_flatten_reg_133;
    sc_signal< sc_lv<4> > j_reg_144;
    sc_signal< sc_lv<4> > i_1_reg_155;
    sc_signal< sc_lv<7> > indvar_flatten1_reg_178;
    sc_signal< sc_lv<4> > j_1_reg_189;
    sc_signal< sc_lv<4> > i_3_reg_200;
    sc_signal< sc_lv<1> > exitcond5_fu_226_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_62;
    sc_signal< sc_lv<4> > i_4_fu_232_p2;
    sc_signal< sc_lv<4> > i_4_reg_450;
    sc_signal< sc_lv<1> > exitcond_flatten_fu_238_p2;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_455;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg0_fsm_3;
    sc_signal< bool > ap_sig_73;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it0;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it1;
    sc_signal< sc_lv<7> > indvar_flatten_next_fu_244_p2;
    sc_signal< sc_lv<4> > i_1_mid2_fu_262_p3;
    sc_signal< sc_lv<4> > i_1_mid2_reg_464;
    sc_signal< sc_lv<4> > tmp_mid2_v_fu_270_p3;
    sc_signal< sc_lv<4> > tmp_mid2_v_reg_469;
    sc_signal< sc_lv<4> > i_6_fu_305_p2;
    sc_signal< sc_lv<1> > exitcond2_fu_336_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st6_fsm_4;
    sc_signal< bool > ap_sig_101;
    sc_signal< sc_lv<4> > i_5_fu_342_p2;
    sc_signal< sc_lv<4> > i_5_reg_489;
    sc_signal< sc_lv<1> > exitcond_flatten1_fu_348_p2;
    sc_signal< sc_lv<1> > exitcond_flatten1_reg_494;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp1_stg0_fsm_6;
    sc_signal< bool > ap_sig_112;
    sc_signal< sc_logic > ap_reg_ppiten_pp1_it0;
    sc_signal< sc_logic > ap_reg_ppiten_pp1_it1;
    sc_signal< sc_lv<7> > indvar_flatten_next1_fu_354_p2;
    sc_signal< sc_lv<4> > i_3_mid2_fu_372_p3;
    sc_signal< sc_lv<4> > i_3_mid2_reg_503;
    sc_signal< sc_lv<4> > tmp_4_mid2_v_fu_380_p3;
    sc_signal< sc_lv<4> > tmp_4_mid2_v_reg_508;
    sc_signal< sc_lv<4> > i_7_fu_415_p2;
    sc_signal< sc_lv<6> > row_outbuf_address0;
    sc_signal< sc_logic > row_outbuf_ce0;
    sc_signal< sc_logic > row_outbuf_we0;
    sc_signal< sc_lv<16> > row_outbuf_q0;
    sc_signal< sc_lv<6> > col_outbuf_address0;
    sc_signal< sc_logic > col_outbuf_ce0;
    sc_signal< sc_logic > col_outbuf_we0;
    sc_signal< sc_lv<16> > col_outbuf_q0;
    sc_signal< sc_lv<6> > col_inbuf_address0;
    sc_signal< sc_logic > col_inbuf_ce0;
    sc_signal< sc_logic > col_inbuf_we0;
    sc_signal< sc_lv<16> > col_inbuf_q0;
    sc_signal< sc_logic > grp_dct_dct_1d2_fu_211_ap_start;
    sc_signal< sc_logic > grp_dct_dct_1d2_fu_211_ap_done;
    sc_signal< sc_logic > grp_dct_dct_1d2_fu_211_ap_idle;
    sc_signal< sc_logic > grp_dct_dct_1d2_fu_211_ap_ready;
    sc_signal< sc_lv<6> > grp_dct_dct_1d2_fu_211_src_address0;
    sc_signal< sc_logic > grp_dct_dct_1d2_fu_211_src_ce0;
    sc_signal< sc_lv<16> > grp_dct_dct_1d2_fu_211_src_q0;
    sc_signal< sc_lv<4> > grp_dct_dct_1d2_fu_211_tmp_2;
    sc_signal< sc_lv<6> > grp_dct_dct_1d2_fu_211_dst_address0;
    sc_signal< sc_logic > grp_dct_dct_1d2_fu_211_dst_ce0;
    sc_signal< sc_logic > grp_dct_dct_1d2_fu_211_dst_we0;
    sc_signal< sc_lv<16> > grp_dct_dct_1d2_fu_211_dst_d0;
    sc_signal< sc_lv<4> > grp_dct_dct_1d2_fu_211_tmp_21;
    sc_signal< sc_lv<4> > i_reg_121;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_198;
    sc_signal< sc_lv<4> > j_phi_fu_148_p4;
    sc_signal< sc_lv<4> > i_2_reg_166;
    sc_signal< sc_logic > ap_sig_cseq_ST_st7_fsm_5;
    sc_signal< bool > ap_sig_217;
    sc_signal< sc_lv<4> > j_1_phi_fu_193_p4;
    sc_signal< sc_logic > ap_reg_grp_dct_dct_1d2_fu_211_ap_start;
    sc_signal< sc_lv<64> > tmp_7_cast_fu_300_p1;
    sc_signal< sc_lv<64> > tmp_9_cast_fu_331_p1;
    sc_signal< sc_lv<64> > tmp_15_cast_fu_410_p1;
    sc_signal< sc_lv<64> > tmp_12_cast_fu_441_p1;
    sc_signal< sc_lv<1> > exitcond_fu_256_p2;
    sc_signal< sc_lv<4> > j_2_fu_250_p2;
    sc_signal< sc_lv<7> > tmp_2_fu_282_p3;
    sc_signal< sc_lv<8> > tmp_mid2_cast_fu_278_p1;
    sc_signal< sc_lv<8> > tmp_4_cast_fu_290_p1;
    sc_signal< sc_lv<8> > tmp_7_fu_294_p2;
    sc_signal< sc_lv<7> > tmp_fu_311_p3;
    sc_signal< sc_lv<8> > tmp_3_cast_fu_322_p1;
    sc_signal< sc_lv<8> > tmp_1_cast_fu_318_p1;
    sc_signal< sc_lv<8> > tmp_9_fu_325_p2;
    sc_signal< sc_lv<1> > exitcond4_fu_366_p2;
    sc_signal< sc_lv<4> > j_3_fu_360_p2;
    sc_signal< sc_lv<7> > tmp_3_fu_392_p3;
    sc_signal< sc_lv<8> > tmp_4_mid2_cast_fu_388_p1;
    sc_signal< sc_lv<8> > tmp_14_cast_fu_400_p1;
    sc_signal< sc_lv<8> > tmp_4_fu_404_p2;
    sc_signal< sc_lv<7> > tmp_s_fu_421_p3;
    sc_signal< sc_lv<8> > tmp_5_cast_fu_432_p1;
    sc_signal< sc_lv<8> > tmp_11_cast_fu_428_p1;
    sc_signal< sc_lv<8> > tmp_1_fu_435_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st10_fsm_7;
    sc_signal< bool > ap_sig_385;
    sc_signal< sc_lv<8> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<8> ap_ST_st1_fsm_0;
    static const sc_lv<8> ap_ST_st2_fsm_1;
    static const sc_lv<8> ap_ST_st3_fsm_2;
    static const sc_lv<8> ap_ST_pp0_stg0_fsm_3;
    static const sc_lv<8> ap_ST_st6_fsm_4;
    static const sc_lv<8> ap_ST_st7_fsm_5;
    static const sc_lv<8> ap_ST_pp1_stg0_fsm_6;
    static const sc_lv<8> ap_ST_st10_fsm_7;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<7> ap_const_lv7_40;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_7;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_101();
    void thread_ap_sig_112();
    void thread_ap_sig_198();
    void thread_ap_sig_217();
    void thread_ap_sig_25();
    void thread_ap_sig_385();
    void thread_ap_sig_62();
    void thread_ap_sig_73();
    void thread_ap_sig_cseq_ST_pp0_stg0_fsm_3();
    void thread_ap_sig_cseq_ST_pp1_stg0_fsm_6();
    void thread_ap_sig_cseq_ST_st10_fsm_7();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_ap_sig_cseq_ST_st6_fsm_4();
    void thread_ap_sig_cseq_ST_st7_fsm_5();
    void thread_col_inbuf_address0();
    void thread_col_inbuf_ce0();
    void thread_col_inbuf_we0();
    void thread_col_outbuf_address0();
    void thread_col_outbuf_ce0();
    void thread_col_outbuf_we0();
    void thread_exitcond2_fu_336_p2();
    void thread_exitcond4_fu_366_p2();
    void thread_exitcond5_fu_226_p2();
    void thread_exitcond_flatten1_fu_348_p2();
    void thread_exitcond_flatten_fu_238_p2();
    void thread_exitcond_fu_256_p2();
    void thread_grp_dct_dct_1d2_fu_211_ap_start();
    void thread_grp_dct_dct_1d2_fu_211_src_q0();
    void thread_grp_dct_dct_1d2_fu_211_tmp_2();
    void thread_grp_dct_dct_1d2_fu_211_tmp_21();
    void thread_i_1_mid2_fu_262_p3();
    void thread_i_3_mid2_fu_372_p3();
    void thread_i_4_fu_232_p2();
    void thread_i_5_fu_342_p2();
    void thread_i_6_fu_305_p2();
    void thread_i_7_fu_415_p2();
    void thread_in_block_address0();
    void thread_in_block_ce0();
    void thread_indvar_flatten_next1_fu_354_p2();
    void thread_indvar_flatten_next_fu_244_p2();
    void thread_j_1_phi_fu_193_p4();
    void thread_j_2_fu_250_p2();
    void thread_j_3_fu_360_p2();
    void thread_j_phi_fu_148_p4();
    void thread_out_block_address0();
    void thread_out_block_ce0();
    void thread_out_block_d0();
    void thread_out_block_we0();
    void thread_row_outbuf_address0();
    void thread_row_outbuf_ce0();
    void thread_row_outbuf_we0();
    void thread_tmp_11_cast_fu_428_p1();
    void thread_tmp_12_cast_fu_441_p1();
    void thread_tmp_14_cast_fu_400_p1();
    void thread_tmp_15_cast_fu_410_p1();
    void thread_tmp_1_cast_fu_318_p1();
    void thread_tmp_1_fu_435_p2();
    void thread_tmp_2_fu_282_p3();
    void thread_tmp_3_cast_fu_322_p1();
    void thread_tmp_3_fu_392_p3();
    void thread_tmp_4_cast_fu_290_p1();
    void thread_tmp_4_fu_404_p2();
    void thread_tmp_4_mid2_cast_fu_388_p1();
    void thread_tmp_4_mid2_v_fu_380_p3();
    void thread_tmp_5_cast_fu_432_p1();
    void thread_tmp_7_cast_fu_300_p1();
    void thread_tmp_7_fu_294_p2();
    void thread_tmp_9_cast_fu_331_p1();
    void thread_tmp_9_fu_325_p2();
    void thread_tmp_fu_311_p3();
    void thread_tmp_mid2_cast_fu_278_p1();
    void thread_tmp_mid2_v_fu_270_p3();
    void thread_tmp_s_fu_421_p3();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
