// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.1
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "dct_Loop_Xpose_Row_Outer_Loop_proc.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic dct_Loop_Xpose_Row_Outer_Loop_proc::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic dct_Loop_Xpose_Row_Outer_Loop_proc::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<4> dct_Loop_Xpose_Row_Outer_Loop_proc::ap_ST_st1_fsm_0 = "1";
const sc_lv<4> dct_Loop_Xpose_Row_Outer_Loop_proc::ap_ST_pp0_stg0_fsm_1 = "10";
const sc_lv<4> dct_Loop_Xpose_Row_Outer_Loop_proc::ap_ST_pp0_stg1_fsm_2 = "100";
const sc_lv<4> dct_Loop_Xpose_Row_Outer_Loop_proc::ap_ST_st5_fsm_3 = "1000";
const sc_lv<32> dct_Loop_Xpose_Row_Outer_Loop_proc::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> dct_Loop_Xpose_Row_Outer_Loop_proc::ap_const_lv1_1 = "1";
const sc_lv<32> dct_Loop_Xpose_Row_Outer_Loop_proc::ap_const_lv32_1 = "1";
const sc_lv<1> dct_Loop_Xpose_Row_Outer_Loop_proc::ap_const_lv1_0 = "0";
const sc_lv<32> dct_Loop_Xpose_Row_Outer_Loop_proc::ap_const_lv32_2 = "10";
const sc_lv<7> dct_Loop_Xpose_Row_Outer_Loop_proc::ap_const_lv7_0 = "0000000";
const sc_lv<4> dct_Loop_Xpose_Row_Outer_Loop_proc::ap_const_lv4_0 = "0000";
const sc_lv<7> dct_Loop_Xpose_Row_Outer_Loop_proc::ap_const_lv7_40 = "1000000";
const sc_lv<7> dct_Loop_Xpose_Row_Outer_Loop_proc::ap_const_lv7_1 = "1";
const sc_lv<4> dct_Loop_Xpose_Row_Outer_Loop_proc::ap_const_lv4_1 = "1";
const sc_lv<4> dct_Loop_Xpose_Row_Outer_Loop_proc::ap_const_lv4_8 = "1000";
const sc_lv<3> dct_Loop_Xpose_Row_Outer_Loop_proc::ap_const_lv3_0 = "000";
const sc_lv<7> dct_Loop_Xpose_Row_Outer_Loop_proc::ap_const_lv7_F = "1111";
const sc_lv<8> dct_Loop_Xpose_Row_Outer_Loop_proc::ap_const_lv8_7F = "1111111";
const sc_lv<32> dct_Loop_Xpose_Row_Outer_Loop_proc::ap_const_lv32_7F = "1111111";
const sc_lv<128> dct_Loop_Xpose_Row_Outer_Loop_proc::ap_const_lv128_lc_1 = "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111";
const sc_lv<32> dct_Loop_Xpose_Row_Outer_Loop_proc::ap_const_lv32_3 = "11";

dct_Loop_Xpose_Row_Outer_Loop_proc::dct_Loop_Xpose_Row_Outer_Loop_proc(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_done_reg );
    sensitive << ( ap_sig_cseq_ST_st5_fsm_3 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_sig_cseq_ST_st5_fsm_3 );

    SC_METHOD(thread_ap_sig_22);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_271);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_56);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_86);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_99);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );

    SC_METHOD(thread_ap_sig_cseq_ST_pp0_stg0_fsm_1);
    sensitive << ( ap_sig_56 );

    SC_METHOD(thread_ap_sig_cseq_ST_pp0_stg1_fsm_2);
    sensitive << ( ap_sig_86 );

    SC_METHOD(thread_ap_sig_cseq_ST_st1_fsm_0);
    sensitive << ( ap_sig_22 );

    SC_METHOD(thread_ap_sig_cseq_ST_st5_fsm_3);
    sensitive << ( ap_sig_271 );

    SC_METHOD(thread_col_inbuf_address0);
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it0 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );
    sensitive << ( col_inbuf_addr_reg_353 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg1_fsm_2 );

    SC_METHOD(thread_col_inbuf_ce0);
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it0 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg1_fsm_2 );

    SC_METHOD(thread_col_inbuf_d0);
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );
    sensitive << ( tmp_46_fu_315_p2 );
    sensitive << ( tmp_47_fu_321_p2 );

    SC_METHOD(thread_col_inbuf_we0);
    sensitive << ( exitcond_flatten_reg_334 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_exitcond3_i2_fu_132_p2);
    sensitive << ( exitcond_flatten_fu_114_p2 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it0 );
    sensitive << ( i_1_i_phi_fu_107_p4 );

    SC_METHOD(thread_exitcond_flatten_fu_114_p2);
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it0 );
    sensitive << ( indvar_flatten_phi_fu_85_p4 );

    SC_METHOD(thread_i_1_i_mid2_fu_138_p3);
    sensitive << ( i_1_i_phi_fu_107_p4 );
    sensitive << ( exitcond3_i2_fu_132_p2 );

    SC_METHOD(thread_i_1_i_phi_fu_107_p4);
    sensitive << ( i_1_i_reg_103 );
    sensitive << ( exitcond_flatten_reg_334 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );
    sensitive << ( i_reg_363 );

    SC_METHOD(thread_i_fu_190_p2);
    sensitive << ( i_1_i_mid2_fu_138_p3 );

    SC_METHOD(thread_indvar_flatten_next_fu_120_p2);
    sensitive << ( indvar_flatten_phi_fu_85_p4 );

    SC_METHOD(thread_indvar_flatten_phi_fu_85_p4);
    sensitive << ( indvar_flatten_reg_81 );
    sensitive << ( exitcond_flatten_reg_334 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );
    sensitive << ( indvar_flatten_next_reg_338 );

    SC_METHOD(thread_j_0_i_phi_fu_96_p4);
    sensitive << ( j_0_i_reg_92 );
    sensitive << ( exitcond_flatten_reg_334 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );
    sensitive << ( tmp_mid2_v_reg_343 );

    SC_METHOD(thread_j_fu_126_p2);
    sensitive << ( j_0_i_phi_fu_96_p4 );

    SC_METHOD(thread_p_demorgan_fu_303_p2);
    sensitive << ( tmp_43_fu_291_p2 );
    sensitive << ( tmp_44_fu_297_p2 );

    SC_METHOD(thread_row_outbuf_i_address0);
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it0 );
    sensitive << ( tmp_10_cast_fu_181_p1 );

    SC_METHOD(thread_row_outbuf_i_ce0);
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it0 );

    SC_METHOD(thread_tmp_10_cast_fu_181_p1);
    sensitive << ( tmp_s_fu_175_p2 );

    SC_METHOD(thread_tmp_27_fu_186_p1);
    sensitive << ( i_1_i_mid2_fu_138_p3 );

    SC_METHOD(thread_tmp_28_fu_209_p2);
    sensitive << ( exitcond_flatten_reg_334 );
    sensitive << ( ap_reg_ppiten_pp0_it0 );
    sensitive << ( tmp_4_fu_203_p2 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg1_fsm_2 );
    sensitive << ( tmp_3_fu_196_p3 );

    SC_METHOD(thread_tmp_29_fu_215_p1);
    sensitive << ( tmp_3_fu_196_p3 );

    SC_METHOD(thread_tmp_30_fu_247_p1);
    sensitive << ( tmp_4_reg_368 );

    SC_METHOD(thread_tmp_31_fu_219_p1);
    sensitive << ( row_outbuf_i_q0 );

    SC_METHOD(thread_tmp_32_fu_223_p2);
    sensitive << ( tmp_29_fu_215_p1 );

    SC_METHOD(thread_tmp_33_fu_250_p3);
    sensitive << ( tmp_28_reg_373 );
    sensitive << ( tmp_29_reg_380 );
    sensitive << ( tmp_30_fu_247_p1 );

    SC_METHOD(thread_tmp_34_fu_256_p3);
    sensitive << ( tmp_28_reg_373 );
    sensitive << ( tmp_29_reg_380 );
    sensitive << ( tmp_30_fu_247_p1 );

    SC_METHOD(thread_tmp_35_fu_229_p3);
    sensitive << ( tmp_28_fu_209_p2 );
    sensitive << ( tmp_29_fu_215_p1 );
    sensitive << ( tmp_32_fu_223_p2 );

    SC_METHOD(thread_tmp_36_fu_262_p2);
    sensitive << ( tmp_33_fu_250_p3 );

    SC_METHOD(thread_tmp_37_fu_237_p1);
    sensitive << ( tmp_35_fu_229_p3 );

    SC_METHOD(thread_tmp_38_fu_268_p1);
    sensitive << ( tmp_34_fu_256_p3 );

    SC_METHOD(thread_tmp_39_fu_272_p1);
    sensitive << ( tmp_36_fu_262_p2 );

    SC_METHOD(thread_tmp_3_fu_196_p3);
    sensitive << ( tmp_27_reg_358 );

    SC_METHOD(thread_tmp_40_fu_241_p2);
    sensitive << ( tmp_31_fu_219_p1 );
    sensitive << ( tmp_37_fu_237_p1 );

    SC_METHOD(thread_tmp_41_fu_276_p4);
    sensitive << ( tmp_40_reg_386 );

    SC_METHOD(thread_tmp_42_fu_285_p3);
    sensitive << ( tmp_28_reg_373 );
    sensitive << ( tmp_40_reg_386 );
    sensitive << ( tmp_41_fu_276_p4 );

    SC_METHOD(thread_tmp_43_fu_291_p2);
    sensitive << ( tmp_38_fu_268_p1 );

    SC_METHOD(thread_tmp_44_fu_297_p2);
    sensitive << ( tmp_39_fu_272_p1 );

    SC_METHOD(thread_tmp_45_fu_309_p2);
    sensitive << ( p_demorgan_fu_303_p2 );

    SC_METHOD(thread_tmp_46_fu_315_p2);
    sensitive << ( col_inbuf_q0 );
    sensitive << ( tmp_45_fu_309_p2 );

    SC_METHOD(thread_tmp_47_fu_321_p2);
    sensitive << ( p_demorgan_fu_303_p2 );
    sensitive << ( tmp_42_fu_285_p3 );

    SC_METHOD(thread_tmp_4_fu_203_p2);
    sensitive << ( tmp_3_fu_196_p3 );

    SC_METHOD(thread_tmp_9_cast_fu_171_p1);
    sensitive << ( tmp_fu_163_p3 );

    SC_METHOD(thread_tmp_fu_163_p3);
    sensitive << ( i_1_i_mid2_fu_138_p3 );

    SC_METHOD(thread_tmp_mid2_cast_fu_159_p1);
    sensitive << ( tmp_mid2_v_fu_146_p3 );

    SC_METHOD(thread_tmp_mid2_fu_154_p1);
    sensitive << ( tmp_mid2_v_fu_146_p3 );

    SC_METHOD(thread_tmp_mid2_v_fu_146_p3);
    sensitive << ( j_0_i_phi_fu_96_p4 );
    sensitive << ( exitcond3_i2_fu_132_p2 );
    sensitive << ( j_fu_126_p2 );

    SC_METHOD(thread_tmp_s_fu_175_p2);
    sensitive << ( tmp_9_cast_fu_171_p1 );
    sensitive << ( tmp_mid2_cast_fu_159_p1 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond_flatten_fu_114_p2 );
    sensitive << ( ap_reg_ppiten_pp0_it0 );
    sensitive << ( ap_sig_99 );

    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm = "0001";
    ap_reg_ppiten_pp0_it0 = SC_LOGIC_0;
    ap_reg_ppiten_pp0_it1 = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "dct_Loop_Xpose_Row_Outer_Loop_proc_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, row_outbuf_i_address0, "(port)row_outbuf_i_address0");
    sc_trace(mVcdFile, row_outbuf_i_ce0, "(port)row_outbuf_i_ce0");
    sc_trace(mVcdFile, row_outbuf_i_q0, "(port)row_outbuf_i_q0");
    sc_trace(mVcdFile, col_inbuf_address0, "(port)col_inbuf_address0");
    sc_trace(mVcdFile, col_inbuf_ce0, "(port)col_inbuf_ce0");
    sc_trace(mVcdFile, col_inbuf_we0, "(port)col_inbuf_we0");
    sc_trace(mVcdFile, col_inbuf_d0, "(port)col_inbuf_d0");
    sc_trace(mVcdFile, col_inbuf_q0, "(port)col_inbuf_q0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st1_fsm_0, "ap_sig_cseq_ST_st1_fsm_0");
    sc_trace(mVcdFile, ap_sig_22, "ap_sig_22");
    sc_trace(mVcdFile, indvar_flatten_reg_81, "indvar_flatten_reg_81");
    sc_trace(mVcdFile, j_0_i_reg_92, "j_0_i_reg_92");
    sc_trace(mVcdFile, i_1_i_reg_103, "i_1_i_reg_103");
    sc_trace(mVcdFile, exitcond_flatten_fu_114_p2, "exitcond_flatten_fu_114_p2");
    sc_trace(mVcdFile, exitcond_flatten_reg_334, "exitcond_flatten_reg_334");
    sc_trace(mVcdFile, ap_sig_cseq_ST_pp0_stg0_fsm_1, "ap_sig_cseq_ST_pp0_stg0_fsm_1");
    sc_trace(mVcdFile, ap_sig_56, "ap_sig_56");
    sc_trace(mVcdFile, ap_reg_ppiten_pp0_it0, "ap_reg_ppiten_pp0_it0");
    sc_trace(mVcdFile, ap_reg_ppiten_pp0_it1, "ap_reg_ppiten_pp0_it1");
    sc_trace(mVcdFile, indvar_flatten_next_fu_120_p2, "indvar_flatten_next_fu_120_p2");
    sc_trace(mVcdFile, indvar_flatten_next_reg_338, "indvar_flatten_next_reg_338");
    sc_trace(mVcdFile, tmp_mid2_v_fu_146_p3, "tmp_mid2_v_fu_146_p3");
    sc_trace(mVcdFile, tmp_mid2_v_reg_343, "tmp_mid2_v_reg_343");
    sc_trace(mVcdFile, col_inbuf_addr_reg_353, "col_inbuf_addr_reg_353");
    sc_trace(mVcdFile, tmp_27_fu_186_p1, "tmp_27_fu_186_p1");
    sc_trace(mVcdFile, tmp_27_reg_358, "tmp_27_reg_358");
    sc_trace(mVcdFile, i_fu_190_p2, "i_fu_190_p2");
    sc_trace(mVcdFile, i_reg_363, "i_reg_363");
    sc_trace(mVcdFile, tmp_4_fu_203_p2, "tmp_4_fu_203_p2");
    sc_trace(mVcdFile, tmp_4_reg_368, "tmp_4_reg_368");
    sc_trace(mVcdFile, ap_sig_cseq_ST_pp0_stg1_fsm_2, "ap_sig_cseq_ST_pp0_stg1_fsm_2");
    sc_trace(mVcdFile, ap_sig_86, "ap_sig_86");
    sc_trace(mVcdFile, tmp_28_fu_209_p2, "tmp_28_fu_209_p2");
    sc_trace(mVcdFile, tmp_28_reg_373, "tmp_28_reg_373");
    sc_trace(mVcdFile, tmp_29_fu_215_p1, "tmp_29_fu_215_p1");
    sc_trace(mVcdFile, tmp_29_reg_380, "tmp_29_reg_380");
    sc_trace(mVcdFile, tmp_40_fu_241_p2, "tmp_40_fu_241_p2");
    sc_trace(mVcdFile, tmp_40_reg_386, "tmp_40_reg_386");
    sc_trace(mVcdFile, ap_sig_99, "ap_sig_99");
    sc_trace(mVcdFile, indvar_flatten_phi_fu_85_p4, "indvar_flatten_phi_fu_85_p4");
    sc_trace(mVcdFile, j_0_i_phi_fu_96_p4, "j_0_i_phi_fu_96_p4");
    sc_trace(mVcdFile, i_1_i_phi_fu_107_p4, "i_1_i_phi_fu_107_p4");
    sc_trace(mVcdFile, tmp_10_cast_fu_181_p1, "tmp_10_cast_fu_181_p1");
    sc_trace(mVcdFile, tmp_mid2_fu_154_p1, "tmp_mid2_fu_154_p1");
    sc_trace(mVcdFile, exitcond3_i2_fu_132_p2, "exitcond3_i2_fu_132_p2");
    sc_trace(mVcdFile, j_fu_126_p2, "j_fu_126_p2");
    sc_trace(mVcdFile, i_1_i_mid2_fu_138_p3, "i_1_i_mid2_fu_138_p3");
    sc_trace(mVcdFile, tmp_fu_163_p3, "tmp_fu_163_p3");
    sc_trace(mVcdFile, tmp_9_cast_fu_171_p1, "tmp_9_cast_fu_171_p1");
    sc_trace(mVcdFile, tmp_mid2_cast_fu_159_p1, "tmp_mid2_cast_fu_159_p1");
    sc_trace(mVcdFile, tmp_s_fu_175_p2, "tmp_s_fu_175_p2");
    sc_trace(mVcdFile, tmp_3_fu_196_p3, "tmp_3_fu_196_p3");
    sc_trace(mVcdFile, tmp_32_fu_223_p2, "tmp_32_fu_223_p2");
    sc_trace(mVcdFile, tmp_35_fu_229_p3, "tmp_35_fu_229_p3");
    sc_trace(mVcdFile, tmp_31_fu_219_p1, "tmp_31_fu_219_p1");
    sc_trace(mVcdFile, tmp_37_fu_237_p1, "tmp_37_fu_237_p1");
    sc_trace(mVcdFile, tmp_30_fu_247_p1, "tmp_30_fu_247_p1");
    sc_trace(mVcdFile, tmp_33_fu_250_p3, "tmp_33_fu_250_p3");
    sc_trace(mVcdFile, tmp_34_fu_256_p3, "tmp_34_fu_256_p3");
    sc_trace(mVcdFile, tmp_36_fu_262_p2, "tmp_36_fu_262_p2");
    sc_trace(mVcdFile, tmp_41_fu_276_p4, "tmp_41_fu_276_p4");
    sc_trace(mVcdFile, tmp_38_fu_268_p1, "tmp_38_fu_268_p1");
    sc_trace(mVcdFile, tmp_39_fu_272_p1, "tmp_39_fu_272_p1");
    sc_trace(mVcdFile, tmp_43_fu_291_p2, "tmp_43_fu_291_p2");
    sc_trace(mVcdFile, tmp_44_fu_297_p2, "tmp_44_fu_297_p2");
    sc_trace(mVcdFile, p_demorgan_fu_303_p2, "p_demorgan_fu_303_p2");
    sc_trace(mVcdFile, tmp_45_fu_309_p2, "tmp_45_fu_309_p2");
    sc_trace(mVcdFile, tmp_42_fu_285_p3, "tmp_42_fu_285_p3");
    sc_trace(mVcdFile, tmp_46_fu_315_p2, "tmp_46_fu_315_p2");
    sc_trace(mVcdFile, tmp_47_fu_321_p2, "tmp_47_fu_321_p2");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st5_fsm_3, "ap_sig_cseq_ST_st5_fsm_3");
    sc_trace(mVcdFile, ap_sig_271, "ap_sig_271");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

dct_Loop_Xpose_Row_Outer_Loop_proc::~dct_Loop_Xpose_Row_Outer_Loop_proc() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_st1_fsm_0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_done_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_continue.read())) {
            ap_done_reg = ap_const_logic_0;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st5_fsm_3.read())) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_reg_ppiten_pp0_it0 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
             !esl_seteq<1,1,1>(exitcond_flatten_fu_114_p2.read(), ap_const_lv1_0))) {
            ap_reg_ppiten_pp0_it0 = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                    !ap_sig_99.read())) {
            ap_reg_ppiten_pp0_it0 = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_reg_ppiten_pp0_it1 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_2.read()) && 
             esl_seteq<1,1,1>(exitcond_flatten_reg_334.read(), ap_const_lv1_0))) {
            ap_reg_ppiten_pp0_it1 = ap_const_logic_1;
        } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                     !ap_sig_99.read()) || 
                    (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_2.read()) && 
                     !esl_seteq<1,1,1>(exitcond_flatten_reg_334.read(), ap_const_lv1_0)))) {
            ap_reg_ppiten_pp0_it1 = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         esl_seteq<1,1,1>(exitcond_flatten_reg_334.read(), ap_const_lv1_0))) {
        i_1_i_reg_103 = i_reg_363.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                !ap_sig_99.read())) {
        i_1_i_reg_103 = ap_const_lv4_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         esl_seteq<1,1,1>(exitcond_flatten_reg_334.read(), ap_const_lv1_0))) {
        indvar_flatten_reg_81 = indvar_flatten_next_reg_338.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                !ap_sig_99.read())) {
        indvar_flatten_reg_81 = ap_const_lv7_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         esl_seteq<1,1,1>(exitcond_flatten_reg_334.read(), ap_const_lv1_0))) {
        j_0_i_reg_92 = tmp_mid2_v_reg_343.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                !ap_sig_99.read())) {
        j_0_i_reg_92 = ap_const_lv4_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && esl_seteq<1,1,1>(exitcond_flatten_fu_114_p2.read(), ap_const_lv1_0))) {
        col_inbuf_addr_reg_353 =  (sc_lv<3>) (tmp_mid2_fu_154_p1.read());
        tmp_27_reg_358 = tmp_27_fu_186_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read())) {
        exitcond_flatten_reg_334 = exitcond_flatten_fu_114_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && esl_seteq<1,1,1>(exitcond_flatten_fu_114_p2.read(), ap_const_lv1_0))) {
        i_reg_363 = i_fu_190_p2.read();
        tmp_mid2_v_reg_343 = tmp_mid2_v_fu_146_p3.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()))) {
        indvar_flatten_next_reg_338 = indvar_flatten_next_fu_120_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_2.read()) && esl_seteq<1,1,1>(exitcond_flatten_reg_334.read(), ap_const_lv1_0))) {
        tmp_28_reg_373 = tmp_28_fu_209_p2.read();
        tmp_29_reg_380 = tmp_29_fu_215_p1.read();
        tmp_40_reg_386 = tmp_40_fu_241_p2.read();
        tmp_4_reg_368 = tmp_4_fu_203_p2.read();
    }
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_done_reg.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st5_fsm_3.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st5_fsm_3.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_ap_sig_22() {
    ap_sig_22 = esl_seteq<1,1,1>(ap_CS_fsm.read().range(0, 0), ap_const_lv1_1);
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_ap_sig_271() {
    ap_sig_271 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(3, 3));
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_ap_sig_56() {
    ap_sig_56 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(1, 1));
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_ap_sig_86() {
    ap_sig_86 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(2, 2));
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_ap_sig_99() {
    ap_sig_99 = (esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1));
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_ap_sig_cseq_ST_pp0_stg0_fsm_1() {
    if (ap_sig_56.read()) {
        ap_sig_cseq_ST_pp0_stg0_fsm_1 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg0_fsm_1 = ap_const_logic_0;
    }
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_ap_sig_cseq_ST_pp0_stg1_fsm_2() {
    if (ap_sig_86.read()) {
        ap_sig_cseq_ST_pp0_stg1_fsm_2 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg1_fsm_2 = ap_const_logic_0;
    }
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_ap_sig_cseq_ST_st1_fsm_0() {
    if (ap_sig_22.read()) {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    }
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_ap_sig_cseq_ST_st5_fsm_3() {
    if (ap_sig_271.read()) {
        ap_sig_cseq_ST_st5_fsm_3 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st5_fsm_3 = ap_const_logic_0;
    }
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_col_inbuf_address0() {
    col_inbuf_address0 = col_inbuf_addr_reg_353.read();
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_col_inbuf_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg1_fsm_2.read())))) {
        col_inbuf_ce0 = ap_const_logic_1;
    } else {
        col_inbuf_ce0 = ap_const_logic_0;
    }
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_col_inbuf_d0() {
    col_inbuf_d0 = (tmp_46_fu_315_p2.read() | tmp_47_fu_321_p2.read());
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_col_inbuf_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          esl_seteq<1,1,1>(exitcond_flatten_reg_334.read(), ap_const_lv1_0)))) {
        col_inbuf_we0 = ap_const_logic_1;
    } else {
        col_inbuf_we0 = ap_const_logic_0;
    }
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_exitcond3_i2_fu_132_p2() {
    exitcond3_i2_fu_132_p2 = (!i_1_i_phi_fu_107_p4.read().is_01() || !ap_const_lv4_8.is_01())? sc_lv<1>(): sc_lv<1>(i_1_i_phi_fu_107_p4.read() == ap_const_lv4_8);
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_exitcond_flatten_fu_114_p2() {
    exitcond_flatten_fu_114_p2 = (!indvar_flatten_phi_fu_85_p4.read().is_01() || !ap_const_lv7_40.is_01())? sc_lv<1>(): sc_lv<1>(indvar_flatten_phi_fu_85_p4.read() == ap_const_lv7_40);
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_i_1_i_mid2_fu_138_p3() {
    i_1_i_mid2_fu_138_p3 = (!exitcond3_i2_fu_132_p2.read()[0].is_01())? sc_lv<4>(): ((exitcond3_i2_fu_132_p2.read()[0].to_bool())? ap_const_lv4_0: i_1_i_phi_fu_107_p4.read());
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_i_1_i_phi_fu_107_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         esl_seteq<1,1,1>(exitcond_flatten_reg_334.read(), ap_const_lv1_0))) {
        i_1_i_phi_fu_107_p4 = i_reg_363.read();
    } else {
        i_1_i_phi_fu_107_p4 = i_1_i_reg_103.read();
    }
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_i_fu_190_p2() {
    i_fu_190_p2 = (!ap_const_lv4_1.is_01() || !i_1_i_mid2_fu_138_p3.read().is_01())? sc_lv<4>(): (sc_biguint<4>(ap_const_lv4_1) + sc_biguint<4>(i_1_i_mid2_fu_138_p3.read()));
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_indvar_flatten_next_fu_120_p2() {
    indvar_flatten_next_fu_120_p2 = (!indvar_flatten_phi_fu_85_p4.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_biguint<7>(indvar_flatten_phi_fu_85_p4.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_indvar_flatten_phi_fu_85_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         esl_seteq<1,1,1>(exitcond_flatten_reg_334.read(), ap_const_lv1_0))) {
        indvar_flatten_phi_fu_85_p4 = indvar_flatten_next_reg_338.read();
    } else {
        indvar_flatten_phi_fu_85_p4 = indvar_flatten_reg_81.read();
    }
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_j_0_i_phi_fu_96_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         esl_seteq<1,1,1>(exitcond_flatten_reg_334.read(), ap_const_lv1_0))) {
        j_0_i_phi_fu_96_p4 = tmp_mid2_v_reg_343.read();
    } else {
        j_0_i_phi_fu_96_p4 = j_0_i_reg_92.read();
    }
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_j_fu_126_p2() {
    j_fu_126_p2 = (!ap_const_lv4_1.is_01() || !j_0_i_phi_fu_96_p4.read().is_01())? sc_lv<4>(): (sc_biguint<4>(ap_const_lv4_1) + sc_biguint<4>(j_0_i_phi_fu_96_p4.read()));
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_p_demorgan_fu_303_p2() {
    p_demorgan_fu_303_p2 = (tmp_43_fu_291_p2.read() & tmp_44_fu_297_p2.read());
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_row_outbuf_i_address0() {
    row_outbuf_i_address0 =  (sc_lv<6>) (tmp_10_cast_fu_181_p1.read());
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_row_outbuf_i_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()))) {
        row_outbuf_i_ce0 = ap_const_logic_1;
    } else {
        row_outbuf_i_ce0 = ap_const_logic_0;
    }
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_tmp_10_cast_fu_181_p1() {
    tmp_10_cast_fu_181_p1 = esl_zext<64,8>(tmp_s_fu_175_p2.read());
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_tmp_27_fu_186_p1() {
    tmp_27_fu_186_p1 = i_1_i_mid2_fu_138_p3.read().range(3-1, 0);
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_tmp_28_fu_209_p2() {
    tmp_28_fu_209_p2 = (!tmp_3_fu_196_p3.read().is_01() || !tmp_4_fu_203_p2.read().is_01())? sc_lv<1>(): (sc_biguint<7>(tmp_3_fu_196_p3.read()) > sc_biguint<7>(tmp_4_fu_203_p2.read()));
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_tmp_29_fu_215_p1() {
    tmp_29_fu_215_p1 = esl_zext<8,7>(tmp_3_fu_196_p3.read());
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_tmp_30_fu_247_p1() {
    tmp_30_fu_247_p1 = esl_zext<8,7>(tmp_4_reg_368.read());
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_tmp_31_fu_219_p1() {
    tmp_31_fu_219_p1 = esl_zext<128,16>(row_outbuf_i_q0.read());
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_tmp_32_fu_223_p2() {
    tmp_32_fu_223_p2 = (tmp_29_fu_215_p1.read() ^ ap_const_lv8_7F);
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_tmp_33_fu_250_p3() {
    tmp_33_fu_250_p3 = (!tmp_28_reg_373.read()[0].is_01())? sc_lv<8>(): ((tmp_28_reg_373.read()[0].to_bool())? tmp_29_reg_380.read(): tmp_30_fu_247_p1.read());
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_tmp_34_fu_256_p3() {
    tmp_34_fu_256_p3 = (!tmp_28_reg_373.read()[0].is_01())? sc_lv<8>(): ((tmp_28_reg_373.read()[0].to_bool())? tmp_30_fu_247_p1.read(): tmp_29_reg_380.read());
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_tmp_35_fu_229_p3() {
    tmp_35_fu_229_p3 = (!tmp_28_fu_209_p2.read()[0].is_01())? sc_lv<8>(): ((tmp_28_fu_209_p2.read()[0].to_bool())? tmp_32_fu_223_p2.read(): tmp_29_fu_215_p1.read());
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_tmp_36_fu_262_p2() {
    tmp_36_fu_262_p2 = (tmp_33_fu_250_p3.read() ^ ap_const_lv8_7F);
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_tmp_37_fu_237_p1() {
    tmp_37_fu_237_p1 = esl_zext<128,8>(tmp_35_fu_229_p3.read());
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_tmp_38_fu_268_p1() {
    tmp_38_fu_268_p1 = esl_zext<128,8>(tmp_34_fu_256_p3.read());
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_tmp_39_fu_272_p1() {
    tmp_39_fu_272_p1 = esl_zext<128,8>(tmp_36_fu_262_p2.read());
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_tmp_3_fu_196_p3() {
    tmp_3_fu_196_p3 = esl_concat<3,4>(tmp_27_reg_358.read(), ap_const_lv4_0);
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_tmp_40_fu_241_p2() {
    tmp_40_fu_241_p2 = (!tmp_37_fu_237_p1.read().is_01())? sc_lv<128>(): tmp_31_fu_219_p1.read() << (unsigned short)tmp_37_fu_237_p1.read().to_uint();
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_tmp_41_fu_276_p4() {
    tmp_41_fu_276_p4 = tmp_40_reg_386.read().range(0, 127);
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_tmp_42_fu_285_p3() {
    tmp_42_fu_285_p3 = (!tmp_28_reg_373.read()[0].is_01())? sc_lv<128>(): ((tmp_28_reg_373.read()[0].to_bool())? tmp_41_fu_276_p4.read(): tmp_40_reg_386.read());
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_tmp_43_fu_291_p2() {
    tmp_43_fu_291_p2 = (!tmp_38_fu_268_p1.read().is_01())? sc_lv<128>(): ap_const_lv128_lc_1 << (unsigned short)tmp_38_fu_268_p1.read().to_uint();
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_tmp_44_fu_297_p2() {
    tmp_44_fu_297_p2 = (!tmp_39_fu_272_p1.read().is_01())? sc_lv<128>(): ap_const_lv128_lc_1 >> (unsigned short)tmp_39_fu_272_p1.read().to_uint();
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_tmp_45_fu_309_p2() {
    tmp_45_fu_309_p2 = (p_demorgan_fu_303_p2.read() ^ ap_const_lv128_lc_1);
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_tmp_46_fu_315_p2() {
    tmp_46_fu_315_p2 = (col_inbuf_q0.read() & tmp_45_fu_309_p2.read());
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_tmp_47_fu_321_p2() {
    tmp_47_fu_321_p2 = (tmp_42_fu_285_p3.read() & p_demorgan_fu_303_p2.read());
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_tmp_4_fu_203_p2() {
    tmp_4_fu_203_p2 = (tmp_3_fu_196_p3.read() | ap_const_lv7_F);
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_tmp_9_cast_fu_171_p1() {
    tmp_9_cast_fu_171_p1 = esl_zext<8,7>(tmp_fu_163_p3.read());
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_tmp_fu_163_p3() {
    tmp_fu_163_p3 = esl_concat<4,3>(i_1_i_mid2_fu_138_p3.read(), ap_const_lv3_0);
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_tmp_mid2_cast_fu_159_p1() {
    tmp_mid2_cast_fu_159_p1 = esl_zext<8,4>(tmp_mid2_v_fu_146_p3.read());
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_tmp_mid2_fu_154_p1() {
    tmp_mid2_fu_154_p1 = esl_zext<64,4>(tmp_mid2_v_fu_146_p3.read());
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_tmp_mid2_v_fu_146_p3() {
    tmp_mid2_v_fu_146_p3 = (!exitcond3_i2_fu_132_p2.read()[0].is_01())? sc_lv<4>(): ((exitcond3_i2_fu_132_p2.read()[0].to_bool())? j_fu_126_p2.read(): j_0_i_phi_fu_96_p4.read());
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_tmp_s_fu_175_p2() {
    tmp_s_fu_175_p2 = (!tmp_9_cast_fu_171_p1.read().is_01() || !tmp_mid2_cast_fu_159_p1.read().is_01())? sc_lv<8>(): (sc_biguint<8>(tmp_9_cast_fu_171_p1.read()) + sc_biguint<8>(tmp_mid2_cast_fu_159_p1.read()));
}

void dct_Loop_Xpose_Row_Outer_Loop_proc::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if (!ap_sig_99.read()) {
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            }
            break;
        case 2 : 
            if (!(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && !esl_seteq<1,1,1>(exitcond_flatten_fu_114_p2.read(), ap_const_lv1_0))) {
                ap_NS_fsm = ap_ST_pp0_stg1_fsm_2;
            } else {
                ap_NS_fsm = ap_ST_st5_fsm_3;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_pp0_stg0_fsm_1;
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_st1_fsm_0;
            break;
        default : 
            ap_NS_fsm = "XXXX";
            break;
    }
}

}

