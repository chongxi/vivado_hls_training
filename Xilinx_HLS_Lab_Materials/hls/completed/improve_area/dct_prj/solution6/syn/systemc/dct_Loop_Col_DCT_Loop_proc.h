// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.1
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _dct_Loop_Col_DCT_Loop_proc_HH_
#define _dct_Loop_Col_DCT_Loop_proc_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "dct_mac_muladd_15s_16s_29s_29_1.h"
#include "dct_mac_muladd_15s_16s_14ns_29_1.h"
#include "dct_mac_muladd_14ns_16s_29s_29_1.h"
#include "dct_mul_mul_15s_16s_29_1.h"
#include "dct_Loop_Row_DCT_Loop_proc_dct_coeff_table_0.h"
#include "dct_Loop_Row_DCT_Loop_proc_dct_coeff_table_1.h"
#include "dct_Loop_Row_DCT_Loop_proc_dct_coeff_table_2.h"
#include "dct_Loop_Row_DCT_Loop_proc_dct_coeff_table_3.h"
#include "dct_Loop_Row_DCT_Loop_proc_dct_coeff_table_4.h"
#include "dct_Loop_Row_DCT_Loop_proc_dct_coeff_table_5.h"
#include "dct_Loop_Row_DCT_Loop_proc_dct_coeff_table_6.h"
#include "dct_Loop_Row_DCT_Loop_proc_dct_coeff_table_7.h"

namespace ap_rtl {

struct dct_Loop_Col_DCT_Loop_proc : public sc_module {
    // Port declarations 35
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<3> > col_inbuf_0_address0;
    sc_out< sc_logic > col_inbuf_0_ce0;
    sc_in< sc_lv<16> > col_inbuf_0_q0;
    sc_out< sc_lv<3> > col_inbuf_1_address0;
    sc_out< sc_logic > col_inbuf_1_ce0;
    sc_in< sc_lv<16> > col_inbuf_1_q0;
    sc_out< sc_lv<3> > col_inbuf_2_address0;
    sc_out< sc_logic > col_inbuf_2_ce0;
    sc_in< sc_lv<16> > col_inbuf_2_q0;
    sc_out< sc_lv<3> > col_inbuf_3_address0;
    sc_out< sc_logic > col_inbuf_3_ce0;
    sc_in< sc_lv<16> > col_inbuf_3_q0;
    sc_out< sc_lv<3> > col_inbuf_4_address0;
    sc_out< sc_logic > col_inbuf_4_ce0;
    sc_in< sc_lv<16> > col_inbuf_4_q0;
    sc_out< sc_lv<3> > col_inbuf_5_address0;
    sc_out< sc_logic > col_inbuf_5_ce0;
    sc_in< sc_lv<16> > col_inbuf_5_q0;
    sc_out< sc_lv<3> > col_inbuf_6_address0;
    sc_out< sc_logic > col_inbuf_6_ce0;
    sc_in< sc_lv<16> > col_inbuf_6_q0;
    sc_out< sc_lv<3> > col_inbuf_7_address0;
    sc_out< sc_logic > col_inbuf_7_ce0;
    sc_in< sc_lv<16> > col_inbuf_7_q0;
    sc_out< sc_lv<6> > col_outbuf_i_address0;
    sc_out< sc_logic > col_outbuf_i_ce0;
    sc_out< sc_logic > col_outbuf_i_we0;
    sc_out< sc_lv<16> > col_outbuf_i_d0;


    // Module declarations
    dct_Loop_Col_DCT_Loop_proc(sc_module_name name);
    SC_HAS_PROCESS(dct_Loop_Col_DCT_Loop_proc);

    ~dct_Loop_Col_DCT_Loop_proc();

    sc_trace_file* mVcdFile;

    dct_Loop_Row_DCT_Loop_proc_dct_coeff_table_0* dct_coeff_table_0_U;
    dct_Loop_Row_DCT_Loop_proc_dct_coeff_table_1* dct_coeff_table_1_U;
    dct_Loop_Row_DCT_Loop_proc_dct_coeff_table_2* dct_coeff_table_2_U;
    dct_Loop_Row_DCT_Loop_proc_dct_coeff_table_3* dct_coeff_table_3_U;
    dct_Loop_Row_DCT_Loop_proc_dct_coeff_table_4* dct_coeff_table_4_U;
    dct_Loop_Row_DCT_Loop_proc_dct_coeff_table_5* dct_coeff_table_5_U;
    dct_Loop_Row_DCT_Loop_proc_dct_coeff_table_6* dct_coeff_table_6_U;
    dct_Loop_Row_DCT_Loop_proc_dct_coeff_table_7* dct_coeff_table_7_U;
    dct_mac_muladd_15s_16s_29s_29_1<1,1,15,16,29,29>* dct_mac_muladd_15s_16s_29s_29_1_U43;
    dct_mac_muladd_15s_16s_14ns_29_1<1,1,15,16,14,29>* dct_mac_muladd_15s_16s_14ns_29_1_U44;
    dct_mac_muladd_15s_16s_29s_29_1<1,1,15,16,29,29>* dct_mac_muladd_15s_16s_29s_29_1_U45;
    dct_mac_muladd_15s_16s_29s_29_1<1,1,15,16,29,29>* dct_mac_muladd_15s_16s_29s_29_1_U46;
    dct_mac_muladd_14ns_16s_29s_29_1<1,1,14,16,29,29>* dct_mac_muladd_14ns_16s_29s_29_1_U47;
    dct_mul_mul_15s_16s_29_1<1,1,15,16,29>* dct_mul_mul_15s_16s_29_1_U48;
    dct_mul_mul_15s_16s_29_1<1,1,15,16,29>* dct_mul_mul_15s_16s_29_1_U49;
    dct_mul_mul_15s_16s_29_1<1,1,15,16,29>* dct_mul_mul_15s_16s_29_1_U50;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_21;
    sc_signal< sc_lv<3> > dct_coeff_table_0_address0;
    sc_signal< sc_logic > dct_coeff_table_0_ce0;
    sc_signal< sc_lv<14> > dct_coeff_table_0_q0;
    sc_signal< sc_lv<3> > dct_coeff_table_1_address0;
    sc_signal< sc_logic > dct_coeff_table_1_ce0;
    sc_signal< sc_lv<15> > dct_coeff_table_1_q0;
    sc_signal< sc_lv<3> > dct_coeff_table_2_address0;
    sc_signal< sc_logic > dct_coeff_table_2_ce0;
    sc_signal< sc_lv<15> > dct_coeff_table_2_q0;
    sc_signal< sc_lv<3> > dct_coeff_table_3_address0;
    sc_signal< sc_logic > dct_coeff_table_3_ce0;
    sc_signal< sc_lv<15> > dct_coeff_table_3_q0;
    sc_signal< sc_lv<3> > dct_coeff_table_4_address0;
    sc_signal< sc_logic > dct_coeff_table_4_ce0;
    sc_signal< sc_lv<15> > dct_coeff_table_4_q0;
    sc_signal< sc_lv<3> > dct_coeff_table_5_address0;
    sc_signal< sc_logic > dct_coeff_table_5_ce0;
    sc_signal< sc_lv<15> > dct_coeff_table_5_q0;
    sc_signal< sc_lv<3> > dct_coeff_table_6_address0;
    sc_signal< sc_logic > dct_coeff_table_6_ce0;
    sc_signal< sc_lv<15> > dct_coeff_table_6_q0;
    sc_signal< sc_lv<3> > dct_coeff_table_7_address0;
    sc_signal< sc_logic > dct_coeff_table_7_ce0;
    sc_signal< sc_lv<15> > dct_coeff_table_7_q0;
    sc_signal< sc_lv<4> > k_i_reg_285;
    sc_signal< sc_lv<1> > exitcond2_i_fu_296_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_148;
    sc_signal< sc_lv<4> > i_fu_302_p2;
    sc_signal< sc_lv<4> > i_reg_503;
    sc_signal< sc_lv<8> > tmp_19_cast_fu_328_p1;
    sc_signal< sc_lv<8> > tmp_19_cast_reg_508;
    sc_signal< sc_lv<3> > col_inbuf_0_addr_reg_513;
    sc_signal< sc_lv<3> > col_inbuf_1_addr_reg_518;
    sc_signal< sc_lv<3> > col_inbuf_2_addr_reg_523;
    sc_signal< sc_lv<3> > col_inbuf_3_addr_reg_528;
    sc_signal< sc_lv<3> > col_inbuf_4_addr_reg_533;
    sc_signal< sc_lv<3> > col_inbuf_5_addr_reg_538;
    sc_signal< sc_lv<3> > col_inbuf_6_addr_reg_543;
    sc_signal< sc_lv<3> > col_inbuf_7_addr_reg_548;
    sc_signal< sc_lv<1> > exitcond1_i_fu_332_p2;
    sc_signal< sc_lv<1> > exitcond1_i_reg_553;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg0_fsm_2;
    sc_signal< bool > ap_sig_180;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it0;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it1;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it2;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it3;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it4;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond1_i_reg_553_pp0_iter1;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond1_i_reg_553_pp0_iter2;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond1_i_reg_553_pp0_iter3;
    sc_signal< sc_lv<4> > k_fu_338_p2;
    sc_signal< sc_lv<8> > tmp_4_fu_360_p2;
    sc_signal< sc_lv<8> > tmp_4_reg_562;
    sc_signal< sc_lv<8> > ap_reg_ppstg_tmp_4_reg_562_pp0_iter1;
    sc_signal< sc_lv<8> > ap_reg_ppstg_tmp_4_reg_562_pp0_iter2;
    sc_signal< sc_lv<8> > ap_reg_ppstg_tmp_4_reg_562_pp0_iter3;
    sc_signal< sc_lv<14> > dct_coeff_table_0_load_reg_607;
    sc_signal< sc_lv<14> > ap_reg_ppstg_dct_coeff_table_0_load_reg_607_pp0_iter2;
    sc_signal< sc_lv<15> > dct_coeff_table_1_load_reg_612;
    sc_signal< sc_lv<16> > col_inbuf_1_load_reg_617;
    sc_signal< sc_lv<15> > dct_coeff_table_2_load_reg_622;
    sc_signal< sc_lv<15> > ap_reg_ppstg_dct_coeff_table_2_load_reg_622_pp0_iter2;
    sc_signal< sc_lv<15> > dct_coeff_table_3_load_reg_627;
    sc_signal< sc_lv<16> > col_inbuf_3_load_reg_632;
    sc_signal< sc_lv<15> > dct_coeff_table_4_load_reg_637;
    sc_signal< sc_lv<15> > ap_reg_ppstg_dct_coeff_table_4_load_reg_637_pp0_iter2;
    sc_signal< sc_lv<15> > dct_coeff_table_5_load_reg_642;
    sc_signal< sc_lv<16> > col_inbuf_5_load_reg_647;
    sc_signal< sc_lv<15> > dct_coeff_table_6_load_reg_652;
    sc_signal< sc_lv<16> > col_inbuf_6_load_reg_657;
    sc_signal< sc_lv<15> > dct_coeff_table_7_load_reg_662;
    sc_signal< sc_lv<16> > col_inbuf_7_load_reg_667;
    sc_signal< sc_lv<16> > col_inbuf_0_load_reg_672;
    sc_signal< sc_lv<29> > tmp_6_1_i_fu_493_p2;
    sc_signal< sc_lv<29> > tmp_6_1_i_reg_677;
    sc_signal< sc_lv<16> > col_inbuf_2_load_reg_682;
    sc_signal< sc_lv<29> > tmp_6_3_i_fu_487_p2;
    sc_signal< sc_lv<29> > tmp_6_3_i_reg_687;
    sc_signal< sc_lv<16> > col_inbuf_4_load_reg_692;
    sc_signal< sc_lv<29> > tmp_6_5_i_fu_481_p2;
    sc_signal< sc_lv<29> > tmp_6_5_i_reg_697;
    sc_signal< sc_lv<29> > grp_fu_441_p3;
    sc_signal< sc_lv<29> > tmp5_reg_702;
    sc_signal< sc_lv<16> > tmp_3_i_reg_707;
    sc_signal< sc_lv<4> > i_2_i_reg_274;
    sc_signal< bool > ap_sig_269;
    sc_signal< sc_lv<64> > tmp_81_cast_i_fu_308_p1;
    sc_signal< sc_lv<64> > tmp_i_fu_344_p1;
    sc_signal< sc_lv<64> > tmp_20_cast_fu_437_p1;
    sc_signal< sc_lv<7> > tmp_s_fu_320_p3;
    sc_signal< sc_lv<8> > tmp_i_cast_fu_356_p1;
    sc_signal< sc_lv<29> > grp_fu_473_p3;
    sc_signal< sc_lv<29> > grp_fu_465_p3;
    sc_signal< sc_lv<29> > grp_fu_457_p3;
    sc_signal< sc_lv<29> > tmp_fu_413_p2;
    sc_signal< sc_lv<29> > tmp3_fu_417_p2;
    sc_signal< sc_lv<29> > tmp_i_20_fu_421_p2;
    sc_signal< sc_lv<29> > grp_fu_448_p3;
    sc_signal< sc_lv<14> > grp_fu_448_p2;
    sc_signal< sc_lv<14> > grp_fu_473_p0;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< sc_lv<29> > grp_fu_473_p00;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_st1_fsm_0;
    static const sc_lv<3> ap_ST_st2_fsm_1;
    static const sc_lv<3> ap_ST_pp0_stg0_fsm_2;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const bool ap_true;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_1C;
    static const sc_lv<29> ap_const_lv29_1000;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_148();
    void thread_ap_sig_180();
    void thread_ap_sig_21();
    void thread_ap_sig_269();
    void thread_ap_sig_cseq_ST_pp0_stg0_fsm_2();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_col_inbuf_0_address0();
    void thread_col_inbuf_0_ce0();
    void thread_col_inbuf_1_address0();
    void thread_col_inbuf_1_ce0();
    void thread_col_inbuf_2_address0();
    void thread_col_inbuf_2_ce0();
    void thread_col_inbuf_3_address0();
    void thread_col_inbuf_3_ce0();
    void thread_col_inbuf_4_address0();
    void thread_col_inbuf_4_ce0();
    void thread_col_inbuf_5_address0();
    void thread_col_inbuf_5_ce0();
    void thread_col_inbuf_6_address0();
    void thread_col_inbuf_6_ce0();
    void thread_col_inbuf_7_address0();
    void thread_col_inbuf_7_ce0();
    void thread_col_outbuf_i_address0();
    void thread_col_outbuf_i_ce0();
    void thread_col_outbuf_i_d0();
    void thread_col_outbuf_i_we0();
    void thread_dct_coeff_table_0_address0();
    void thread_dct_coeff_table_0_ce0();
    void thread_dct_coeff_table_1_address0();
    void thread_dct_coeff_table_1_ce0();
    void thread_dct_coeff_table_2_address0();
    void thread_dct_coeff_table_2_ce0();
    void thread_dct_coeff_table_3_address0();
    void thread_dct_coeff_table_3_ce0();
    void thread_dct_coeff_table_4_address0();
    void thread_dct_coeff_table_4_ce0();
    void thread_dct_coeff_table_5_address0();
    void thread_dct_coeff_table_5_ce0();
    void thread_dct_coeff_table_6_address0();
    void thread_dct_coeff_table_6_ce0();
    void thread_dct_coeff_table_7_address0();
    void thread_dct_coeff_table_7_ce0();
    void thread_exitcond1_i_fu_332_p2();
    void thread_exitcond2_i_fu_296_p2();
    void thread_grp_fu_448_p2();
    void thread_grp_fu_473_p0();
    void thread_grp_fu_473_p00();
    void thread_i_fu_302_p2();
    void thread_k_fu_338_p2();
    void thread_tmp3_fu_417_p2();
    void thread_tmp_19_cast_fu_328_p1();
    void thread_tmp_20_cast_fu_437_p1();
    void thread_tmp_4_fu_360_p2();
    void thread_tmp_81_cast_i_fu_308_p1();
    void thread_tmp_fu_413_p2();
    void thread_tmp_i_20_fu_421_p2();
    void thread_tmp_i_cast_fu_356_p1();
    void thread_tmp_i_fu_344_p1();
    void thread_tmp_s_fu_320_p3();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
