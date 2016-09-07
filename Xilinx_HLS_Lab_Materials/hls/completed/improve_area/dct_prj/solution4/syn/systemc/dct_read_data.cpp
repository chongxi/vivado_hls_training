// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.1
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "dct_read_data.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic dct_read_data::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic dct_read_data::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<3> dct_read_data::ap_ST_st1_fsm_0 = "1";
const sc_lv<3> dct_read_data::ap_ST_pp0_stg0_fsm_1 = "10";
const sc_lv<3> dct_read_data::ap_ST_st4_fsm_2 = "100";
const sc_lv<32> dct_read_data::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> dct_read_data::ap_const_lv1_1 = "1";
const sc_lv<32> dct_read_data::ap_const_lv32_1 = "1";
const sc_lv<1> dct_read_data::ap_const_lv1_0 = "0";
const sc_lv<7> dct_read_data::ap_const_lv7_0 = "0000000";
const sc_lv<4> dct_read_data::ap_const_lv4_0 = "0000";
const sc_lv<3> dct_read_data::ap_const_lv3_6 = "110";
const sc_lv<3> dct_read_data::ap_const_lv3_5 = "101";
const sc_lv<3> dct_read_data::ap_const_lv3_4 = "100";
const sc_lv<3> dct_read_data::ap_const_lv3_3 = "11";
const sc_lv<3> dct_read_data::ap_const_lv3_2 = "10";
const sc_lv<3> dct_read_data::ap_const_lv3_1 = "1";
const sc_lv<3> dct_read_data::ap_const_lv3_0 = "000";
const sc_lv<3> dct_read_data::ap_const_lv3_7 = "111";
const sc_lv<7> dct_read_data::ap_const_lv7_40 = "1000000";
const sc_lv<7> dct_read_data::ap_const_lv7_1 = "1";
const sc_lv<4> dct_read_data::ap_const_lv4_1 = "1";
const sc_lv<4> dct_read_data::ap_const_lv4_8 = "1000";
const sc_lv<32> dct_read_data::ap_const_lv32_2 = "10";

dct_read_data::dct_read_data(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( ap_sig_cseq_ST_st4_fsm_2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_sig_cseq_ST_st4_fsm_2 );

    SC_METHOD(thread_ap_sig_100);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_20);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_232);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_cseq_ST_pp0_stg0_fsm_1);
    sensitive << ( ap_sig_100 );

    SC_METHOD(thread_ap_sig_cseq_ST_st1_fsm_0);
    sensitive << ( ap_sig_20 );

    SC_METHOD(thread_ap_sig_cseq_ST_st4_fsm_2);
    sensitive << ( ap_sig_232 );

    SC_METHOD(thread_buf_0_address0);
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );
    sensitive << ( tmp_7_mid2_fu_298_p1 );

    SC_METHOD(thread_buf_0_ce0);
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_buf_0_d0);
    sensitive << ( input_r_q0 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_buf_0_we0);
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );
    sensitive << ( tmp_2_reg_329 );

    SC_METHOD(thread_buf_1_address0);
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );
    sensitive << ( tmp_7_mid2_fu_298_p1 );

    SC_METHOD(thread_buf_1_ce0);
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_buf_1_d0);
    sensitive << ( input_r_q0 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_buf_1_we0);
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );
    sensitive << ( tmp_2_reg_329 );

    SC_METHOD(thread_buf_2_address0);
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );
    sensitive << ( tmp_7_mid2_fu_298_p1 );

    SC_METHOD(thread_buf_2_ce0);
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_buf_2_d0);
    sensitive << ( input_r_q0 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_buf_2_we0);
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );
    sensitive << ( tmp_2_reg_329 );

    SC_METHOD(thread_buf_3_address0);
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );
    sensitive << ( tmp_7_mid2_fu_298_p1 );

    SC_METHOD(thread_buf_3_ce0);
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_buf_3_d0);
    sensitive << ( input_r_q0 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_buf_3_we0);
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );
    sensitive << ( tmp_2_reg_329 );

    SC_METHOD(thread_buf_4_address0);
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );
    sensitive << ( tmp_7_mid2_fu_298_p1 );

    SC_METHOD(thread_buf_4_ce0);
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_buf_4_d0);
    sensitive << ( input_r_q0 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_buf_4_we0);
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );
    sensitive << ( tmp_2_reg_329 );

    SC_METHOD(thread_buf_5_address0);
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );
    sensitive << ( tmp_7_mid2_fu_298_p1 );

    SC_METHOD(thread_buf_5_ce0);
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_buf_5_d0);
    sensitive << ( input_r_q0 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_buf_5_we0);
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );
    sensitive << ( tmp_2_reg_329 );

    SC_METHOD(thread_buf_6_address0);
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );
    sensitive << ( tmp_7_mid2_fu_298_p1 );

    SC_METHOD(thread_buf_6_ce0);
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_buf_6_d0);
    sensitive << ( input_r_q0 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_buf_6_we0);
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );
    sensitive << ( tmp_2_reg_329 );

    SC_METHOD(thread_buf_7_address0);
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );
    sensitive << ( tmp_7_mid2_fu_298_p1 );

    SC_METHOD(thread_buf_7_ce0);
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_buf_7_d0);
    sensitive << ( input_r_q0 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_buf_7_we0);
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );
    sensitive << ( tmp_2_reg_329 );

    SC_METHOD(thread_c_1_fu_292_p2);
    sensitive << ( c_mid2_fu_245_p3 );

    SC_METHOD(thread_c_cast2_fu_273_p1);
    sensitive << ( c_mid2_fu_245_p3 );

    SC_METHOD(thread_c_mid2_fu_245_p3);
    sensitive << ( c_reg_210 );
    sensitive << ( exitcond_fu_239_p2 );

    SC_METHOD(thread_exitcond_flatten_fu_221_p2);
    sensitive << ( indvar_flatten_reg_188 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it0 );

    SC_METHOD(thread_exitcond_fu_239_p2);
    sensitive << ( c_reg_210 );
    sensitive << ( exitcond_flatten_fu_221_p2 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it0 );

    SC_METHOD(thread_indvar_flatten_next_fu_227_p2);
    sensitive << ( indvar_flatten_reg_188 );

    SC_METHOD(thread_input_r_address0);
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it0 );
    sensitive << ( tmp_s_fu_283_p1 );

    SC_METHOD(thread_input_r_ce0);
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it0 );

    SC_METHOD(thread_r_1_fu_233_p2);
    sensitive << ( r_phi_fu_203_p4 );

    SC_METHOD(thread_r_phi_fu_203_p4);
    sensitive << ( r_reg_199 );
    sensitive << ( exitcond_flatten_reg_309 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );
    sensitive << ( tmp_mid2_v_v_reg_318 );

    SC_METHOD(thread_tmp_2_fu_288_p1);
    sensitive << ( c_mid2_fu_245_p3 );

    SC_METHOD(thread_tmp_7_mid2_fu_298_p1);
    sensitive << ( tmp_mid2_v_v_reg_318 );

    SC_METHOD(thread_tmp_9_fu_277_p2);
    sensitive << ( c_cast2_fu_273_p1 );
    sensitive << ( tmp_mid2_fu_265_p3 );

    SC_METHOD(thread_tmp_fu_261_p1);
    sensitive << ( tmp_mid2_v_v_fu_253_p3 );

    SC_METHOD(thread_tmp_mid2_fu_265_p3);
    sensitive << ( tmp_fu_261_p1 );

    SC_METHOD(thread_tmp_mid2_v_v_fu_253_p3);
    sensitive << ( r_phi_fu_203_p4 );
    sensitive << ( exitcond_fu_239_p2 );
    sensitive << ( r_1_fu_233_p2 );

    SC_METHOD(thread_tmp_s_fu_283_p1);
    sensitive << ( tmp_9_fu_277_p2 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond_flatten_fu_221_p2 );
    sensitive << ( ap_reg_ppiten_pp0_it0 );

    ap_CS_fsm = "001";
    ap_reg_ppiten_pp0_it0 = SC_LOGIC_0;
    ap_reg_ppiten_pp0_it1 = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "dct_read_data_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, input_r_address0, "(port)input_r_address0");
    sc_trace(mVcdFile, input_r_ce0, "(port)input_r_ce0");
    sc_trace(mVcdFile, input_r_q0, "(port)input_r_q0");
    sc_trace(mVcdFile, buf_0_address0, "(port)buf_0_address0");
    sc_trace(mVcdFile, buf_0_ce0, "(port)buf_0_ce0");
    sc_trace(mVcdFile, buf_0_we0, "(port)buf_0_we0");
    sc_trace(mVcdFile, buf_0_d0, "(port)buf_0_d0");
    sc_trace(mVcdFile, buf_1_address0, "(port)buf_1_address0");
    sc_trace(mVcdFile, buf_1_ce0, "(port)buf_1_ce0");
    sc_trace(mVcdFile, buf_1_we0, "(port)buf_1_we0");
    sc_trace(mVcdFile, buf_1_d0, "(port)buf_1_d0");
    sc_trace(mVcdFile, buf_2_address0, "(port)buf_2_address0");
    sc_trace(mVcdFile, buf_2_ce0, "(port)buf_2_ce0");
    sc_trace(mVcdFile, buf_2_we0, "(port)buf_2_we0");
    sc_trace(mVcdFile, buf_2_d0, "(port)buf_2_d0");
    sc_trace(mVcdFile, buf_3_address0, "(port)buf_3_address0");
    sc_trace(mVcdFile, buf_3_ce0, "(port)buf_3_ce0");
    sc_trace(mVcdFile, buf_3_we0, "(port)buf_3_we0");
    sc_trace(mVcdFile, buf_3_d0, "(port)buf_3_d0");
    sc_trace(mVcdFile, buf_4_address0, "(port)buf_4_address0");
    sc_trace(mVcdFile, buf_4_ce0, "(port)buf_4_ce0");
    sc_trace(mVcdFile, buf_4_we0, "(port)buf_4_we0");
    sc_trace(mVcdFile, buf_4_d0, "(port)buf_4_d0");
    sc_trace(mVcdFile, buf_5_address0, "(port)buf_5_address0");
    sc_trace(mVcdFile, buf_5_ce0, "(port)buf_5_ce0");
    sc_trace(mVcdFile, buf_5_we0, "(port)buf_5_we0");
    sc_trace(mVcdFile, buf_5_d0, "(port)buf_5_d0");
    sc_trace(mVcdFile, buf_6_address0, "(port)buf_6_address0");
    sc_trace(mVcdFile, buf_6_ce0, "(port)buf_6_ce0");
    sc_trace(mVcdFile, buf_6_we0, "(port)buf_6_we0");
    sc_trace(mVcdFile, buf_6_d0, "(port)buf_6_d0");
    sc_trace(mVcdFile, buf_7_address0, "(port)buf_7_address0");
    sc_trace(mVcdFile, buf_7_ce0, "(port)buf_7_ce0");
    sc_trace(mVcdFile, buf_7_we0, "(port)buf_7_we0");
    sc_trace(mVcdFile, buf_7_d0, "(port)buf_7_d0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st1_fsm_0, "ap_sig_cseq_ST_st1_fsm_0");
    sc_trace(mVcdFile, ap_sig_20, "ap_sig_20");
    sc_trace(mVcdFile, indvar_flatten_reg_188, "indvar_flatten_reg_188");
    sc_trace(mVcdFile, r_reg_199, "r_reg_199");
    sc_trace(mVcdFile, c_reg_210, "c_reg_210");
    sc_trace(mVcdFile, exitcond_flatten_fu_221_p2, "exitcond_flatten_fu_221_p2");
    sc_trace(mVcdFile, exitcond_flatten_reg_309, "exitcond_flatten_reg_309");
    sc_trace(mVcdFile, ap_sig_cseq_ST_pp0_stg0_fsm_1, "ap_sig_cseq_ST_pp0_stg0_fsm_1");
    sc_trace(mVcdFile, ap_sig_100, "ap_sig_100");
    sc_trace(mVcdFile, ap_reg_ppiten_pp0_it0, "ap_reg_ppiten_pp0_it0");
    sc_trace(mVcdFile, ap_reg_ppiten_pp0_it1, "ap_reg_ppiten_pp0_it1");
    sc_trace(mVcdFile, indvar_flatten_next_fu_227_p2, "indvar_flatten_next_fu_227_p2");
    sc_trace(mVcdFile, tmp_mid2_v_v_fu_253_p3, "tmp_mid2_v_v_fu_253_p3");
    sc_trace(mVcdFile, tmp_mid2_v_v_reg_318, "tmp_mid2_v_v_reg_318");
    sc_trace(mVcdFile, tmp_2_fu_288_p1, "tmp_2_fu_288_p1");
    sc_trace(mVcdFile, tmp_2_reg_329, "tmp_2_reg_329");
    sc_trace(mVcdFile, c_1_fu_292_p2, "c_1_fu_292_p2");
    sc_trace(mVcdFile, r_phi_fu_203_p4, "r_phi_fu_203_p4");
    sc_trace(mVcdFile, tmp_s_fu_283_p1, "tmp_s_fu_283_p1");
    sc_trace(mVcdFile, tmp_7_mid2_fu_298_p1, "tmp_7_mid2_fu_298_p1");
    sc_trace(mVcdFile, exitcond_fu_239_p2, "exitcond_fu_239_p2");
    sc_trace(mVcdFile, r_1_fu_233_p2, "r_1_fu_233_p2");
    sc_trace(mVcdFile, tmp_fu_261_p1, "tmp_fu_261_p1");
    sc_trace(mVcdFile, c_mid2_fu_245_p3, "c_mid2_fu_245_p3");
    sc_trace(mVcdFile, c_cast2_fu_273_p1, "c_cast2_fu_273_p1");
    sc_trace(mVcdFile, tmp_mid2_fu_265_p3, "tmp_mid2_fu_265_p3");
    sc_trace(mVcdFile, tmp_9_fu_277_p2, "tmp_9_fu_277_p2");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st4_fsm_2, "ap_sig_cseq_ST_st4_fsm_2");
    sc_trace(mVcdFile, ap_sig_232, "ap_sig_232");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

dct_read_data::~dct_read_data() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void dct_read_data::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_st1_fsm_0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_reg_ppiten_pp0_it0 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
             !esl_seteq<1,1,1>(exitcond_flatten_fu_221_p2.read(), ap_const_lv1_0))) {
            ap_reg_ppiten_pp0_it0 = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                    !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
            ap_reg_ppiten_pp0_it0 = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_reg_ppiten_pp0_it1 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
             esl_seteq<1,1,1>(exitcond_flatten_fu_221_p2.read(), ap_const_lv1_0))) {
            ap_reg_ppiten_pp0_it1 = ap_const_logic_1;
        } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                     !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)) || 
                    (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
                     !esl_seteq<1,1,1>(exitcond_flatten_fu_221_p2.read(), ap_const_lv1_0)))) {
            ap_reg_ppiten_pp0_it1 = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
         esl_seteq<1,1,1>(exitcond_flatten_fu_221_p2.read(), ap_const_lv1_0))) {
        c_reg_210 = c_1_fu_292_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        c_reg_210 = ap_const_lv4_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
         esl_seteq<1,1,1>(exitcond_flatten_fu_221_p2.read(), ap_const_lv1_0))) {
        indvar_flatten_reg_188 = indvar_flatten_next_fu_227_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        indvar_flatten_reg_188 = ap_const_lv7_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         esl_seteq<1,1,1>(exitcond_flatten_reg_309.read(), ap_const_lv1_0))) {
        r_reg_199 = tmp_mid2_v_v_reg_318.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        r_reg_199 = ap_const_lv4_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read())) {
        exitcond_flatten_reg_309 = exitcond_flatten_fu_221_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && esl_seteq<1,1,1>(exitcond_flatten_fu_221_p2.read(), ap_const_lv1_0))) {
        tmp_2_reg_329 = tmp_2_fu_288_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && esl_seteq<1,1,1>(exitcond_flatten_fu_221_p2.read(), ap_const_lv1_0))) {
        tmp_mid2_v_v_reg_318 = tmp_mid2_v_v_fu_253_p3.read();
    }
}

void dct_read_data::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_2.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void dct_read_data::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void dct_read_data::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_2.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void dct_read_data::thread_ap_sig_100() {
    ap_sig_100 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(1, 1));
}

void dct_read_data::thread_ap_sig_20() {
    ap_sig_20 = esl_seteq<1,1,1>(ap_CS_fsm.read().range(0, 0), ap_const_lv1_1);
}

void dct_read_data::thread_ap_sig_232() {
    ap_sig_232 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(2, 2));
}

void dct_read_data::thread_ap_sig_cseq_ST_pp0_stg0_fsm_1() {
    if (ap_sig_100.read()) {
        ap_sig_cseq_ST_pp0_stg0_fsm_1 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg0_fsm_1 = ap_const_logic_0;
    }
}

void dct_read_data::thread_ap_sig_cseq_ST_st1_fsm_0() {
    if (ap_sig_20.read()) {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    }
}

void dct_read_data::thread_ap_sig_cseq_ST_st4_fsm_2() {
    if (ap_sig_232.read()) {
        ap_sig_cseq_ST_st4_fsm_2 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st4_fsm_2 = ap_const_logic_0;
    }
}

void dct_read_data::thread_buf_0_address0() {
    buf_0_address0 =  (sc_lv<3>) (tmp_7_mid2_fu_298_p1.read());
}

void dct_read_data::thread_buf_0_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) {
        buf_0_ce0 = ap_const_logic_1;
    } else {
        buf_0_ce0 = ap_const_logic_0;
    }
}

void dct_read_data::thread_buf_0_d0() {
    buf_0_d0 = input_r_q0.read();
}

void dct_read_data::thread_buf_0_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          esl_seteq<1,3,3>(tmp_2_reg_329.read(), ap_const_lv3_0)))) {
        buf_0_we0 = ap_const_logic_1;
    } else {
        buf_0_we0 = ap_const_logic_0;
    }
}

void dct_read_data::thread_buf_1_address0() {
    buf_1_address0 =  (sc_lv<3>) (tmp_7_mid2_fu_298_p1.read());
}

void dct_read_data::thread_buf_1_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) {
        buf_1_ce0 = ap_const_logic_1;
    } else {
        buf_1_ce0 = ap_const_logic_0;
    }
}

void dct_read_data::thread_buf_1_d0() {
    buf_1_d0 = input_r_q0.read();
}

void dct_read_data::thread_buf_1_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          esl_seteq<1,3,3>(tmp_2_reg_329.read(), ap_const_lv3_1)))) {
        buf_1_we0 = ap_const_logic_1;
    } else {
        buf_1_we0 = ap_const_logic_0;
    }
}

void dct_read_data::thread_buf_2_address0() {
    buf_2_address0 =  (sc_lv<3>) (tmp_7_mid2_fu_298_p1.read());
}

void dct_read_data::thread_buf_2_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) {
        buf_2_ce0 = ap_const_logic_1;
    } else {
        buf_2_ce0 = ap_const_logic_0;
    }
}

void dct_read_data::thread_buf_2_d0() {
    buf_2_d0 = input_r_q0.read();
}

void dct_read_data::thread_buf_2_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          esl_seteq<1,3,3>(tmp_2_reg_329.read(), ap_const_lv3_2)))) {
        buf_2_we0 = ap_const_logic_1;
    } else {
        buf_2_we0 = ap_const_logic_0;
    }
}

void dct_read_data::thread_buf_3_address0() {
    buf_3_address0 =  (sc_lv<3>) (tmp_7_mid2_fu_298_p1.read());
}

void dct_read_data::thread_buf_3_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) {
        buf_3_ce0 = ap_const_logic_1;
    } else {
        buf_3_ce0 = ap_const_logic_0;
    }
}

void dct_read_data::thread_buf_3_d0() {
    buf_3_d0 = input_r_q0.read();
}

void dct_read_data::thread_buf_3_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          esl_seteq<1,3,3>(tmp_2_reg_329.read(), ap_const_lv3_3)))) {
        buf_3_we0 = ap_const_logic_1;
    } else {
        buf_3_we0 = ap_const_logic_0;
    }
}

void dct_read_data::thread_buf_4_address0() {
    buf_4_address0 =  (sc_lv<3>) (tmp_7_mid2_fu_298_p1.read());
}

void dct_read_data::thread_buf_4_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) {
        buf_4_ce0 = ap_const_logic_1;
    } else {
        buf_4_ce0 = ap_const_logic_0;
    }
}

void dct_read_data::thread_buf_4_d0() {
    buf_4_d0 = input_r_q0.read();
}

void dct_read_data::thread_buf_4_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          esl_seteq<1,3,3>(tmp_2_reg_329.read(), ap_const_lv3_4)))) {
        buf_4_we0 = ap_const_logic_1;
    } else {
        buf_4_we0 = ap_const_logic_0;
    }
}

void dct_read_data::thread_buf_5_address0() {
    buf_5_address0 =  (sc_lv<3>) (tmp_7_mid2_fu_298_p1.read());
}

void dct_read_data::thread_buf_5_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) {
        buf_5_ce0 = ap_const_logic_1;
    } else {
        buf_5_ce0 = ap_const_logic_0;
    }
}

void dct_read_data::thread_buf_5_d0() {
    buf_5_d0 = input_r_q0.read();
}

void dct_read_data::thread_buf_5_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          esl_seteq<1,3,3>(tmp_2_reg_329.read(), ap_const_lv3_5)))) {
        buf_5_we0 = ap_const_logic_1;
    } else {
        buf_5_we0 = ap_const_logic_0;
    }
}

void dct_read_data::thread_buf_6_address0() {
    buf_6_address0 =  (sc_lv<3>) (tmp_7_mid2_fu_298_p1.read());
}

void dct_read_data::thread_buf_6_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) {
        buf_6_ce0 = ap_const_logic_1;
    } else {
        buf_6_ce0 = ap_const_logic_0;
    }
}

void dct_read_data::thread_buf_6_d0() {
    buf_6_d0 = input_r_q0.read();
}

void dct_read_data::thread_buf_6_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          esl_seteq<1,3,3>(tmp_2_reg_329.read(), ap_const_lv3_6)))) {
        buf_6_we0 = ap_const_logic_1;
    } else {
        buf_6_we0 = ap_const_logic_0;
    }
}

void dct_read_data::thread_buf_7_address0() {
    buf_7_address0 =  (sc_lv<3>) (tmp_7_mid2_fu_298_p1.read());
}

void dct_read_data::thread_buf_7_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) {
        buf_7_ce0 = ap_const_logic_1;
    } else {
        buf_7_ce0 = ap_const_logic_0;
    }
}

void dct_read_data::thread_buf_7_d0() {
    buf_7_d0 = input_r_q0.read();
}

void dct_read_data::thread_buf_7_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          esl_seteq<1,3,3>(tmp_2_reg_329.read(), ap_const_lv3_7)))) {
        buf_7_we0 = ap_const_logic_1;
    } else {
        buf_7_we0 = ap_const_logic_0;
    }
}

void dct_read_data::thread_c_1_fu_292_p2() {
    c_1_fu_292_p2 = (!c_mid2_fu_245_p3.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(c_mid2_fu_245_p3.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void dct_read_data::thread_c_cast2_fu_273_p1() {
    c_cast2_fu_273_p1 = esl_zext<6,4>(c_mid2_fu_245_p3.read());
}

void dct_read_data::thread_c_mid2_fu_245_p3() {
    c_mid2_fu_245_p3 = (!exitcond_fu_239_p2.read()[0].is_01())? sc_lv<4>(): ((exitcond_fu_239_p2.read()[0].to_bool())? ap_const_lv4_0: c_reg_210.read());
}

void dct_read_data::thread_exitcond_flatten_fu_221_p2() {
    exitcond_flatten_fu_221_p2 = (!indvar_flatten_reg_188.read().is_01() || !ap_const_lv7_40.is_01())? sc_lv<1>(): sc_lv<1>(indvar_flatten_reg_188.read() == ap_const_lv7_40);
}

void dct_read_data::thread_exitcond_fu_239_p2() {
    exitcond_fu_239_p2 = (!c_reg_210.read().is_01() || !ap_const_lv4_8.is_01())? sc_lv<1>(): sc_lv<1>(c_reg_210.read() == ap_const_lv4_8);
}

void dct_read_data::thread_indvar_flatten_next_fu_227_p2() {
    indvar_flatten_next_fu_227_p2 = (!indvar_flatten_reg_188.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_biguint<7>(indvar_flatten_reg_188.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void dct_read_data::thread_input_r_address0() {
    input_r_address0 =  (sc_lv<6>) (tmp_s_fu_283_p1.read());
}

void dct_read_data::thread_input_r_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()))) {
        input_r_ce0 = ap_const_logic_1;
    } else {
        input_r_ce0 = ap_const_logic_0;
    }
}

void dct_read_data::thread_r_1_fu_233_p2() {
    r_1_fu_233_p2 = (!ap_const_lv4_1.is_01() || !r_phi_fu_203_p4.read().is_01())? sc_lv<4>(): (sc_biguint<4>(ap_const_lv4_1) + sc_biguint<4>(r_phi_fu_203_p4.read()));
}

void dct_read_data::thread_r_phi_fu_203_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         esl_seteq<1,1,1>(exitcond_flatten_reg_309.read(), ap_const_lv1_0))) {
        r_phi_fu_203_p4 = tmp_mid2_v_v_reg_318.read();
    } else {
        r_phi_fu_203_p4 = r_reg_199.read();
    }
}

void dct_read_data::thread_tmp_2_fu_288_p1() {
    tmp_2_fu_288_p1 = c_mid2_fu_245_p3.read().range(3-1, 0);
}

void dct_read_data::thread_tmp_7_mid2_fu_298_p1() {
    tmp_7_mid2_fu_298_p1 = esl_zext<64,4>(tmp_mid2_v_v_reg_318.read());
}

void dct_read_data::thread_tmp_9_fu_277_p2() {
    tmp_9_fu_277_p2 = (!c_cast2_fu_273_p1.read().is_01() || !tmp_mid2_fu_265_p3.read().is_01())? sc_lv<6>(): (sc_biguint<6>(c_cast2_fu_273_p1.read()) + sc_biguint<6>(tmp_mid2_fu_265_p3.read()));
}

void dct_read_data::thread_tmp_fu_261_p1() {
    tmp_fu_261_p1 = tmp_mid2_v_v_fu_253_p3.read().range(3-1, 0);
}

void dct_read_data::thread_tmp_mid2_fu_265_p3() {
    tmp_mid2_fu_265_p3 = esl_concat<3,3>(tmp_fu_261_p1.read(), ap_const_lv3_0);
}

void dct_read_data::thread_tmp_mid2_v_v_fu_253_p3() {
    tmp_mid2_v_v_fu_253_p3 = (!exitcond_fu_239_p2.read()[0].is_01())? sc_lv<4>(): ((exitcond_fu_239_p2.read()[0].to_bool())? r_1_fu_233_p2.read(): r_phi_fu_203_p4.read());
}

void dct_read_data::thread_tmp_s_fu_283_p1() {
    tmp_s_fu_283_p1 = esl_zext<64,6>(tmp_9_fu_277_p2.read());
}

void dct_read_data::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if (!esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)) {
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            }
            break;
        case 2 : 
            if (!(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && !esl_seteq<1,1,1>(exitcond_flatten_fu_221_p2.read(), ap_const_lv1_0))) {
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st4_fsm_2;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_st1_fsm_0;
            break;
        default : 
            ap_NS_fsm = "XXX";
            break;
    }
}

}

