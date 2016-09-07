// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.1
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _fir_HH_
#define _fir_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "fir_shift_reg.h"
#include "fir_c.h"
#include "fir_fir_io_s_axi.h"

namespace ap_rtl {

template<unsigned int C_S_AXI_FIR_IO_ADDR_WIDTH = 5,
         unsigned int C_S_AXI_FIR_IO_DATA_WIDTH = 32>
struct fir : public sc_module {
    // Port declarations 20
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_logic > s_axi_fir_io_AWVALID;
    sc_out< sc_logic > s_axi_fir_io_AWREADY;
    sc_in< sc_uint<C_S_AXI_FIR_IO_ADDR_WIDTH> > s_axi_fir_io_AWADDR;
    sc_in< sc_logic > s_axi_fir_io_WVALID;
    sc_out< sc_logic > s_axi_fir_io_WREADY;
    sc_in< sc_uint<C_S_AXI_FIR_IO_DATA_WIDTH> > s_axi_fir_io_WDATA;
    sc_in< sc_uint<C_S_AXI_FIR_IO_DATA_WIDTH/8> > s_axi_fir_io_WSTRB;
    sc_in< sc_logic > s_axi_fir_io_ARVALID;
    sc_out< sc_logic > s_axi_fir_io_ARREADY;
    sc_in< sc_uint<C_S_AXI_FIR_IO_ADDR_WIDTH> > s_axi_fir_io_ARADDR;
    sc_out< sc_logic > s_axi_fir_io_RVALID;
    sc_in< sc_logic > s_axi_fir_io_RREADY;
    sc_out< sc_uint<C_S_AXI_FIR_IO_DATA_WIDTH> > s_axi_fir_io_RDATA;
    sc_out< sc_lv<2> > s_axi_fir_io_RRESP;
    sc_out< sc_logic > s_axi_fir_io_BVALID;
    sc_in< sc_logic > s_axi_fir_io_BREADY;
    sc_out< sc_lv<2> > s_axi_fir_io_BRESP;
    sc_out< sc_logic > interrupt;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    fir(sc_module_name name);
    SC_HAS_PROCESS(fir);

    ~fir();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    fir_shift_reg* shift_reg_U;
    fir_c* c_U;
    fir_fir_io_s_axi<C_S_AXI_FIR_IO_ADDR_WIDTH,C_S_AXI_FIR_IO_DATA_WIDTH>* fir_fir_io_s_axi_U;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_logic > ap_start;
    sc_signal< sc_logic > ap_done;
    sc_signal< sc_logic > ap_idle;
    sc_signal< sc_lv<5> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_22;
    sc_signal< sc_logic > ap_ready;
    sc_signal< sc_logic > y_ap_vld;
    sc_signal< sc_lv<32> > x;
    sc_signal< sc_lv<4> > shift_reg_address0;
    sc_signal< sc_logic > shift_reg_ce0;
    sc_signal< sc_logic > shift_reg_we0;
    sc_signal< sc_lv<32> > shift_reg_d0;
    sc_signal< sc_lv<32> > shift_reg_q0;
    sc_signal< sc_lv<4> > c_address0;
    sc_signal< sc_logic > c_ce0;
    sc_signal< sc_lv<7> > c_q0;
    sc_signal< sc_lv<32> > x_read_reg_182;
    sc_signal< sc_lv<1> > tmp_1_fu_152_p2;
    sc_signal< sc_lv<1> > tmp_1_reg_190;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_97;
    sc_signal< sc_lv<1> > tmp_fu_144_p3;
    sc_signal< sc_lv<64> > tmp_4_fu_163_p1;
    sc_signal< sc_lv<64> > tmp_4_reg_199;
    sc_signal< sc_lv<32> > shift_reg_load_reg_209;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_118;
    sc_signal< sc_lv<7> > c_load_reg_214;
    sc_signal< sc_lv<32> > tmp_5_fu_171_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st4_fsm_3;
    sc_signal< bool > ap_sig_128;
    sc_signal< sc_lv<5> > grp_fu_133_p2;
    sc_signal< sc_lv<5> > i_1_reg_224;
    sc_signal< sc_lv<32> > acc_1_fu_176_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st5_fsm_4;
    sc_signal< bool > ap_sig_141;
    sc_signal< sc_lv<32> > acc_reg_97;
    sc_signal< sc_lv<5> > i_phi_fu_114_p4;
    sc_signal< sc_lv<5> > i_reg_110;
    sc_signal< sc_lv<32> > p_pn_reg_122;
    sc_signal< sc_lv<64> > tmp_3_fu_158_p1;
    sc_signal< sc_lv<5> > grp_fu_133_p0;
    sc_signal< sc_lv<32> > i_cast_fu_140_p1;
    sc_signal< sc_lv<7> > tmp_5_fu_171_p1;
    sc_signal< sc_lv<5> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<5> ap_ST_st1_fsm_0;
    static const sc_lv<5> ap_ST_st2_fsm_1;
    static const sc_lv<5> ap_ST_st3_fsm_2;
    static const sc_lv<5> ap_ST_st4_fsm_3;
    static const sc_lv<5> ap_ST_st5_fsm_4;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const int C_S_AXI_DATA_WIDTH;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<5> ap_const_lv5_A;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<5> ap_const_lv5_1F;
    static const sc_lv<5> ap_const_lv5_0;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_acc_1_fu_176_p2();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_rst_n_inv();
    void thread_ap_sig_118();
    void thread_ap_sig_128();
    void thread_ap_sig_141();
    void thread_ap_sig_22();
    void thread_ap_sig_97();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_ap_sig_cseq_ST_st4_fsm_3();
    void thread_ap_sig_cseq_ST_st5_fsm_4();
    void thread_c_address0();
    void thread_c_ce0();
    void thread_grp_fu_133_p0();
    void thread_grp_fu_133_p2();
    void thread_i_cast_fu_140_p1();
    void thread_i_phi_fu_114_p4();
    void thread_shift_reg_address0();
    void thread_shift_reg_ce0();
    void thread_shift_reg_d0();
    void thread_shift_reg_we0();
    void thread_tmp_1_fu_152_p2();
    void thread_tmp_3_fu_158_p1();
    void thread_tmp_4_fu_163_p1();
    void thread_tmp_5_fu_171_p1();
    void thread_tmp_5_fu_171_p2();
    void thread_tmp_fu_144_p3();
    void thread_y_ap_vld();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
