-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.1
-- Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity dct_Loop_Col_DCT_Loop_proc is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    col_inbuf_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    col_inbuf_ce0 : OUT STD_LOGIC;
    col_inbuf_q0 : IN STD_LOGIC_VECTOR (127 downto 0);
    col_outbuf_i_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    col_outbuf_i_ce0 : OUT STD_LOGIC;
    col_outbuf_i_we0 : OUT STD_LOGIC;
    col_outbuf_i_d0 : OUT STD_LOGIC_VECTOR (15 downto 0) );
end;


architecture behav of dct_Loop_Col_DCT_Loop_proc is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_st2_fsm_1 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_pp0_stg0_fsm_2 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_true : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv9_10 : STD_LOGIC_VECTOR (8 downto 0) := "000010000";
    constant ap_const_lv9_1F : STD_LOGIC_VECTOR (8 downto 0) := "000011111";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv32_2F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101111";
    constant ap_const_lv9_20 : STD_LOGIC_VECTOR (8 downto 0) := "000100000";
    constant ap_const_lv9_2F : STD_LOGIC_VECTOR (8 downto 0) := "000101111";
    constant ap_const_lv32_30 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110000";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv9_30 : STD_LOGIC_VECTOR (8 downto 0) := "000110000";
    constant ap_const_lv9_3F : STD_LOGIC_VECTOR (8 downto 0) := "000111111";
    constant ap_const_lv32_40 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001000000";
    constant ap_const_lv32_4F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001001111";
    constant ap_const_lv9_40 : STD_LOGIC_VECTOR (8 downto 0) := "001000000";
    constant ap_const_lv9_4F : STD_LOGIC_VECTOR (8 downto 0) := "001001111";
    constant ap_const_lv32_50 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001010000";
    constant ap_const_lv32_5F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001011111";
    constant ap_const_lv9_50 : STD_LOGIC_VECTOR (8 downto 0) := "001010000";
    constant ap_const_lv9_5F : STD_LOGIC_VECTOR (8 downto 0) := "001011111";
    constant ap_const_lv32_60 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001100000";
    constant ap_const_lv32_6F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001101111";
    constant ap_const_lv9_60 : STD_LOGIC_VECTOR (8 downto 0) := "001100000";
    constant ap_const_lv9_6F : STD_LOGIC_VECTOR (8 downto 0) := "001101111";
    constant ap_const_lv32_70 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001110000";
    constant ap_const_lv32_7E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001111110";
    constant ap_const_lv9_70 : STD_LOGIC_VECTOR (8 downto 0) := "001110000";
    constant ap_const_lv9_7F : STD_LOGIC_VECTOR (8 downto 0) := "001111111";
    constant ap_const_lv32_D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001101";
    constant ap_const_lv32_1C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011100";
    constant ap_const_lv29_1000 : STD_LOGIC_VECTOR (28 downto 0) := "00000000000000001000000000000";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_sig_cseq_ST_st1_fsm_0 : STD_LOGIC;
    signal ap_sig_21 : BOOLEAN;
    signal dct_coeff_table_address0 : STD_LOGIC_VECTOR (2 downto 0);
    signal dct_coeff_table_ce0 : STD_LOGIC;
    signal dct_coeff_table_q0 : STD_LOGIC_VECTOR (126 downto 0);
    signal k_i_reg_158 : STD_LOGIC_VECTOR (3 downto 0);
    signal exitcond2_i_fu_169_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_st2_fsm_1 : STD_LOGIC;
    signal ap_sig_57 : BOOLEAN;
    signal i_fu_175_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal i_reg_510 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_21_cast_fu_194_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_21_cast_reg_515 : STD_LOGIC_VECTOR (7 downto 0);
    signal col_inbuf_addr_reg_520 : STD_LOGIC_VECTOR (2 downto 0);
    signal exitcond1_i_fu_198_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond1_i_reg_525 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_pp0_stg0_fsm_2 : STD_LOGIC;
    signal ap_sig_75 : BOOLEAN;
    signal ap_reg_ppiten_pp0_it0 : STD_LOGIC := '0';
    signal ap_reg_ppiten_pp0_it1 : STD_LOGIC := '0';
    signal ap_reg_ppiten_pp0_it2 : STD_LOGIC := '0';
    signal ap_reg_ppiten_pp0_it3 : STD_LOGIC := '0';
    signal ap_reg_ppiten_pp0_it4 : STD_LOGIC := '0';
    signal ap_reg_ppstg_exitcond1_i_reg_525_pp0_iter1 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_reg_ppstg_exitcond1_i_reg_525_pp0_iter2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_reg_ppstg_exitcond1_i_reg_525_pp0_iter3 : STD_LOGIC_VECTOR (0 downto 0);
    signal k_fu_204_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_4_fu_219_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_4_reg_534 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_reg_ppstg_tmp_4_reg_534_pp0_iter1 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_reg_ppstg_tmp_4_reg_534_pp0_iter2 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_reg_ppstg_tmp_4_reg_534_pp0_iter3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_51_fu_224_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_51_reg_544 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_52_fu_228_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_52_reg_549 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_10_i_reg_554 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_reg_ppstg_tmp_10_i_reg_554_pp0_iter2 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_11_i_reg_559 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_reg_ppstg_tmp_11_i_reg_559_pp0_iter2 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_12_i_reg_564 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_13_i_reg_569 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_14_i_reg_574 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_reg_ppstg_tmp_14_i_reg_574_pp0_iter2 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_15_i_reg_579 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_reg_ppstg_tmp_15_i_reg_579_pp0_iter2 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_16_i_reg_584 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_17_i_reg_589 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_18_i_reg_594 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_reg_ppstg_tmp_18_i_reg_594_pp0_iter2 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_19_i_reg_599 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_reg_ppstg_tmp_19_i_reg_599_pp0_iter2 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_20_i_reg_604 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_21_i_reg_609 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_2_reg_614 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_23_i_reg_619 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_6_i_fu_500_p2 : STD_LOGIC_VECTOR (28 downto 0);
    signal tmp_6_i_reg_624 : STD_LOGIC_VECTOR (28 downto 0);
    signal tmp_6_2_i_fu_494_p2 : STD_LOGIC_VECTOR (28 downto 0);
    signal tmp_6_2_i_reg_629 : STD_LOGIC_VECTOR (28 downto 0);
    signal tmp_6_4_i_fu_488_p2 : STD_LOGIC_VECTOR (28 downto 0);
    signal tmp_6_4_i_reg_634 : STD_LOGIC_VECTOR (28 downto 0);
    signal grp_fu_448_p3 : STD_LOGIC_VECTOR (28 downto 0);
    signal tmp5_reg_639 : STD_LOGIC_VECTOR (28 downto 0);
    signal tmp_3_i_reg_644 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_2_i_reg_147 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_sig_172 : BOOLEAN;
    signal tmp_81_cast_i_fu_181_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_i_fu_210_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_22_cast_fu_444_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_s_fu_186_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_i_cast_fu_215_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_472_p3 : STD_LOGIC_VECTOR (28 downto 0);
    signal grp_fu_480_p3 : STD_LOGIC_VECTOR (28 downto 0);
    signal grp_fu_464_p3 : STD_LOGIC_VECTOR (28 downto 0);
    signal tmp3_fu_424_p2 : STD_LOGIC_VECTOR (28 downto 0);
    attribute use_dsp48 : string;
    attribute use_dsp48 of tmp3_fu_424_p2 : signal is "no";
    signal tmp_fu_420_p2 : STD_LOGIC_VECTOR (28 downto 0);
    attribute use_dsp48 of tmp_fu_420_p2 : signal is "no";
    signal tmp_i_32_fu_428_p2 : STD_LOGIC_VECTOR (28 downto 0);
    signal grp_fu_455_p3 : STD_LOGIC_VECTOR (28 downto 0);
    signal grp_fu_455_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);

    component dct_mac_muladd_16s_16s_29s_29_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (15 downto 0);
        din1 : IN STD_LOGIC_VECTOR (15 downto 0);
        din2 : IN STD_LOGIC_VECTOR (28 downto 0);
        dout : OUT STD_LOGIC_VECTOR (28 downto 0) );
    end component;


    component dct_mac_muladd_16s_15s_14ns_29_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (15 downto 0);
        din1 : IN STD_LOGIC_VECTOR (14 downto 0);
        din2 : IN STD_LOGIC_VECTOR (13 downto 0);
        dout : OUT STD_LOGIC_VECTOR (28 downto 0) );
    end component;


    component dct_mul_mul_16s_16s_29_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (15 downto 0);
        din1 : IN STD_LOGIC_VECTOR (15 downto 0);
        dout : OUT STD_LOGIC_VECTOR (28 downto 0) );
    end component;


    component dct_Loop_Row_DCT_Loop_proc_dct_coeff_table IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (2 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (126 downto 0) );
    end component;



begin
    dct_coeff_table_U : component dct_Loop_Row_DCT_Loop_proc_dct_coeff_table
    generic map (
        DataWidth => 127,
        AddressRange => 8,
        AddressWidth => 3)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => dct_coeff_table_address0,
        ce0 => dct_coeff_table_ce0,
        q0 => dct_coeff_table_q0);

    dct_mac_muladd_16s_16s_29s_29_1_U15 : component dct_mac_muladd_16s_16s_29s_29_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        din2_WIDTH => 29,
        dout_WIDTH => 29)
    port map (
        din0 => tmp_20_i_reg_604,
        din1 => tmp_21_i_reg_609,
        din2 => grp_fu_455_p3,
        dout => grp_fu_448_p3);

    dct_mac_muladd_16s_15s_14ns_29_1_U16 : component dct_mac_muladd_16s_15s_14ns_29_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 16,
        din1_WIDTH => 15,
        din2_WIDTH => 14,
        dout_WIDTH => 29)
    port map (
        din0 => tmp_23_i_reg_619,
        din1 => tmp_2_reg_614,
        din2 => grp_fu_455_p2,
        dout => grp_fu_455_p3);

    dct_mac_muladd_16s_16s_29s_29_1_U17 : component dct_mac_muladd_16s_16s_29s_29_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        din2_WIDTH => 29,
        dout_WIDTH => 29)
    port map (
        din0 => ap_reg_ppstg_tmp_18_i_reg_594_pp0_iter2,
        din1 => ap_reg_ppstg_tmp_19_i_reg_599_pp0_iter2,
        din2 => tmp_6_4_i_reg_634,
        dout => grp_fu_464_p3);

    dct_mac_muladd_16s_16s_29s_29_1_U18 : component dct_mac_muladd_16s_16s_29s_29_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        din2_WIDTH => 29,
        dout_WIDTH => 29)
    port map (
        din0 => ap_reg_ppstg_tmp_14_i_reg_574_pp0_iter2,
        din1 => ap_reg_ppstg_tmp_15_i_reg_579_pp0_iter2,
        din2 => tmp_6_2_i_reg_629,
        dout => grp_fu_472_p3);

    dct_mac_muladd_16s_16s_29s_29_1_U19 : component dct_mac_muladd_16s_16s_29s_29_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        din2_WIDTH => 29,
        dout_WIDTH => 29)
    port map (
        din0 => ap_reg_ppstg_tmp_10_i_reg_554_pp0_iter2,
        din1 => ap_reg_ppstg_tmp_11_i_reg_559_pp0_iter2,
        din2 => tmp_6_i_reg_624,
        dout => grp_fu_480_p3);

    dct_mul_mul_16s_16s_29_1_U20 : component dct_mul_mul_16s_16s_29_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        dout_WIDTH => 29)
    port map (
        din0 => tmp_16_i_reg_584,
        din1 => tmp_17_i_reg_589,
        dout => tmp_6_4_i_fu_488_p2);

    dct_mul_mul_16s_16s_29_1_U21 : component dct_mul_mul_16s_16s_29_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        dout_WIDTH => 29)
    port map (
        din0 => tmp_12_i_reg_564,
        din1 => tmp_13_i_reg_569,
        dout => tmp_6_2_i_fu_494_p2);

    dct_mul_mul_16s_16s_29_1_U22 : component dct_mul_mul_16s_16s_29_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        dout_WIDTH => 29)
    port map (
        din0 => tmp_51_reg_544,
        din1 => tmp_52_reg_549,
        dout => tmp_6_i_fu_500_p2);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_st1_fsm_0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_continue)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((exitcond2_i_fu_169_p2 = ap_const_lv1_0)))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_reg_ppiten_pp0_it0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and not((ap_const_lv1_0 = exitcond1_i_fu_198_p2)))) then 
                    ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (exitcond2_i_fu_169_p2 = ap_const_lv1_0))) then 
                    ap_reg_ppiten_pp0_it0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_reg_ppiten_pp0_it1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and (ap_const_lv1_0 = exitcond1_i_fu_198_p2))) then 
                    ap_reg_ppiten_pp0_it1 <= ap_const_logic_1;
                elsif ((((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (exitcond2_i_fu_169_p2 = ap_const_lv1_0)) or ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and not((ap_const_lv1_0 = exitcond1_i_fu_198_p2))))) then 
                    ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    ap_reg_ppiten_pp0_it2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ppiten_pp0_it2 <= ap_const_logic_0;
            else
                ap_reg_ppiten_pp0_it2 <= ap_reg_ppiten_pp0_it1;
            end if;
        end if;
    end process;


    ap_reg_ppiten_pp0_it3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ppiten_pp0_it3 <= ap_const_logic_0;
            else
                ap_reg_ppiten_pp0_it3 <= ap_reg_ppiten_pp0_it2;
            end if;
        end if;
    end process;


    ap_reg_ppiten_pp0_it4_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ppiten_pp0_it4 <= ap_const_logic_0;
            else
                ap_reg_ppiten_pp0_it4 <= ap_reg_ppiten_pp0_it3;
            end if;
        end if;
    end process;


    i_2_i_reg_147_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not((ap_const_lv1_0 = exitcond1_i_fu_198_p2)))) then 
                i_2_i_reg_147 <= i_reg_510;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not(ap_sig_172))) then 
                i_2_i_reg_147 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;

    k_i_reg_158_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (ap_const_lv1_0 = exitcond1_i_fu_198_p2))) then 
                k_i_reg_158 <= k_fu_204_p2;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (exitcond2_i_fu_169_p2 = ap_const_lv1_0))) then 
                k_i_reg_158 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2)) then
                ap_reg_ppstg_exitcond1_i_reg_525_pp0_iter1 <= exitcond1_i_reg_525;
                ap_reg_ppstg_tmp_4_reg_534_pp0_iter1 <= tmp_4_reg_534;
                exitcond1_i_reg_525 <= exitcond1_i_fu_198_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_true = ap_true)) then
                ap_reg_ppstg_exitcond1_i_reg_525_pp0_iter2 <= ap_reg_ppstg_exitcond1_i_reg_525_pp0_iter1;
                ap_reg_ppstg_exitcond1_i_reg_525_pp0_iter3 <= ap_reg_ppstg_exitcond1_i_reg_525_pp0_iter2;
                ap_reg_ppstg_tmp_10_i_reg_554_pp0_iter2 <= tmp_10_i_reg_554;
                ap_reg_ppstg_tmp_11_i_reg_559_pp0_iter2 <= tmp_11_i_reg_559;
                ap_reg_ppstg_tmp_14_i_reg_574_pp0_iter2 <= tmp_14_i_reg_574;
                ap_reg_ppstg_tmp_15_i_reg_579_pp0_iter2 <= tmp_15_i_reg_579;
                ap_reg_ppstg_tmp_18_i_reg_594_pp0_iter2 <= tmp_18_i_reg_594;
                ap_reg_ppstg_tmp_19_i_reg_599_pp0_iter2 <= tmp_19_i_reg_599;
                ap_reg_ppstg_tmp_4_reg_534_pp0_iter2 <= ap_reg_ppstg_tmp_4_reg_534_pp0_iter1;
                ap_reg_ppstg_tmp_4_reg_534_pp0_iter3 <= ap_reg_ppstg_tmp_4_reg_534_pp0_iter2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (exitcond2_i_fu_169_p2 = ap_const_lv1_0))) then
                col_inbuf_addr_reg_520 <= tmp_81_cast_i_fu_181_p1(3 - 1 downto 0);
                    tmp_21_cast_reg_515(6 downto 3) <= tmp_21_cast_fu_194_p1(6 downto 3);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1)) then
                i_reg_510 <= i_fu_175_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_reg_ppiten_pp0_it2) and (ap_const_lv1_0 = ap_reg_ppstg_exitcond1_i_reg_525_pp0_iter1))) then
                tmp5_reg_639 <= grp_fu_448_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and (ap_const_lv1_0 = exitcond1_i_reg_525))) then
                tmp_10_i_reg_554 <= dct_coeff_table_q0(31 downto 16);
                tmp_11_i_reg_559 <= col_inbuf_q0(31 downto 16);
                tmp_12_i_reg_564 <= dct_coeff_table_q0(47 downto 32);
                tmp_13_i_reg_569 <= col_inbuf_q0(47 downto 32);
                tmp_14_i_reg_574 <= dct_coeff_table_q0(63 downto 48);
                tmp_15_i_reg_579 <= col_inbuf_q0(63 downto 48);
                tmp_16_i_reg_584 <= dct_coeff_table_q0(79 downto 64);
                tmp_17_i_reg_589 <= col_inbuf_q0(79 downto 64);
                tmp_18_i_reg_594 <= dct_coeff_table_q0(95 downto 80);
                tmp_19_i_reg_599 <= col_inbuf_q0(95 downto 80);
                tmp_20_i_reg_604 <= dct_coeff_table_q0(111 downto 96);
                tmp_21_i_reg_609 <= col_inbuf_q0(111 downto 96);
                tmp_23_i_reg_619 <= col_inbuf_q0(127 downto 112);
                tmp_2_reg_614 <= dct_coeff_table_q0(126 downto 112);
                tmp_51_reg_544 <= tmp_51_fu_224_p1;
                tmp_52_reg_549 <= tmp_52_fu_228_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_lv1_0 = ap_reg_ppstg_exitcond1_i_reg_525_pp0_iter2)) then
                tmp_3_i_reg_644 <= tmp_i_32_fu_428_p2(28 downto 13);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and (ap_const_lv1_0 = exitcond1_i_fu_198_p2))) then
                tmp_4_reg_534 <= tmp_4_fu_219_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_lv1_0 = ap_reg_ppstg_exitcond1_i_reg_525_pp0_iter1)) then
                tmp_6_2_i_reg_629 <= tmp_6_2_i_fu_494_p2;
                tmp_6_4_i_reg_634 <= tmp_6_4_i_fu_488_p2;
                tmp_6_i_reg_624 <= tmp_6_i_fu_500_p2;
            end if;
        end if;
    end process;
    tmp_21_cast_reg_515(2 downto 0) <= "000";
    tmp_21_cast_reg_515(7) <= '0';

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, exitcond2_i_fu_169_p2, exitcond1_i_fu_198_p2, ap_reg_ppiten_pp0_it0, ap_reg_ppiten_pp0_it1, ap_reg_ppiten_pp0_it3, ap_reg_ppiten_pp0_it4, ap_sig_172)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                if (not(ap_sig_172)) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                end if;
            when ap_ST_st2_fsm_1 => 
                if (not((exitcond2_i_fu_169_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                else
                    ap_NS_fsm <= ap_ST_pp0_stg0_fsm_2;
                end if;
            when ap_ST_pp0_stg0_fsm_2 => 
                if ((not(((ap_const_logic_1 = ap_reg_ppiten_pp0_it4) and not((ap_const_logic_1 = ap_reg_ppiten_pp0_it3)))) and not(((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not((ap_const_lv1_0 = exitcond1_i_fu_198_p2)) and not((ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))))) then
                    ap_NS_fsm <= ap_ST_pp0_stg0_fsm_2;
                elsif (((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not((ap_const_lv1_0 = exitcond1_i_fu_198_p2)) and not((ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                end if;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;

    ap_done_assign_proc : process(ap_done_reg, exitcond2_i_fu_169_p2, ap_sig_cseq_ST_st2_fsm_1)
    begin
        if (((ap_const_logic_1 = ap_done_reg) or ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((exitcond2_i_fu_169_p2 = ap_const_lv1_0))))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_sig_cseq_ST_st1_fsm_0)
    begin
        if (((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(exitcond2_i_fu_169_p2, ap_sig_cseq_ST_st2_fsm_1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((exitcond2_i_fu_169_p2 = ap_const_lv1_0)))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_172_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_sig_172 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_sig_21_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_21 <= (ap_CS_fsm(0 downto 0) = ap_const_lv1_1);
    end process;


    ap_sig_57_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_57 <= (ap_const_lv1_1 = ap_CS_fsm(1 downto 1));
    end process;


    ap_sig_75_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_75 <= (ap_const_lv1_1 = ap_CS_fsm(2 downto 2));
    end process;


    ap_sig_cseq_ST_pp0_stg0_fsm_2_assign_proc : process(ap_sig_75)
    begin
        if (ap_sig_75) then 
            ap_sig_cseq_ST_pp0_stg0_fsm_2 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_pp0_stg0_fsm_2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st1_fsm_0_assign_proc : process(ap_sig_21)
    begin
        if (ap_sig_21) then 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st2_fsm_1_assign_proc : process(ap_sig_57)
    begin
        if (ap_sig_57) then 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_0;
        end if; 
    end process;

    col_inbuf_address0 <= col_inbuf_addr_reg_520;

    col_inbuf_ce0_assign_proc : process(ap_sig_cseq_ST_pp0_stg0_fsm_2, ap_reg_ppiten_pp0_it0)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0))) then 
            col_inbuf_ce0 <= ap_const_logic_1;
        else 
            col_inbuf_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    col_outbuf_i_address0 <= tmp_22_cast_fu_444_p1(6 - 1 downto 0);

    col_outbuf_i_ce0_assign_proc : process(ap_reg_ppiten_pp0_it4)
    begin
        if ((ap_const_logic_1 = ap_reg_ppiten_pp0_it4)) then 
            col_outbuf_i_ce0 <= ap_const_logic_1;
        else 
            col_outbuf_i_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    col_outbuf_i_d0 <= tmp_3_i_reg_644;

    col_outbuf_i_we0_assign_proc : process(ap_reg_ppiten_pp0_it4, ap_reg_ppstg_exitcond1_i_reg_525_pp0_iter3)
    begin
        if ((((ap_const_logic_1 = ap_reg_ppiten_pp0_it4) and (ap_const_lv1_0 = ap_reg_ppstg_exitcond1_i_reg_525_pp0_iter3)))) then 
            col_outbuf_i_we0 <= ap_const_logic_1;
        else 
            col_outbuf_i_we0 <= ap_const_logic_0;
        end if; 
    end process;

    dct_coeff_table_address0 <= tmp_i_fu_210_p1(3 - 1 downto 0);

    dct_coeff_table_ce0_assign_proc : process(ap_sig_cseq_ST_pp0_stg0_fsm_2, ap_reg_ppiten_pp0_it0)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0))) then 
            dct_coeff_table_ce0 <= ap_const_logic_1;
        else 
            dct_coeff_table_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    exitcond1_i_fu_198_p2 <= "1" when (k_i_reg_158 = ap_const_lv4_8) else "0";
    exitcond2_i_fu_169_p2 <= "1" when (i_2_i_reg_147 = ap_const_lv4_8) else "0";
    grp_fu_455_p2 <= ap_const_lv29_1000(14 - 1 downto 0);
    i_fu_175_p2 <= std_logic_vector(unsigned(i_2_i_reg_147) + unsigned(ap_const_lv4_1));
    k_fu_204_p2 <= std_logic_vector(unsigned(k_i_reg_158) + unsigned(ap_const_lv4_1));
    tmp3_fu_424_p2 <= std_logic_vector(signed(tmp5_reg_639) + signed(grp_fu_464_p3));
    tmp_21_cast_fu_194_p1 <= std_logic_vector(resize(unsigned(tmp_s_fu_186_p3),8));
    tmp_22_cast_fu_444_p1 <= std_logic_vector(resize(unsigned(ap_reg_ppstg_tmp_4_reg_534_pp0_iter3),64));
    tmp_4_fu_219_p2 <= std_logic_vector(unsigned(tmp_i_cast_fu_215_p1) + unsigned(tmp_21_cast_reg_515));
    tmp_51_fu_224_p1 <= dct_coeff_table_q0(16 - 1 downto 0);
    tmp_52_fu_228_p1 <= col_inbuf_q0(16 - 1 downto 0);
    tmp_81_cast_i_fu_181_p1 <= std_logic_vector(resize(unsigned(i_2_i_reg_147),64));
    tmp_fu_420_p2 <= std_logic_vector(signed(grp_fu_472_p3) + signed(grp_fu_480_p3));
    tmp_i_32_fu_428_p2 <= std_logic_vector(unsigned(tmp3_fu_424_p2) + unsigned(tmp_fu_420_p2));
    tmp_i_cast_fu_215_p1 <= std_logic_vector(resize(unsigned(k_i_reg_158),8));
    tmp_i_fu_210_p1 <= std_logic_vector(resize(unsigned(k_i_reg_158),64));
    tmp_s_fu_186_p3 <= (i_2_i_reg_147 & ap_const_lv3_0);
end behav;
