// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.1
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "adders_io.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic adders_io::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic adders_io::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<2> adders_io::ap_ST_st1_fsm_0 = "1";
const sc_lv<2> adders_io::ap_ST_st2_fsm_1 = "10";
const sc_lv<32> adders_io::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> adders_io::ap_const_lv1_1 = "1";
const sc_lv<32> adders_io::ap_const_lv32_1 = "1";

adders_io::adders_io(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( ap_sig_ioackin_in_out1_o_ap_ack );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( ap_sig_ioackin_in_out1_o_ap_ack );

    SC_METHOD(thread_ap_sig_17);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_51);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_59);
    sensitive << ( ap_start );
    sensitive << ( in1_ap_vld_in_sig );
    sensitive << ( in_out1_i_ap_vld );

    SC_METHOD(thread_ap_sig_cseq_ST_st1_fsm_0);
    sensitive << ( ap_sig_17 );

    SC_METHOD(thread_ap_sig_cseq_ST_st2_fsm_1);
    sensitive << ( ap_sig_51 );

    SC_METHOD(thread_ap_sig_ioackin_in_out1_o_ap_ack);
    sensitive << ( in_out1_o_ap_ack );
    sensitive << ( ap_reg_ioackin_in_out1_o_ap_ack );

    SC_METHOD(thread_in1_ap_vld_in_sig);
    sensitive << ( in1_ap_vld );
    sensitive << ( in1_ap_vld_preg );

    SC_METHOD(thread_in1_blk_n);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( in1_ap_vld );

    SC_METHOD(thread_in1_in_sig);
    sensitive << ( in1 );
    sensitive << ( in1_preg );
    sensitive << ( in1_ap_vld );

    SC_METHOD(thread_in2_ap_ack);
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( ap_sig_59 );

    SC_METHOD(thread_in_out1_blk_n);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( in_out1_i_ap_vld );
    sensitive << ( in_out1_o_ap_ack );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_in_out1_i_ap_ack);
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( ap_sig_59 );

    SC_METHOD(thread_in_out1_o);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( in_out1_read_reg_68 );
    sensitive << ( tmp1_reg_73 );

    SC_METHOD(thread_in_out1_o_ap_vld);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( ap_reg_ioackin_in_out1_o_ap_ack );

    SC_METHOD(thread_tmp1_fu_57_p2);
    sensitive << ( in1_in_sig );
    sensitive << ( in2 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_sig_59 );
    sensitive << ( ap_sig_ioackin_in_out1_o_ap_ack );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "01";
    in1_preg = "00000000000000000000000000000000";
    in1_ap_vld_preg = SC_LOGIC_0;
    ap_reg_ioackin_in_out1_o_ap_ack = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "adders_io_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, in1, "(port)in1");
    sc_trace(mVcdFile, in1_ap_vld, "(port)in1_ap_vld");
    sc_trace(mVcdFile, in2, "(port)in2");
    sc_trace(mVcdFile, in2_ap_ack, "(port)in2_ap_ack");
    sc_trace(mVcdFile, in_out1_i, "(port)in_out1_i");
    sc_trace(mVcdFile, in_out1_i_ap_vld, "(port)in_out1_i_ap_vld");
    sc_trace(mVcdFile, in_out1_i_ap_ack, "(port)in_out1_i_ap_ack");
    sc_trace(mVcdFile, in_out1_o, "(port)in_out1_o");
    sc_trace(mVcdFile, in_out1_o_ap_vld, "(port)in_out1_o_ap_vld");
    sc_trace(mVcdFile, in_out1_o_ap_ack, "(port)in_out1_o_ap_ack");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st1_fsm_0, "ap_sig_cseq_ST_st1_fsm_0");
    sc_trace(mVcdFile, ap_sig_17, "ap_sig_17");
    sc_trace(mVcdFile, in1_in_sig, "in1_in_sig");
    sc_trace(mVcdFile, in1_preg, "in1_preg");
    sc_trace(mVcdFile, in1_ap_vld_in_sig, "in1_ap_vld_in_sig");
    sc_trace(mVcdFile, in1_ap_vld_preg, "in1_ap_vld_preg");
    sc_trace(mVcdFile, in1_blk_n, "in1_blk_n");
    sc_trace(mVcdFile, in_out1_blk_n, "in_out1_blk_n");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st2_fsm_1, "ap_sig_cseq_ST_st2_fsm_1");
    sc_trace(mVcdFile, ap_sig_51, "ap_sig_51");
    sc_trace(mVcdFile, in_out1_read_reg_68, "in_out1_read_reg_68");
    sc_trace(mVcdFile, ap_sig_59, "ap_sig_59");
    sc_trace(mVcdFile, tmp1_fu_57_p2, "tmp1_fu_57_p2");
    sc_trace(mVcdFile, tmp1_reg_73, "tmp1_reg_73");
    sc_trace(mVcdFile, ap_reg_ioackin_in_out1_o_ap_ack, "ap_reg_ioackin_in_out1_o_ap_ack");
    sc_trace(mVcdFile, ap_sig_ioackin_in_out1_o_ap_ack, "ap_sig_ioackin_in_out1_o_ap_ack");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
    mHdltvinHandle.open("adders_io.hdltvin.dat");
    mHdltvoutHandle.open("adders_io.hdltvout.dat");
}

adders_io::~adders_io() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
}

void adders_io::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_st1_fsm_0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_reg_ioackin_in_out1_o_ap_ack = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read())) {
            if (!esl_seteq<1,1,1>(ap_const_logic_0, ap_sig_ioackin_in_out1_o_ap_ack.read())) {
                ap_reg_ioackin_in_out1_o_ap_ack = ap_const_logic_0;
            } else if (esl_seteq<1,1,1>(ap_const_logic_1, in_out1_o_ap_ack.read())) {
                ap_reg_ioackin_in_out1_o_ap_ack = ap_const_logic_1;
            }
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        in1_ap_vld_preg = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
             !esl_seteq<1,1,1>(ap_const_logic_0, ap_sig_ioackin_in_out1_o_ap_ack.read()))) {
            in1_ap_vld_preg = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, in1_ap_vld.read()) && 
                    !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read())))) {
            in1_ap_vld_preg = in1_ap_vld.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        in1_preg = ap_const_lv32_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, in1_ap_vld.read()) && 
             !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read())))) {
            in1_preg = in1.read();
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && !ap_sig_59.read())) {
        in_out1_read_reg_68 = in_out1_i.read();
        tmp1_reg_73 = tmp1_fu_57_p2.read();
    }
}

void adders_io::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
         !esl_seteq<1,1,1>(ap_const_logic_0, ap_sig_ioackin_in_out1_o_ap_ack.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void adders_io::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void adders_io::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
         !esl_seteq<1,1,1>(ap_const_logic_0, ap_sig_ioackin_in_out1_o_ap_ack.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void adders_io::thread_ap_sig_17() {
    ap_sig_17 = esl_seteq<1,1,1>(ap_CS_fsm.read().range(0, 0), ap_const_lv1_1);
}

void adders_io::thread_ap_sig_51() {
    ap_sig_51 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(1, 1));
}

void adders_io::thread_ap_sig_59() {
    ap_sig_59 = (esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) || esl_seteq<1,1,1>(in1_ap_vld_in_sig.read(), ap_const_logic_0) || esl_seteq<1,1,1>(in_out1_i_ap_vld.read(), ap_const_logic_0));
}

void adders_io::thread_ap_sig_cseq_ST_st1_fsm_0() {
    if (ap_sig_17.read()) {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    }
}

void adders_io::thread_ap_sig_cseq_ST_st2_fsm_1() {
    if (ap_sig_51.read()) {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    }
}

void adders_io::thread_ap_sig_ioackin_in_out1_o_ap_ack() {
    if (esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_in_out1_o_ap_ack.read())) {
        ap_sig_ioackin_in_out1_o_ap_ack = in_out1_o_ap_ack.read();
    } else {
        ap_sig_ioackin_in_out1_o_ap_ack = ap_const_logic_1;
    }
}

void adders_io::thread_in1_ap_vld_in_sig() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, in1_ap_vld.read())) {
        in1_ap_vld_in_sig = in1_ap_vld.read();
    } else {
        in1_ap_vld_in_sig = in1_ap_vld_preg.read();
    }
}

void adders_io::thread_in1_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
         !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        in1_blk_n = in1_ap_vld.read();
    } else {
        in1_blk_n = ap_const_logic_1;
    }
}

void adders_io::thread_in1_in_sig() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, in1_ap_vld.read())) {
        in1_in_sig = in1.read();
    } else {
        in1_in_sig = in1_preg.read();
    }
}

void adders_io::thread_in2_ap_ack() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
         !ap_sig_59.read())) {
        in2_ap_ack = ap_const_logic_1;
    } else {
        in2_ap_ack = ap_const_logic_0;
    }
}

void adders_io::thread_in_out1_blk_n() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read())) {
        in_out1_blk_n = in_out1_o_ap_ack.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        in_out1_blk_n = in_out1_i_ap_vld.read();
    } else {
        in_out1_blk_n = ap_const_logic_1;
    }
}

void adders_io::thread_in_out1_i_ap_ack() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
         !ap_sig_59.read())) {
        in_out1_i_ap_ack = ap_const_logic_1;
    } else {
        in_out1_i_ap_ack = ap_const_logic_0;
    }
}

void adders_io::thread_in_out1_o() {
    in_out1_o = (!tmp1_reg_73.read().is_01() || !in_out1_read_reg_68.read().is_01())? sc_lv<32>(): (sc_biguint<32>(tmp1_reg_73.read()) + sc_biguint<32>(in_out1_read_reg_68.read()));
}

void adders_io::thread_in_out1_o_ap_vld() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_in_out1_o_ap_ack.read()))) {
        in_out1_o_ap_vld = ap_const_logic_1;
    } else {
        in_out1_o_ap_vld = ap_const_logic_0;
    }
}

void adders_io::thread_tmp1_fu_57_p2() {
    tmp1_fu_57_p2 = (!in2.read().is_01() || !in1_in_sig.read().is_01())? sc_lv<32>(): (sc_biguint<32>(in2.read()) + sc_biguint<32>(in1_in_sig.read()));
}

void adders_io::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if (!ap_sig_59.read()) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            }
            break;
        case 2 : 
            if (!esl_seteq<1,1,1>(ap_const_logic_0, ap_sig_ioackin_in_out1_o_ap_ack.read())) {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            } else {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            }
            break;
        default : 
            ap_NS_fsm = "XX";
            break;
    }
}

void adders_io::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in1\" :  \"" << in1.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in1_ap_vld\" :  \"" << in1_ap_vld.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in2\" :  \"" << in2.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"in2_ap_ack\" :  \"" << in2_ap_ack.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in_out1_i\" :  \"" << in_out1_i.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in_out1_i_ap_vld\" :  \"" << in_out1_i_ap_vld.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"in_out1_i_ap_ack\" :  \"" << in_out1_i_ap_ack.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"in_out1_o\" :  \"" << in_out1_o.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"in_out1_o_ap_vld\" :  \"" << in_out1_o_ap_vld.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in_out1_o_ap_ack\" :  \"" << in_out1_o_ap_ack.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

