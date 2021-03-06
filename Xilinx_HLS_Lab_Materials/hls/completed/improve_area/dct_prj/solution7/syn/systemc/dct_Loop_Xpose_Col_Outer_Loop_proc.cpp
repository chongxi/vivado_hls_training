// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.1
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "dct_Loop_Xpose_Col_Outer_Loop_proc.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic dct_Loop_Xpose_Col_Outer_Loop_proc::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic dct_Loop_Xpose_Col_Outer_Loop_proc::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<3> dct_Loop_Xpose_Col_Outer_Loop_proc::ap_ST_st1_fsm_0 = "1";
const sc_lv<3> dct_Loop_Xpose_Col_Outer_Loop_proc::ap_ST_pp0_stg0_fsm_1 = "10";
const sc_lv<3> dct_Loop_Xpose_Col_Outer_Loop_proc::ap_ST_st4_fsm_2 = "100";
const sc_lv<32> dct_Loop_Xpose_Col_Outer_Loop_proc::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> dct_Loop_Xpose_Col_Outer_Loop_proc::ap_const_lv1_1 = "1";
const sc_lv<32> dct_Loop_Xpose_Col_Outer_Loop_proc::ap_const_lv32_1 = "1";
const sc_lv<1> dct_Loop_Xpose_Col_Outer_Loop_proc::ap_const_lv1_0 = "0";
const sc_lv<7> dct_Loop_Xpose_Col_Outer_Loop_proc::ap_const_lv7_0 = "0000000";
const sc_lv<4> dct_Loop_Xpose_Col_Outer_Loop_proc::ap_const_lv4_0 = "0000";
const sc_lv<7> dct_Loop_Xpose_Col_Outer_Loop_proc::ap_const_lv7_40 = "1000000";
const sc_lv<7> dct_Loop_Xpose_Col_Outer_Loop_proc::ap_const_lv7_1 = "1";
const sc_lv<4> dct_Loop_Xpose_Col_Outer_Loop_proc::ap_const_lv4_1 = "1";
const sc_lv<4> dct_Loop_Xpose_Col_Outer_Loop_proc::ap_const_lv4_8 = "1000";
const sc_lv<3> dct_Loop_Xpose_Col_Outer_Loop_proc::ap_const_lv3_0 = "000";
const sc_lv<32> dct_Loop_Xpose_Col_Outer_Loop_proc::ap_const_lv32_2 = "10";

dct_Loop_Xpose_Col_Outer_Loop_proc::dct_Loop_Xpose_Col_Outer_Loop_proc(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_done_reg );
    sensitive << ( ap_sig_cseq_ST_st4_fsm_2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_sig_cseq_ST_st4_fsm_2 );

    SC_METHOD(thread_ap_sig_163);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_21);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_54);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_78);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );

    SC_METHOD(thread_ap_sig_cseq_ST_pp0_stg0_fsm_1);
    sensitive << ( ap_sig_54 );

    SC_METHOD(thread_ap_sig_cseq_ST_st1_fsm_0);
    sensitive << ( ap_sig_21 );

    SC_METHOD(thread_ap_sig_cseq_ST_st4_fsm_2);
    sensitive << ( ap_sig_163 );

    SC_METHOD(thread_buf_2d_out_address0);
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );
    sensitive << ( tmp_16_cast_fu_197_p1 );

    SC_METHOD(thread_buf_2d_out_ce0);
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_buf_2d_out_d0);
    sensitive << ( col_outbuf_i_q0 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_buf_2d_out_we0);
    sensitive << ( exitcond_flatten_reg_202 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_col_outbuf_i_address0);
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it0 );
    sensitive << ( tmp_15_cast_fu_166_p1 );

    SC_METHOD(thread_col_outbuf_i_ce0);
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it0 );

    SC_METHOD(thread_exitcond_flatten_fu_104_p2);
    sensitive << ( indvar_flatten_reg_71 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it0 );

    SC_METHOD(thread_exitcond_i2_fu_122_p2);
    sensitive << ( i_3_i_reg_93 );
    sensitive << ( exitcond_flatten_fu_104_p2 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it0 );

    SC_METHOD(thread_i_3_i_mid2_fu_128_p3);
    sensitive << ( i_3_i_reg_93 );
    sensitive << ( exitcond_i2_fu_122_p2 );

    SC_METHOD(thread_i_fu_171_p2);
    sensitive << ( i_3_i_mid2_fu_128_p3 );

    SC_METHOD(thread_indvar_flatten_next_fu_110_p2);
    sensitive << ( indvar_flatten_reg_71 );

    SC_METHOD(thread_j_1_i_phi_fu_86_p4);
    sensitive << ( j_1_i_reg_82 );
    sensitive << ( exitcond_flatten_reg_202 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_1 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );
    sensitive << ( tmp_1_mid2_v_reg_216 );

    SC_METHOD(thread_j_fu_116_p2);
    sensitive << ( j_1_i_phi_fu_86_p4 );

    SC_METHOD(thread_tmp_12_cast_fu_184_p1);
    sensitive << ( tmp_fu_177_p3 );

    SC_METHOD(thread_tmp_14_cast_fu_156_p1);
    sensitive << ( tmp_s_fu_148_p3 );

    SC_METHOD(thread_tmp_15_cast_fu_166_p1);
    sensitive << ( tmp_1_fu_160_p2 );

    SC_METHOD(thread_tmp_16_cast_fu_197_p1);
    sensitive << ( tmp_2_fu_191_p2 );

    SC_METHOD(thread_tmp_1_fu_160_p2);
    sensitive << ( tmp_1_mid2_cast_fu_144_p1 );
    sensitive << ( tmp_14_cast_fu_156_p1 );

    SC_METHOD(thread_tmp_1_mid2_cast_fu_144_p1);
    sensitive << ( tmp_1_mid2_v_fu_136_p3 );

    SC_METHOD(thread_tmp_1_mid2_v_fu_136_p3);
    sensitive << ( j_1_i_phi_fu_86_p4 );
    sensitive << ( exitcond_i2_fu_122_p2 );
    sensitive << ( j_fu_116_p2 );

    SC_METHOD(thread_tmp_2_cast_fu_188_p1);
    sensitive << ( i_3_i_mid2_reg_211 );

    SC_METHOD(thread_tmp_2_fu_191_p2);
    sensitive << ( tmp_2_cast_fu_188_p1 );
    sensitive << ( tmp_12_cast_fu_184_p1 );

    SC_METHOD(thread_tmp_fu_177_p3);
    sensitive << ( tmp_1_mid2_v_reg_216 );

    SC_METHOD(thread_tmp_s_fu_148_p3);
    sensitive << ( i_3_i_mid2_fu_128_p3 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond_flatten_fu_104_p2 );
    sensitive << ( ap_reg_ppiten_pp0_it0 );
    sensitive << ( ap_sig_78 );

    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm = "001";
    ap_reg_ppiten_pp0_it0 = SC_LOGIC_0;
    ap_reg_ppiten_pp0_it1 = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "dct_Loop_Xpose_Col_Outer_Loop_proc_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, col_outbuf_i_address0, "(port)col_outbuf_i_address0");
    sc_trace(mVcdFile, col_outbuf_i_ce0, "(port)col_outbuf_i_ce0");
    sc_trace(mVcdFile, col_outbuf_i_q0, "(port)col_outbuf_i_q0");
    sc_trace(mVcdFile, buf_2d_out_address0, "(port)buf_2d_out_address0");
    sc_trace(mVcdFile, buf_2d_out_ce0, "(port)buf_2d_out_ce0");
    sc_trace(mVcdFile, buf_2d_out_we0, "(port)buf_2d_out_we0");
    sc_trace(mVcdFile, buf_2d_out_d0, "(port)buf_2d_out_d0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st1_fsm_0, "ap_sig_cseq_ST_st1_fsm_0");
    sc_trace(mVcdFile, ap_sig_21, "ap_sig_21");
    sc_trace(mVcdFile, indvar_flatten_reg_71, "indvar_flatten_reg_71");
    sc_trace(mVcdFile, j_1_i_reg_82, "j_1_i_reg_82");
    sc_trace(mVcdFile, i_3_i_reg_93, "i_3_i_reg_93");
    sc_trace(mVcdFile, exitcond_flatten_fu_104_p2, "exitcond_flatten_fu_104_p2");
    sc_trace(mVcdFile, exitcond_flatten_reg_202, "exitcond_flatten_reg_202");
    sc_trace(mVcdFile, ap_sig_cseq_ST_pp0_stg0_fsm_1, "ap_sig_cseq_ST_pp0_stg0_fsm_1");
    sc_trace(mVcdFile, ap_sig_54, "ap_sig_54");
    sc_trace(mVcdFile, ap_reg_ppiten_pp0_it0, "ap_reg_ppiten_pp0_it0");
    sc_trace(mVcdFile, ap_reg_ppiten_pp0_it1, "ap_reg_ppiten_pp0_it1");
    sc_trace(mVcdFile, indvar_flatten_next_fu_110_p2, "indvar_flatten_next_fu_110_p2");
    sc_trace(mVcdFile, i_3_i_mid2_fu_128_p3, "i_3_i_mid2_fu_128_p3");
    sc_trace(mVcdFile, i_3_i_mid2_reg_211, "i_3_i_mid2_reg_211");
    sc_trace(mVcdFile, tmp_1_mid2_v_fu_136_p3, "tmp_1_mid2_v_fu_136_p3");
    sc_trace(mVcdFile, tmp_1_mid2_v_reg_216, "tmp_1_mid2_v_reg_216");
    sc_trace(mVcdFile, i_fu_171_p2, "i_fu_171_p2");
    sc_trace(mVcdFile, ap_sig_78, "ap_sig_78");
    sc_trace(mVcdFile, j_1_i_phi_fu_86_p4, "j_1_i_phi_fu_86_p4");
    sc_trace(mVcdFile, tmp_15_cast_fu_166_p1, "tmp_15_cast_fu_166_p1");
    sc_trace(mVcdFile, tmp_16_cast_fu_197_p1, "tmp_16_cast_fu_197_p1");
    sc_trace(mVcdFile, exitcond_i2_fu_122_p2, "exitcond_i2_fu_122_p2");
    sc_trace(mVcdFile, j_fu_116_p2, "j_fu_116_p2");
    sc_trace(mVcdFile, tmp_s_fu_148_p3, "tmp_s_fu_148_p3");
    sc_trace(mVcdFile, tmp_1_mid2_cast_fu_144_p1, "tmp_1_mid2_cast_fu_144_p1");
    sc_trace(mVcdFile, tmp_14_cast_fu_156_p1, "tmp_14_cast_fu_156_p1");
    sc_trace(mVcdFile, tmp_1_fu_160_p2, "tmp_1_fu_160_p2");
    sc_trace(mVcdFile, tmp_fu_177_p3, "tmp_fu_177_p3");
    sc_trace(mVcdFile, tmp_2_cast_fu_188_p1, "tmp_2_cast_fu_188_p1");
    sc_trace(mVcdFile, tmp_12_cast_fu_184_p1, "tmp_12_cast_fu_184_p1");
    sc_trace(mVcdFile, tmp_2_fu_191_p2, "tmp_2_fu_191_p2");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st4_fsm_2, "ap_sig_cseq_ST_st4_fsm_2");
    sc_trace(mVcdFile, ap_sig_163, "ap_sig_163");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

dct_Loop_Xpose_Col_Outer_Loop_proc::~dct_Loop_Xpose_Col_Outer_Loop_proc() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void dct_Loop_Xpose_Col_Outer_Loop_proc::thread_ap_clk_no_reset_() {
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
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_2.read())) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_reg_ppiten_pp0_it0 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
             !esl_seteq<1,1,1>(exitcond_flatten_fu_104_p2.read(), ap_const_lv1_0))) {
            ap_reg_ppiten_pp0_it0 = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                    !ap_sig_78.read())) {
            ap_reg_ppiten_pp0_it0 = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_reg_ppiten_pp0_it1 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
             esl_seteq<1,1,1>(exitcond_flatten_fu_104_p2.read(), ap_const_lv1_0))) {
            ap_reg_ppiten_pp0_it1 = ap_const_logic_1;
        } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                     !ap_sig_78.read()) || 
                    (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
                     !esl_seteq<1,1,1>(exitcond_flatten_fu_104_p2.read(), ap_const_lv1_0)))) {
            ap_reg_ppiten_pp0_it1 = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
         esl_seteq<1,1,1>(exitcond_flatten_fu_104_p2.read(), ap_const_lv1_0))) {
        i_3_i_reg_93 = i_fu_171_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                !ap_sig_78.read())) {
        i_3_i_reg_93 = ap_const_lv4_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
         esl_seteq<1,1,1>(exitcond_flatten_fu_104_p2.read(), ap_const_lv1_0))) {
        indvar_flatten_reg_71 = indvar_flatten_next_fu_110_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                !ap_sig_78.read())) {
        indvar_flatten_reg_71 = ap_const_lv7_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         esl_seteq<1,1,1>(exitcond_flatten_reg_202.read(), ap_const_lv1_0))) {
        j_1_i_reg_82 = tmp_1_mid2_v_reg_216.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                !ap_sig_78.read())) {
        j_1_i_reg_82 = ap_const_lv4_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read())) {
        exitcond_flatten_reg_202 = exitcond_flatten_fu_104_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && esl_seteq<1,1,1>(exitcond_flatten_fu_104_p2.read(), ap_const_lv1_0))) {
        i_3_i_mid2_reg_211 = i_3_i_mid2_fu_128_p3.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && esl_seteq<1,1,1>(exitcond_flatten_fu_104_p2.read(), ap_const_lv1_0))) {
        tmp_1_mid2_v_reg_216 = tmp_1_mid2_v_fu_136_p3.read();
    }
}

void dct_Loop_Xpose_Col_Outer_Loop_proc::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_done_reg.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_2.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void dct_Loop_Xpose_Col_Outer_Loop_proc::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void dct_Loop_Xpose_Col_Outer_Loop_proc::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_2.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void dct_Loop_Xpose_Col_Outer_Loop_proc::thread_ap_sig_163() {
    ap_sig_163 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(2, 2));
}

void dct_Loop_Xpose_Col_Outer_Loop_proc::thread_ap_sig_21() {
    ap_sig_21 = esl_seteq<1,1,1>(ap_CS_fsm.read().range(0, 0), ap_const_lv1_1);
}

void dct_Loop_Xpose_Col_Outer_Loop_proc::thread_ap_sig_54() {
    ap_sig_54 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(1, 1));
}

void dct_Loop_Xpose_Col_Outer_Loop_proc::thread_ap_sig_78() {
    ap_sig_78 = (esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1));
}

void dct_Loop_Xpose_Col_Outer_Loop_proc::thread_ap_sig_cseq_ST_pp0_stg0_fsm_1() {
    if (ap_sig_54.read()) {
        ap_sig_cseq_ST_pp0_stg0_fsm_1 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg0_fsm_1 = ap_const_logic_0;
    }
}

void dct_Loop_Xpose_Col_Outer_Loop_proc::thread_ap_sig_cseq_ST_st1_fsm_0() {
    if (ap_sig_21.read()) {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    }
}

void dct_Loop_Xpose_Col_Outer_Loop_proc::thread_ap_sig_cseq_ST_st4_fsm_2() {
    if (ap_sig_163.read()) {
        ap_sig_cseq_ST_st4_fsm_2 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st4_fsm_2 = ap_const_logic_0;
    }
}

void dct_Loop_Xpose_Col_Outer_Loop_proc::thread_buf_2d_out_address0() {
    buf_2d_out_address0 =  (sc_lv<6>) (tmp_16_cast_fu_197_p1.read());
}

void dct_Loop_Xpose_Col_Outer_Loop_proc::thread_buf_2d_out_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) {
        buf_2d_out_ce0 = ap_const_logic_1;
    } else {
        buf_2d_out_ce0 = ap_const_logic_0;
    }
}

void dct_Loop_Xpose_Col_Outer_Loop_proc::thread_buf_2d_out_d0() {
    buf_2d_out_d0 = col_outbuf_i_q0.read();
}

void dct_Loop_Xpose_Col_Outer_Loop_proc::thread_buf_2d_out_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          esl_seteq<1,1,1>(exitcond_flatten_reg_202.read(), ap_const_lv1_0)))) {
        buf_2d_out_we0 = ap_const_logic_1;
    } else {
        buf_2d_out_we0 = ap_const_logic_0;
    }
}

void dct_Loop_Xpose_Col_Outer_Loop_proc::thread_col_outbuf_i_address0() {
    col_outbuf_i_address0 =  (sc_lv<6>) (tmp_15_cast_fu_166_p1.read());
}

void dct_Loop_Xpose_Col_Outer_Loop_proc::thread_col_outbuf_i_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()))) {
        col_outbuf_i_ce0 = ap_const_logic_1;
    } else {
        col_outbuf_i_ce0 = ap_const_logic_0;
    }
}

void dct_Loop_Xpose_Col_Outer_Loop_proc::thread_exitcond_flatten_fu_104_p2() {
    exitcond_flatten_fu_104_p2 = (!indvar_flatten_reg_71.read().is_01() || !ap_const_lv7_40.is_01())? sc_lv<1>(): sc_lv<1>(indvar_flatten_reg_71.read() == ap_const_lv7_40);
}

void dct_Loop_Xpose_Col_Outer_Loop_proc::thread_exitcond_i2_fu_122_p2() {
    exitcond_i2_fu_122_p2 = (!i_3_i_reg_93.read().is_01() || !ap_const_lv4_8.is_01())? sc_lv<1>(): sc_lv<1>(i_3_i_reg_93.read() == ap_const_lv4_8);
}

void dct_Loop_Xpose_Col_Outer_Loop_proc::thread_i_3_i_mid2_fu_128_p3() {
    i_3_i_mid2_fu_128_p3 = (!exitcond_i2_fu_122_p2.read()[0].is_01())? sc_lv<4>(): ((exitcond_i2_fu_122_p2.read()[0].to_bool())? ap_const_lv4_0: i_3_i_reg_93.read());
}

void dct_Loop_Xpose_Col_Outer_Loop_proc::thread_i_fu_171_p2() {
    i_fu_171_p2 = (!i_3_i_mid2_fu_128_p3.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(i_3_i_mid2_fu_128_p3.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void dct_Loop_Xpose_Col_Outer_Loop_proc::thread_indvar_flatten_next_fu_110_p2() {
    indvar_flatten_next_fu_110_p2 = (!indvar_flatten_reg_71.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_biguint<7>(indvar_flatten_reg_71.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void dct_Loop_Xpose_Col_Outer_Loop_proc::thread_j_1_i_phi_fu_86_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         esl_seteq<1,1,1>(exitcond_flatten_reg_202.read(), ap_const_lv1_0))) {
        j_1_i_phi_fu_86_p4 = tmp_1_mid2_v_reg_216.read();
    } else {
        j_1_i_phi_fu_86_p4 = j_1_i_reg_82.read();
    }
}

void dct_Loop_Xpose_Col_Outer_Loop_proc::thread_j_fu_116_p2() {
    j_fu_116_p2 = (!j_1_i_phi_fu_86_p4.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(j_1_i_phi_fu_86_p4.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void dct_Loop_Xpose_Col_Outer_Loop_proc::thread_tmp_12_cast_fu_184_p1() {
    tmp_12_cast_fu_184_p1 = esl_zext<8,7>(tmp_fu_177_p3.read());
}

void dct_Loop_Xpose_Col_Outer_Loop_proc::thread_tmp_14_cast_fu_156_p1() {
    tmp_14_cast_fu_156_p1 = esl_zext<8,7>(tmp_s_fu_148_p3.read());
}

void dct_Loop_Xpose_Col_Outer_Loop_proc::thread_tmp_15_cast_fu_166_p1() {
    tmp_15_cast_fu_166_p1 = esl_zext<64,8>(tmp_1_fu_160_p2.read());
}

void dct_Loop_Xpose_Col_Outer_Loop_proc::thread_tmp_16_cast_fu_197_p1() {
    tmp_16_cast_fu_197_p1 = esl_zext<64,8>(tmp_2_fu_191_p2.read());
}

void dct_Loop_Xpose_Col_Outer_Loop_proc::thread_tmp_1_fu_160_p2() {
    tmp_1_fu_160_p2 = (!tmp_1_mid2_cast_fu_144_p1.read().is_01() || !tmp_14_cast_fu_156_p1.read().is_01())? sc_lv<8>(): (sc_biguint<8>(tmp_1_mid2_cast_fu_144_p1.read()) + sc_biguint<8>(tmp_14_cast_fu_156_p1.read()));
}

void dct_Loop_Xpose_Col_Outer_Loop_proc::thread_tmp_1_mid2_cast_fu_144_p1() {
    tmp_1_mid2_cast_fu_144_p1 = esl_zext<8,4>(tmp_1_mid2_v_fu_136_p3.read());
}

void dct_Loop_Xpose_Col_Outer_Loop_proc::thread_tmp_1_mid2_v_fu_136_p3() {
    tmp_1_mid2_v_fu_136_p3 = (!exitcond_i2_fu_122_p2.read()[0].is_01())? sc_lv<4>(): ((exitcond_i2_fu_122_p2.read()[0].to_bool())? j_fu_116_p2.read(): j_1_i_phi_fu_86_p4.read());
}

void dct_Loop_Xpose_Col_Outer_Loop_proc::thread_tmp_2_cast_fu_188_p1() {
    tmp_2_cast_fu_188_p1 = esl_zext<8,4>(i_3_i_mid2_reg_211.read());
}

void dct_Loop_Xpose_Col_Outer_Loop_proc::thread_tmp_2_fu_191_p2() {
    tmp_2_fu_191_p2 = (!tmp_2_cast_fu_188_p1.read().is_01() || !tmp_12_cast_fu_184_p1.read().is_01())? sc_lv<8>(): (sc_biguint<8>(tmp_2_cast_fu_188_p1.read()) + sc_biguint<8>(tmp_12_cast_fu_184_p1.read()));
}

void dct_Loop_Xpose_Col_Outer_Loop_proc::thread_tmp_fu_177_p3() {
    tmp_fu_177_p3 = esl_concat<4,3>(tmp_1_mid2_v_reg_216.read(), ap_const_lv3_0);
}

void dct_Loop_Xpose_Col_Outer_Loop_proc::thread_tmp_s_fu_148_p3() {
    tmp_s_fu_148_p3 = esl_concat<4,3>(i_3_i_mid2_fu_128_p3.read(), ap_const_lv3_0);
}

void dct_Loop_Xpose_Col_Outer_Loop_proc::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if (!ap_sig_78.read()) {
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            }
            break;
        case 2 : 
            if (!(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && !esl_seteq<1,1,1>(exitcond_flatten_fu_104_p2.read(), ap_const_lv1_0))) {
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

