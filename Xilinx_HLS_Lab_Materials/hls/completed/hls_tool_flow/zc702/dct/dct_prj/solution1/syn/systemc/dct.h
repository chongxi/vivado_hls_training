// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.1
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _dct_HH_
#define _dct_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "dct_dct_2d.h"
#include "dct_dct_2d_row_outbuf.h"

namespace ap_rtl {

struct dct : public sc_module {
    // Port declarations 13
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<6> > input_r_address0;
    sc_out< sc_logic > input_r_ce0;
    sc_in< sc_lv<16> > input_r_q0;
    sc_out< sc_lv<6> > output_r_address0;
    sc_out< sc_logic > output_r_ce0;
    sc_out< sc_logic > output_r_we0;
    sc_out< sc_lv<16> > output_r_d0;


    // Module declarations
    dct(sc_module_name name);
    SC_HAS_PROCESS(dct);

    ~dct();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    dct_dct_2d_row_outbuf* buf_2d_in_U;
    dct_dct_2d_row_outbuf* buf_2d_out_U;
    dct_dct_2d* grp_dct_dct_2d_fu_148;
    sc_signal< sc_lv<8> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_23;
    sc_signal< sc_lv<4> > r_fu_162_p2;
    sc_signal< sc_lv<4> > r_reg_309;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_50;
    sc_signal< sc_lv<6> > tmp_i_fu_172_p3;
    sc_signal< sc_lv<6> > tmp_i_reg_314;
    sc_signal< sc_lv<1> > exitcond1_i_fu_156_p2;
    sc_signal< sc_lv<8> > tmp_28_cast_fu_188_p1;
    sc_signal< sc_lv<8> > tmp_28_cast_reg_319;
    sc_signal< sc_lv<4> > c_fu_202_p2;
    sc_signal< sc_lv<4> > c_reg_327;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_67;
    sc_signal< sc_lv<1> > exitcond_i_fu_196_p2;
    sc_signal< sc_lv<8> > tmp_14_fu_222_p2;
    sc_signal< sc_lv<8> > tmp_14_reg_337;
    sc_signal< sc_lv<4> > r_1_fu_237_p2;
    sc_signal< sc_lv<4> > r_1_reg_345;
    sc_signal< sc_logic > ap_sig_cseq_ST_st6_fsm_5;
    sc_signal< bool > ap_sig_83;
    sc_signal< sc_lv<8> > tmp_30_cast_fu_251_p1;
    sc_signal< sc_lv<8> > tmp_30_cast_reg_350;
    sc_signal< sc_lv<1> > exitcond1_i3_fu_231_p2;
    sc_signal< sc_lv<6> > tmp_1_i5_fu_259_p3;
    sc_signal< sc_lv<6> > tmp_1_i5_reg_355;
    sc_signal< sc_lv<4> > c_1_fu_277_p2;
    sc_signal< sc_lv<4> > c_1_reg_363;
    sc_signal< sc_logic > ap_sig_cseq_ST_st7_fsm_6;
    sc_signal< bool > ap_sig_99;
    sc_signal< sc_lv<1> > exitcond_i7_fu_271_p2;
    sc_signal< sc_lv<6> > tmp_4_i_fu_297_p2;
    sc_signal< sc_lv<6> > tmp_4_i_reg_373;
    sc_signal< sc_lv<6> > buf_2d_in_address0;
    sc_signal< sc_logic > buf_2d_in_ce0;
    sc_signal< sc_logic > buf_2d_in_we0;
    sc_signal< sc_lv<16> > buf_2d_in_q0;
    sc_signal< sc_lv<6> > buf_2d_out_address0;
    sc_signal< sc_logic > buf_2d_out_ce0;
    sc_signal< sc_logic > buf_2d_out_we0;
    sc_signal< sc_lv<16> > buf_2d_out_q0;
    sc_signal< sc_logic > grp_dct_dct_2d_fu_148_ap_start;
    sc_signal< sc_logic > grp_dct_dct_2d_fu_148_ap_done;
    sc_signal< sc_logic > grp_dct_dct_2d_fu_148_ap_idle;
    sc_signal< sc_logic > grp_dct_dct_2d_fu_148_ap_ready;
    sc_signal< sc_lv<6> > grp_dct_dct_2d_fu_148_in_block_address0;
    sc_signal< sc_logic > grp_dct_dct_2d_fu_148_in_block_ce0;
    sc_signal< sc_lv<6> > grp_dct_dct_2d_fu_148_out_block_address0;
    sc_signal< sc_logic > grp_dct_dct_2d_fu_148_out_block_ce0;
    sc_signal< sc_logic > grp_dct_dct_2d_fu_148_out_block_we0;
    sc_signal< sc_lv<16> > grp_dct_dct_2d_fu_148_out_block_d0;
    sc_signal< sc_lv<4> > r_i_reg_104;
    sc_signal< sc_lv<4> > c_i_reg_115;
    sc_signal< sc_logic > ap_sig_cseq_ST_st4_fsm_3;
    sc_signal< bool > ap_sig_155;
    sc_signal< sc_lv<4> > r_i2_reg_126;
    sc_signal< sc_logic > ap_sig_cseq_ST_st5_fsm_4;
    sc_signal< bool > ap_sig_164;
    sc_signal< sc_lv<4> > c_i6_reg_137;
    sc_signal< sc_logic > ap_sig_cseq_ST_st8_fsm_7;
    sc_signal< bool > ap_sig_178;
    sc_signal< sc_logic > ap_reg_grp_dct_dct_2d_fu_148_ap_start;
    sc_signal< sc_lv<64> > tmp_i_15_fu_213_p1;
    sc_signal< sc_lv<64> > tmp_32_cast_fu_227_p1;
    sc_signal< sc_lv<64> > tmp_33_cast_fu_292_p1;
    sc_signal< sc_lv<64> > tmp_5_i_fu_302_p1;
    sc_signal< sc_lv<3> > tmp_fu_168_p1;
    sc_signal< sc_lv<7> > tmp_s_fu_180_p3;
    sc_signal< sc_lv<6> > c_i_cast6_fu_192_p1;
    sc_signal< sc_lv<6> > tmp_9_i_fu_208_p2;
    sc_signal< sc_lv<8> > tmp_1_i_cast_fu_218_p1;
    sc_signal< sc_lv<7> > tmp_13_fu_243_p3;
    sc_signal< sc_lv<3> > tmp_4_fu_255_p1;
    sc_signal< sc_lv<8> > tmp_3_i_cast_fu_283_p1;
    sc_signal< sc_lv<8> > tmp_15_fu_287_p2;
    sc_signal< sc_lv<6> > c_i6_cast2_fu_267_p1;
    sc_signal< sc_lv<8> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<8> ap_ST_st1_fsm_0;
    static const sc_lv<8> ap_ST_st2_fsm_1;
    static const sc_lv<8> ap_ST_st3_fsm_2;
    static const sc_lv<8> ap_ST_st4_fsm_3;
    static const sc_lv<8> ap_ST_st5_fsm_4;
    static const sc_lv<8> ap_ST_st6_fsm_5;
    static const sc_lv<8> ap_ST_st7_fsm_6;
    static const sc_lv<8> ap_ST_st8_fsm_7;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<3> ap_const_lv3_0;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_155();
    void thread_ap_sig_164();
    void thread_ap_sig_178();
    void thread_ap_sig_23();
    void thread_ap_sig_50();
    void thread_ap_sig_67();
    void thread_ap_sig_83();
    void thread_ap_sig_99();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_ap_sig_cseq_ST_st4_fsm_3();
    void thread_ap_sig_cseq_ST_st5_fsm_4();
    void thread_ap_sig_cseq_ST_st6_fsm_5();
    void thread_ap_sig_cseq_ST_st7_fsm_6();
    void thread_ap_sig_cseq_ST_st8_fsm_7();
    void thread_buf_2d_in_address0();
    void thread_buf_2d_in_ce0();
    void thread_buf_2d_in_we0();
    void thread_buf_2d_out_address0();
    void thread_buf_2d_out_ce0();
    void thread_buf_2d_out_we0();
    void thread_c_1_fu_277_p2();
    void thread_c_fu_202_p2();
    void thread_c_i6_cast2_fu_267_p1();
    void thread_c_i_cast6_fu_192_p1();
    void thread_exitcond1_i3_fu_231_p2();
    void thread_exitcond1_i_fu_156_p2();
    void thread_exitcond_i7_fu_271_p2();
    void thread_exitcond_i_fu_196_p2();
    void thread_grp_dct_dct_2d_fu_148_ap_start();
    void thread_input_r_address0();
    void thread_input_r_ce0();
    void thread_output_r_address0();
    void thread_output_r_ce0();
    void thread_output_r_d0();
    void thread_output_r_we0();
    void thread_r_1_fu_237_p2();
    void thread_r_fu_162_p2();
    void thread_tmp_13_fu_243_p3();
    void thread_tmp_14_fu_222_p2();
    void thread_tmp_15_fu_287_p2();
    void thread_tmp_1_i5_fu_259_p3();
    void thread_tmp_1_i_cast_fu_218_p1();
    void thread_tmp_28_cast_fu_188_p1();
    void thread_tmp_30_cast_fu_251_p1();
    void thread_tmp_32_cast_fu_227_p1();
    void thread_tmp_33_cast_fu_292_p1();
    void thread_tmp_3_i_cast_fu_283_p1();
    void thread_tmp_4_fu_255_p1();
    void thread_tmp_4_i_fu_297_p2();
    void thread_tmp_5_i_fu_302_p1();
    void thread_tmp_9_i_fu_208_p2();
    void thread_tmp_fu_168_p1();
    void thread_tmp_i_15_fu_213_p1();
    void thread_tmp_i_fu_172_p3();
    void thread_tmp_s_fu_180_p3();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
