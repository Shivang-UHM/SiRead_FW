--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: BMD_DC_TOP_V2_synthesis.vhd
-- /___/   /\     Timestamp: Wed Aug 01 20:14:26 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -filter C:/Users/Kevin/Dropbox/EIC-Beamtest-FW/mRICH_hodo_DC_V1/mRICH_hodo_DC_V1/hodo_dc_v1/iseconfig/filter.filter -intstyle ise -ar Structure -tm BMD_DC_TOP_V2 -w -dir netgen/synthesis -ofmt vhdl -sim BMD_DC_TOP_V2.ngc BMD_DC_TOP_V2_synthesis.vhd 
-- Device	: xc6slx4-2-tqg144
-- Input file	: BMD_DC_TOP_V2.ngc
-- Output file	: C:\Users\Kevin\Dropbox\EIC-Beamtest-FW\mRICH_hodo_DC_V1\mRICH_hodo_DC_V1\ise\netgen\synthesis\BMD_DC_TOP_V2_synthesis.vhd
-- # of Entities	: 10
-- Design Name	: BMD_DC_TOP_V2
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------


-- synthesis translate_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity mppc_bias_dac_AD5672R is
  port (
    clk : in STD_LOGIC := 'X'; 
    UPDATE : in STD_LOGIC := 'X'; 
    LDAC : out STD_LOGIC; 
    busy : out STD_LOGIC; 
    SCLK : out STD_LOGIC; 
    SYNC : out STD_LOGIC; 
    DIN : out STD_LOGIC; 
    addr : in STD_LOGIC_VECTOR ( 4 downto 0 ); 
    val : in STD_LOGIC_VECTOR ( 11 downto 0 ) 
  );
end mppc_bias_dac_AD5672R;

architecture Structure of mppc_bias_dac_AD5672R is
  signal st_FSM_FFd1_2744 : STD_LOGIC; 
  signal st_FSM_FFd2_2745 : STD_LOGIC; 
  signal st_FSM_FFd3_2746 : STD_LOGIC; 
  signal st_2_LDAC_Mux_15_o : STD_LOGIC; 
  signal st_2_SYNC_Mux_14_o : STD_LOGIC; 
  signal st_2_SCLK_Mux_13_o : STD_LOGIC; 
  signal NlwRenamedSig_OI_DIN : STD_LOGIC; 
  signal NlwRenamedSig_OI_busy : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal data_47_data_47_mux_6_OUT_47_Q : STD_LOGIC; 
  signal data_47_data_47_mux_6_OUT_46_Q : STD_LOGIC; 
  signal data_47_data_47_mux_6_OUT_45_Q : STD_LOGIC; 
  signal data_47_data_47_mux_6_OUT_44_Q : STD_LOGIC; 
  signal data_47_data_47_mux_6_OUT_43_Q : STD_LOGIC; 
  signal data_47_data_47_mux_6_OUT_42_Q : STD_LOGIC; 
  signal data_47_data_47_mux_6_OUT_41_Q : STD_LOGIC; 
  signal data_47_data_47_mux_6_OUT_40_Q : STD_LOGIC; 
  signal data_47_data_47_mux_6_OUT_39_Q : STD_LOGIC; 
  signal data_47_data_47_mux_6_OUT_38_Q : STD_LOGIC; 
  signal data_47_data_47_mux_6_OUT_37_Q : STD_LOGIC; 
  signal data_47_data_47_mux_6_OUT_36_Q : STD_LOGIC; 
  signal data_47_data_47_mux_6_OUT_35_Q : STD_LOGIC; 
  signal data_47_data_47_mux_6_OUT_34_Q : STD_LOGIC; 
  signal data_47_data_47_mux_6_OUT_33_Q : STD_LOGIC; 
  signal data_47_data_47_mux_6_OUT_32_Q : STD_LOGIC; 
  signal data_47_data_47_mux_6_OUT_31_Q : STD_LOGIC; 
  signal data_47_data_47_mux_6_OUT_30_Q : STD_LOGIC; 
  signal data_47_data_47_mux_6_OUT_29_Q : STD_LOGIC; 
  signal data_47_data_47_mux_6_OUT_28_Q : STD_LOGIC; 
  signal data_47_data_47_mux_6_OUT_27_Q : STD_LOGIC; 
  signal data_47_data_47_mux_6_OUT_26_Q : STD_LOGIC; 
  signal data_47_data_47_mux_6_OUT_25_Q : STD_LOGIC; 
  signal data_47_data_47_mux_6_OUT_24_Q : STD_LOGIC; 
  signal data_47_data_47_mux_6_OUT_20_Q : STD_LOGIC; 
  signal data_47_data_47_mux_6_OUT_18_Q : STD_LOGIC; 
  signal data_47_data_47_mux_6_OUT_17_Q : STD_LOGIC; 
  signal data_47_data_47_mux_6_OUT_16_Q : STD_LOGIC; 
  signal data_47_data_47_mux_6_OUT_15_Q : STD_LOGIC; 
  signal data_47_data_47_mux_6_OUT_14_Q : STD_LOGIC; 
  signal data_47_data_47_mux_6_OUT_13_Q : STD_LOGIC; 
  signal data_47_data_47_mux_6_OUT_12_Q : STD_LOGIC; 
  signal data_47_data_47_mux_6_OUT_11_Q : STD_LOGIC; 
  signal data_47_data_47_mux_6_OUT_10_Q : STD_LOGIC; 
  signal data_47_data_47_mux_6_OUT_9_Q : STD_LOGIC; 
  signal data_47_data_47_mux_6_OUT_8_Q : STD_LOGIC; 
  signal data_47_data_47_mux_6_OUT_7_Q : STD_LOGIC; 
  signal data_47_data_47_mux_6_OUT_6_Q : STD_LOGIC; 
  signal data_47_data_47_mux_6_OUT_5_Q : STD_LOGIC; 
  signal data_47_data_47_mux_6_OUT_4_Q : STD_LOGIC; 
  signal st_2_DIN_Mux_16_o : STD_LOGIC; 
  signal Q_n0058 : STD_LOGIC; 
  signal n0009 : STD_LOGIC; 
  signal Q_n0081_inv : STD_LOGIC; 
  signal st_FSM_FFd3_In : STD_LOGIC; 
  signal st_FSM_FFd2_In : STD_LOGIC; 
  signal st_FSM_FFd1_In : STD_LOGIC; 
  signal st_1_inv : STD_LOGIC; 
  signal Q_n0127_inv : STD_LOGIC; 
  signal Mcount_bit_cnt : STD_LOGIC; 
  signal Mcount_bit_cnt1 : STD_LOGIC; 
  signal Mcount_bit_cnt2 : STD_LOGIC; 
  signal Mcount_bit_cnt3 : STD_LOGIC; 
  signal Mcount_bit_cnt4 : STD_LOGIC; 
  signal Mcount_bit_cnt5 : STD_LOGIC; 
  signal Mmux_bit_cnt_5_X_86_o_Mux_10_o_123_2876 : STD_LOGIC; 
  signal Mmux_bit_cnt_5_X_86_o_Mux_10_o_114_2877 : STD_LOGIC; 
  signal Mmux_bit_cnt_5_X_86_o_Mux_10_o_113_2878 : STD_LOGIC; 
  signal Mmux_bit_cnt_5_X_86_o_Mux_10_o_101_2879 : STD_LOGIC; 
  signal Mmux_bit_cnt_5_X_86_o_Mux_10_o_5_f7_2880 : STD_LOGIC; 
  signal Mmux_bit_cnt_5_X_86_o_Mux_10_o_7_2881 : STD_LOGIC; 
  signal Mmux_bit_cnt_5_X_86_o_Mux_10_o_13_2882 : STD_LOGIC; 
  signal Mmux_bit_cnt_5_X_86_o_Mux_10_o_122_2883 : STD_LOGIC; 
  signal Mmux_bit_cnt_5_X_86_o_Mux_10_o_121_2884 : STD_LOGIC; 
  signal Mmux_bit_cnt_5_X_86_o_Mux_10_o_112_2885 : STD_LOGIC; 
  signal Mmux_bit_cnt_5_X_86_o_Mux_10_o_6_2886 : STD_LOGIC; 
  signal Mmux_bit_cnt_5_X_86_o_Mux_10_o_12_2887 : STD_LOGIC; 
  signal Mmux_bit_cnt_5_X_86_o_Mux_10_o_111_2888 : STD_LOGIC; 
  signal Mmux_bit_cnt_5_X_86_o_Mux_10_o_11_2889 : STD_LOGIC; 
  signal Mmux_bit_cnt_5_X_86_o_Mux_10_o_10_2890 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal busy_rstpot_2892 : STD_LOGIC; 
  signal DIN_rstpot_2893 : STD_LOGIC; 
  signal bit_cnt : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal data : STD_LOGIC_VECTOR ( 47 downto 0 ); 
  signal Mcount_bit_cnt_lut : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal Mcount_bit_cnt_cy : STD_LOGIC_VECTOR ( 4 downto 0 ); 
begin
  busy <= NlwRenamedSig_OI_busy;
  DIN <= NlwRenamedSig_OI_DIN;
  XST_GND : GND
    port map (
      G => data(22)
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  SYNC_2624 : FDE
    port map (
      C => clk,
      CE => Q_n0081_inv,
      D => st_2_SYNC_Mux_14_o,
      Q => SYNC
    );
  LDAC_2625 : FDE
    port map (
      C => clk,
      CE => Q_n0081_inv,
      D => st_2_LDAC_Mux_15_o,
      Q => LDAC
    );
  SCLK_2626 : FDE
    port map (
      C => clk,
      CE => Q_n0081_inv,
      D => st_2_SCLK_Mux_13_o,
      Q => SCLK
    );
  data_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => addr(4),
      Q => data(0)
    );
  data_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => addr(4),
      Q => data(1)
    );
  data_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => addr(4),
      Q => data(2)
    );
  data_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => addr(4),
      Q => data(3)
    );
  data_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => data_47_data_47_mux_6_OUT_4_Q,
      Q => data(4)
    );
  data_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => data_47_data_47_mux_6_OUT_5_Q,
      Q => data(5)
    );
  data_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => data_47_data_47_mux_6_OUT_6_Q,
      Q => data(6)
    );
  data_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => data_47_data_47_mux_6_OUT_7_Q,
      Q => data(7)
    );
  data_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => data_47_data_47_mux_6_OUT_8_Q,
      Q => data(8)
    );
  data_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => data_47_data_47_mux_6_OUT_9_Q,
      Q => data(9)
    );
  data_10 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => data_47_data_47_mux_6_OUT_10_Q,
      Q => data(10)
    );
  data_11 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => data_47_data_47_mux_6_OUT_11_Q,
      Q => data(11)
    );
  data_12 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => data_47_data_47_mux_6_OUT_12_Q,
      Q => data(12)
    );
  data_13 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => data_47_data_47_mux_6_OUT_13_Q,
      Q => data(13)
    );
  data_14 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => data_47_data_47_mux_6_OUT_14_Q,
      Q => data(14)
    );
  data_15 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => data_47_data_47_mux_6_OUT_15_Q,
      Q => data(15)
    );
  data_16 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => data_47_data_47_mux_6_OUT_16_Q,
      Q => data(16)
    );
  data_17 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => data_47_data_47_mux_6_OUT_17_Q,
      Q => data(17)
    );
  data_18 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => data_47_data_47_mux_6_OUT_18_Q,
      Q => data(18)
    );
  data_19 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => addr(4),
      Q => data(19)
    );
  data_20 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => data_47_data_47_mux_6_OUT_20_Q,
      Q => data(20)
    );
  data_21 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => data_47_data_47_mux_6_OUT_20_Q,
      Q => data(21)
    );
  data_23 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => addr(4),
      Q => data(23)
    );
  data_24 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => data_47_data_47_mux_6_OUT_24_Q,
      Q => data(24)
    );
  data_25 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => data_47_data_47_mux_6_OUT_25_Q,
      Q => data(25)
    );
  data_26 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => data_47_data_47_mux_6_OUT_26_Q,
      Q => data(26)
    );
  data_27 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => data_47_data_47_mux_6_OUT_27_Q,
      Q => data(27)
    );
  data_28 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => data_47_data_47_mux_6_OUT_28_Q,
      Q => data(28)
    );
  data_29 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => data_47_data_47_mux_6_OUT_29_Q,
      Q => data(29)
    );
  data_30 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => data_47_data_47_mux_6_OUT_30_Q,
      Q => data(30)
    );
  data_31 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => data_47_data_47_mux_6_OUT_31_Q,
      Q => data(31)
    );
  data_32 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => data_47_data_47_mux_6_OUT_32_Q,
      Q => data(32)
    );
  data_33 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => data_47_data_47_mux_6_OUT_33_Q,
      Q => data(33)
    );
  data_34 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => data_47_data_47_mux_6_OUT_34_Q,
      Q => data(34)
    );
  data_35 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => data_47_data_47_mux_6_OUT_35_Q,
      Q => data(35)
    );
  data_36 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => data_47_data_47_mux_6_OUT_36_Q,
      Q => data(36)
    );
  data_37 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => data_47_data_47_mux_6_OUT_37_Q,
      Q => data(37)
    );
  data_38 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => data_47_data_47_mux_6_OUT_38_Q,
      Q => data(38)
    );
  data_39 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => data_47_data_47_mux_6_OUT_39_Q,
      Q => data(39)
    );
  data_40 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => data_47_data_47_mux_6_OUT_40_Q,
      Q => data(40)
    );
  data_41 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => data_47_data_47_mux_6_OUT_41_Q,
      Q => data(41)
    );
  data_42 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => data_47_data_47_mux_6_OUT_42_Q,
      Q => data(42)
    );
  data_43 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => data_47_data_47_mux_6_OUT_43_Q,
      Q => data(43)
    );
  data_44 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => data_47_data_47_mux_6_OUT_44_Q,
      Q => data(44)
    );
  data_45 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => data_47_data_47_mux_6_OUT_45_Q,
      Q => data(45)
    );
  data_46 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => data_47_data_47_mux_6_OUT_46_Q,
      Q => data(46)
    );
  data_47 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0058,
      D => data_47_data_47_mux_6_OUT_47_Q,
      Q => data(47)
    );
  Mcount_bit_cnt_cy_0_Q : MUXCY
    port map (
      CI => st_1_inv,
      DI => N1,
      S => Mcount_bit_cnt_lut(0),
      O => Mcount_bit_cnt_cy(0)
    );
  Mcount_bit_cnt_xor_0_Q : XORCY
    port map (
      CI => st_1_inv,
      LI => Mcount_bit_cnt_lut(0),
      O => Mcount_bit_cnt
    );
  Mcount_bit_cnt_cy_1_Q : MUXCY
    port map (
      CI => Mcount_bit_cnt_cy(0),
      DI => N1,
      S => Mcount_bit_cnt_lut(1),
      O => Mcount_bit_cnt_cy(1)
    );
  Mcount_bit_cnt_xor_1_Q : XORCY
    port map (
      CI => Mcount_bit_cnt_cy(0),
      LI => Mcount_bit_cnt_lut(1),
      O => Mcount_bit_cnt1
    );
  Mcount_bit_cnt_cy_2_Q : MUXCY
    port map (
      CI => Mcount_bit_cnt_cy(1),
      DI => N1,
      S => Mcount_bit_cnt_lut(2),
      O => Mcount_bit_cnt_cy(2)
    );
  Mcount_bit_cnt_xor_2_Q : XORCY
    port map (
      CI => Mcount_bit_cnt_cy(1),
      LI => Mcount_bit_cnt_lut(2),
      O => Mcount_bit_cnt2
    );
  Mcount_bit_cnt_cy_3_Q : MUXCY
    port map (
      CI => Mcount_bit_cnt_cy(2),
      DI => N1,
      S => Mcount_bit_cnt_lut(3),
      O => Mcount_bit_cnt_cy(3)
    );
  Mcount_bit_cnt_xor_3_Q : XORCY
    port map (
      CI => Mcount_bit_cnt_cy(2),
      LI => Mcount_bit_cnt_lut(3),
      O => Mcount_bit_cnt3
    );
  Mcount_bit_cnt_cy_4_Q : MUXCY
    port map (
      CI => Mcount_bit_cnt_cy(3),
      DI => N1,
      S => Mcount_bit_cnt_lut(4),
      O => Mcount_bit_cnt_cy(4)
    );
  Mcount_bit_cnt_xor_4_Q : XORCY
    port map (
      CI => Mcount_bit_cnt_cy(3),
      LI => Mcount_bit_cnt_lut(4),
      O => Mcount_bit_cnt4
    );
  Mcount_bit_cnt_xor_5_Q : XORCY
    port map (
      CI => Mcount_bit_cnt_cy(4),
      LI => Mcount_bit_cnt_lut(5),
      O => Mcount_bit_cnt5
    );
  st_FSM_FFd3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => st_FSM_FFd3_In,
      Q => st_FSM_FFd3_2746
    );
  st_FSM_FFd2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => st_FSM_FFd2_In,
      Q => st_FSM_FFd2_2745
    );
  st_FSM_FFd1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => st_FSM_FFd1_In,
      Q => st_FSM_FFd1_2744
    );
  bit_cnt_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0127_inv,
      D => Mcount_bit_cnt,
      Q => bit_cnt(0)
    );
  bit_cnt_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0127_inv,
      D => Mcount_bit_cnt1,
      Q => bit_cnt(1)
    );
  bit_cnt_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0127_inv,
      D => Mcount_bit_cnt2,
      Q => bit_cnt(2)
    );
  bit_cnt_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0127_inv,
      D => Mcount_bit_cnt3,
      Q => bit_cnt(3)
    );
  bit_cnt_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0127_inv,
      D => Mcount_bit_cnt4,
      Q => bit_cnt(4)
    );
  bit_cnt_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => Q_n0127_inv,
      D => Mcount_bit_cnt5,
      Q => bit_cnt(5)
    );
  Mmux_bit_cnt_5_X_86_o_Mux_10_o_123 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => bit_cnt(1),
      I1 => bit_cnt(0),
      I2 => data(46),
      I3 => data(47),
      I4 => data(45),
      I5 => data(44),
      O => Mmux_bit_cnt_5_X_86_o_Mux_10_o_123_2876
    );
  Mmux_bit_cnt_5_X_86_o_Mux_10_o_114 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => bit_cnt(1),
      I1 => bit_cnt(0),
      I2 => data(42),
      I3 => data(43),
      I4 => data(41),
      I5 => data(40),
      O => Mmux_bit_cnt_5_X_86_o_Mux_10_o_114_2877
    );
  Mmux_bit_cnt_5_X_86_o_Mux_10_o_113 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => bit_cnt(1),
      I1 => bit_cnt(0),
      I2 => data(38),
      I3 => data(39),
      I4 => data(37),
      I5 => data(36),
      O => Mmux_bit_cnt_5_X_86_o_Mux_10_o_113_2878
    );
  Mmux_bit_cnt_5_X_86_o_Mux_10_o_101 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => bit_cnt(1),
      I1 => bit_cnt(0),
      I2 => data(34),
      I3 => data(35),
      I4 => data(33),
      I5 => data(32),
      O => Mmux_bit_cnt_5_X_86_o_Mux_10_o_101_2879
    );
  Mmux_bit_cnt_5_X_86_o_Mux_10_o_7 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => bit_cnt(3),
      I1 => bit_cnt(2),
      I2 => Mmux_bit_cnt_5_X_86_o_Mux_10_o_122_2883,
      I3 => Mmux_bit_cnt_5_X_86_o_Mux_10_o_13_2882,
      I4 => Mmux_bit_cnt_5_X_86_o_Mux_10_o_121_2884,
      I5 => Mmux_bit_cnt_5_X_86_o_Mux_10_o_112_2885,
      O => Mmux_bit_cnt_5_X_86_o_Mux_10_o_7_2881
    );
  Mmux_bit_cnt_5_X_86_o_Mux_10_o_13 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => bit_cnt(1),
      I1 => bit_cnt(0),
      I2 => data(14),
      I3 => data(15),
      I4 => data(13),
      I5 => data(12),
      O => Mmux_bit_cnt_5_X_86_o_Mux_10_o_13_2882
    );
  Mmux_bit_cnt_5_X_86_o_Mux_10_o_122 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => bit_cnt(1),
      I1 => bit_cnt(0),
      I2 => data(10),
      I3 => data(11),
      I4 => data(9),
      I5 => data(8),
      O => Mmux_bit_cnt_5_X_86_o_Mux_10_o_122_2883
    );
  Mmux_bit_cnt_5_X_86_o_Mux_10_o_121 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => bit_cnt(1),
      I1 => bit_cnt(0),
      I2 => data(6),
      I3 => data(7),
      I4 => data(5),
      I5 => data(4),
      O => Mmux_bit_cnt_5_X_86_o_Mux_10_o_121_2884
    );
  Mmux_bit_cnt_5_X_86_o_Mux_10_o_112 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => bit_cnt(1),
      I1 => bit_cnt(0),
      I2 => data(2),
      I3 => data(3),
      I4 => data(1),
      I5 => data(0),
      O => Mmux_bit_cnt_5_X_86_o_Mux_10_o_112_2885
    );
  Mmux_bit_cnt_5_X_86_o_Mux_10_o_6 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => bit_cnt(3),
      I1 => bit_cnt(2),
      I2 => Mmux_bit_cnt_5_X_86_o_Mux_10_o_111_2888,
      I3 => Mmux_bit_cnt_5_X_86_o_Mux_10_o_12_2887,
      I4 => Mmux_bit_cnt_5_X_86_o_Mux_10_o_11_2889,
      I5 => Mmux_bit_cnt_5_X_86_o_Mux_10_o_10_2890,
      O => Mmux_bit_cnt_5_X_86_o_Mux_10_o_6_2886
    );
  Mmux_bit_cnt_5_X_86_o_Mux_10_o_12 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => bit_cnt(1),
      I1 => bit_cnt(0),
      I2 => data(30),
      I3 => data(31),
      I4 => data(29),
      I5 => data(28),
      O => Mmux_bit_cnt_5_X_86_o_Mux_10_o_12_2887
    );
  Mmux_bit_cnt_5_X_86_o_Mux_10_o_111 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => bit_cnt(1),
      I1 => bit_cnt(0),
      I2 => data(26),
      I3 => data(27),
      I4 => data(25),
      I5 => data(24),
      O => Mmux_bit_cnt_5_X_86_o_Mux_10_o_111_2888
    );
  Mmux_bit_cnt_5_X_86_o_Mux_10_o_11 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => bit_cnt(1),
      I1 => bit_cnt(0),
      I2 => data(22),
      I3 => data(23),
      I4 => data(21),
      I5 => data(20),
      O => Mmux_bit_cnt_5_X_86_o_Mux_10_o_11_2889
    );
  Mmux_bit_cnt_5_X_86_o_Mux_10_o_10 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => bit_cnt(1),
      I1 => bit_cnt(0),
      I2 => data(18),
      I3 => data(19),
      I4 => data(17),
      I5 => data(16),
      O => Mmux_bit_cnt_5_X_86_o_Mux_10_o_10_2890
    );
  Q_n0058_2_1 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => st_FSM_FFd1_2744,
      I1 => st_FSM_FFd2_2745,
      I2 => st_FSM_FFd3_2746,
      O => Q_n0058
    );
  n0009_31_1 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => bit_cnt(5),
      I1 => bit_cnt(4),
      I2 => bit_cnt(3),
      I3 => bit_cnt(2),
      I4 => bit_cnt(1),
      I5 => bit_cnt(0),
      O => n0009
    );
  Q_n0081_inv1 : LUT3
    generic map(
      INIT => X"6F"
    )
    port map (
      I0 => st_FSM_FFd2_2745,
      I1 => st_FSM_FFd3_2746,
      I2 => st_FSM_FFd1_2744,
      O => Q_n0081_inv
    );
  st_st_2_SCLK_Mux_13_o1 : LUT3
    generic map(
      INIT => X"57"
    )
    port map (
      I0 => st_FSM_FFd3_2746,
      I1 => st_FSM_FFd1_2744,
      I2 => st_FSM_FFd2_2745,
      O => st_2_SCLK_Mux_13_o
    );
  st_st_2_SYNC_Mux_14_o1 : LUT3
    generic map(
      INIT => X"F1"
    )
    port map (
      I0 => st_FSM_FFd3_2746,
      I1 => st_FSM_FFd2_2745,
      I2 => st_FSM_FFd1_2744,
      O => st_2_SYNC_Mux_14_o
    );
  st_st_2_LDAC_Mux_15_o1 : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => st_FSM_FFd1_2744,
      I1 => st_FSM_FFd2_2745,
      I2 => st_FSM_FFd3_2746,
      O => st_2_LDAC_Mux_15_o
    );
  Mmux_data_47_data_47_mux_6_OUT471 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => addr(3),
      I1 => val(5),
      I2 => addr(4),
      O => data_47_data_47_mux_6_OUT_9_Q
    );
  Mmux_data_47_data_47_mux_6_OUT461 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => addr(3),
      I1 => val(4),
      I2 => addr(4),
      O => data_47_data_47_mux_6_OUT_8_Q
    );
  Mmux_data_47_data_47_mux_6_OUT451 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => addr(3),
      I1 => val(3),
      I2 => addr(4),
      O => data_47_data_47_mux_6_OUT_7_Q
    );
  Mmux_data_47_data_47_mux_6_OUT441 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => addr(3),
      I1 => val(2),
      I2 => addr(4),
      O => data_47_data_47_mux_6_OUT_6_Q
    );
  Mmux_data_47_data_47_mux_6_OUT431 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => addr(3),
      I1 => val(1),
      I2 => addr(4),
      O => data_47_data_47_mux_6_OUT_5_Q
    );
  Mmux_data_47_data_47_mux_6_OUT421 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => addr(3),
      I1 => val(0),
      I2 => addr(4),
      O => data_47_data_47_mux_6_OUT_4_Q
    );
  Mmux_data_47_data_47_mux_6_OUT411 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => addr(4),
      I1 => data(47),
      O => data_47_data_47_mux_6_OUT_47_Q
    );
  Mmux_data_47_data_47_mux_6_OUT401 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => addr(4),
      I1 => data(46),
      O => data_47_data_47_mux_6_OUT_46_Q
    );
  Mmux_data_47_data_47_mux_6_OUT391 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => addr(4),
      I1 => addr(3),
      I2 => data(45),
      O => data_47_data_47_mux_6_OUT_45_Q
    );
  Mmux_data_47_data_47_mux_6_OUT381 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => addr(4),
      I1 => addr(3),
      I2 => data(44),
      O => data_47_data_47_mux_6_OUT_44_Q
    );
  Mmux_data_47_data_47_mux_6_OUT371 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => addr(4),
      I1 => data(43),
      O => data_47_data_47_mux_6_OUT_43_Q
    );
  Mmux_data_47_data_47_mux_6_OUT361 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => addr(4),
      I1 => addr(3),
      I2 => addr(2),
      I3 => data(42),
      O => data_47_data_47_mux_6_OUT_42_Q
    );
  Mmux_data_47_data_47_mux_6_OUT351 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => addr(4),
      I1 => addr(3),
      I2 => addr(1),
      I3 => data(41),
      O => data_47_data_47_mux_6_OUT_41_Q
    );
  Mmux_data_47_data_47_mux_6_OUT341 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => addr(4),
      I1 => addr(3),
      I2 => addr(0),
      I3 => data(40),
      O => data_47_data_47_mux_6_OUT_40_Q
    );
  Mmux_data_47_data_47_mux_6_OUT321 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => addr(4),
      I1 => addr(3),
      I2 => val(11),
      I3 => data(39),
      O => data_47_data_47_mux_6_OUT_39_Q
    );
  Mmux_data_47_data_47_mux_6_OUT311 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => addr(4),
      I1 => addr(3),
      I2 => val(10),
      I3 => data(38),
      O => data_47_data_47_mux_6_OUT_38_Q
    );
  Mmux_data_47_data_47_mux_6_OUT301 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => addr(4),
      I1 => addr(3),
      I2 => val(9),
      I3 => data(37),
      O => data_47_data_47_mux_6_OUT_37_Q
    );
  Mmux_data_47_data_47_mux_6_OUT291 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => addr(4),
      I1 => addr(3),
      I2 => val(8),
      I3 => data(36),
      O => data_47_data_47_mux_6_OUT_36_Q
    );
  Mmux_data_47_data_47_mux_6_OUT281 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => addr(4),
      I1 => addr(3),
      I2 => val(7),
      I3 => data(35),
      O => data_47_data_47_mux_6_OUT_35_Q
    );
  Mmux_data_47_data_47_mux_6_OUT271 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => addr(4),
      I1 => addr(3),
      I2 => val(6),
      I3 => data(34),
      O => data_47_data_47_mux_6_OUT_34_Q
    );
  Mmux_data_47_data_47_mux_6_OUT261 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => addr(4),
      I1 => addr(3),
      I2 => val(5),
      I3 => data(33),
      O => data_47_data_47_mux_6_OUT_33_Q
    );
  Mmux_data_47_data_47_mux_6_OUT251 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => addr(4),
      I1 => addr(3),
      I2 => val(4),
      I3 => data(32),
      O => data_47_data_47_mux_6_OUT_32_Q
    );
  Mmux_data_47_data_47_mux_6_OUT241 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => addr(4),
      I1 => addr(3),
      I2 => val(3),
      I3 => data(31),
      O => data_47_data_47_mux_6_OUT_31_Q
    );
  Mmux_data_47_data_47_mux_6_OUT231 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => addr(4),
      I1 => addr(3),
      I2 => val(2),
      I3 => data(30),
      O => data_47_data_47_mux_6_OUT_30_Q
    );
  Mmux_data_47_data_47_mux_6_OUT211 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => addr(4),
      I1 => addr(3),
      I2 => val(1),
      I3 => data(29),
      O => data_47_data_47_mux_6_OUT_29_Q
    );
  Mmux_data_47_data_47_mux_6_OUT201 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => addr(4),
      I1 => addr(3),
      I2 => val(0),
      I3 => data(28),
      O => data_47_data_47_mux_6_OUT_28_Q
    );
  Mmux_data_47_data_47_mux_6_OUT191 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => addr(4),
      I1 => data(27),
      O => data_47_data_47_mux_6_OUT_27_Q
    );
  Mmux_data_47_data_47_mux_6_OUT181 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => addr(4),
      I1 => data(26),
      O => data_47_data_47_mux_6_OUT_26_Q
    );
  Mmux_data_47_data_47_mux_6_OUT171 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => addr(4),
      I1 => data(25),
      O => data_47_data_47_mux_6_OUT_25_Q
    );
  Mmux_data_47_data_47_mux_6_OUT161 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => addr(4),
      I1 => data(24),
      O => data_47_data_47_mux_6_OUT_24_Q
    );
  data_47_data_47_mux_6_OUT_20_1 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => addr(4),
      I1 => addr(3),
      O => data_47_data_47_mux_6_OUT_20_Q
    );
  Mmux_data_47_data_47_mux_6_OUT101 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => addr(3),
      I1 => addr(2),
      I2 => addr(4),
      O => data_47_data_47_mux_6_OUT_18_Q
    );
  Mmux_data_47_data_47_mux_6_OUT91 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => addr(3),
      I1 => addr(1),
      I2 => addr(4),
      O => data_47_data_47_mux_6_OUT_17_Q
    );
  Mmux_data_47_data_47_mux_6_OUT81 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => addr(3),
      I1 => addr(0),
      I2 => addr(4),
      O => data_47_data_47_mux_6_OUT_16_Q
    );
  Mmux_data_47_data_47_mux_6_OUT71 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => addr(3),
      I1 => val(11),
      I2 => addr(4),
      O => data_47_data_47_mux_6_OUT_15_Q
    );
  Mmux_data_47_data_47_mux_6_OUT61 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => addr(3),
      I1 => val(10),
      I2 => addr(4),
      O => data_47_data_47_mux_6_OUT_14_Q
    );
  Mmux_data_47_data_47_mux_6_OUT51 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => addr(3),
      I1 => val(9),
      I2 => addr(4),
      O => data_47_data_47_mux_6_OUT_13_Q
    );
  Mmux_data_47_data_47_mux_6_OUT41 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => addr(3),
      I1 => val(8),
      I2 => addr(4),
      O => data_47_data_47_mux_6_OUT_12_Q
    );
  Mmux_data_47_data_47_mux_6_OUT31 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => addr(3),
      I1 => val(7),
      I2 => addr(4),
      O => data_47_data_47_mux_6_OUT_11_Q
    );
  Mmux_data_47_data_47_mux_6_OUT21 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => addr(3),
      I1 => val(6),
      I2 => addr(4),
      O => data_47_data_47_mux_6_OUT_10_Q
    );
  st_FSM_FFd2_In1 : LUT4
    generic map(
      INIT => X"9BAA"
    )
    port map (
      I0 => st_FSM_FFd3_2746,
      I1 => st_FSM_FFd1_2744,
      I2 => n0009,
      I3 => st_FSM_FFd2_2745,
      O => st_FSM_FFd2_In
    );
  Q_n0127_inv1 : LUT4
    generic map(
      INIT => X"0222"
    )
    port map (
      I0 => st_FSM_FFd3_2746,
      I1 => st_FSM_FFd1_2744,
      I2 => n0009,
      I3 => st_FSM_FFd2_2745,
      O => Q_n0127_inv
    );
  st_FSM_FFd3_In1 : LUT5
    generic map(
      INIT => X"9D8C1504"
    )
    port map (
      I0 => st_FSM_FFd3_2746,
      I1 => st_FSM_FFd2_2745,
      I2 => st_FSM_FFd1_2744,
      I3 => UPDATE,
      I4 => n0009,
      O => st_FSM_FFd3_In
    );
  st_FSM_FFd1_In1 : LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      I0 => st_FSM_FFd3_2746,
      I1 => n0009,
      I2 => st_FSM_FFd2_2745,
      I3 => st_FSM_FFd1_2744,
      O => st_FSM_FFd1_In
    );
  Mmux_st_2_DIN_Mux_16_o1_SW0 : LUT6
    generic map(
      INIT => X"028A139B46CE57DF"
    )
    port map (
      I0 => bit_cnt(3),
      I1 => bit_cnt(2),
      I2 => Mmux_bit_cnt_5_X_86_o_Mux_10_o_114_2877,
      I3 => Mmux_bit_cnt_5_X_86_o_Mux_10_o_123_2876,
      I4 => Mmux_bit_cnt_5_X_86_o_Mux_10_o_101_2879,
      I5 => Mmux_bit_cnt_5_X_86_o_Mux_10_o_113_2878,
      O => N0
    );
  Mmux_st_2_DIN_Mux_16_o1 : LUT5
    generic map(
      INIT => X"00202220"
    )
    port map (
      I0 => st_FSM_FFd2_2745,
      I1 => st_FSM_FFd1_2744,
      I2 => Mmux_bit_cnt_5_X_86_o_Mux_10_o_5_f7_2880,
      I3 => bit_cnt(5),
      I4 => N0,
      O => st_2_DIN_Mux_16_o
    );
  busy_2760 : FD
    port map (
      C => clk,
      D => busy_rstpot_2892,
      Q => NlwRenamedSig_OI_busy
    );
  DIN_2761 : FD
    port map (
      C => clk,
      D => DIN_rstpot_2893,
      Q => NlwRenamedSig_OI_DIN
    );
  Mmux_bit_cnt_5_X_86_o_Mux_10_o_5_f7 : MUXF7
    port map (
      I0 => Mmux_bit_cnt_5_X_86_o_Mux_10_o_7_2881,
      I1 => Mmux_bit_cnt_5_X_86_o_Mux_10_o_6_2886,
      S => bit_cnt(4),
      O => Mmux_bit_cnt_5_X_86_o_Mux_10_o_5_f7_2880
    );
  busy_rstpot : LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
    port map (
      I0 => NlwRenamedSig_OI_busy,
      I1 => st_FSM_FFd1_2744,
      I2 => st_FSM_FFd2_2745,
      I3 => st_FSM_FFd3_2746,
      I4 => UPDATE,
      O => busy_rstpot_2892
    );
  DIN_rstpot : LUT6
    generic map(
      INIT => X"FFFF45F5BA0A0000"
    )
    port map (
      I0 => st_FSM_FFd1_2744,
      I1 => n0009,
      I2 => st_FSM_FFd2_2745,
      I3 => st_FSM_FFd3_2746,
      I4 => NlwRenamedSig_OI_DIN,
      I5 => st_2_DIN_Mux_16_o,
      O => DIN_rstpot_2893
    );
  Mcount_bit_cnt_lut_0_Q : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => bit_cnt(0),
      I1 => st_FSM_FFd2_2745,
      O => Mcount_bit_cnt_lut(0)
    );
  Mcount_bit_cnt_lut_1_Q : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => bit_cnt(1),
      I1 => st_FSM_FFd2_2745,
      O => Mcount_bit_cnt_lut(1)
    );
  Mcount_bit_cnt_lut_2_Q : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => bit_cnt(2),
      I1 => st_FSM_FFd2_2745,
      O => Mcount_bit_cnt_lut(2)
    );
  Mcount_bit_cnt_lut_4_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => st_FSM_FFd2_2745,
      I1 => addr(4),
      I2 => bit_cnt(4),
      O => Mcount_bit_cnt_lut(4)
    );
  Mcount_bit_cnt_lut_3_Q : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => st_FSM_FFd2_2745,
      I1 => addr(4),
      I2 => bit_cnt(3),
      O => Mcount_bit_cnt_lut(3)
    );
  Mcount_bit_cnt_lut_5_Q : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => st_FSM_FFd2_2745,
      I1 => addr(4),
      I2 => bit_cnt(5),
      O => Mcount_bit_cnt_lut(5)
    );
  st_1_inv1_INV_0 : INV
    port map (
      I => st_FSM_FFd2_2745,
      O => st_1_inv
    );

end Structure;

-- synthesis translate_on

-- synthesis translate_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity mppc_dac_calb is
  port (
    CLOCK : in STD_LOGIC := 'X'; 
    DAC_CLOCK : in STD_LOGIC := 'X'; 
    DAC_UPDATE : in STD_LOGIC := 'X'; 
    OOPS_RESET : in STD_LOGIC := 'X'; 
    DAC_BUSY : out STD_LOGIC; 
    DAC_SCLK : out STD_LOGIC; 
    DAC_DIN : out STD_LOGIC; 
    LDAC : out STD_LOGIC; 
    SYNC : out STD_LOGIC; 
    DAC_ADDR : in STD_LOGIC_VECTOR ( 4 downto 0 ); 
    DAC_VALUE : in STD_LOGIC_VECTOR ( 11 downto 0 ) 
  );
end mppc_dac_calb;

architecture Structure of mppc_dac_calb is
  component mppc_bias_dac_AD5672R
    port (
      clk : in STD_LOGIC := 'X'; 
      UPDATE : in STD_LOGIC := 'X'; 
      LDAC : out STD_LOGIC; 
      busy : out STD_LOGIC; 
      SCLK : out STD_LOGIC; 
      SYNC : out STD_LOGIC; 
      DIN : out STD_LOGIC; 
      addr : in STD_LOGIC_VECTOR ( 4 downto 0 ); 
      val : in STD_LOGIC_VECTOR ( 11 downto 0 ) 
    );
  end component;
  signal state_2_internal_value_11_wide_mux_18_OUT_11_Q : STD_LOGIC; 
  signal state_2_internal_value_11_wide_mux_18_OUT_10_Q : STD_LOGIC; 
  signal state_2_internal_value_11_wide_mux_18_OUT_9_Q : STD_LOGIC; 
  signal state_2_internal_value_11_wide_mux_18_OUT_8_Q : STD_LOGIC; 
  signal state_2_internal_value_11_wide_mux_18_OUT_7_Q : STD_LOGIC; 
  signal state_2_internal_value_11_wide_mux_18_OUT_6_Q : STD_LOGIC; 
  signal state_2_internal_value_11_wide_mux_18_OUT_5_Q : STD_LOGIC; 
  signal state_2_internal_value_11_wide_mux_18_OUT_4_Q : STD_LOGIC; 
  signal state_2_internal_value_11_wide_mux_18_OUT_3_Q : STD_LOGIC; 
  signal state_2_internal_value_11_wide_mux_18_OUT_2_Q : STD_LOGIC; 
  signal state_2_internal_value_11_wide_mux_18_OUT_1_Q : STD_LOGIC; 
  signal state_2_internal_value_11_wide_mux_18_OUT_0_Q : STD_LOGIC; 
  signal internal_busy : STD_LOGIC; 
  signal state_FSM_FFd1_2930 : STD_LOGIC; 
  signal state_FSM_FFd3_2931 : STD_LOGIC; 
  signal state_FSM_FFd2_2932 : STD_LOGIC; 
  signal NlwRenamedSig_OI_DAC_BUSY : STD_LOGIC; 
  signal internal_update_2934 : STD_LOGIC; 
  signal config_done_2935 : STD_LOGIC; 
  signal state_2_internal_addr_4_wide_mux_17_OUT_4_Q : STD_LOGIC; 
  signal state_2_internal_addr_4_wide_mux_17_OUT_3_Q : STD_LOGIC; 
  signal state_2_internal_addr_4_wide_mux_17_OUT_2_Q : STD_LOGIC; 
  signal state_2_internal_addr_4_wide_mux_17_OUT_1_Q : STD_LOGIC; 
  signal state_2_internal_addr_4_wide_mux_17_OUT_0_Q : STD_LOGIC; 
  signal Q_n0080 : STD_LOGIC; 
  signal Q_n0191_inv : STD_LOGIC; 
  signal Q_n0168_inv : STD_LOGIC; 
  signal Q_n0195_inv : STD_LOGIC; 
  signal state_FSM_FFd3_In : STD_LOGIC; 
  signal state_FSM_FFd1_In : STD_LOGIC; 
  signal Mcompar_GND_148_o_wait_count_31_LessThan_1_o_lutdi_2978 : STD_LOGIC; 
  signal Mcompar_GND_148_o_wait_count_31_LessThan_1_o_lut_0_Q_2979 : STD_LOGIC; 
  signal Mcompar_GND_148_o_wait_count_31_LessThan_1_o_cy_0_Q_2980 : STD_LOGIC; 
  signal Mcompar_GND_148_o_wait_count_31_LessThan_1_o_lutdi1 : STD_LOGIC; 
  signal Mcompar_GND_148_o_wait_count_31_LessThan_1_o_lut_1_Q : STD_LOGIC; 
  signal Mcompar_GND_148_o_wait_count_31_LessThan_1_o_cy_1_Q_2983 : STD_LOGIC; 
  signal Mcompar_GND_148_o_wait_count_31_LessThan_1_o_cy_2_Q_2984 : STD_LOGIC; 
  signal Mcompar_GND_148_o_wait_count_31_LessThan_1_o_cy_3_Q_2985 : STD_LOGIC; 
  signal Mcompar_GND_148_o_wait_count_31_LessThan_1_o_cy_4_Q_2986 : STD_LOGIC; 
  signal Mcompar_GND_148_o_wait_count_31_LessThan_1_o_cy_5_Q_2987 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal Mcount_wait_count_cy_1_rt_2996 : STD_LOGIC; 
  signal Mcount_wait_count_cy_2_rt_2997 : STD_LOGIC; 
  signal Mcount_wait_count_cy_3_rt_2998 : STD_LOGIC; 
  signal Mcount_wait_count_cy_4_rt_2999 : STD_LOGIC; 
  signal Mcount_wait_count_cy_5_rt_3000 : STD_LOGIC; 
  signal Mcount_wait_count_xor_6_rt_3001 : STD_LOGIC; 
  signal config_done_rstpot_3002 : STD_LOGIC; 
  signal internal_update_rstpot : STD_LOGIC; 
  signal DAC_BUSY_rstpot_3004 : STD_LOGIC; 
  signal state_FSM_FFd2_rstpot_3005 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal internal_addr : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal internal_value : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal wait_count : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal Mcount_wait_count_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Mcount_wait_count_cy : STD_LOGIC_VECTOR ( 5 downto 0 ); 
begin
  DAC_BUSY <= NlwRenamedSig_OI_DAC_BUSY;
  XST_VCC : VCC
    port map (
      P => Mcompar_GND_148_o_wait_count_31_LessThan_1_o_lut_1_Q
    );
  XST_GND : GND
    port map (
      G => Mcompar_GND_148_o_wait_count_31_LessThan_1_o_lutdi1
    );
  internal_value_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => DAC_CLOCK,
      CE => Q_n0191_inv,
      D => state_2_internal_value_11_wide_mux_18_OUT_0_Q,
      Q => internal_value(0)
    );
  internal_value_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => DAC_CLOCK,
      CE => Q_n0191_inv,
      D => state_2_internal_value_11_wide_mux_18_OUT_1_Q,
      Q => internal_value(1)
    );
  internal_value_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => DAC_CLOCK,
      CE => Q_n0191_inv,
      D => state_2_internal_value_11_wide_mux_18_OUT_2_Q,
      Q => internal_value(2)
    );
  internal_value_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => DAC_CLOCK,
      CE => Q_n0191_inv,
      D => state_2_internal_value_11_wide_mux_18_OUT_3_Q,
      Q => internal_value(3)
    );
  internal_value_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => DAC_CLOCK,
      CE => Q_n0191_inv,
      D => state_2_internal_value_11_wide_mux_18_OUT_4_Q,
      Q => internal_value(4)
    );
  internal_value_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => DAC_CLOCK,
      CE => Q_n0191_inv,
      D => state_2_internal_value_11_wide_mux_18_OUT_5_Q,
      Q => internal_value(5)
    );
  internal_value_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => DAC_CLOCK,
      CE => Q_n0191_inv,
      D => state_2_internal_value_11_wide_mux_18_OUT_6_Q,
      Q => internal_value(6)
    );
  internal_value_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => DAC_CLOCK,
      CE => Q_n0191_inv,
      D => state_2_internal_value_11_wide_mux_18_OUT_7_Q,
      Q => internal_value(7)
    );
  internal_value_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => DAC_CLOCK,
      CE => Q_n0191_inv,
      D => state_2_internal_value_11_wide_mux_18_OUT_8_Q,
      Q => internal_value(8)
    );
  internal_value_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => DAC_CLOCK,
      CE => Q_n0191_inv,
      D => state_2_internal_value_11_wide_mux_18_OUT_9_Q,
      Q => internal_value(9)
    );
  internal_value_10 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => DAC_CLOCK,
      CE => Q_n0191_inv,
      D => state_2_internal_value_11_wide_mux_18_OUT_10_Q,
      Q => internal_value(10)
    );
  internal_value_11 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => DAC_CLOCK,
      CE => Q_n0191_inv,
      D => state_2_internal_value_11_wide_mux_18_OUT_11_Q,
      Q => internal_value(11)
    );
  internal_addr_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => DAC_CLOCK,
      CE => Q_n0168_inv,
      D => state_2_internal_addr_4_wide_mux_17_OUT_0_Q,
      Q => internal_addr(0)
    );
  internal_addr_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => DAC_CLOCK,
      CE => Q_n0168_inv,
      D => state_2_internal_addr_4_wide_mux_17_OUT_1_Q,
      Q => internal_addr(1)
    );
  internal_addr_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => DAC_CLOCK,
      CE => Q_n0168_inv,
      D => state_2_internal_addr_4_wide_mux_17_OUT_2_Q,
      Q => internal_addr(2)
    );
  internal_addr_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => DAC_CLOCK,
      CE => Q_n0168_inv,
      D => state_2_internal_addr_4_wide_mux_17_OUT_3_Q,
      Q => internal_addr(3)
    );
  internal_addr_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => DAC_CLOCK,
      CE => Q_n0168_inv,
      D => state_2_internal_addr_4_wide_mux_17_OUT_4_Q,
      Q => internal_addr(4)
    );
  state_FSM_FFd1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => DAC_CLOCK,
      D => state_FSM_FFd1_In,
      R => OOPS_RESET,
      Q => state_FSM_FFd1_2930
    );
  state_FSM_FFd3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => DAC_CLOCK,
      D => state_FSM_FFd3_In,
      R => OOPS_RESET,
      Q => state_FSM_FFd3_2931
    );
  wait_count_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => DAC_CLOCK,
      CE => Q_n0195_inv,
      D => Result(0),
      R => Q_n0080,
      Q => wait_count(0)
    );
  wait_count_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => DAC_CLOCK,
      CE => Q_n0195_inv,
      D => Result(1),
      R => Q_n0080,
      Q => wait_count(1)
    );
  wait_count_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => DAC_CLOCK,
      CE => Q_n0195_inv,
      D => Result(2),
      R => Q_n0080,
      Q => wait_count(2)
    );
  wait_count_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => DAC_CLOCK,
      CE => Q_n0195_inv,
      D => Result(3),
      R => Q_n0080,
      Q => wait_count(3)
    );
  wait_count_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => DAC_CLOCK,
      CE => Q_n0195_inv,
      D => Result(4),
      R => Q_n0080,
      Q => wait_count(4)
    );
  wait_count_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => DAC_CLOCK,
      CE => Q_n0195_inv,
      D => Result(5),
      R => Q_n0080,
      Q => wait_count(5)
    );
  wait_count_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => DAC_CLOCK,
      CE => Q_n0195_inv,
      D => Result(6),
      R => Q_n0080,
      Q => wait_count(6)
    );
  Mcompar_GND_148_o_wait_count_31_LessThan_1_o_lutdi : LUT4
    generic map(
      INIT => X"8880"
    )
    port map (
      I0 => wait_count(6),
      I1 => wait_count(5),
      I2 => wait_count(4),
      I3 => wait_count(3),
      O => Mcompar_GND_148_o_wait_count_31_LessThan_1_o_lutdi_2978
    );
  Mcompar_GND_148_o_wait_count_31_LessThan_1_o_lut_0_Q : LUT5
    generic map(
      INIT => X"00004000"
    )
    port map (
      I0 => wait_count(3),
      I1 => wait_count(6),
      I2 => wait_count(2),
      I3 => wait_count(5),
      I4 => wait_count(4),
      O => Mcompar_GND_148_o_wait_count_31_LessThan_1_o_lut_0_Q_2979
    );
  Mcompar_GND_148_o_wait_count_31_LessThan_1_o_cy_0_Q : MUXCY
    port map (
      CI => Mcompar_GND_148_o_wait_count_31_LessThan_1_o_lut_1_Q,
      DI => Mcompar_GND_148_o_wait_count_31_LessThan_1_o_lutdi_2978,
      S => Mcompar_GND_148_o_wait_count_31_LessThan_1_o_lut_0_Q_2979,
      O => Mcompar_GND_148_o_wait_count_31_LessThan_1_o_cy_0_Q_2980
    );
  Mcompar_GND_148_o_wait_count_31_LessThan_1_o_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_GND_148_o_wait_count_31_LessThan_1_o_cy_0_Q_2980,
      DI => Mcompar_GND_148_o_wait_count_31_LessThan_1_o_lutdi1,
      S => Mcompar_GND_148_o_wait_count_31_LessThan_1_o_lut_1_Q,
      O => Mcompar_GND_148_o_wait_count_31_LessThan_1_o_cy_1_Q_2983
    );
  Mcompar_GND_148_o_wait_count_31_LessThan_1_o_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_GND_148_o_wait_count_31_LessThan_1_o_cy_1_Q_2983,
      DI => Mcompar_GND_148_o_wait_count_31_LessThan_1_o_lutdi1,
      S => Mcompar_GND_148_o_wait_count_31_LessThan_1_o_lut_1_Q,
      O => Mcompar_GND_148_o_wait_count_31_LessThan_1_o_cy_2_Q_2984
    );
  Mcompar_GND_148_o_wait_count_31_LessThan_1_o_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_GND_148_o_wait_count_31_LessThan_1_o_cy_2_Q_2984,
      DI => Mcompar_GND_148_o_wait_count_31_LessThan_1_o_lutdi1,
      S => Mcompar_GND_148_o_wait_count_31_LessThan_1_o_lut_1_Q,
      O => Mcompar_GND_148_o_wait_count_31_LessThan_1_o_cy_3_Q_2985
    );
  Mcompar_GND_148_o_wait_count_31_LessThan_1_o_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_GND_148_o_wait_count_31_LessThan_1_o_cy_3_Q_2985,
      DI => Mcompar_GND_148_o_wait_count_31_LessThan_1_o_lutdi1,
      S => Mcompar_GND_148_o_wait_count_31_LessThan_1_o_lut_1_Q,
      O => Mcompar_GND_148_o_wait_count_31_LessThan_1_o_cy_4_Q_2986
    );
  Mcompar_GND_148_o_wait_count_31_LessThan_1_o_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_GND_148_o_wait_count_31_LessThan_1_o_cy_4_Q_2986,
      DI => Mcompar_GND_148_o_wait_count_31_LessThan_1_o_lutdi1,
      S => Mcompar_GND_148_o_wait_count_31_LessThan_1_o_lut_1_Q,
      O => Mcompar_GND_148_o_wait_count_31_LessThan_1_o_cy_5_Q_2987
    );
  Mcount_wait_count_cy_0_Q : MUXCY
    port map (
      CI => Mcompar_GND_148_o_wait_count_31_LessThan_1_o_lutdi1,
      DI => Mcompar_GND_148_o_wait_count_31_LessThan_1_o_lut_1_Q,
      S => Mcount_wait_count_lut(0),
      O => Mcount_wait_count_cy(0)
    );
  Mcount_wait_count_xor_0_Q : XORCY
    port map (
      CI => Mcompar_GND_148_o_wait_count_31_LessThan_1_o_lutdi1,
      LI => Mcount_wait_count_lut(0),
      O => Result(0)
    );
  Mcount_wait_count_cy_1_Q : MUXCY
    port map (
      CI => Mcount_wait_count_cy(0),
      DI => Mcompar_GND_148_o_wait_count_31_LessThan_1_o_lutdi1,
      S => Mcount_wait_count_cy_1_rt_2996,
      O => Mcount_wait_count_cy(1)
    );
  Mcount_wait_count_xor_1_Q : XORCY
    port map (
      CI => Mcount_wait_count_cy(0),
      LI => Mcount_wait_count_cy_1_rt_2996,
      O => Result(1)
    );
  Mcount_wait_count_cy_2_Q : MUXCY
    port map (
      CI => Mcount_wait_count_cy(1),
      DI => Mcompar_GND_148_o_wait_count_31_LessThan_1_o_lutdi1,
      S => Mcount_wait_count_cy_2_rt_2997,
      O => Mcount_wait_count_cy(2)
    );
  Mcount_wait_count_xor_2_Q : XORCY
    port map (
      CI => Mcount_wait_count_cy(1),
      LI => Mcount_wait_count_cy_2_rt_2997,
      O => Result(2)
    );
  Mcount_wait_count_cy_3_Q : MUXCY
    port map (
      CI => Mcount_wait_count_cy(2),
      DI => Mcompar_GND_148_o_wait_count_31_LessThan_1_o_lutdi1,
      S => Mcount_wait_count_cy_3_rt_2998,
      O => Mcount_wait_count_cy(3)
    );
  Mcount_wait_count_xor_3_Q : XORCY
    port map (
      CI => Mcount_wait_count_cy(2),
      LI => Mcount_wait_count_cy_3_rt_2998,
      O => Result(3)
    );
  Mcount_wait_count_cy_4_Q : MUXCY
    port map (
      CI => Mcount_wait_count_cy(3),
      DI => Mcompar_GND_148_o_wait_count_31_LessThan_1_o_lutdi1,
      S => Mcount_wait_count_cy_4_rt_2999,
      O => Mcount_wait_count_cy(4)
    );
  Mcount_wait_count_xor_4_Q : XORCY
    port map (
      CI => Mcount_wait_count_cy(3),
      LI => Mcount_wait_count_cy_4_rt_2999,
      O => Result(4)
    );
  Mcount_wait_count_cy_5_Q : MUXCY
    port map (
      CI => Mcount_wait_count_cy(4),
      DI => Mcompar_GND_148_o_wait_count_31_LessThan_1_o_lutdi1,
      S => Mcount_wait_count_cy_5_rt_3000,
      O => Mcount_wait_count_cy(5)
    );
  Mcount_wait_count_xor_5_Q : XORCY
    port map (
      CI => Mcount_wait_count_cy(4),
      LI => Mcount_wait_count_cy_5_rt_3000,
      O => Result(5)
    );
  Mcount_wait_count_xor_6_Q : XORCY
    port map (
      CI => Mcount_wait_count_cy(5),
      LI => Mcount_wait_count_xor_6_rt_3001,
      O => Result(6)
    );
  MPPC_DAC : mppc_bias_dac_AD5672R
    port map (
      clk => DAC_CLOCK,
      UPDATE => internal_update_2934,
      LDAC => LDAC,
      busy => internal_busy,
      SCLK => DAC_SCLK,
      SYNC => SYNC,
      DIN => DAC_DIN,
      addr(4) => internal_addr(4),
      addr(3) => internal_addr(3),
      addr(2) => internal_addr(2),
      addr(1) => internal_addr(1),
      addr(0) => internal_addr(0),
      val(11) => internal_value(11),
      val(10) => internal_value(10),
      val(9) => internal_value(9),
      val(8) => internal_value(8),
      val(7) => internal_value(7),
      val(6) => internal_value(6),
      val(5) => internal_value(5),
      val(4) => internal_value(4),
      val(3) => internal_value(3),
      val(2) => internal_value(2),
      val(1) => internal_value(1),
      val(0) => internal_value(0)
    );
  state_FSM_FFd1_In1 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => state_FSM_FFd2_2932,
      I1 => internal_busy,
      I2 => config_done_2935,
      I3 => state_FSM_FFd1_2930,
      O => state_FSM_FFd1_In
    );
  Mmux_state_2_internal_value_11_wide_mux_18_OUT121 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => state_FSM_FFd1_2930,
      I1 => DAC_VALUE(9),
      O => state_2_internal_value_11_wide_mux_18_OUT_9_Q
    );
  Mmux_state_2_internal_value_11_wide_mux_18_OUT111 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => state_FSM_FFd1_2930,
      I1 => DAC_VALUE(8),
      O => state_2_internal_value_11_wide_mux_18_OUT_8_Q
    );
  Mmux_state_2_internal_value_11_wide_mux_18_OUT101 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => state_FSM_FFd1_2930,
      I1 => DAC_VALUE(7),
      O => state_2_internal_value_11_wide_mux_18_OUT_7_Q
    );
  Mmux_state_2_internal_value_11_wide_mux_18_OUT91 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => state_FSM_FFd1_2930,
      I1 => DAC_VALUE(6),
      O => state_2_internal_value_11_wide_mux_18_OUT_6_Q
    );
  Mmux_state_2_internal_value_11_wide_mux_18_OUT81 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => state_FSM_FFd1_2930,
      I1 => DAC_VALUE(5),
      O => state_2_internal_value_11_wide_mux_18_OUT_5_Q
    );
  Mmux_state_2_internal_value_11_wide_mux_18_OUT71 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => state_FSM_FFd1_2930,
      I1 => DAC_VALUE(4),
      O => state_2_internal_value_11_wide_mux_18_OUT_4_Q
    );
  Mmux_state_2_internal_value_11_wide_mux_18_OUT61 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => state_FSM_FFd1_2930,
      I1 => DAC_VALUE(3),
      O => state_2_internal_value_11_wide_mux_18_OUT_3_Q
    );
  Mmux_state_2_internal_value_11_wide_mux_18_OUT51 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => state_FSM_FFd1_2930,
      I1 => DAC_VALUE(2),
      O => state_2_internal_value_11_wide_mux_18_OUT_2_Q
    );
  Mmux_state_2_internal_value_11_wide_mux_18_OUT41 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => state_FSM_FFd1_2930,
      I1 => DAC_VALUE(1),
      O => state_2_internal_value_11_wide_mux_18_OUT_1_Q
    );
  Mmux_state_2_internal_value_11_wide_mux_18_OUT31 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => state_FSM_FFd1_2930,
      I1 => DAC_VALUE(11),
      O => state_2_internal_value_11_wide_mux_18_OUT_11_Q
    );
  Mmux_state_2_internal_value_11_wide_mux_18_OUT21 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => state_FSM_FFd1_2930,
      I1 => DAC_VALUE(10),
      O => state_2_internal_value_11_wide_mux_18_OUT_10_Q
    );
  Mmux_state_2_internal_value_11_wide_mux_18_OUT11 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => state_FSM_FFd1_2930,
      I1 => DAC_VALUE(0),
      O => state_2_internal_value_11_wide_mux_18_OUT_0_Q
    );
  Mmux_state_2_internal_addr_4_wide_mux_17_OUT41 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => state_FSM_FFd1_2930,
      I1 => DAC_ADDR(3),
      O => state_2_internal_addr_4_wide_mux_17_OUT_3_Q
    );
  Mmux_state_2_internal_addr_4_wide_mux_17_OUT31 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => state_FSM_FFd1_2930,
      I1 => DAC_ADDR(2),
      O => state_2_internal_addr_4_wide_mux_17_OUT_2_Q
    );
  Mmux_state_2_internal_addr_4_wide_mux_17_OUT21 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => state_FSM_FFd1_2930,
      I1 => DAC_ADDR(1),
      O => state_2_internal_addr_4_wide_mux_17_OUT_1_Q
    );
  state_FSM_FFd3_In1 : LUT6
    generic map(
      INIT => X"A8ABAAABA8A8AAA8"
    )
    port map (
      I0 => internal_busy,
      I1 => state_FSM_FFd1_2930,
      I2 => state_FSM_FFd3_2931,
      I3 => state_FSM_FFd2_2932,
      I4 => config_done_2935,
      I5 => Mcompar_GND_148_o_wait_count_31_LessThan_1_o_cy_5_Q_2987,
      O => state_FSM_FFd3_In
    );
  Mmux_state_2_internal_addr_4_wide_mux_17_OUT11 : LUT4
    generic map(
      INIT => X"BF15"
    )
    port map (
      I0 => state_FSM_FFd1_2930,
      I1 => config_done_2935,
      I2 => state_FSM_FFd3_2931,
      I3 => DAC_ADDR(0),
      O => state_2_internal_addr_4_wide_mux_17_OUT_0_Q
    );
  Q_n0168_inv1 : LUT5
    generic map(
      INIT => X"01011110"
    )
    port map (
      I0 => state_FSM_FFd2_2932,
      I1 => OOPS_RESET,
      I2 => state_FSM_FFd3_2931,
      I3 => Mcompar_GND_148_o_wait_count_31_LessThan_1_o_cy_5_Q_2987,
      I4 => state_FSM_FFd1_2930,
      O => Q_n0168_inv
    );
  Q_n0080_2_1 : LUT5
    generic map(
      INIT => X"00000004"
    )
    port map (
      I0 => state_FSM_FFd1_2930,
      I1 => Mcompar_GND_148_o_wait_count_31_LessThan_1_o_cy_5_Q_2987,
      I2 => state_FSM_FFd2_2932,
      I3 => state_FSM_FFd3_2931,
      I4 => OOPS_RESET,
      O => Q_n0080
    );
  Q_n0195_inv1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => state_FSM_FFd1_2930,
      I1 => state_FSM_FFd2_2932,
      I2 => state_FSM_FFd3_2931,
      I3 => OOPS_RESET,
      O => Q_n0195_inv
    );
  Q_n0191_inv1 : LUT5
    generic map(
      INIT => X"01010100"
    )
    port map (
      I0 => state_FSM_FFd2_2932,
      I1 => OOPS_RESET,
      I2 => state_FSM_FFd3_2931,
      I3 => Mcompar_GND_148_o_wait_count_31_LessThan_1_o_cy_5_Q_2987,
      I4 => state_FSM_FFd1_2930,
      O => Q_n0191_inv
    );
  Q_n0146_inv_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => state_FSM_FFd3_2931,
      I1 => OOPS_RESET,
      O => N0
    );
  Mcount_wait_count_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_count(1),
      O => Mcount_wait_count_cy_1_rt_2996
    );
  Mcount_wait_count_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_count(2),
      O => Mcount_wait_count_cy_2_rt_2997
    );
  Mcount_wait_count_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_count(3),
      O => Mcount_wait_count_cy_3_rt_2998
    );
  Mcount_wait_count_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_count(4),
      O => Mcount_wait_count_cy_4_rt_2999
    );
  Mcount_wait_count_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_count(5),
      O => Mcount_wait_count_cy_5_rt_3000
    );
  Mcount_wait_count_xor_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_count(6),
      O => Mcount_wait_count_xor_6_rt_3001
    );
  config_done : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => DAC_CLOCK,
      D => config_done_rstpot_3002,
      Q => config_done_2935
    );
  internal_update : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => DAC_CLOCK,
      D => internal_update_rstpot,
      Q => internal_update_2934
    );
  DAC_BUSY_2803 : FD
    port map (
      C => DAC_CLOCK,
      D => DAC_BUSY_rstpot_3004,
      Q => NlwRenamedSig_OI_DAC_BUSY
    );
  state_FSM_FFd2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => DAC_CLOCK,
      D => state_FSM_FFd2_rstpot_3005,
      Q => state_FSM_FFd2_2932
    );
  DAC_BUSY_rstpot : LUT5
    generic map(
      INIT => X"AAACAAAB"
    )
    port map (
      I0 => NlwRenamedSig_OI_DAC_BUSY,
      I1 => state_FSM_FFd3_2931,
      I2 => OOPS_RESET,
      I3 => state_FSM_FFd2_2932,
      I4 => state_FSM_FFd1_2930,
      O => DAC_BUSY_rstpot_3004
    );
  state_FSM_FFd2_rstpot : LUT5
    generic map(
      INIT => X"11110100"
    )
    port map (
      I0 => OOPS_RESET,
      I1 => internal_busy,
      I2 => state_FSM_FFd1_2930,
      I3 => state_FSM_FFd3_2931,
      I4 => state_FSM_FFd2_2932,
      O => state_FSM_FFd2_rstpot_3005
    );
  config_done_rstpot : LUT6
    generic map(
      INIT => X"ABA8ABAAAAA8AAAA"
    )
    port map (
      I0 => config_done_2935,
      I1 => state_FSM_FFd1_2930,
      I2 => N0,
      I3 => state_FSM_FFd2_2932,
      I4 => Mcompar_GND_148_o_wait_count_31_LessThan_1_o_cy_5_Q_2987,
      I5 => internal_busy,
      O => config_done_rstpot_3002
    );
  internal_update_rstpot_F : LUT6
    generic map(
      INIT => X"D8D0DDD888808D88"
    )
    port map (
      I0 => state_FSM_FFd2_2932,
      I1 => internal_update_2934,
      I2 => state_FSM_FFd1_2930,
      I3 => state_FSM_FFd3_2931,
      I4 => internal_busy,
      I5 => DAC_UPDATE,
      O => N2
    );
  Mcount_wait_count_lut_0_INV_0 : INV
    port map (
      I => wait_count(0),
      O => Mcount_wait_count_lut(0)
    );
  state_2_internal_addr_4_wide_mux_17_OUT_4_inv1_INV_0 : INV
    port map (
      I => state_FSM_FFd1_2930,
      O => state_2_internal_addr_4_wide_mux_17_OUT_4_Q
    );
  internal_update_rstpot1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => OOPS_RESET,
      I1 => N2,
      I2 => internal_update_2934,
      O => internal_update_rstpot
    );

end Structure;

-- synthesis translate_on

-- synthesis translate_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity TARGETX_DAC_CONTROL is
  port (
    CLK : in STD_LOGIC := 'X'; 
    UPDATE : in STD_LOGIC := 'X'; 
    OOPS_RESET : in STD_LOGIC := 'X'; 
    busy : out STD_LOGIC; 
    SIN : out STD_LOGIC; 
    SCLK : out STD_LOGIC; 
    PCLK : out STD_LOGIC; 
    LOAD_PERIOD : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    LATCH_PERIOD : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    REG_DATA : in STD_LOGIC_VECTOR ( 18 downto 0 ) 
  );
end TARGETX_DAC_CONTROL;

architecture Structure of TARGETX_DAC_CONTROL is
  signal SCLK_i_2424 : STD_LOGIC; 
  signal ENABLE_COUNTER_2425 : STD_LOGIC; 
  signal STATE_FSM_FFd1_2442 : STD_LOGIC; 
  signal STATE_FSM_FFd3_2443 : STD_LOGIC; 
  signal STATE_FSM_FFd4_2444 : STD_LOGIC; 
  signal STATE_FSM_FFd5_2445 : STD_LOGIC; 
  signal STATE_4_X_82_o_Mux_35_o : STD_LOGIC; 
  signal STATE_4_X_82_o_Mux_36_o : STD_LOGIC; 
  signal SIN_i_2448 : STD_LOGIC; 
  signal PCLK_i_2449 : STD_LOGIC; 
  signal NlwRenamedSig_OI_busy : STD_LOGIC; 
  signal GND_100_o_X_82_o_Mux_10_o : STD_LOGIC; 
  signal STATE_4_X_82_o_Mux_34_o : STD_LOGIC; 
  signal STATE_4_X_82_o_Mux_39_o : STD_LOGIC; 
  signal GND_100_o_cnt_31_sub_10_OUT_4_Q : STD_LOGIC; 
  signal GND_100_o_cnt_31_sub_10_OUT_3_Q : STD_LOGIC; 
  signal GND_100_o_cnt_31_sub_10_OUT_2_Q : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal Q_n0172_inv : STD_LOGIC; 
  signal Q_n0127_inv : STD_LOGIC; 
  signal Q_n0207_inv : STD_LOGIC; 
  signal STATE_FSM_FFd2_2492 : STD_LOGIC; 
  signal Mcount_cnt : STD_LOGIC; 
  signal Mcount_cnt1 : STD_LOGIC; 
  signal Mcount_cnt2 : STD_LOGIC; 
  signal Mcount_cnt3 : STD_LOGIC; 
  signal Mcount_cnt4 : STD_LOGIC; 
  signal Mcount_cnt5 : STD_LOGIC; 
  signal Mcount_cnt6 : STD_LOGIC; 
  signal Mcount_cnt7 : STD_LOGIC; 
  signal Mcount_cnt8 : STD_LOGIC; 
  signal Mcount_cnt9 : STD_LOGIC; 
  signal Mcount_cnt10 : STD_LOGIC; 
  signal Mcount_cnt11 : STD_LOGIC; 
  signal Mcount_cnt12 : STD_LOGIC; 
  signal Mcount_cnt13 : STD_LOGIC; 
  signal Mcount_cnt14 : STD_LOGIC; 
  signal Mcount_cnt15 : STD_LOGIC; 
  signal Mcount_cnt16 : STD_LOGIC; 
  signal Mcount_cnt17 : STD_LOGIC; 
  signal Mcount_cnt18 : STD_LOGIC; 
  signal Mcount_cnt19 : STD_LOGIC; 
  signal Mcount_cnt20 : STD_LOGIC; 
  signal Mcount_cnt21 : STD_LOGIC; 
  signal Mcount_cnt22 : STD_LOGIC; 
  signal Mcount_cnt23 : STD_LOGIC; 
  signal Mcount_cnt24 : STD_LOGIC; 
  signal Mcount_cnt25 : STD_LOGIC; 
  signal Mcount_cnt26 : STD_LOGIC; 
  signal Mcount_cnt27 : STD_LOGIC; 
  signal Mcount_cnt28 : STD_LOGIC; 
  signal Mcount_cnt29 : STD_LOGIC; 
  signal Mcount_cnt30 : STD_LOGIC; 
  signal Mcount_cnt31 : STD_LOGIC; 
  signal ENABLE_COUNTER_inv : STD_LOGIC; 
  signal STATE_FSM_FFd5_In : STD_LOGIC; 
  signal STATE_FSM_FFd4_In_2606 : STD_LOGIC; 
  signal STATE_FSM_FFd3_In_2607 : STD_LOGIC; 
  signal STATE_FSM_FFd2_In : STD_LOGIC; 
  signal STATE_FSM_FFd1_In : STD_LOGIC; 
  signal Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lutdi_2610 : STD_LOGIC; 
  signal Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lut_0_Q_2611 : STD_LOGIC; 
  signal Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_cy_0_Q_2612 : STD_LOGIC; 
  signal Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lutdi1_2613 : STD_LOGIC; 
  signal Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lut_1_Q_2614 : STD_LOGIC; 
  signal Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_cy_1_Q_2615 : STD_LOGIC; 
  signal Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lutdi2_2616 : STD_LOGIC; 
  signal Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lut_2_Q_2617 : STD_LOGIC; 
  signal Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_cy_2_Q_2618 : STD_LOGIC; 
  signal Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lutdi3_2619 : STD_LOGIC; 
  signal Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lut_3_Q_2620 : STD_LOGIC; 
  signal Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_cy_3_Q_2621 : STD_LOGIC; 
  signal Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lutdi4_2622 : STD_LOGIC; 
  signal Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lut_4_Q_2623 : STD_LOGIC; 
  signal Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_cy_4_Q_2624 : STD_LOGIC; 
  signal Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lutdi5_2625 : STD_LOGIC; 
  signal Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lut_5_Q_2626 : STD_LOGIC; 
  signal Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_cy_5_Q_2627 : STD_LOGIC; 
  signal Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lutdi6_2628 : STD_LOGIC; 
  signal Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lut_6_Q_2629 : STD_LOGIC; 
  signal Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_cy_6_Q_2630 : STD_LOGIC; 
  signal Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_cy_7_Q_2631 : STD_LOGIC; 
  signal Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lutdi_2632 : STD_LOGIC; 
  signal Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lut_0_Q_2633 : STD_LOGIC; 
  signal Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_cy_0_Q_2634 : STD_LOGIC; 
  signal Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lutdi1_2635 : STD_LOGIC; 
  signal Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lut_1_Q_2636 : STD_LOGIC; 
  signal Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_cy_1_Q_2637 : STD_LOGIC; 
  signal Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lutdi2_2638 : STD_LOGIC; 
  signal Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lut_2_Q_2639 : STD_LOGIC; 
  signal Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_cy_2_Q_2640 : STD_LOGIC; 
  signal Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lutdi3_2641 : STD_LOGIC; 
  signal Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lut_3_Q_2642 : STD_LOGIC; 
  signal Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_cy_3_Q_2643 : STD_LOGIC; 
  signal Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lutdi4_2644 : STD_LOGIC; 
  signal Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lut_4_Q_2645 : STD_LOGIC; 
  signal Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_cy_4_Q_2646 : STD_LOGIC; 
  signal Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lutdi5_2647 : STD_LOGIC; 
  signal Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lut_5_Q_2648 : STD_LOGIC; 
  signal Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_cy_5_Q_2649 : STD_LOGIC; 
  signal Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lutdi6_2650 : STD_LOGIC; 
  signal Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lut_6_Q_2651 : STD_LOGIC; 
  signal Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_cy_6_Q_2652 : STD_LOGIC; 
  signal Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_cy_7_Q_2653 : STD_LOGIC; 
  signal Mcompar_GND_100_o_cnt_31_LessThan_9_o_lutdi_2656 : STD_LOGIC; 
  signal Mcompar_GND_100_o_cnt_31_LessThan_9_o_lut_0_Q_2657 : STD_LOGIC; 
  signal Mcompar_GND_100_o_cnt_31_LessThan_9_o_cy_0_Q_2658 : STD_LOGIC; 
  signal Mcompar_GND_100_o_cnt_31_LessThan_9_o_lutdi1_2659 : STD_LOGIC; 
  signal Mcompar_GND_100_o_cnt_31_LessThan_9_o_lut_1_Q_2660 : STD_LOGIC; 
  signal Mcompar_GND_100_o_cnt_31_LessThan_9_o_cy_1_Q_2661 : STD_LOGIC; 
  signal Mcompar_GND_100_o_cnt_31_LessThan_9_o_lutdi2_2662 : STD_LOGIC; 
  signal Mcompar_GND_100_o_cnt_31_LessThan_9_o_lut_2_Q_2663 : STD_LOGIC; 
  signal Mcompar_GND_100_o_cnt_31_LessThan_9_o_cy_2_Q_2664 : STD_LOGIC; 
  signal Mcompar_GND_100_o_cnt_31_LessThan_9_o_lutdi3_2665 : STD_LOGIC; 
  signal Mcompar_GND_100_o_cnt_31_LessThan_9_o_lut_3_Q_2666 : STD_LOGIC; 
  signal Mcompar_GND_100_o_cnt_31_LessThan_9_o_cy_3_Q_2667 : STD_LOGIC; 
  signal Mcompar_GND_100_o_cnt_31_LessThan_9_o_lutdi4_2668 : STD_LOGIC; 
  signal Mcompar_GND_100_o_cnt_31_LessThan_9_o_lut_4_Q_2669 : STD_LOGIC; 
  signal Mcompar_GND_100_o_cnt_31_LessThan_9_o_cy_4_Q_2670 : STD_LOGIC; 
  signal Mcompar_GND_100_o_cnt_31_LessThan_9_o_lutdi5_2671 : STD_LOGIC; 
  signal Mcompar_GND_100_o_cnt_31_LessThan_9_o_lut_5_Q_2672 : STD_LOGIC; 
  signal Mcompar_GND_100_o_cnt_31_LessThan_9_o_cy_5_Q_2673 : STD_LOGIC; 
  signal Mcompar_GND_100_o_cnt_31_LessThan_9_o_cy_6_Q_2674 : STD_LOGIC; 
  signal Mmux_GND_100_o_X_82_o_Mux_10_o_4_2691 : STD_LOGIC; 
  signal Mmux_GND_100_o_X_82_o_Mux_10_o_10_2692 : STD_LOGIC; 
  signal Mmux_GND_100_o_X_82_o_Mux_10_o_91_2693 : STD_LOGIC; 
  signal Mmux_GND_100_o_X_82_o_Mux_10_o_9_2694 : STD_LOGIC; 
  signal Mmux_GND_100_o_X_82_o_Mux_10_o_8_2695 : STD_LOGIC; 
  signal Mmux_GND_100_o_X_82_o_Mux_10_o_3_2696 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal STATE_FSM_FFd5_In1_2698 : STD_LOGIC; 
  signal STATE_FSM_FFd5_In2_2699 : STD_LOGIC; 
  signal STATE_FSM_FFd5_In3_2700 : STD_LOGIC; 
  signal Mcount_INTERNAL_COUNTER_cy_1_rt_2701 : STD_LOGIC; 
  signal Mcount_INTERNAL_COUNTER_cy_2_rt_2702 : STD_LOGIC; 
  signal Mcount_INTERNAL_COUNTER_cy_3_rt_2703 : STD_LOGIC; 
  signal Mcount_INTERNAL_COUNTER_cy_4_rt_2704 : STD_LOGIC; 
  signal Mcount_INTERNAL_COUNTER_cy_5_rt_2705 : STD_LOGIC; 
  signal Mcount_INTERNAL_COUNTER_cy_6_rt_2706 : STD_LOGIC; 
  signal Mcount_INTERNAL_COUNTER_cy_7_rt_2707 : STD_LOGIC; 
  signal Mcount_INTERNAL_COUNTER_cy_8_rt_2708 : STD_LOGIC; 
  signal Mcount_INTERNAL_COUNTER_cy_9_rt_2709 : STD_LOGIC; 
  signal Mcount_INTERNAL_COUNTER_cy_10_rt_2710 : STD_LOGIC; 
  signal Mcount_INTERNAL_COUNTER_cy_11_rt_2711 : STD_LOGIC; 
  signal Mcount_INTERNAL_COUNTER_cy_12_rt_2712 : STD_LOGIC; 
  signal Mcount_INTERNAL_COUNTER_cy_13_rt_2713 : STD_LOGIC; 
  signal Mcount_INTERNAL_COUNTER_cy_14_rt_2714 : STD_LOGIC; 
  signal Mcount_INTERNAL_COUNTER_xor_15_rt_2715 : STD_LOGIC; 
  signal PCLK_i_rstpot_2716 : STD_LOGIC; 
  signal busy_rstpot_2717 : STD_LOGIC; 
  signal SIN_i_rstpot_2718 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal UPDATE_REG : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal INTERNAL_COUNTER : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal cnt : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal Mcount_cnt_lut : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal Mcount_cnt_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Mcount_INTERNAL_COUNTER_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Mcount_INTERNAL_COUNTER_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
begin
  busy <= NlwRenamedSig_OI_busy;
  XST_VCC : VCC
    port map (
      P => N0
    );
  XST_GND : GND
    port map (
      G => N1
    );
  UPDATE_REG_0 : FD_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => UPDATE,
      Q => UPDATE_REG(0)
    );
  UPDATE_REG_1 : FD_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => UPDATE_REG(0),
      Q => UPDATE_REG(1)
    );
  ENABLE_COUNTER : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => STATE_4_X_82_o_Mux_39_o,
      Q => ENABLE_COUNTER_2425
    );
  SCLK_i : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => STATE_4_X_82_o_Mux_35_o,
      Q => SCLK_i_2424
    );
  SCLK_2271 : FD
    port map (
      C => CLK,
      D => SCLK_i_2424,
      Q => SCLK
    );
  PCLK_2272 : FD
    port map (
      C => CLK,
      D => PCLK_i_2449,
      Q => PCLK
    );
  SIN_2273 : FD
    port map (
      C => CLK,
      D => SIN_i_2448,
      Q => SIN
    );
  Mcount_cnt_cy_0_Q : MUXCY
    port map (
      CI => STATE_FSM_FFd2_2492,
      DI => N1,
      S => Mcount_cnt_lut(0),
      O => Mcount_cnt_cy(0)
    );
  Mcount_cnt_xor_0_Q : XORCY
    port map (
      CI => STATE_FSM_FFd2_2492,
      LI => Mcount_cnt_lut(0),
      O => Mcount_cnt
    );
  Mcount_cnt_cy_1_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(0),
      DI => N1,
      S => Mcount_cnt_lut(1),
      O => Mcount_cnt_cy(1)
    );
  Mcount_cnt_xor_1_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(0),
      LI => Mcount_cnt_lut(1),
      O => Mcount_cnt1
    );
  Mcount_cnt_cy_2_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(1),
      DI => N1,
      S => Mcount_cnt_lut(2),
      O => Mcount_cnt_cy(2)
    );
  Mcount_cnt_xor_2_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(1),
      LI => Mcount_cnt_lut(2),
      O => Mcount_cnt2
    );
  Mcount_cnt_cy_3_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(2),
      DI => N1,
      S => Mcount_cnt_lut(3),
      O => Mcount_cnt_cy(3)
    );
  Mcount_cnt_xor_3_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(2),
      LI => Mcount_cnt_lut(3),
      O => Mcount_cnt3
    );
  Mcount_cnt_cy_4_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(3),
      DI => N1,
      S => Mcount_cnt_lut(4),
      O => Mcount_cnt_cy(4)
    );
  Mcount_cnt_xor_4_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(3),
      LI => Mcount_cnt_lut(4),
      O => Mcount_cnt4
    );
  Mcount_cnt_cy_5_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(4),
      DI => N1,
      S => Mcount_cnt_lut(5),
      O => Mcount_cnt_cy(5)
    );
  Mcount_cnt_xor_5_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(4),
      LI => Mcount_cnt_lut(5),
      O => Mcount_cnt5
    );
  Mcount_cnt_cy_6_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(5),
      DI => N1,
      S => Mcount_cnt_lut(6),
      O => Mcount_cnt_cy(6)
    );
  Mcount_cnt_xor_6_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(5),
      LI => Mcount_cnt_lut(6),
      O => Mcount_cnt6
    );
  Mcount_cnt_cy_7_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(6),
      DI => N1,
      S => Mcount_cnt_lut(7),
      O => Mcount_cnt_cy(7)
    );
  Mcount_cnt_xor_7_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(6),
      LI => Mcount_cnt_lut(7),
      O => Mcount_cnt7
    );
  Mcount_cnt_cy_8_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(7),
      DI => N1,
      S => Mcount_cnt_lut(8),
      O => Mcount_cnt_cy(8)
    );
  Mcount_cnt_xor_8_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(7),
      LI => Mcount_cnt_lut(8),
      O => Mcount_cnt8
    );
  Mcount_cnt_cy_9_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(8),
      DI => N1,
      S => Mcount_cnt_lut(9),
      O => Mcount_cnt_cy(9)
    );
  Mcount_cnt_xor_9_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(8),
      LI => Mcount_cnt_lut(9),
      O => Mcount_cnt9
    );
  Mcount_cnt_cy_10_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(9),
      DI => N1,
      S => Mcount_cnt_lut(10),
      O => Mcount_cnt_cy(10)
    );
  Mcount_cnt_xor_10_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(9),
      LI => Mcount_cnt_lut(10),
      O => Mcount_cnt10
    );
  Mcount_cnt_cy_11_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(10),
      DI => N1,
      S => Mcount_cnt_lut(11),
      O => Mcount_cnt_cy(11)
    );
  Mcount_cnt_xor_11_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(10),
      LI => Mcount_cnt_lut(11),
      O => Mcount_cnt11
    );
  Mcount_cnt_cy_12_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(11),
      DI => N1,
      S => Mcount_cnt_lut(12),
      O => Mcount_cnt_cy(12)
    );
  Mcount_cnt_xor_12_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(11),
      LI => Mcount_cnt_lut(12),
      O => Mcount_cnt12
    );
  Mcount_cnt_cy_13_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(12),
      DI => N1,
      S => Mcount_cnt_lut(13),
      O => Mcount_cnt_cy(13)
    );
  Mcount_cnt_xor_13_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(12),
      LI => Mcount_cnt_lut(13),
      O => Mcount_cnt13
    );
  Mcount_cnt_cy_14_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(13),
      DI => N1,
      S => Mcount_cnt_lut(14),
      O => Mcount_cnt_cy(14)
    );
  Mcount_cnt_xor_14_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(13),
      LI => Mcount_cnt_lut(14),
      O => Mcount_cnt14
    );
  Mcount_cnt_cy_15_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(14),
      DI => N1,
      S => Mcount_cnt_lut(15),
      O => Mcount_cnt_cy(15)
    );
  Mcount_cnt_xor_15_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(14),
      LI => Mcount_cnt_lut(15),
      O => Mcount_cnt15
    );
  Mcount_cnt_cy_16_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(15),
      DI => N1,
      S => Mcount_cnt_lut(16),
      O => Mcount_cnt_cy(16)
    );
  Mcount_cnt_xor_16_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(15),
      LI => Mcount_cnt_lut(16),
      O => Mcount_cnt16
    );
  Mcount_cnt_cy_17_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(16),
      DI => N1,
      S => Mcount_cnt_lut(17),
      O => Mcount_cnt_cy(17)
    );
  Mcount_cnt_xor_17_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(16),
      LI => Mcount_cnt_lut(17),
      O => Mcount_cnt17
    );
  Mcount_cnt_cy_18_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(17),
      DI => N1,
      S => Mcount_cnt_lut(18),
      O => Mcount_cnt_cy(18)
    );
  Mcount_cnt_xor_18_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(17),
      LI => Mcount_cnt_lut(18),
      O => Mcount_cnt18
    );
  Mcount_cnt_cy_19_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(18),
      DI => N1,
      S => Mcount_cnt_lut(19),
      O => Mcount_cnt_cy(19)
    );
  Mcount_cnt_xor_19_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(18),
      LI => Mcount_cnt_lut(19),
      O => Mcount_cnt19
    );
  Mcount_cnt_cy_20_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(19),
      DI => N1,
      S => Mcount_cnt_lut(20),
      O => Mcount_cnt_cy(20)
    );
  Mcount_cnt_xor_20_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(19),
      LI => Mcount_cnt_lut(20),
      O => Mcount_cnt20
    );
  Mcount_cnt_cy_21_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(20),
      DI => N1,
      S => Mcount_cnt_lut(21),
      O => Mcount_cnt_cy(21)
    );
  Mcount_cnt_xor_21_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(20),
      LI => Mcount_cnt_lut(21),
      O => Mcount_cnt21
    );
  Mcount_cnt_cy_22_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(21),
      DI => N1,
      S => Mcount_cnt_lut(22),
      O => Mcount_cnt_cy(22)
    );
  Mcount_cnt_xor_22_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(21),
      LI => Mcount_cnt_lut(22),
      O => Mcount_cnt22
    );
  Mcount_cnt_cy_23_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(22),
      DI => N1,
      S => Mcount_cnt_lut(23),
      O => Mcount_cnt_cy(23)
    );
  Mcount_cnt_xor_23_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(22),
      LI => Mcount_cnt_lut(23),
      O => Mcount_cnt23
    );
  Mcount_cnt_cy_24_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(23),
      DI => N1,
      S => Mcount_cnt_lut(24),
      O => Mcount_cnt_cy(24)
    );
  Mcount_cnt_xor_24_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(23),
      LI => Mcount_cnt_lut(24),
      O => Mcount_cnt24
    );
  Mcount_cnt_cy_25_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(24),
      DI => N1,
      S => Mcount_cnt_lut(25),
      O => Mcount_cnt_cy(25)
    );
  Mcount_cnt_xor_25_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(24),
      LI => Mcount_cnt_lut(25),
      O => Mcount_cnt25
    );
  Mcount_cnt_cy_26_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(25),
      DI => N1,
      S => Mcount_cnt_lut(26),
      O => Mcount_cnt_cy(26)
    );
  Mcount_cnt_xor_26_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(25),
      LI => Mcount_cnt_lut(26),
      O => Mcount_cnt26
    );
  Mcount_cnt_cy_27_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(26),
      DI => N1,
      S => Mcount_cnt_lut(27),
      O => Mcount_cnt_cy(27)
    );
  Mcount_cnt_xor_27_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(26),
      LI => Mcount_cnt_lut(27),
      O => Mcount_cnt27
    );
  Mcount_cnt_cy_28_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(27),
      DI => N1,
      S => Mcount_cnt_lut(28),
      O => Mcount_cnt_cy(28)
    );
  Mcount_cnt_xor_28_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(27),
      LI => Mcount_cnt_lut(28),
      O => Mcount_cnt28
    );
  Mcount_cnt_cy_29_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(28),
      DI => N1,
      S => Mcount_cnt_lut(29),
      O => Mcount_cnt_cy(29)
    );
  Mcount_cnt_xor_29_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(28),
      LI => Mcount_cnt_lut(29),
      O => Mcount_cnt29
    );
  Mcount_cnt_cy_30_Q : MUXCY
    port map (
      CI => Mcount_cnt_cy(29),
      DI => N1,
      S => Mcount_cnt_lut(30),
      O => Mcount_cnt_cy(30)
    );
  Mcount_cnt_xor_30_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(29),
      LI => Mcount_cnt_lut(30),
      O => Mcount_cnt30
    );
  Mcount_cnt_xor_31_Q : XORCY
    port map (
      CI => Mcount_cnt_cy(30),
      LI => Mcount_cnt_lut(31),
      O => Mcount_cnt31
    );
  cnt_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0207_inv,
      D => Mcount_cnt,
      Q => cnt(0)
    );
  cnt_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0207_inv,
      D => Mcount_cnt1,
      Q => cnt(1)
    );
  cnt_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0207_inv,
      D => Mcount_cnt2,
      Q => cnt(2)
    );
  cnt_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0207_inv,
      D => Mcount_cnt3,
      Q => cnt(3)
    );
  cnt_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0207_inv,
      D => Mcount_cnt4,
      Q => cnt(4)
    );
  cnt_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0207_inv,
      D => Mcount_cnt5,
      Q => cnt(5)
    );
  cnt_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0207_inv,
      D => Mcount_cnt6,
      Q => cnt(6)
    );
  cnt_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0207_inv,
      D => Mcount_cnt7,
      Q => cnt(7)
    );
  cnt_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0207_inv,
      D => Mcount_cnt8,
      Q => cnt(8)
    );
  cnt_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0207_inv,
      D => Mcount_cnt9,
      Q => cnt(9)
    );
  cnt_10 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0207_inv,
      D => Mcount_cnt10,
      Q => cnt(10)
    );
  cnt_11 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0207_inv,
      D => Mcount_cnt11,
      Q => cnt(11)
    );
  cnt_12 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0207_inv,
      D => Mcount_cnt12,
      Q => cnt(12)
    );
  cnt_13 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0207_inv,
      D => Mcount_cnt13,
      Q => cnt(13)
    );
  cnt_14 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0207_inv,
      D => Mcount_cnt14,
      Q => cnt(14)
    );
  cnt_15 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0207_inv,
      D => Mcount_cnt15,
      Q => cnt(15)
    );
  cnt_16 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0207_inv,
      D => Mcount_cnt16,
      Q => cnt(16)
    );
  cnt_17 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0207_inv,
      D => Mcount_cnt17,
      Q => cnt(17)
    );
  cnt_18 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0207_inv,
      D => Mcount_cnt18,
      Q => cnt(18)
    );
  cnt_19 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0207_inv,
      D => Mcount_cnt19,
      Q => cnt(19)
    );
  cnt_20 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0207_inv,
      D => Mcount_cnt20,
      Q => cnt(20)
    );
  cnt_21 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0207_inv,
      D => Mcount_cnt21,
      Q => cnt(21)
    );
  cnt_22 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0207_inv,
      D => Mcount_cnt22,
      Q => cnt(22)
    );
  cnt_23 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0207_inv,
      D => Mcount_cnt23,
      Q => cnt(23)
    );
  cnt_24 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0207_inv,
      D => Mcount_cnt24,
      Q => cnt(24)
    );
  cnt_25 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0207_inv,
      D => Mcount_cnt25,
      Q => cnt(25)
    );
  cnt_26 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0207_inv,
      D => Mcount_cnt26,
      Q => cnt(26)
    );
  cnt_27 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0207_inv,
      D => Mcount_cnt27,
      Q => cnt(27)
    );
  cnt_28 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0207_inv,
      D => Mcount_cnt28,
      Q => cnt(28)
    );
  cnt_29 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0207_inv,
      D => Mcount_cnt29,
      Q => cnt(29)
    );
  cnt_30 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0207_inv,
      D => Mcount_cnt30,
      Q => cnt(30)
    );
  cnt_31 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0207_inv,
      D => Mcount_cnt31,
      Q => cnt(31)
    );
  STATE_FSM_FFd5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => STATE_FSM_FFd5_In,
      Q => STATE_FSM_FFd5_2445
    );
  STATE_FSM_FFd4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => STATE_FSM_FFd4_In_2606,
      Q => STATE_FSM_FFd4_2444
    );
  STATE_FSM_FFd3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => STATE_FSM_FFd3_In_2607,
      Q => STATE_FSM_FFd3_2443
    );
  STATE_FSM_FFd2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => STATE_FSM_FFd2_In,
      Q => STATE_FSM_FFd2_2492
    );
  STATE_FSM_FFd1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => STATE_FSM_FFd1_In,
      Q => STATE_FSM_FFd1_2442
    );
  INTERNAL_COUNTER_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => Result(0),
      R => ENABLE_COUNTER_inv,
      Q => INTERNAL_COUNTER(0)
    );
  INTERNAL_COUNTER_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => Result(1),
      R => ENABLE_COUNTER_inv,
      Q => INTERNAL_COUNTER(1)
    );
  INTERNAL_COUNTER_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => Result(2),
      R => ENABLE_COUNTER_inv,
      Q => INTERNAL_COUNTER(2)
    );
  INTERNAL_COUNTER_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => Result(3),
      R => ENABLE_COUNTER_inv,
      Q => INTERNAL_COUNTER(3)
    );
  INTERNAL_COUNTER_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => Result(4),
      R => ENABLE_COUNTER_inv,
      Q => INTERNAL_COUNTER(4)
    );
  INTERNAL_COUNTER_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => Result(5),
      R => ENABLE_COUNTER_inv,
      Q => INTERNAL_COUNTER(5)
    );
  INTERNAL_COUNTER_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => Result(6),
      R => ENABLE_COUNTER_inv,
      Q => INTERNAL_COUNTER(6)
    );
  INTERNAL_COUNTER_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => Result(7),
      R => ENABLE_COUNTER_inv,
      Q => INTERNAL_COUNTER(7)
    );
  INTERNAL_COUNTER_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => Result(8),
      R => ENABLE_COUNTER_inv,
      Q => INTERNAL_COUNTER(8)
    );
  INTERNAL_COUNTER_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => Result(9),
      R => ENABLE_COUNTER_inv,
      Q => INTERNAL_COUNTER(9)
    );
  INTERNAL_COUNTER_10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => Result(10),
      R => ENABLE_COUNTER_inv,
      Q => INTERNAL_COUNTER(10)
    );
  INTERNAL_COUNTER_11 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => Result(11),
      R => ENABLE_COUNTER_inv,
      Q => INTERNAL_COUNTER(11)
    );
  INTERNAL_COUNTER_12 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => Result(12),
      R => ENABLE_COUNTER_inv,
      Q => INTERNAL_COUNTER(12)
    );
  INTERNAL_COUNTER_13 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => Result(13),
      R => ENABLE_COUNTER_inv,
      Q => INTERNAL_COUNTER(13)
    );
  INTERNAL_COUNTER_14 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => Result(14),
      R => ENABLE_COUNTER_inv,
      Q => INTERNAL_COUNTER(14)
    );
  INTERNAL_COUNTER_15 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => Result(15),
      R => ENABLE_COUNTER_inv,
      Q => INTERNAL_COUNTER(15)
    );
  Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lutdi : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => LOAD_PERIOD(1),
      I1 => LOAD_PERIOD(0),
      I2 => INTERNAL_COUNTER(0),
      I3 => INTERNAL_COUNTER(1),
      O => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lutdi_2610
    );
  Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lut_0_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => INTERNAL_COUNTER(0),
      I1 => LOAD_PERIOD(0),
      I2 => INTERNAL_COUNTER(1),
      I3 => LOAD_PERIOD(1),
      O => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lut_0_Q_2611
    );
  Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lutdi_2610,
      S => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lut_0_Q_2611,
      O => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_cy_0_Q_2612
    );
  Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lutdi1 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => LOAD_PERIOD(3),
      I1 => LOAD_PERIOD(2),
      I2 => INTERNAL_COUNTER(2),
      I3 => INTERNAL_COUNTER(3),
      O => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lutdi1_2613
    );
  Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lut_1_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => INTERNAL_COUNTER(2),
      I1 => LOAD_PERIOD(2),
      I2 => INTERNAL_COUNTER(3),
      I3 => LOAD_PERIOD(3),
      O => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lut_1_Q_2614
    );
  Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_cy_0_Q_2612,
      DI => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lutdi1_2613,
      S => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lut_1_Q_2614,
      O => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_cy_1_Q_2615
    );
  Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lutdi2 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => LOAD_PERIOD(5),
      I1 => LOAD_PERIOD(4),
      I2 => INTERNAL_COUNTER(4),
      I3 => INTERNAL_COUNTER(5),
      O => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lutdi2_2616
    );
  Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lut_2_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => INTERNAL_COUNTER(4),
      I1 => LOAD_PERIOD(4),
      I2 => INTERNAL_COUNTER(5),
      I3 => LOAD_PERIOD(5),
      O => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lut_2_Q_2617
    );
  Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_cy_1_Q_2615,
      DI => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lutdi2_2616,
      S => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lut_2_Q_2617,
      O => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_cy_2_Q_2618
    );
  Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lutdi3 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => LOAD_PERIOD(7),
      I1 => LOAD_PERIOD(6),
      I2 => INTERNAL_COUNTER(6),
      I3 => INTERNAL_COUNTER(7),
      O => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lutdi3_2619
    );
  Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lut_3_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => INTERNAL_COUNTER(6),
      I1 => LOAD_PERIOD(6),
      I2 => INTERNAL_COUNTER(7),
      I3 => LOAD_PERIOD(7),
      O => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lut_3_Q_2620
    );
  Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_cy_2_Q_2618,
      DI => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lutdi3_2619,
      S => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lut_3_Q_2620,
      O => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_cy_3_Q_2621
    );
  Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lutdi4 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => LOAD_PERIOD(9),
      I1 => LOAD_PERIOD(8),
      I2 => INTERNAL_COUNTER(8),
      I3 => INTERNAL_COUNTER(9),
      O => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lutdi4_2622
    );
  Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lut_4_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => INTERNAL_COUNTER(8),
      I1 => LOAD_PERIOD(8),
      I2 => INTERNAL_COUNTER(9),
      I3 => LOAD_PERIOD(9),
      O => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lut_4_Q_2623
    );
  Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_cy_3_Q_2621,
      DI => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lutdi4_2622,
      S => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lut_4_Q_2623,
      O => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_cy_4_Q_2624
    );
  Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lutdi5 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => LOAD_PERIOD(11),
      I1 => LOAD_PERIOD(10),
      I2 => INTERNAL_COUNTER(10),
      I3 => INTERNAL_COUNTER(11),
      O => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lutdi5_2625
    );
  Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lut_5_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => INTERNAL_COUNTER(10),
      I1 => LOAD_PERIOD(10),
      I2 => INTERNAL_COUNTER(11),
      I3 => LOAD_PERIOD(11),
      O => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lut_5_Q_2626
    );
  Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_cy_4_Q_2624,
      DI => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lutdi5_2625,
      S => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lut_5_Q_2626,
      O => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_cy_5_Q_2627
    );
  Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lutdi6 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => LOAD_PERIOD(13),
      I1 => LOAD_PERIOD(12),
      I2 => INTERNAL_COUNTER(12),
      I3 => INTERNAL_COUNTER(13),
      O => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lutdi6_2628
    );
  Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lut_6_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => INTERNAL_COUNTER(12),
      I1 => LOAD_PERIOD(12),
      I2 => INTERNAL_COUNTER(13),
      I3 => LOAD_PERIOD(13),
      O => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lut_6_Q_2629
    );
  Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_cy_5_Q_2627,
      DI => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lutdi6_2628,
      S => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_lut_6_Q_2629,
      O => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_cy_6_Q_2630
    );
  Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lutdi : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => LATCH_PERIOD(1),
      I1 => LATCH_PERIOD(0),
      I2 => INTERNAL_COUNTER(0),
      I3 => INTERNAL_COUNTER(1),
      O => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lutdi_2632
    );
  Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lut_0_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => INTERNAL_COUNTER(0),
      I1 => LATCH_PERIOD(0),
      I2 => INTERNAL_COUNTER(1),
      I3 => LATCH_PERIOD(1),
      O => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lut_0_Q_2633
    );
  Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lutdi_2632,
      S => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lut_0_Q_2633,
      O => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_cy_0_Q_2634
    );
  Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lutdi1 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => LATCH_PERIOD(3),
      I1 => LATCH_PERIOD(2),
      I2 => INTERNAL_COUNTER(2),
      I3 => INTERNAL_COUNTER(3),
      O => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lutdi1_2635
    );
  Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lut_1_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => INTERNAL_COUNTER(2),
      I1 => LATCH_PERIOD(2),
      I2 => INTERNAL_COUNTER(3),
      I3 => LATCH_PERIOD(3),
      O => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lut_1_Q_2636
    );
  Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_cy_0_Q_2634,
      DI => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lutdi1_2635,
      S => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lut_1_Q_2636,
      O => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_cy_1_Q_2637
    );
  Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lutdi2 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => LATCH_PERIOD(5),
      I1 => LATCH_PERIOD(4),
      I2 => INTERNAL_COUNTER(4),
      I3 => INTERNAL_COUNTER(5),
      O => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lutdi2_2638
    );
  Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lut_2_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => INTERNAL_COUNTER(4),
      I1 => LATCH_PERIOD(4),
      I2 => INTERNAL_COUNTER(5),
      I3 => LATCH_PERIOD(5),
      O => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lut_2_Q_2639
    );
  Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_cy_1_Q_2637,
      DI => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lutdi2_2638,
      S => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lut_2_Q_2639,
      O => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_cy_2_Q_2640
    );
  Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lutdi3 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => LATCH_PERIOD(7),
      I1 => LATCH_PERIOD(6),
      I2 => INTERNAL_COUNTER(6),
      I3 => INTERNAL_COUNTER(7),
      O => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lutdi3_2641
    );
  Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lut_3_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => INTERNAL_COUNTER(6),
      I1 => LATCH_PERIOD(6),
      I2 => INTERNAL_COUNTER(7),
      I3 => LATCH_PERIOD(7),
      O => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lut_3_Q_2642
    );
  Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_cy_2_Q_2640,
      DI => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lutdi3_2641,
      S => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lut_3_Q_2642,
      O => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_cy_3_Q_2643
    );
  Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lutdi4 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => LATCH_PERIOD(9),
      I1 => LATCH_PERIOD(8),
      I2 => INTERNAL_COUNTER(8),
      I3 => INTERNAL_COUNTER(9),
      O => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lutdi4_2644
    );
  Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lut_4_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => INTERNAL_COUNTER(8),
      I1 => LATCH_PERIOD(8),
      I2 => INTERNAL_COUNTER(9),
      I3 => LATCH_PERIOD(9),
      O => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lut_4_Q_2645
    );
  Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_cy_3_Q_2643,
      DI => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lutdi4_2644,
      S => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lut_4_Q_2645,
      O => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_cy_4_Q_2646
    );
  Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lutdi5 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => LATCH_PERIOD(11),
      I1 => LATCH_PERIOD(10),
      I2 => INTERNAL_COUNTER(10),
      I3 => INTERNAL_COUNTER(11),
      O => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lutdi5_2647
    );
  Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lut_5_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => INTERNAL_COUNTER(10),
      I1 => LATCH_PERIOD(10),
      I2 => INTERNAL_COUNTER(11),
      I3 => LATCH_PERIOD(11),
      O => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lut_5_Q_2648
    );
  Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_cy_4_Q_2646,
      DI => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lutdi5_2647,
      S => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lut_5_Q_2648,
      O => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_cy_5_Q_2649
    );
  Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lutdi6 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => LATCH_PERIOD(13),
      I1 => LATCH_PERIOD(12),
      I2 => INTERNAL_COUNTER(12),
      I3 => INTERNAL_COUNTER(13),
      O => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lutdi6_2650
    );
  Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lut_6_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => INTERNAL_COUNTER(12),
      I1 => LATCH_PERIOD(12),
      I2 => INTERNAL_COUNTER(13),
      I3 => LATCH_PERIOD(13),
      O => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lut_6_Q_2651
    );
  Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_cy_5_Q_2649,
      DI => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lutdi6_2650,
      S => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_lut_6_Q_2651,
      O => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_cy_6_Q_2652
    );
  Mcompar_GND_100_o_cnt_31_LessThan_9_o_lutdi : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => cnt(4),
      I1 => cnt(3),
      I2 => cnt(2),
      O => Mcompar_GND_100_o_cnt_31_LessThan_9_o_lutdi_2656
    );
  Mcompar_GND_100_o_cnt_31_LessThan_9_o_lut_0_Q : LUT5
    generic map(
      INIT => X"00004000"
    )
    port map (
      I0 => cnt(2),
      I1 => cnt(4),
      I2 => cnt(0),
      I3 => cnt(1),
      I4 => cnt(3),
      O => Mcompar_GND_100_o_cnt_31_LessThan_9_o_lut_0_Q_2657
    );
  Mcompar_GND_100_o_cnt_31_LessThan_9_o_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => Mcompar_GND_100_o_cnt_31_LessThan_9_o_lutdi_2656,
      S => Mcompar_GND_100_o_cnt_31_LessThan_9_o_lut_0_Q_2657,
      O => Mcompar_GND_100_o_cnt_31_LessThan_9_o_cy_0_Q_2658
    );
  Mcompar_GND_100_o_cnt_31_LessThan_9_o_lutdi1 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => cnt(9),
      I1 => cnt(8),
      I2 => cnt(7),
      I3 => cnt(6),
      I4 => cnt(5),
      O => Mcompar_GND_100_o_cnt_31_LessThan_9_o_lutdi1_2659
    );
  Mcompar_GND_100_o_cnt_31_LessThan_9_o_lut_1_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => cnt(5),
      I1 => cnt(6),
      I2 => cnt(7),
      I3 => cnt(8),
      I4 => cnt(9),
      O => Mcompar_GND_100_o_cnt_31_LessThan_9_o_lut_1_Q_2660
    );
  Mcompar_GND_100_o_cnt_31_LessThan_9_o_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_GND_100_o_cnt_31_LessThan_9_o_cy_0_Q_2658,
      DI => Mcompar_GND_100_o_cnt_31_LessThan_9_o_lutdi1_2659,
      S => Mcompar_GND_100_o_cnt_31_LessThan_9_o_lut_1_Q_2660,
      O => Mcompar_GND_100_o_cnt_31_LessThan_9_o_cy_1_Q_2661
    );
  Mcompar_GND_100_o_cnt_31_LessThan_9_o_lutdi2 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => cnt(14),
      I1 => cnt(13),
      I2 => cnt(12),
      I3 => cnt(11),
      I4 => cnt(10),
      O => Mcompar_GND_100_o_cnt_31_LessThan_9_o_lutdi2_2662
    );
  Mcompar_GND_100_o_cnt_31_LessThan_9_o_lut_2_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => cnt(10),
      I1 => cnt(11),
      I2 => cnt(12),
      I3 => cnt(13),
      I4 => cnt(14),
      O => Mcompar_GND_100_o_cnt_31_LessThan_9_o_lut_2_Q_2663
    );
  Mcompar_GND_100_o_cnt_31_LessThan_9_o_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_GND_100_o_cnt_31_LessThan_9_o_cy_1_Q_2661,
      DI => Mcompar_GND_100_o_cnt_31_LessThan_9_o_lutdi2_2662,
      S => Mcompar_GND_100_o_cnt_31_LessThan_9_o_lut_2_Q_2663,
      O => Mcompar_GND_100_o_cnt_31_LessThan_9_o_cy_2_Q_2664
    );
  Mcompar_GND_100_o_cnt_31_LessThan_9_o_lutdi3 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => cnt(19),
      I1 => cnt(18),
      I2 => cnt(17),
      I3 => cnt(16),
      I4 => cnt(15),
      O => Mcompar_GND_100_o_cnt_31_LessThan_9_o_lutdi3_2665
    );
  Mcompar_GND_100_o_cnt_31_LessThan_9_o_lut_3_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => cnt(15),
      I1 => cnt(16),
      I2 => cnt(17),
      I3 => cnt(18),
      I4 => cnt(19),
      O => Mcompar_GND_100_o_cnt_31_LessThan_9_o_lut_3_Q_2666
    );
  Mcompar_GND_100_o_cnt_31_LessThan_9_o_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_GND_100_o_cnt_31_LessThan_9_o_cy_2_Q_2664,
      DI => Mcompar_GND_100_o_cnt_31_LessThan_9_o_lutdi3_2665,
      S => Mcompar_GND_100_o_cnt_31_LessThan_9_o_lut_3_Q_2666,
      O => Mcompar_GND_100_o_cnt_31_LessThan_9_o_cy_3_Q_2667
    );
  Mcompar_GND_100_o_cnt_31_LessThan_9_o_lutdi4 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => cnt(24),
      I1 => cnt(23),
      I2 => cnt(22),
      I3 => cnt(21),
      I4 => cnt(20),
      O => Mcompar_GND_100_o_cnt_31_LessThan_9_o_lutdi4_2668
    );
  Mcompar_GND_100_o_cnt_31_LessThan_9_o_lut_4_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => cnt(20),
      I1 => cnt(21),
      I2 => cnt(22),
      I3 => cnt(23),
      I4 => cnt(24),
      O => Mcompar_GND_100_o_cnt_31_LessThan_9_o_lut_4_Q_2669
    );
  Mcompar_GND_100_o_cnt_31_LessThan_9_o_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_GND_100_o_cnt_31_LessThan_9_o_cy_3_Q_2667,
      DI => Mcompar_GND_100_o_cnt_31_LessThan_9_o_lutdi4_2668,
      S => Mcompar_GND_100_o_cnt_31_LessThan_9_o_lut_4_Q_2669,
      O => Mcompar_GND_100_o_cnt_31_LessThan_9_o_cy_4_Q_2670
    );
  Mcompar_GND_100_o_cnt_31_LessThan_9_o_lutdi5 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => cnt(29),
      I1 => cnt(28),
      I2 => cnt(27),
      I3 => cnt(26),
      I4 => cnt(25),
      O => Mcompar_GND_100_o_cnt_31_LessThan_9_o_lutdi5_2671
    );
  Mcompar_GND_100_o_cnt_31_LessThan_9_o_lut_5_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => cnt(25),
      I1 => cnt(26),
      I2 => cnt(27),
      I3 => cnt(28),
      I4 => cnt(29),
      O => Mcompar_GND_100_o_cnt_31_LessThan_9_o_lut_5_Q_2672
    );
  Mcompar_GND_100_o_cnt_31_LessThan_9_o_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_GND_100_o_cnt_31_LessThan_9_o_cy_4_Q_2670,
      DI => Mcompar_GND_100_o_cnt_31_LessThan_9_o_lutdi5_2671,
      S => Mcompar_GND_100_o_cnt_31_LessThan_9_o_lut_5_Q_2672,
      O => Mcompar_GND_100_o_cnt_31_LessThan_9_o_cy_5_Q_2673
    );
  Mcount_INTERNAL_COUNTER_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcount_INTERNAL_COUNTER_lut(0),
      O => Mcount_INTERNAL_COUNTER_cy(0)
    );
  Mcount_INTERNAL_COUNTER_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => Mcount_INTERNAL_COUNTER_lut(0),
      O => Result(0)
    );
  Mcount_INTERNAL_COUNTER_cy_1_Q : MUXCY
    port map (
      CI => Mcount_INTERNAL_COUNTER_cy(0),
      DI => N1,
      S => Mcount_INTERNAL_COUNTER_cy_1_rt_2701,
      O => Mcount_INTERNAL_COUNTER_cy(1)
    );
  Mcount_INTERNAL_COUNTER_xor_1_Q : XORCY
    port map (
      CI => Mcount_INTERNAL_COUNTER_cy(0),
      LI => Mcount_INTERNAL_COUNTER_cy_1_rt_2701,
      O => Result(1)
    );
  Mcount_INTERNAL_COUNTER_cy_2_Q : MUXCY
    port map (
      CI => Mcount_INTERNAL_COUNTER_cy(1),
      DI => N1,
      S => Mcount_INTERNAL_COUNTER_cy_2_rt_2702,
      O => Mcount_INTERNAL_COUNTER_cy(2)
    );
  Mcount_INTERNAL_COUNTER_xor_2_Q : XORCY
    port map (
      CI => Mcount_INTERNAL_COUNTER_cy(1),
      LI => Mcount_INTERNAL_COUNTER_cy_2_rt_2702,
      O => Result(2)
    );
  Mcount_INTERNAL_COUNTER_cy_3_Q : MUXCY
    port map (
      CI => Mcount_INTERNAL_COUNTER_cy(2),
      DI => N1,
      S => Mcount_INTERNAL_COUNTER_cy_3_rt_2703,
      O => Mcount_INTERNAL_COUNTER_cy(3)
    );
  Mcount_INTERNAL_COUNTER_xor_3_Q : XORCY
    port map (
      CI => Mcount_INTERNAL_COUNTER_cy(2),
      LI => Mcount_INTERNAL_COUNTER_cy_3_rt_2703,
      O => Result(3)
    );
  Mcount_INTERNAL_COUNTER_cy_4_Q : MUXCY
    port map (
      CI => Mcount_INTERNAL_COUNTER_cy(3),
      DI => N1,
      S => Mcount_INTERNAL_COUNTER_cy_4_rt_2704,
      O => Mcount_INTERNAL_COUNTER_cy(4)
    );
  Mcount_INTERNAL_COUNTER_xor_4_Q : XORCY
    port map (
      CI => Mcount_INTERNAL_COUNTER_cy(3),
      LI => Mcount_INTERNAL_COUNTER_cy_4_rt_2704,
      O => Result(4)
    );
  Mcount_INTERNAL_COUNTER_cy_5_Q : MUXCY
    port map (
      CI => Mcount_INTERNAL_COUNTER_cy(4),
      DI => N1,
      S => Mcount_INTERNAL_COUNTER_cy_5_rt_2705,
      O => Mcount_INTERNAL_COUNTER_cy(5)
    );
  Mcount_INTERNAL_COUNTER_xor_5_Q : XORCY
    port map (
      CI => Mcount_INTERNAL_COUNTER_cy(4),
      LI => Mcount_INTERNAL_COUNTER_cy_5_rt_2705,
      O => Result(5)
    );
  Mcount_INTERNAL_COUNTER_cy_6_Q : MUXCY
    port map (
      CI => Mcount_INTERNAL_COUNTER_cy(5),
      DI => N1,
      S => Mcount_INTERNAL_COUNTER_cy_6_rt_2706,
      O => Mcount_INTERNAL_COUNTER_cy(6)
    );
  Mcount_INTERNAL_COUNTER_xor_6_Q : XORCY
    port map (
      CI => Mcount_INTERNAL_COUNTER_cy(5),
      LI => Mcount_INTERNAL_COUNTER_cy_6_rt_2706,
      O => Result(6)
    );
  Mcount_INTERNAL_COUNTER_cy_7_Q : MUXCY
    port map (
      CI => Mcount_INTERNAL_COUNTER_cy(6),
      DI => N1,
      S => Mcount_INTERNAL_COUNTER_cy_7_rt_2707,
      O => Mcount_INTERNAL_COUNTER_cy(7)
    );
  Mcount_INTERNAL_COUNTER_xor_7_Q : XORCY
    port map (
      CI => Mcount_INTERNAL_COUNTER_cy(6),
      LI => Mcount_INTERNAL_COUNTER_cy_7_rt_2707,
      O => Result(7)
    );
  Mcount_INTERNAL_COUNTER_cy_8_Q : MUXCY
    port map (
      CI => Mcount_INTERNAL_COUNTER_cy(7),
      DI => N1,
      S => Mcount_INTERNAL_COUNTER_cy_8_rt_2708,
      O => Mcount_INTERNAL_COUNTER_cy(8)
    );
  Mcount_INTERNAL_COUNTER_xor_8_Q : XORCY
    port map (
      CI => Mcount_INTERNAL_COUNTER_cy(7),
      LI => Mcount_INTERNAL_COUNTER_cy_8_rt_2708,
      O => Result(8)
    );
  Mcount_INTERNAL_COUNTER_cy_9_Q : MUXCY
    port map (
      CI => Mcount_INTERNAL_COUNTER_cy(8),
      DI => N1,
      S => Mcount_INTERNAL_COUNTER_cy_9_rt_2709,
      O => Mcount_INTERNAL_COUNTER_cy(9)
    );
  Mcount_INTERNAL_COUNTER_xor_9_Q : XORCY
    port map (
      CI => Mcount_INTERNAL_COUNTER_cy(8),
      LI => Mcount_INTERNAL_COUNTER_cy_9_rt_2709,
      O => Result(9)
    );
  Mcount_INTERNAL_COUNTER_cy_10_Q : MUXCY
    port map (
      CI => Mcount_INTERNAL_COUNTER_cy(9),
      DI => N1,
      S => Mcount_INTERNAL_COUNTER_cy_10_rt_2710,
      O => Mcount_INTERNAL_COUNTER_cy(10)
    );
  Mcount_INTERNAL_COUNTER_xor_10_Q : XORCY
    port map (
      CI => Mcount_INTERNAL_COUNTER_cy(9),
      LI => Mcount_INTERNAL_COUNTER_cy_10_rt_2710,
      O => Result(10)
    );
  Mcount_INTERNAL_COUNTER_cy_11_Q : MUXCY
    port map (
      CI => Mcount_INTERNAL_COUNTER_cy(10),
      DI => N1,
      S => Mcount_INTERNAL_COUNTER_cy_11_rt_2711,
      O => Mcount_INTERNAL_COUNTER_cy(11)
    );
  Mcount_INTERNAL_COUNTER_xor_11_Q : XORCY
    port map (
      CI => Mcount_INTERNAL_COUNTER_cy(10),
      LI => Mcount_INTERNAL_COUNTER_cy_11_rt_2711,
      O => Result(11)
    );
  Mcount_INTERNAL_COUNTER_cy_12_Q : MUXCY
    port map (
      CI => Mcount_INTERNAL_COUNTER_cy(11),
      DI => N1,
      S => Mcount_INTERNAL_COUNTER_cy_12_rt_2712,
      O => Mcount_INTERNAL_COUNTER_cy(12)
    );
  Mcount_INTERNAL_COUNTER_xor_12_Q : XORCY
    port map (
      CI => Mcount_INTERNAL_COUNTER_cy(11),
      LI => Mcount_INTERNAL_COUNTER_cy_12_rt_2712,
      O => Result(12)
    );
  Mcount_INTERNAL_COUNTER_cy_13_Q : MUXCY
    port map (
      CI => Mcount_INTERNAL_COUNTER_cy(12),
      DI => N1,
      S => Mcount_INTERNAL_COUNTER_cy_13_rt_2713,
      O => Mcount_INTERNAL_COUNTER_cy(13)
    );
  Mcount_INTERNAL_COUNTER_xor_13_Q : XORCY
    port map (
      CI => Mcount_INTERNAL_COUNTER_cy(12),
      LI => Mcount_INTERNAL_COUNTER_cy_13_rt_2713,
      O => Result(13)
    );
  Mcount_INTERNAL_COUNTER_cy_14_Q : MUXCY
    port map (
      CI => Mcount_INTERNAL_COUNTER_cy(13),
      DI => N1,
      S => Mcount_INTERNAL_COUNTER_cy_14_rt_2714,
      O => Mcount_INTERNAL_COUNTER_cy(14)
    );
  Mcount_INTERNAL_COUNTER_xor_14_Q : XORCY
    port map (
      CI => Mcount_INTERNAL_COUNTER_cy(13),
      LI => Mcount_INTERNAL_COUNTER_cy_14_rt_2714,
      O => Result(14)
    );
  Mcount_INTERNAL_COUNTER_xor_15_Q : XORCY
    port map (
      CI => Mcount_INTERNAL_COUNTER_cy(14),
      LI => Mcount_INTERNAL_COUNTER_xor_15_rt_2715,
      O => Result(15)
    );
  Mmux_GND_100_o_X_82_o_Mux_10_o_4 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => GND_100_o_cnt_31_sub_10_OUT_3_Q,
      I1 => GND_100_o_cnt_31_sub_10_OUT_2_Q,
      I2 => Mmux_GND_100_o_X_82_o_Mux_10_o_91_2693,
      I3 => Mmux_GND_100_o_X_82_o_Mux_10_o_10_2692,
      I4 => Mmux_GND_100_o_X_82_o_Mux_10_o_9_2694,
      I5 => Mmux_GND_100_o_X_82_o_Mux_10_o_8_2695,
      O => Mmux_GND_100_o_X_82_o_Mux_10_o_4_2691
    );
  Q_n0207_inv1 : LUT6
    generic map(
      INIT => X"0001000110010001"
    )
    port map (
      I0 => STATE_FSM_FFd3_2443,
      I1 => STATE_FSM_FFd1_2442,
      I2 => STATE_FSM_FFd5_2445,
      I3 => STATE_FSM_FFd4_2444,
      I4 => Mcompar_GND_100_o_cnt_31_LessThan_9_o_cy_6_Q_2674,
      I5 => STATE_FSM_FFd2_2492,
      O => Q_n0207_inv
    );
  STATE_FSM_FFd1_In1 : LUT6
    generic map(
      INIT => X"F8AAA8AAA8AAA8AA"
    )
    port map (
      I0 => STATE_FSM_FFd1_2442,
      I1 => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_cy_7_Q_2653,
      I2 => STATE_FSM_FFd5_2445,
      I3 => STATE_FSM_FFd2_2492,
      I4 => STATE_FSM_FFd3_2443,
      I5 => STATE_FSM_FFd4_2444,
      O => STATE_FSM_FFd1_In
    );
  STATE_STATE_4_X_82_o_Mux_35_o1 : LUT5
    generic map(
      INIT => X"04402464"
    )
    port map (
      I0 => STATE_FSM_FFd3_2443,
      I1 => STATE_FSM_FFd2_2492,
      I2 => STATE_FSM_FFd4_2444,
      I3 => STATE_FSM_FFd5_2445,
      I4 => STATE_FSM_FFd1_2442,
      O => STATE_4_X_82_o_Mux_35_o
    );
  STATE_STATE_4_X_82_o_Mux_36_o1 : LUT5
    generic map(
      INIT => X"6A422800"
    )
    port map (
      I0 => STATE_FSM_FFd3_2443,
      I1 => STATE_FSM_FFd5_2445,
      I2 => STATE_FSM_FFd4_2444,
      I3 => STATE_FSM_FFd2_2492,
      I4 => STATE_FSM_FFd1_2442,
      O => STATE_4_X_82_o_Mux_36_o
    );
  Q_n0172_inv1 : LUT5
    generic map(
      INIT => X"FFFFA889"
    )
    port map (
      I0 => STATE_FSM_FFd2_2492,
      I1 => STATE_FSM_FFd3_2443,
      I2 => STATE_FSM_FFd5_2445,
      I3 => STATE_FSM_FFd4_2444,
      I4 => STATE_FSM_FFd1_2442,
      O => Q_n0172_inv
    );
  Mmux_STATE_4_X_82_o_Mux_34_o11 : LUT6
    generic map(
      INIT => X"2AA82AA87FA82AA8"
    )
    port map (
      I0 => STATE_FSM_FFd1_2442,
      I1 => STATE_FSM_FFd5_2445,
      I2 => STATE_FSM_FFd3_2443,
      I3 => STATE_FSM_FFd4_2444,
      I4 => GND_100_o_X_82_o_Mux_10_o,
      I5 => STATE_FSM_FFd2_2492,
      O => STATE_4_X_82_o_Mux_34_o
    );
  Msub_GND_100_o_cnt_31_sub_10_OUT_4_0_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => cnt(2),
      I1 => cnt(0),
      I2 => cnt(1),
      O => GND_100_o_cnt_31_sub_10_OUT_2_Q
    );
  Msub_GND_100_o_cnt_31_sub_10_OUT_4_0_xor_3_11 : LUT4
    generic map(
      INIT => X"3666"
    )
    port map (
      I0 => cnt(2),
      I1 => cnt(3),
      I2 => cnt(0),
      I3 => cnt(1),
      O => GND_100_o_cnt_31_sub_10_OUT_3_Q
    );
  Msub_GND_100_o_cnt_31_sub_10_OUT_4_0_xor_4_11 : LUT5
    generic map(
      INIT => X"AAA9A9A9"
    )
    port map (
      I0 => cnt(4),
      I1 => cnt(2),
      I2 => cnt(3),
      I3 => cnt(0),
      I4 => cnt(1),
      O => GND_100_o_cnt_31_sub_10_OUT_4_Q
    );
  STATE_FSM_FFd3_In_SW0 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => STATE_FSM_FFd4_2444,
      I1 => STATE_FSM_FFd5_2445,
      O => N01
    );
  STATE_FSM_FFd3_In : LUT6
    generic map(
      INIT => X"999A999B99989999"
    )
    port map (
      I0 => STATE_FSM_FFd3_2443,
      I1 => N01,
      I2 => STATE_FSM_FFd1_2442,
      I3 => STATE_FSM_FFd2_2492,
      I4 => Mcompar_GND_100_o_cnt_31_LessThan_9_o_cy_6_Q_2674,
      I5 => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_cy_7_Q_2631,
      O => STATE_FSM_FFd3_In_2607
    );
  STATE_FSM_FFd5_In1 : LUT6
    generic map(
      INIT => X"555540445555F044"
    )
    port map (
      I0 => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_cy_7_Q_2653,
      I1 => STATE_FSM_FFd1_2442,
      I2 => STATE_FSM_FFd4_2444,
      I3 => STATE_FSM_FFd2_2492,
      I4 => STATE_FSM_FFd3_2443,
      I5 => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_cy_7_Q_2631,
      O => STATE_FSM_FFd5_In1_2698
    );
  STATE_FSM_FFd5_In2 : LUT6
    generic map(
      INIT => X"555500BA5555FFBA"
    )
    port map (
      I0 => STATE_FSM_FFd2_2492,
      I1 => UPDATE_REG(1),
      I2 => UPDATE_REG(0),
      I3 => STATE_FSM_FFd4_2444,
      I4 => STATE_FSM_FFd3_2443,
      I5 => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_cy_7_Q_2631,
      O => STATE_FSM_FFd5_In2_2699
    );
  STATE_FSM_FFd5_In3 : LUT5
    generic map(
      INIT => X"EAAA4000"
    )
    port map (
      I0 => STATE_FSM_FFd3_2443,
      I1 => Mcompar_GND_100_o_cnt_31_LessThan_9_o_cy_6_Q_2674,
      I2 => STATE_FSM_FFd5_2445,
      I3 => STATE_FSM_FFd4_2444,
      I4 => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_cy_7_Q_2631,
      O => STATE_FSM_FFd5_In3_2700
    );
  STATE_FSM_FFd5_In4 : LUT6
    generic map(
      INIT => X"0F0F5F0F04045504"
    )
    port map (
      I0 => STATE_FSM_FFd1_2442,
      I1 => STATE_FSM_FFd5_In2_2699,
      I2 => STATE_FSM_FFd5_2445,
      I3 => STATE_FSM_FFd5_In3_2700,
      I4 => STATE_FSM_FFd2_2492,
      I5 => STATE_FSM_FFd5_In1_2698,
      O => STATE_FSM_FFd5_In
    );
  Mcount_INTERNAL_COUNTER_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => INTERNAL_COUNTER(1),
      O => Mcount_INTERNAL_COUNTER_cy_1_rt_2701
    );
  Mcount_INTERNAL_COUNTER_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => INTERNAL_COUNTER(2),
      O => Mcount_INTERNAL_COUNTER_cy_2_rt_2702
    );
  Mcount_INTERNAL_COUNTER_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => INTERNAL_COUNTER(3),
      O => Mcount_INTERNAL_COUNTER_cy_3_rt_2703
    );
  Mcount_INTERNAL_COUNTER_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => INTERNAL_COUNTER(4),
      O => Mcount_INTERNAL_COUNTER_cy_4_rt_2704
    );
  Mcount_INTERNAL_COUNTER_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => INTERNAL_COUNTER(5),
      O => Mcount_INTERNAL_COUNTER_cy_5_rt_2705
    );
  Mcount_INTERNAL_COUNTER_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => INTERNAL_COUNTER(6),
      O => Mcount_INTERNAL_COUNTER_cy_6_rt_2706
    );
  Mcount_INTERNAL_COUNTER_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => INTERNAL_COUNTER(7),
      O => Mcount_INTERNAL_COUNTER_cy_7_rt_2707
    );
  Mcount_INTERNAL_COUNTER_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => INTERNAL_COUNTER(8),
      O => Mcount_INTERNAL_COUNTER_cy_8_rt_2708
    );
  Mcount_INTERNAL_COUNTER_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => INTERNAL_COUNTER(9),
      O => Mcount_INTERNAL_COUNTER_cy_9_rt_2709
    );
  Mcount_INTERNAL_COUNTER_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => INTERNAL_COUNTER(10),
      O => Mcount_INTERNAL_COUNTER_cy_10_rt_2710
    );
  Mcount_INTERNAL_COUNTER_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => INTERNAL_COUNTER(11),
      O => Mcount_INTERNAL_COUNTER_cy_11_rt_2711
    );
  Mcount_INTERNAL_COUNTER_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => INTERNAL_COUNTER(12),
      O => Mcount_INTERNAL_COUNTER_cy_12_rt_2712
    );
  Mcount_INTERNAL_COUNTER_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => INTERNAL_COUNTER(13),
      O => Mcount_INTERNAL_COUNTER_cy_13_rt_2713
    );
  Mcount_INTERNAL_COUNTER_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => INTERNAL_COUNTER(14),
      O => Mcount_INTERNAL_COUNTER_cy_14_rt_2714
    );
  Mcount_INTERNAL_COUNTER_xor_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => INTERNAL_COUNTER(15),
      O => Mcount_INTERNAL_COUNTER_xor_15_rt_2715
    );
  PCLK_i_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Q_n0172_inv,
      I1 => PCLK_i_2449,
      I2 => STATE_4_X_82_o_Mux_36_o,
      O => PCLK_i_rstpot_2716
    );
  PCLK_i : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => PCLK_i_rstpot_2716,
      Q => PCLK_i_2449
    );
  busy_2514 : FD
    port map (
      C => CLK,
      D => busy_rstpot_2717,
      Q => NlwRenamedSig_OI_busy
    );
  SIN_i_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Q_n0127_inv,
      I1 => SIN_i_2448,
      I2 => STATE_4_X_82_o_Mux_34_o,
      O => SIN_i_rstpot_2718
    );
  SIN_i : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => SIN_i_rstpot_2718,
      Q => SIN_i_2448
    );
  Mmux_GND_100_o_X_82_o_Mux_10_o_2_f7 : MUXF7
    port map (
      I0 => Mmux_GND_100_o_X_82_o_Mux_10_o_4_2691,
      I1 => Mmux_GND_100_o_X_82_o_Mux_10_o_3_2696,
      S => GND_100_o_cnt_31_sub_10_OUT_4_Q,
      O => GND_100_o_X_82_o_Mux_10_o
    );
  busy_rstpot : LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
    port map (
      I0 => NlwRenamedSig_OI_busy,
      I1 => STATE_FSM_FFd1_2442,
      I2 => STATE_FSM_FFd3_2443,
      I3 => STATE_FSM_FFd2_2492,
      I4 => STATE_FSM_FFd4_2444,
      I5 => STATE_FSM_FFd5_2445,
      O => busy_rstpot_2717
    );
  Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_cy_7_Q : LUT5
    generic map(
      INIT => X"F7733110"
    )
    port map (
      I0 => INTERNAL_COUNTER(14),
      I1 => INTERNAL_COUNTER(15),
      I2 => LOAD_PERIOD(14),
      I3 => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_cy_6_Q_2630,
      I4 => LOAD_PERIOD(15),
      O => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_cy_7_Q_2631
    );
  Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_cy_7_Q : LUT5
    generic map(
      INIT => X"F7733110"
    )
    port map (
      I0 => INTERNAL_COUNTER(14),
      I1 => INTERNAL_COUNTER(15),
      I2 => LATCH_PERIOD(14),
      I3 => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_cy_6_Q_2652,
      I4 => LATCH_PERIOD(15),
      O => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_cy_7_Q_2653
    );
  Mcompar_GND_100_o_cnt_31_LessThan_9_o_cy_6_Q : LUT3
    generic map(
      INIT => X"54"
    )
    port map (
      I0 => cnt(31),
      I1 => cnt(30),
      I2 => Mcompar_GND_100_o_cnt_31_LessThan_9_o_cy_5_Q_2673,
      O => Mcompar_GND_100_o_cnt_31_LessThan_9_o_cy_6_Q_2674
    );
  Q_n0127_inv1 : LUT6
    generic map(
      INIT => X"FFFFFFFFEAEA0141"
    )
    port map (
      I0 => STATE_FSM_FFd3_2443,
      I1 => STATE_FSM_FFd5_2445,
      I2 => STATE_FSM_FFd4_2444,
      I3 => Mcompar_GND_100_o_cnt_31_LessThan_9_o_cy_6_Q_2674,
      I4 => STATE_FSM_FFd2_2492,
      I5 => STATE_FSM_FFd1_2442,
      O => Q_n0127_inv
    );
  Mcount_cnt_lut_0_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => STATE_FSM_FFd2_2492,
      I1 => cnt(0),
      O => Mcount_cnt_lut(0)
    );
  Mcount_cnt_lut_1_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => STATE_FSM_FFd2_2492,
      I1 => cnt(1),
      O => Mcount_cnt_lut(1)
    );
  Mcount_cnt_lut_2_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => STATE_FSM_FFd2_2492,
      I1 => cnt(2),
      O => Mcount_cnt_lut(2)
    );
  Mcount_cnt_lut_3_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => STATE_FSM_FFd2_2492,
      I1 => cnt(3),
      O => Mcount_cnt_lut(3)
    );
  Mcount_cnt_lut_4_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => STATE_FSM_FFd2_2492,
      I1 => cnt(4),
      O => Mcount_cnt_lut(4)
    );
  Mcount_cnt_lut_5_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => STATE_FSM_FFd2_2492,
      I1 => cnt(5),
      O => Mcount_cnt_lut(5)
    );
  Mcount_cnt_lut_6_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => STATE_FSM_FFd2_2492,
      I1 => cnt(6),
      O => Mcount_cnt_lut(6)
    );
  Mcount_cnt_lut_7_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => STATE_FSM_FFd2_2492,
      I1 => cnt(7),
      O => Mcount_cnt_lut(7)
    );
  Mcount_cnt_lut_8_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => STATE_FSM_FFd2_2492,
      I1 => cnt(8),
      O => Mcount_cnt_lut(8)
    );
  Mcount_cnt_lut_9_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => STATE_FSM_FFd2_2492,
      I1 => cnt(9),
      O => Mcount_cnt_lut(9)
    );
  Mcount_cnt_lut_10_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => STATE_FSM_FFd2_2492,
      I1 => cnt(10),
      O => Mcount_cnt_lut(10)
    );
  Mcount_cnt_lut_11_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => STATE_FSM_FFd2_2492,
      I1 => cnt(11),
      O => Mcount_cnt_lut(11)
    );
  Mcount_cnt_lut_12_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => STATE_FSM_FFd2_2492,
      I1 => cnt(12),
      O => Mcount_cnt_lut(12)
    );
  Mcount_cnt_lut_13_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => STATE_FSM_FFd2_2492,
      I1 => cnt(13),
      O => Mcount_cnt_lut(13)
    );
  Mcount_cnt_lut_14_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => STATE_FSM_FFd2_2492,
      I1 => cnt(14),
      O => Mcount_cnt_lut(14)
    );
  Mcount_cnt_lut_15_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => STATE_FSM_FFd2_2492,
      I1 => cnt(15),
      O => Mcount_cnt_lut(15)
    );
  Mcount_cnt_lut_16_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => STATE_FSM_FFd2_2492,
      I1 => cnt(16),
      O => Mcount_cnt_lut(16)
    );
  Mcount_cnt_lut_17_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => STATE_FSM_FFd2_2492,
      I1 => cnt(17),
      O => Mcount_cnt_lut(17)
    );
  Mcount_cnt_lut_18_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => STATE_FSM_FFd2_2492,
      I1 => cnt(18),
      O => Mcount_cnt_lut(18)
    );
  Mcount_cnt_lut_19_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => STATE_FSM_FFd2_2492,
      I1 => cnt(19),
      O => Mcount_cnt_lut(19)
    );
  Mcount_cnt_lut_20_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => STATE_FSM_FFd2_2492,
      I1 => cnt(20),
      O => Mcount_cnt_lut(20)
    );
  Mcount_cnt_lut_21_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => STATE_FSM_FFd2_2492,
      I1 => cnt(21),
      O => Mcount_cnt_lut(21)
    );
  Mcount_cnt_lut_22_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => STATE_FSM_FFd2_2492,
      I1 => cnt(22),
      O => Mcount_cnt_lut(22)
    );
  Mcount_cnt_lut_23_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => STATE_FSM_FFd2_2492,
      I1 => cnt(23),
      O => Mcount_cnt_lut(23)
    );
  Mcount_cnt_lut_24_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => STATE_FSM_FFd2_2492,
      I1 => cnt(24),
      O => Mcount_cnt_lut(24)
    );
  Mcount_cnt_lut_25_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => STATE_FSM_FFd2_2492,
      I1 => cnt(25),
      O => Mcount_cnt_lut(25)
    );
  Mcount_cnt_lut_26_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => STATE_FSM_FFd2_2492,
      I1 => cnt(26),
      O => Mcount_cnt_lut(26)
    );
  Mcount_cnt_lut_27_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => STATE_FSM_FFd2_2492,
      I1 => cnt(27),
      O => Mcount_cnt_lut(27)
    );
  Mcount_cnt_lut_28_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => STATE_FSM_FFd2_2492,
      I1 => cnt(28),
      O => Mcount_cnt_lut(28)
    );
  Mcount_cnt_lut_29_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => STATE_FSM_FFd2_2492,
      I1 => cnt(29),
      O => Mcount_cnt_lut(29)
    );
  Mcount_cnt_lut_30_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => STATE_FSM_FFd2_2492,
      I1 => cnt(30),
      O => Mcount_cnt_lut(30)
    );
  Mcount_cnt_lut_31_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => STATE_FSM_FFd2_2492,
      I1 => cnt(31),
      O => Mcount_cnt_lut(31)
    );
  Mmux_GND_100_o_X_82_o_Mux_10_o_10 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => cnt(0),
      I1 => cnt(1),
      I2 => REG_DATA(13),
      I3 => REG_DATA(15),
      I4 => REG_DATA(12),
      I5 => REG_DATA(14),
      O => Mmux_GND_100_o_X_82_o_Mux_10_o_10_2692
    );
  Mmux_GND_100_o_X_82_o_Mux_10_o_91 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => cnt(0),
      I1 => cnt(1),
      I2 => REG_DATA(9),
      I3 => REG_DATA(11),
      I4 => REG_DATA(8),
      I5 => REG_DATA(10),
      O => Mmux_GND_100_o_X_82_o_Mux_10_o_91_2693
    );
  Mmux_GND_100_o_X_82_o_Mux_10_o_9 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => cnt(0),
      I1 => cnt(1),
      I2 => REG_DATA(5),
      I3 => REG_DATA(7),
      I4 => REG_DATA(4),
      I5 => REG_DATA(6),
      O => Mmux_GND_100_o_X_82_o_Mux_10_o_9_2694
    );
  Mmux_GND_100_o_X_82_o_Mux_10_o_8 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => cnt(0),
      I1 => cnt(1),
      I2 => REG_DATA(1),
      I3 => REG_DATA(3),
      I4 => REG_DATA(0),
      I5 => REG_DATA(2),
      O => Mmux_GND_100_o_X_82_o_Mux_10_o_8_2695
    );
  Mmux_GND_100_o_X_82_o_Mux_10_o_3 : LUT5
    generic map(
      INIT => X"FBD96240"
    )
    port map (
      I0 => cnt(1),
      I1 => cnt(0),
      I2 => REG_DATA(17),
      I3 => REG_DATA(16),
      I4 => REG_DATA(18),
      O => Mmux_GND_100_o_X_82_o_Mux_10_o_3_2696
    );
  Mmux_STATE_4_X_82_o_Mux_39_o1 : MUXF7
    port map (
      I0 => N13,
      I1 => N14,
      S => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_cy_7_Q_2631,
      O => STATE_4_X_82_o_Mux_39_o
    );
  Mmux_STATE_4_X_82_o_Mux_39_o1_F : LUT5
    generic map(
      INIT => X"8080A8A0"
    )
    port map (
      I0 => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_cy_7_Q_2653,
      I1 => STATE_FSM_FFd2_2492,
      I2 => STATE_FSM_FFd1_2442,
      I3 => STATE_FSM_FFd3_2443,
      I4 => STATE_FSM_FFd5_2445,
      O => N13
    );
  Mmux_STATE_4_X_82_o_Mux_39_o1_G : LUT6
    generic map(
      INIT => X"83A880BB83A88088"
    )
    port map (
      I0 => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_cy_7_Q_2653,
      I1 => STATE_FSM_FFd1_2442,
      I2 => STATE_FSM_FFd2_2492,
      I3 => STATE_FSM_FFd5_2445,
      I4 => STATE_FSM_FFd3_2443,
      I5 => STATE_FSM_FFd4_2444,
      O => N14
    );
  STATE_FSM_FFd2_In3 : MUXF7
    port map (
      I0 => N15,
      I1 => N16,
      S => STATE_FSM_FFd2_2492,
      O => STATE_FSM_FFd2_In
    );
  STATE_FSM_FFd2_In3_F : LUT6
    generic map(
      INIT => X"8008808880008080"
    )
    port map (
      I0 => STATE_FSM_FFd5_2445,
      I1 => STATE_FSM_FFd4_2444,
      I2 => STATE_FSM_FFd3_2443,
      I3 => STATE_FSM_FFd1_2442,
      I4 => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_cy_7_Q_2631,
      I5 => Mcompar_GND_100_o_cnt_31_LessThan_9_o_cy_6_Q_2674,
      O => N15
    );
  STATE_FSM_FFd2_In3_G : LUT6
    generic map(
      INIT => X"AFFFFFFDAFF8FFFD"
    )
    port map (
      I0 => STATE_FSM_FFd1_2442,
      I1 => Mcompar_LATCH_PERIOD_15_INTERNAL_COUNTER_15_LessThan_33_o_cy_7_Q_2653,
      I2 => STATE_FSM_FFd3_2443,
      I3 => STATE_FSM_FFd5_2445,
      I4 => STATE_FSM_FFd4_2444,
      I5 => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_cy_7_Q_2631,
      O => N16
    );
  STATE_FSM_FFd4_In : MUXF7
    port map (
      I0 => N17,
      I1 => N18,
      S => Mcompar_GND_100_o_cnt_31_LessThan_9_o_cy_6_Q_2674,
      O => STATE_FSM_FFd4_In_2606
    );
  STATE_FSM_FFd4_In_F : LUT6
    generic map(
      INIT => X"666666646666A666"
    )
    port map (
      I0 => STATE_FSM_FFd4_2444,
      I1 => STATE_FSM_FFd5_2445,
      I2 => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_cy_7_Q_2631,
      I3 => STATE_FSM_FFd3_2443,
      I4 => STATE_FSM_FFd1_2442,
      I5 => STATE_FSM_FFd2_2492,
      O => N17
    );
  STATE_FSM_FFd4_In_G : LUT6
    generic map(
      INIT => X"6666666466A666EE"
    )
    port map (
      I0 => STATE_FSM_FFd4_2444,
      I1 => STATE_FSM_FFd5_2445,
      I2 => Mcompar_LOAD_PERIOD_15_INTERNAL_COUNTER_15_LessThan_19_o_cy_7_Q_2631,
      I3 => STATE_FSM_FFd1_2442,
      I4 => STATE_FSM_FFd3_2443,
      I5 => STATE_FSM_FFd2_2492,
      O => N18
    );
  Mcount_INTERNAL_COUNTER_lut_0_INV_0 : INV
    port map (
      I => INTERNAL_COUNTER(0),
      O => Mcount_INTERNAL_COUNTER_lut(0)
    );
  ENABLE_COUNTER_inv1_INV_0 : INV
    port map (
      I => ENABLE_COUNTER_2425,
      O => ENABLE_COUNTER_inv
    );

end Structure;

-- synthesis translate_on

-- synthesis translate_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity BMD_DC_CLK_GEN is
  port (
    CLK_IN1_P : in STD_LOGIC := 'X'; 
    CLK_IN1_N : in STD_LOGIC := 'X'; 
    CLK_OUT1 : out STD_LOGIC; 
    CLK_OUT2 : out STD_LOGIC; 
    CLK_OUT3 : out STD_LOGIC 
  );
end BMD_DC_CLK_GEN;

architecture Structure of BMD_DC_CLK_GEN is
  signal clkin1 : STD_LOGIC; 
  signal clkfbout : STD_LOGIC; 
  signal clkout0 : STD_LOGIC; 
  signal clkout1 : STD_LOGIC; 
  signal clkout2 : STD_LOGIC; 
  signal clkfbout_buf : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal NLW_pll_base_inst_CLKOUT3_UNCONNECTED : STD_LOGIC; 
  signal NLW_pll_base_inst_CLKOUT4_UNCONNECTED : STD_LOGIC; 
  signal NLW_pll_base_inst_CLKOUT5_UNCONNECTED : STD_LOGIC; 
  signal NLW_pll_base_inst_LOCKED_UNCONNECTED : STD_LOGIC; 
begin
  XST_GND : GND
    port map (
      G => N1
    );
  clkin1_buf : IBUFGDS
    generic map(
      CAPACITANCE => "DONT_CARE",
      DIFF_TERM => FALSE,
      IBUF_DELAY_VALUE => "0",
      IBUF_LOW_PWR => TRUE,
      IOSTANDARD => "DEFAULT"
    )
    port map (
      I => CLK_IN1_P,
      IB => CLK_IN1_N,
      O => clkin1
    );
  clkf_buf : BUFG
    port map (
      O => clkfbout_buf,
      I => clkfbout
    );
  clkout1_buf : BUFG
    port map (
      O => CLK_OUT1,
      I => clkout0
    );
  clkout2_buf : BUFG
    port map (
      O => CLK_OUT2,
      I => clkout1
    );
  clkout3_buf : BUFG
    port map (
      O => CLK_OUT3,
      I => clkout2
    );
  pll_base_inst : PLL_BASE
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT => 20,
      CLKFBOUT_PHASE => 0.000000,
      CLKIN_PERIOD => 40.000000,
      CLKOUT0_DIVIDE => 20,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT1_DIVIDE => 8,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT2_DIVIDE => 50,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      CLK_FEEDBACK => "CLKFBOUT",
      COMPENSATION => "SYSTEM_SYNCHRONOUS",
      DIVCLK_DIVIDE => 1,
      REF_JITTER => 0.010000,
      RESET_ON_LOSS_OF_LOCK => FALSE
    )
    port map (
      CLKIN => clkin1,
      CLKFBIN => clkfbout_buf,
      CLKOUT1 => clkout1,
      CLKOUT0 => clkout0,
      CLKFBOUT => clkfbout,
      CLKOUT2 => clkout2,
      RST => N1,
      CLKOUT3 => NLW_pll_base_inst_CLKOUT3_UNCONNECTED,
      CLKOUT4 => NLW_pll_base_inst_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_pll_base_inst_CLKOUT5_UNCONNECTED,
      LOCKED => NLW_pll_base_inst_LOCKED_UNCONNECTED
    );

end Structure;

-- synthesis translate_on

-- synthesis translate_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity TX_DATA_SENDER is
  port (
    CLK : in STD_LOGIC := 'X'; 
    DATA_CLK : in STD_LOGIC := 'X'; 
    DC_DC_RX : in STD_LOGIC := 'X'; 
    XFER_BUSY : in STD_LOGIC := 'X'; 
    DUMP_BUSY : in STD_LOGIC := 'X'; 
    TRIGGER : in STD_LOGIC := 'X'; 
    RB_EN : in STD_LOGIC := 'X'; 
    SEND : in STD_LOGIC := 'X'; 
    wave_fifo_clk : in STD_LOGIC := 'X'; 
    wave_fifo_wr_en : in STD_LOGIC := 'X'; 
    wave_fifo_reset : in STD_LOGIC := 'X'; 
    OOPS_RESET : in STD_LOGIC := 'X'; 
    wave_fifo_full : out STD_LOGIC; 
    TX_SENDER_BUSY : out STD_LOGIC; 
    DATA_OUT : out STD_LOGIC; 
    TX : out STD_LOGIC; 
    DC_ADDR : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    RB_REG_VALUE : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    RB_REG_NUM : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    wave_fifo_data : in STD_LOGIC_VECTOR ( 31 downto 0 ) 
  );
end TX_DATA_SENDER;

architecture Structure of TX_DATA_SENDER is
  component waveform_fifo_wr32_rd32
    port (
      rst : in STD_LOGIC := 'X'; 
      wr_clk : in STD_LOGIC := 'X'; 
      rd_clk : in STD_LOGIC := 'X'; 
      wr_en : in STD_LOGIC := 'X'; 
      rd_en : in STD_LOGIC := 'X'; 
      full : out STD_LOGIC; 
      almost_full : out STD_LOGIC; 
      empty : out STD_LOGIC; 
      din : in STD_LOGIC_VECTOR ( 31 downto 0 ); 
      dout : out STD_LOGIC_VECTOR ( 31 downto 0 ) 
    );
  end component;
  signal wave_fifo_empty : STD_LOGIC; 
  signal tx_state_FSM_FFd1_1763 : STD_LOGIC; 
  signal tx_state_FSM_FFd2_1764 : STD_LOGIC; 
  signal tx_state_FSM_FFd4_1765 : STD_LOGIC; 
  signal tx_state_3_X_80_o_wide_mux_35_OUT_1_Q : STD_LOGIC; 
  signal tx_state_3_X_80_o_wide_mux_35_OUT_0_Q : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal wave_fifo_rd_en_1801 : STD_LOGIC; 
  signal bit_count_4_Q : STD_LOGIC; 
  signal bit_count_3_Q : STD_LOGIC; 
  signal bit_count_2_Q : STD_LOGIC; 
  signal bit_count_1_Q : STD_LOGIC; 
  signal bit_count_0_Q : STD_LOGIC; 
  signal bit_count_10_Q : STD_LOGIC; 
  signal NlwRenamedSig_OI_TX_SENDER_BUSY : STD_LOGIC; 
  signal NlwRenamedSig_OI_TX : STD_LOGIC; 
  signal NlwRenamedSig_OI_DATA_OUT : STD_LOGIC; 
  signal tx_state_FSM_FFd3_1890 : STD_LOGIC; 
  signal bit_count_31_GND_94_o_sub_28_OUT_4_Q : STD_LOGIC; 
  signal bit_count_31_GND_94_o_sub_28_OUT_3_Q : STD_LOGIC; 
  signal bit_count_31_GND_94_o_sub_28_OUT_2_Q : STD_LOGIC; 
  signal bit_count_31_GND_94_o_sub_28_OUT_1_Q : STD_LOGIC; 
  signal bit_count_31_GND_94_o_sub_28_OUT_0_Q : STD_LOGIC; 
  signal wait_count_31_GND_94_o_sub_8_OUT_3_Q : STD_LOGIC; 
  signal wait_count_31_GND_94_o_sub_8_OUT_2_Q : STD_LOGIC; 
  signal wait_count_31_GND_94_o_sub_8_OUT_1_Q : STD_LOGIC; 
  signal wait_count_31_GND_94_o_sub_8_OUT_0_Q : STD_LOGIC; 
  signal bit_count_4_internal_fifo_data_31_Mux_25_o : STD_LOGIC; 
  signal n0035 : STD_LOGIC; 
  signal n0010 : STD_LOGIC; 
  signal Q_n0258_inv : STD_LOGIC; 
  signal OOPS_RESET_inv : STD_LOGIC; 
  signal Q_n0177_inv : STD_LOGIC; 
  signal Q_n0226_inv : STD_LOGIC; 
  signal Q_n0205_inv : STD_LOGIC; 
  signal Q_n0377_inv : STD_LOGIC; 
  signal Q_n0341_inv : STD_LOGIC; 
  signal tx_state_FSM_FFd4_In : STD_LOGIC; 
  signal tx_state_FSM_FFd3_In : STD_LOGIC; 
  signal tx_state_FSM_FFd2_In_1913 : STD_LOGIC; 
  signal tx_state_FSM_FFd1_In : STD_LOGIC; 
  signal Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_cy_0_Q_1915 : STD_LOGIC; 
  signal Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_lut_1_Q : STD_LOGIC; 
  signal Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_cy_1_Q_1917 : STD_LOGIC; 
  signal Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_lut_2_Q : STD_LOGIC; 
  signal Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_cy_2_Q_1919 : STD_LOGIC; 
  signal Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_lut_3_Q : STD_LOGIC; 
  signal Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_cy_3_Q_1921 : STD_LOGIC; 
  signal Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_lut_4_Q : STD_LOGIC; 
  signal Mmux_bit_count_4_internal_fifo_data_31_Mux_25_o_4_1923 : STD_LOGIC; 
  signal Mmux_bit_count_4_internal_fifo_data_31_Mux_25_o_10_1924 : STD_LOGIC; 
  signal Mmux_bit_count_4_internal_fifo_data_31_Mux_25_o_92_1925 : STD_LOGIC; 
  signal Mmux_bit_count_4_internal_fifo_data_31_Mux_25_o_91_1926 : STD_LOGIC; 
  signal Mmux_bit_count_4_internal_fifo_data_31_Mux_25_o_82_1927 : STD_LOGIC; 
  signal Mmux_bit_count_4_internal_fifo_data_31_Mux_25_o_3_1928 : STD_LOGIC; 
  signal Mmux_bit_count_4_internal_fifo_data_31_Mux_25_o_9_1929 : STD_LOGIC; 
  signal Mmux_bit_count_4_internal_fifo_data_31_Mux_25_o_81_1930 : STD_LOGIC; 
  signal Mmux_bit_count_4_internal_fifo_data_31_Mux_25_o_8_1931 : STD_LOGIC; 
  signal Mmux_bit_count_4_internal_fifo_data_31_Mux_25_o_7_1932 : STD_LOGIC; 
  signal Msub_wait_count_31_GND_94_o_sub_8_OUT_31_0_cy_0_Q_1933 : STD_LOGIC; 
  signal Msub_wait_count_31_GND_94_o_sub_8_OUT_31_0_lut_1_Q : STD_LOGIC; 
  signal Msub_wait_count_31_GND_94_o_sub_8_OUT_31_0_cy_1_Q_1935 : STD_LOGIC; 
  signal Msub_wait_count_31_GND_94_o_sub_8_OUT_31_0_lut_2_Q : STD_LOGIC; 
  signal Msub_wait_count_31_GND_94_o_sub_8_OUT_31_0_cy_2_Q_1937 : STD_LOGIC; 
  signal Msub_wait_count_31_GND_94_o_sub_8_OUT_31_0_lut_3_Q : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_cy_0_rt_1940 : STD_LOGIC; 
  signal Msub_wait_count_31_GND_94_o_sub_8_OUT_31_0_cy_0_rt_1941 : STD_LOGIC; 
  signal wave_fifo_rd_en_rstpot_1942 : STD_LOGIC; 
  signal TX_SENDER_BUSY_rstpot_1943 : STD_LOGIC; 
  signal TX_rstpot_1944 : STD_LOGIC; 
  signal DATA_OUT_rstpot_1945 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal NLW_waveform_fifo_full_UNCONNECTED : STD_LOGIC; 
  signal wave_fifo_dout : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal tx_st : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal wait_count : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal trig_hold : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal internal_fifo_data : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal Q_n0347 : STD_LOGIC_VECTOR ( 32 downto 1 ); 
  signal Q_n0183 : STD_LOGIC_VECTOR ( 32 downto 28 ); 
  signal Q_n0208 : STD_LOGIC_VECTOR ( 32 downto 29 ); 
  signal Q_n0229 : STD_LOGIC_VECTOR ( 0 downto 0 ); 
begin
  TX_SENDER_BUSY <= NlwRenamedSig_OI_TX_SENDER_BUSY;
  DATA_OUT <= NlwRenamedSig_OI_DATA_OUT;
  TX <= NlwRenamedSig_OI_TX;
  XST_GND : GND
    port map (
      G => bit_count_10_Q
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  trig_hold_0 : FDE_1
    port map (
      C => DATA_CLK,
      CE => Q_n0258_inv,
      D => Q_n0229(0),
      Q => trig_hold(0)
    );
  trig_hold_1 : FDE_1
    port map (
      C => DATA_CLK,
      CE => Q_n0258_inv,
      D => tx_state_FSM_FFd3_1890,
      Q => trig_hold(1)
    );
  tx_st_0 : FDE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      CE => OOPS_RESET_inv,
      D => tx_state_3_X_80_o_wide_mux_35_OUT_0_Q,
      Q => tx_st(0)
    );
  tx_st_1 : FDE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      CE => OOPS_RESET_inv,
      D => tx_state_3_X_80_o_wide_mux_35_OUT_1_Q,
      Q => tx_st(1)
    );
  tx_st_2 : FDE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      CE => OOPS_RESET_inv,
      D => tx_state_FSM_FFd2_1764,
      Q => tx_st(2)
    );
  tx_st_3 : FDE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      CE => OOPS_RESET_inv,
      D => tx_state_FSM_FFd1_1763,
      Q => tx_st(3)
    );
  tx_st_4 : FDE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      CE => OOPS_RESET_inv,
      D => bit_count_10_Q,
      Q => tx_st(4)
    );
  tx_st_5 : FDE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      CE => OOPS_RESET_inv,
      D => bit_count_10_Q,
      Q => tx_st(5)
    );
  tx_st_6 : FDE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      CE => OOPS_RESET_inv,
      D => bit_count_10_Q,
      Q => tx_st(6)
    );
  tx_st_7 : FDE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      CE => OOPS_RESET_inv,
      D => bit_count_10_Q,
      Q => tx_st(7)
    );
  tx_st_8 : FDE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      CE => OOPS_RESET_inv,
      D => bit_count_10_Q,
      Q => tx_st(8)
    );
  tx_st_9 : FDE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      CE => OOPS_RESET_inv,
      D => bit_count_10_Q,
      Q => tx_st(9)
    );
  tx_st_10 : FDE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      CE => OOPS_RESET_inv,
      D => bit_count_10_Q,
      Q => tx_st(10)
    );
  tx_st_11 : FDE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      CE => OOPS_RESET_inv,
      D => bit_count_10_Q,
      Q => tx_st(11)
    );
  tx_st_12 : FDE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      CE => OOPS_RESET_inv,
      D => bit_count_10_Q,
      Q => tx_st(12)
    );
  tx_st_13 : FDE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      CE => OOPS_RESET_inv,
      D => bit_count_10_Q,
      Q => tx_st(13)
    );
  tx_st_14 : FDE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      CE => OOPS_RESET_inv,
      D => bit_count_10_Q,
      Q => tx_st(14)
    );
  tx_st_15 : FDE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      CE => OOPS_RESET_inv,
      D => bit_count_10_Q,
      Q => tx_st(15)
    );
  tx_st_16 : FDE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      CE => OOPS_RESET_inv,
      D => bit_count_10_Q,
      Q => tx_st(16)
    );
  tx_st_17 : FDE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      CE => OOPS_RESET_inv,
      D => bit_count_10_Q,
      Q => tx_st(17)
    );
  tx_st_18 : FDE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      CE => OOPS_RESET_inv,
      D => bit_count_10_Q,
      Q => tx_st(18)
    );
  tx_st_19 : FDE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      CE => OOPS_RESET_inv,
      D => bit_count_10_Q,
      Q => tx_st(19)
    );
  tx_st_20 : FDE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      CE => OOPS_RESET_inv,
      D => bit_count_10_Q,
      Q => tx_st(20)
    );
  tx_st_21 : FDE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      CE => OOPS_RESET_inv,
      D => bit_count_10_Q,
      Q => tx_st(21)
    );
  tx_st_22 : FDE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      CE => OOPS_RESET_inv,
      D => bit_count_10_Q,
      Q => tx_st(22)
    );
  tx_st_23 : FDE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      CE => OOPS_RESET_inv,
      D => bit_count_10_Q,
      Q => tx_st(23)
    );
  tx_st_24 : FDE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      CE => OOPS_RESET_inv,
      D => bit_count_10_Q,
      Q => tx_st(24)
    );
  tx_st_25 : FDE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      CE => OOPS_RESET_inv,
      D => bit_count_10_Q,
      Q => tx_st(25)
    );
  tx_st_26 : FDE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      CE => OOPS_RESET_inv,
      D => bit_count_10_Q,
      Q => tx_st(26)
    );
  tx_st_27 : FDE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      CE => OOPS_RESET_inv,
      D => bit_count_10_Q,
      Q => tx_st(27)
    );
  tx_st_28 : FDE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      CE => OOPS_RESET_inv,
      D => bit_count_10_Q,
      Q => tx_st(28)
    );
  tx_st_29 : FDE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      CE => OOPS_RESET_inv,
      D => bit_count_10_Q,
      Q => tx_st(29)
    );
  tx_st_30 : FDE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      CE => OOPS_RESET_inv,
      D => bit_count_10_Q,
      Q => tx_st(30)
    );
  tx_st_31 : FDE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      CE => OOPS_RESET_inv,
      D => bit_count_10_Q,
      Q => tx_st(31)
    );
  wait_count_0 : FDE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      CE => Q_n0226_inv,
      D => Q_n0208(32),
      Q => wait_count(0)
    );
  wait_count_1 : FDE_1
    generic map(
      INIT => '1'
    )
    port map (
      C => DATA_CLK,
      CE => Q_n0226_inv,
      D => Q_n0208(31),
      Q => wait_count(1)
    );
  wait_count_2 : FDE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      CE => Q_n0226_inv,
      D => Q_n0208(30),
      Q => wait_count(2)
    );
  wait_count_3 : FDE_1
    generic map(
      INIT => '1'
    )
    port map (
      C => DATA_CLK,
      CE => Q_n0226_inv,
      D => Q_n0208(29),
      Q => wait_count(3)
    );
  bit_count_0 : FDE_1
    generic map(
      INIT => '1'
    )
    port map (
      C => DATA_CLK,
      CE => Q_n0205_inv,
      D => Q_n0183(32),
      Q => bit_count_0_Q
    );
  bit_count_1 : FDE_1
    generic map(
      INIT => '1'
    )
    port map (
      C => DATA_CLK,
      CE => Q_n0205_inv,
      D => Q_n0183(31),
      Q => bit_count_1_Q
    );
  bit_count_2 : FDE_1
    generic map(
      INIT => '1'
    )
    port map (
      C => DATA_CLK,
      CE => Q_n0205_inv,
      D => Q_n0183(30),
      Q => bit_count_2_Q
    );
  bit_count_3 : FDE_1
    generic map(
      INIT => '1'
    )
    port map (
      C => DATA_CLK,
      CE => Q_n0205_inv,
      D => Q_n0183(29),
      Q => bit_count_3_Q
    );
  bit_count_4 : FDE_1
    generic map(
      INIT => '1'
    )
    port map (
      C => DATA_CLK,
      CE => Q_n0205_inv,
      D => Q_n0183(28),
      Q => bit_count_4_Q
    );
  internal_fifo_data_0 : FDE_1
    port map (
      C => DATA_CLK,
      CE => Q_n0377_inv,
      D => Q_n0347(32),
      Q => internal_fifo_data(0)
    );
  internal_fifo_data_1 : FDE_1
    port map (
      C => DATA_CLK,
      CE => Q_n0377_inv,
      D => Q_n0347(31),
      Q => internal_fifo_data(1)
    );
  internal_fifo_data_2 : FDE_1
    port map (
      C => DATA_CLK,
      CE => Q_n0377_inv,
      D => Q_n0347(30),
      Q => internal_fifo_data(2)
    );
  internal_fifo_data_3 : FDE_1
    port map (
      C => DATA_CLK,
      CE => Q_n0377_inv,
      D => Q_n0347(29),
      Q => internal_fifo_data(3)
    );
  internal_fifo_data_4 : FDE_1
    port map (
      C => DATA_CLK,
      CE => Q_n0377_inv,
      D => Q_n0347(28),
      Q => internal_fifo_data(4)
    );
  internal_fifo_data_5 : FDE_1
    port map (
      C => DATA_CLK,
      CE => Q_n0377_inv,
      D => Q_n0347(27),
      Q => internal_fifo_data(5)
    );
  internal_fifo_data_6 : FDE_1
    port map (
      C => DATA_CLK,
      CE => Q_n0377_inv,
      D => Q_n0347(26),
      Q => internal_fifo_data(6)
    );
  internal_fifo_data_7 : FDE_1
    port map (
      C => DATA_CLK,
      CE => Q_n0377_inv,
      D => Q_n0347(25),
      Q => internal_fifo_data(7)
    );
  internal_fifo_data_8 : FDE_1
    port map (
      C => DATA_CLK,
      CE => Q_n0377_inv,
      D => Q_n0347(24),
      Q => internal_fifo_data(8)
    );
  internal_fifo_data_9 : FDE_1
    port map (
      C => DATA_CLK,
      CE => Q_n0377_inv,
      D => Q_n0347(23),
      Q => internal_fifo_data(9)
    );
  internal_fifo_data_10 : FDE_1
    port map (
      C => DATA_CLK,
      CE => Q_n0377_inv,
      D => Q_n0347(22),
      Q => internal_fifo_data(10)
    );
  internal_fifo_data_11 : FDE_1
    port map (
      C => DATA_CLK,
      CE => Q_n0377_inv,
      D => Q_n0347(21),
      Q => internal_fifo_data(11)
    );
  internal_fifo_data_12 : FDE_1
    port map (
      C => DATA_CLK,
      CE => Q_n0377_inv,
      D => Q_n0347(20),
      Q => internal_fifo_data(12)
    );
  internal_fifo_data_13 : FDE_1
    port map (
      C => DATA_CLK,
      CE => Q_n0377_inv,
      D => Q_n0347(19),
      Q => internal_fifo_data(13)
    );
  internal_fifo_data_14 : FDE_1
    port map (
      C => DATA_CLK,
      CE => Q_n0377_inv,
      D => Q_n0347(18),
      Q => internal_fifo_data(14)
    );
  internal_fifo_data_15 : FDE_1
    port map (
      C => DATA_CLK,
      CE => Q_n0377_inv,
      D => Q_n0347(17),
      Q => internal_fifo_data(15)
    );
  internal_fifo_data_16 : FDE_1
    port map (
      C => DATA_CLK,
      CE => Q_n0377_inv,
      D => Q_n0347(16),
      Q => internal_fifo_data(16)
    );
  internal_fifo_data_17 : FDE_1
    port map (
      C => DATA_CLK,
      CE => Q_n0377_inv,
      D => Q_n0347(15),
      Q => internal_fifo_data(17)
    );
  internal_fifo_data_18 : FDE_1
    port map (
      C => DATA_CLK,
      CE => Q_n0377_inv,
      D => Q_n0347(14),
      Q => internal_fifo_data(18)
    );
  internal_fifo_data_19 : FDE_1
    port map (
      C => DATA_CLK,
      CE => Q_n0377_inv,
      D => Q_n0347(13),
      Q => internal_fifo_data(19)
    );
  internal_fifo_data_20 : FDE_1
    port map (
      C => DATA_CLK,
      CE => Q_n0377_inv,
      D => Q_n0347(12),
      Q => internal_fifo_data(20)
    );
  internal_fifo_data_21 : FDE_1
    port map (
      C => DATA_CLK,
      CE => Q_n0377_inv,
      D => Q_n0347(11),
      Q => internal_fifo_data(21)
    );
  internal_fifo_data_22 : FDE_1
    port map (
      C => DATA_CLK,
      CE => Q_n0377_inv,
      D => Q_n0347(10),
      Q => internal_fifo_data(22)
    );
  internal_fifo_data_23 : FDE_1
    port map (
      C => DATA_CLK,
      CE => Q_n0377_inv,
      D => Q_n0347(9),
      Q => internal_fifo_data(23)
    );
  internal_fifo_data_24 : FDE_1
    port map (
      C => DATA_CLK,
      CE => Q_n0377_inv,
      D => Q_n0347(8),
      Q => internal_fifo_data(24)
    );
  internal_fifo_data_25 : FDE_1
    port map (
      C => DATA_CLK,
      CE => Q_n0377_inv,
      D => Q_n0347(7),
      Q => internal_fifo_data(25)
    );
  internal_fifo_data_26 : FDE_1
    port map (
      C => DATA_CLK,
      CE => Q_n0377_inv,
      D => Q_n0347(6),
      Q => internal_fifo_data(26)
    );
  internal_fifo_data_27 : FDE_1
    port map (
      C => DATA_CLK,
      CE => Q_n0377_inv,
      D => Q_n0347(5),
      Q => internal_fifo_data(27)
    );
  internal_fifo_data_28 : FDE_1
    port map (
      C => DATA_CLK,
      CE => Q_n0377_inv,
      D => Q_n0347(4),
      Q => internal_fifo_data(28)
    );
  internal_fifo_data_29 : FDE_1
    port map (
      C => DATA_CLK,
      CE => Q_n0377_inv,
      D => Q_n0347(3),
      Q => internal_fifo_data(29)
    );
  internal_fifo_data_30 : FDE_1
    port map (
      C => DATA_CLK,
      CE => Q_n0377_inv,
      D => Q_n0347(2),
      Q => internal_fifo_data(30)
    );
  internal_fifo_data_31 : FDE_1
    port map (
      C => DATA_CLK,
      CE => Q_n0377_inv,
      D => Q_n0347(1),
      Q => internal_fifo_data(31)
    );
  tx_state_FSM_FFd4 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      D => tx_state_FSM_FFd4_In,
      R => OOPS_RESET,
      Q => tx_state_FSM_FFd4_1765
    );
  tx_state_FSM_FFd1 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      D => tx_state_FSM_FFd1_In,
      R => OOPS_RESET,
      Q => tx_state_FSM_FFd1_1763
    );
  tx_state_FSM_FFd3 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      D => tx_state_FSM_FFd3_In,
      R => OOPS_RESET,
      Q => tx_state_FSM_FFd3_1890
    );
  tx_state_FSM_FFd2 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      D => tx_state_FSM_FFd2_In_1913,
      R => OOPS_RESET,
      Q => tx_state_FSM_FFd2_1764
    );
  Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => bit_count_10_Q,
      S => Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_cy_0_rt_1940,
      O => Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_cy_0_Q_1915
    );
  Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_cy_0_rt_1940,
      O => bit_count_31_GND_94_o_sub_28_OUT_0_Q
    );
  Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_cy_1_Q : MUXCY
    port map (
      CI => Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_cy_0_Q_1915,
      DI => N1,
      S => Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_lut_1_Q,
      O => Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_cy_1_Q_1917
    );
  Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_xor_1_Q : XORCY
    port map (
      CI => Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_cy_0_Q_1915,
      LI => Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_lut_1_Q,
      O => bit_count_31_GND_94_o_sub_28_OUT_1_Q
    );
  Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_cy_2_Q : MUXCY
    port map (
      CI => Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_cy_1_Q_1917,
      DI => N1,
      S => Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_lut_2_Q,
      O => Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_cy_2_Q_1919
    );
  Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_xor_2_Q : XORCY
    port map (
      CI => Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_cy_1_Q_1917,
      LI => Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_lut_2_Q,
      O => bit_count_31_GND_94_o_sub_28_OUT_2_Q
    );
  Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_cy_3_Q : MUXCY
    port map (
      CI => Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_cy_2_Q_1919,
      DI => N1,
      S => Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_lut_3_Q,
      O => Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_cy_3_Q_1921
    );
  Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_xor_3_Q : XORCY
    port map (
      CI => Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_cy_2_Q_1919,
      LI => Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_lut_3_Q,
      O => bit_count_31_GND_94_o_sub_28_OUT_3_Q
    );
  Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_xor_4_Q : XORCY
    port map (
      CI => Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_cy_3_Q_1921,
      LI => Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_lut_4_Q,
      O => bit_count_31_GND_94_o_sub_28_OUT_4_Q
    );
  Mmux_bit_count_4_internal_fifo_data_31_Mux_25_o_4 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => bit_count_3_Q,
      I1 => bit_count_2_Q,
      I2 => Mmux_bit_count_4_internal_fifo_data_31_Mux_25_o_92_1925,
      I3 => Mmux_bit_count_4_internal_fifo_data_31_Mux_25_o_10_1924,
      I4 => Mmux_bit_count_4_internal_fifo_data_31_Mux_25_o_91_1926,
      I5 => Mmux_bit_count_4_internal_fifo_data_31_Mux_25_o_82_1927,
      O => Mmux_bit_count_4_internal_fifo_data_31_Mux_25_o_4_1923
    );
  Mmux_bit_count_4_internal_fifo_data_31_Mux_25_o_10 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => bit_count_1_Q,
      I1 => bit_count_0_Q,
      I2 => internal_fifo_data(14),
      I3 => internal_fifo_data(15),
      I4 => internal_fifo_data(13),
      I5 => internal_fifo_data(12),
      O => Mmux_bit_count_4_internal_fifo_data_31_Mux_25_o_10_1924
    );
  Mmux_bit_count_4_internal_fifo_data_31_Mux_25_o_92 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => bit_count_1_Q,
      I1 => bit_count_0_Q,
      I2 => internal_fifo_data(10),
      I3 => internal_fifo_data(11),
      I4 => internal_fifo_data(9),
      I5 => internal_fifo_data(8),
      O => Mmux_bit_count_4_internal_fifo_data_31_Mux_25_o_92_1925
    );
  Mmux_bit_count_4_internal_fifo_data_31_Mux_25_o_91 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => bit_count_1_Q,
      I1 => bit_count_0_Q,
      I2 => internal_fifo_data(6),
      I3 => internal_fifo_data(7),
      I4 => internal_fifo_data(5),
      I5 => internal_fifo_data(4),
      O => Mmux_bit_count_4_internal_fifo_data_31_Mux_25_o_91_1926
    );
  Mmux_bit_count_4_internal_fifo_data_31_Mux_25_o_82 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => bit_count_1_Q,
      I1 => bit_count_0_Q,
      I2 => internal_fifo_data(2),
      I3 => internal_fifo_data(3),
      I4 => internal_fifo_data(1),
      I5 => internal_fifo_data(0),
      O => Mmux_bit_count_4_internal_fifo_data_31_Mux_25_o_82_1927
    );
  Mmux_bit_count_4_internal_fifo_data_31_Mux_25_o_3 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => bit_count_3_Q,
      I1 => bit_count_2_Q,
      I2 => Mmux_bit_count_4_internal_fifo_data_31_Mux_25_o_81_1930,
      I3 => Mmux_bit_count_4_internal_fifo_data_31_Mux_25_o_9_1929,
      I4 => Mmux_bit_count_4_internal_fifo_data_31_Mux_25_o_8_1931,
      I5 => Mmux_bit_count_4_internal_fifo_data_31_Mux_25_o_7_1932,
      O => Mmux_bit_count_4_internal_fifo_data_31_Mux_25_o_3_1928
    );
  Mmux_bit_count_4_internal_fifo_data_31_Mux_25_o_9 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => bit_count_1_Q,
      I1 => bit_count_0_Q,
      I2 => internal_fifo_data(30),
      I3 => internal_fifo_data(31),
      I4 => internal_fifo_data(29),
      I5 => internal_fifo_data(28),
      O => Mmux_bit_count_4_internal_fifo_data_31_Mux_25_o_9_1929
    );
  Mmux_bit_count_4_internal_fifo_data_31_Mux_25_o_81 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => bit_count_1_Q,
      I1 => bit_count_0_Q,
      I2 => internal_fifo_data(26),
      I3 => internal_fifo_data(27),
      I4 => internal_fifo_data(25),
      I5 => internal_fifo_data(24),
      O => Mmux_bit_count_4_internal_fifo_data_31_Mux_25_o_81_1930
    );
  Mmux_bit_count_4_internal_fifo_data_31_Mux_25_o_8 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => bit_count_1_Q,
      I1 => bit_count_0_Q,
      I2 => internal_fifo_data(22),
      I3 => internal_fifo_data(23),
      I4 => internal_fifo_data(21),
      I5 => internal_fifo_data(20),
      O => Mmux_bit_count_4_internal_fifo_data_31_Mux_25_o_8_1931
    );
  Mmux_bit_count_4_internal_fifo_data_31_Mux_25_o_7 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => bit_count_1_Q,
      I1 => bit_count_0_Q,
      I2 => internal_fifo_data(18),
      I3 => internal_fifo_data(19),
      I4 => internal_fifo_data(17),
      I5 => internal_fifo_data(16),
      O => Mmux_bit_count_4_internal_fifo_data_31_Mux_25_o_7_1932
    );
  Msub_wait_count_31_GND_94_o_sub_8_OUT_31_0_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => bit_count_10_Q,
      S => Msub_wait_count_31_GND_94_o_sub_8_OUT_31_0_cy_0_rt_1941,
      O => Msub_wait_count_31_GND_94_o_sub_8_OUT_31_0_cy_0_Q_1933
    );
  Msub_wait_count_31_GND_94_o_sub_8_OUT_31_0_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => Msub_wait_count_31_GND_94_o_sub_8_OUT_31_0_cy_0_rt_1941,
      O => wait_count_31_GND_94_o_sub_8_OUT_0_Q
    );
  Msub_wait_count_31_GND_94_o_sub_8_OUT_31_0_cy_1_Q : MUXCY
    port map (
      CI => Msub_wait_count_31_GND_94_o_sub_8_OUT_31_0_cy_0_Q_1933,
      DI => N1,
      S => Msub_wait_count_31_GND_94_o_sub_8_OUT_31_0_lut_1_Q,
      O => Msub_wait_count_31_GND_94_o_sub_8_OUT_31_0_cy_1_Q_1935
    );
  Msub_wait_count_31_GND_94_o_sub_8_OUT_31_0_xor_1_Q : XORCY
    port map (
      CI => Msub_wait_count_31_GND_94_o_sub_8_OUT_31_0_cy_0_Q_1933,
      LI => Msub_wait_count_31_GND_94_o_sub_8_OUT_31_0_lut_1_Q,
      O => wait_count_31_GND_94_o_sub_8_OUT_1_Q
    );
  Msub_wait_count_31_GND_94_o_sub_8_OUT_31_0_cy_2_Q : MUXCY
    port map (
      CI => Msub_wait_count_31_GND_94_o_sub_8_OUT_31_0_cy_1_Q_1935,
      DI => N1,
      S => Msub_wait_count_31_GND_94_o_sub_8_OUT_31_0_lut_2_Q,
      O => Msub_wait_count_31_GND_94_o_sub_8_OUT_31_0_cy_2_Q_1937
    );
  Msub_wait_count_31_GND_94_o_sub_8_OUT_31_0_xor_2_Q : XORCY
    port map (
      CI => Msub_wait_count_31_GND_94_o_sub_8_OUT_31_0_cy_1_Q_1935,
      LI => Msub_wait_count_31_GND_94_o_sub_8_OUT_31_0_lut_2_Q,
      O => wait_count_31_GND_94_o_sub_8_OUT_2_Q
    );
  Msub_wait_count_31_GND_94_o_sub_8_OUT_31_0_xor_3_Q : XORCY
    port map (
      CI => Msub_wait_count_31_GND_94_o_sub_8_OUT_31_0_cy_2_Q_1937,
      LI => Msub_wait_count_31_GND_94_o_sub_8_OUT_31_0_lut_3_Q,
      O => wait_count_31_GND_94_o_sub_8_OUT_3_Q
    );
  n0035_31_1 : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => bit_count_4_Q,
      I1 => bit_count_3_Q,
      I2 => bit_count_2_Q,
      I3 => bit_count_1_Q,
      I4 => bit_count_0_Q,
      O => n0035
    );
  n0010_31_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => wait_count(3),
      I1 => wait_count(2),
      I2 => wait_count(1),
      I3 => wait_count(0),
      O => n0010
    );
  tx_state_tx_state_3_X_80_o_wide_mux_35_OUT_0_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => tx_state_FSM_FFd2_1764,
      I1 => tx_state_FSM_FFd3_1890,
      I2 => tx_state_FSM_FFd4_1765,
      O => tx_state_3_X_80_o_wide_mux_35_OUT_0_Q
    );
  tx_state_FSM_FFd1_In1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => tx_state_FSM_FFd4_1765,
      I1 => tx_state_FSM_FFd3_1890,
      I2 => tx_state_FSM_FFd2_1764,
      O => tx_state_FSM_FFd1_In
    );
  Mmux_n0347311 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => tx_state_FSM_FFd2_1764,
      I1 => wave_fifo_dout(24),
      O => Q_n0347(8)
    );
  Mmux_n0347291 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => tx_state_FSM_FFd2_1764,
      I1 => wave_fifo_dout(26),
      O => Q_n0347(6)
    );
  Mmux_n0183251 : LUT4
    generic map(
      INIT => X"FDFF"
    )
    port map (
      I0 => tx_state_FSM_FFd2_1764,
      I1 => bit_count_31_GND_94_o_sub_28_OUT_0_Q,
      I2 => tx_state_FSM_FFd4_1765,
      I3 => tx_state_FSM_FFd3_1890,
      O => Q_n0183(32)
    );
  Mmux_n0183241 : LUT4
    generic map(
      INIT => X"FDFF"
    )
    port map (
      I0 => tx_state_FSM_FFd2_1764,
      I1 => bit_count_31_GND_94_o_sub_28_OUT_1_Q,
      I2 => tx_state_FSM_FFd4_1765,
      I3 => tx_state_FSM_FFd3_1890,
      O => Q_n0183(31)
    );
  Mmux_n0183231 : LUT4
    generic map(
      INIT => X"FDFF"
    )
    port map (
      I0 => tx_state_FSM_FFd2_1764,
      I1 => bit_count_31_GND_94_o_sub_28_OUT_2_Q,
      I2 => tx_state_FSM_FFd4_1765,
      I3 => tx_state_FSM_FFd3_1890,
      O => Q_n0183(30)
    );
  Mmux_n0183211 : LUT4
    generic map(
      INIT => X"FDFF"
    )
    port map (
      I0 => tx_state_FSM_FFd2_1764,
      I1 => bit_count_31_GND_94_o_sub_28_OUT_3_Q,
      I2 => tx_state_FSM_FFd4_1765,
      I3 => tx_state_FSM_FFd3_1890,
      O => Q_n0183(29)
    );
  Mmux_n0183201 : LUT4
    generic map(
      INIT => X"FDFF"
    )
    port map (
      I0 => tx_state_FSM_FFd2_1764,
      I1 => bit_count_31_GND_94_o_sub_28_OUT_4_Q,
      I2 => tx_state_FSM_FFd4_1765,
      I3 => tx_state_FSM_FFd3_1890,
      O => Q_n0183(28)
    );
  Mmux_n0347251 : LUT5
    generic map(
      INIT => X"EEEA4440"
    )
    port map (
      I0 => tx_state_FSM_FFd2_1764,
      I1 => tx_state_FSM_FFd3_1890,
      I2 => RB_REG_VALUE(0),
      I3 => trig_hold(1),
      I4 => wave_fifo_dout(0),
      O => Q_n0347(32)
    );
  Mmux_n0347231 : LUT5
    generic map(
      INIT => X"EEEA4440"
    )
    port map (
      I0 => tx_state_FSM_FFd2_1764,
      I1 => tx_state_FSM_FFd3_1890,
      I2 => RB_REG_VALUE(2),
      I3 => trig_hold(1),
      I4 => wave_fifo_dout(2),
      O => Q_n0347(30)
    );
  Mmux_n0347181 : LUT5
    generic map(
      INIT => X"EEEA4440"
    )
    port map (
      I0 => tx_state_FSM_FFd2_1764,
      I1 => tx_state_FSM_FFd3_1890,
      I2 => RB_REG_VALUE(6),
      I3 => trig_hold(1),
      I4 => wave_fifo_dout(6),
      O => Q_n0347(26)
    );
  Q_n0377_inv1 : LUT6
    generic map(
      INIT => X"0011010100110001"
    )
    port map (
      I0 => OOPS_RESET,
      I1 => tx_state_FSM_FFd1_1763,
      I2 => tx_state_FSM_FFd2_1764,
      I3 => tx_state_FSM_FFd3_1890,
      I4 => tx_state_FSM_FFd4_1765,
      I5 => trig_hold(0),
      O => Q_n0377_inv
    );
  Q_n0205_inv1 : LUT6
    generic map(
      INIT => X"1000010110001101"
    )
    port map (
      I0 => OOPS_RESET,
      I1 => tx_state_FSM_FFd1_1763,
      I2 => tx_state_FSM_FFd3_1890,
      I3 => tx_state_FSM_FFd2_1764,
      I4 => tx_state_FSM_FFd4_1765,
      I5 => n0035,
      O => Q_n0205_inv
    );
  tx_state_tx_state_3_X_80_o_wide_mux_35_OUT_1_1 : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => tx_state_FSM_FFd3_1890,
      I1 => tx_state_FSM_FFd2_1764,
      I2 => tx_state_FSM_FFd4_1765,
      O => tx_state_3_X_80_o_wide_mux_35_OUT_1_Q
    );
  Q_n0258_inv1 : LUT6
    generic map(
      INIT => X"0001000100000001"
    )
    port map (
      I0 => OOPS_RESET,
      I1 => tx_state_FSM_FFd4_1765,
      I2 => tx_state_FSM_FFd2_1764,
      I3 => tx_state_FSM_FFd1_1763,
      I4 => tx_state_FSM_FFd3_1890,
      I5 => trig_hold(0),
      O => Q_n0258_inv
    );
  Q_n0226_inv1 : LUT5
    generic map(
      INIT => X"01000001"
    )
    port map (
      I0 => OOPS_RESET,
      I1 => tx_state_FSM_FFd2_1764,
      I2 => tx_state_FSM_FFd1_1763,
      I3 => tx_state_FSM_FFd4_1765,
      I4 => tx_state_FSM_FFd3_1890,
      O => Q_n0226_inv
    );
  Mmux_n0347211 : LUT6
    generic map(
      INIT => X"FFFBEEEA55514440"
    )
    port map (
      I0 => tx_state_FSM_FFd2_1764,
      I1 => tx_state_FSM_FFd3_1890,
      I2 => RB_REG_VALUE(3),
      I3 => trig_hold(1),
      I4 => tx_state_FSM_FFd4_1765,
      I5 => wave_fifo_dout(3),
      O => Q_n0347(29)
    );
  Mmux_n0347171 : LUT6
    generic map(
      INIT => X"FFFBEEEA55514440"
    )
    port map (
      I0 => tx_state_FSM_FFd2_1764,
      I1 => tx_state_FSM_FFd3_1890,
      I2 => RB_REG_VALUE(7),
      I3 => trig_hold(1),
      I4 => tx_state_FSM_FFd4_1765,
      I5 => wave_fifo_dout(7),
      O => Q_n0347(25)
    );
  Q_n0177_inv1 : LUT6
    generic map(
      INIT => X"0100000101000101"
    )
    port map (
      I0 => OOPS_RESET,
      I1 => tx_state_FSM_FFd3_1890,
      I2 => tx_state_FSM_FFd1_1763,
      I3 => tx_state_FSM_FFd2_1764,
      I4 => tx_state_FSM_FFd4_1765,
      I5 => wave_fifo_empty,
      O => Q_n0177_inv
    );
  Mmux_n0208241 : LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
    port map (
      I0 => DC_DC_RX,
      I1 => wait_count_31_GND_94_o_sub_8_OUT_1_Q,
      I2 => XFER_BUSY,
      I3 => tx_state_FSM_FFd3_1890,
      I4 => n0010,
      O => Q_n0208(31)
    );
  Mmux_n0208211 : LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
    port map (
      I0 => DC_DC_RX,
      I1 => wait_count_31_GND_94_o_sub_8_OUT_3_Q,
      I2 => XFER_BUSY,
      I3 => tx_state_FSM_FFd3_1890,
      I4 => n0010,
      O => Q_n0208(29)
    );
  Mmux_n0347111 : LUT5
    generic map(
      INIT => X"EEEA4440"
    )
    port map (
      I0 => tx_state_FSM_FFd2_1764,
      I1 => DC_ADDR(3),
      I2 => tx_state_FSM_FFd4_1765,
      I3 => tx_state_FSM_FFd3_1890,
      I4 => wave_fifo_dout(31),
      O => Q_n0347(1)
    );
  Mmux_n0347221 : LUT5
    generic map(
      INIT => X"EEEA4440"
    )
    port map (
      I0 => tx_state_FSM_FFd2_1764,
      I1 => DC_ADDR(2),
      I2 => tx_state_FSM_FFd4_1765,
      I3 => tx_state_FSM_FFd3_1890,
      I4 => wave_fifo_dout(30),
      O => Q_n0347(2)
    );
  Mmux_n0347261 : LUT5
    generic map(
      INIT => X"EEEA4440"
    )
    port map (
      I0 => tx_state_FSM_FFd2_1764,
      I1 => DC_ADDR(1),
      I2 => tx_state_FSM_FFd4_1765,
      I3 => tx_state_FSM_FFd3_1890,
      I4 => wave_fifo_dout(29),
      O => Q_n0347(3)
    );
  Mmux_n0347271 : LUT5
    generic map(
      INIT => X"EEEA4440"
    )
    port map (
      I0 => tx_state_FSM_FFd2_1764,
      I1 => DC_ADDR(0),
      I2 => tx_state_FSM_FFd4_1765,
      I3 => tx_state_FSM_FFd3_1890,
      I4 => wave_fifo_dout(28),
      O => Q_n0347(4)
    );
  tx_state_FSM_FFd2_In_SW0 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => tx_state_FSM_FFd1_1763,
      I1 => trig_hold(1),
      O => N0
    );
  tx_state_FSM_FFd2_In : LUT6
    generic map(
      INIT => X"55AE44AE55AEFFFF"
    )
    port map (
      I0 => tx_state_FSM_FFd4_1765,
      I1 => tx_state_FSM_FFd2_1764,
      I2 => wave_fifo_empty,
      I3 => tx_state_FSM_FFd3_1890,
      I4 => trig_hold(0),
      I5 => N0,
      O => tx_state_FSM_FFd2_In_1913
    );
  Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bit_count_0_Q,
      O => Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_cy_0_rt_1940
    );
  Msub_wait_count_31_GND_94_o_sub_8_OUT_31_0_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_count(0),
      O => Msub_wait_count_31_GND_94_o_sub_8_OUT_31_0_cy_0_rt_1941
    );
  wave_fifo_rd_en : FD_1
    port map (
      C => DATA_CLK,
      D => wave_fifo_rd_en_rstpot_1942,
      Q => wave_fifo_rd_en_1801
    );
  TX_SENDER_BUSY_2208 : FD_1
    port map (
      C => DATA_CLK,
      D => TX_SENDER_BUSY_rstpot_1943,
      Q => NlwRenamedSig_OI_TX_SENDER_BUSY
    );
  TX_2209 : FD_1
    port map (
      C => DATA_CLK,
      D => TX_rstpot_1944,
      Q => NlwRenamedSig_OI_TX
    );
  DATA_OUT_2210 : FD_1
    port map (
      C => DATA_CLK,
      D => DATA_OUT_rstpot_1945,
      Q => NlwRenamedSig_OI_DATA_OUT
    );
  Mmux_bit_count_4_internal_fifo_data_31_Mux_25_o_2_f7 : MUXF7
    port map (
      I0 => Mmux_bit_count_4_internal_fifo_data_31_Mux_25_o_4_1923,
      I1 => Mmux_bit_count_4_internal_fifo_data_31_Mux_25_o_3_1928,
      S => bit_count_4_Q,
      O => bit_count_4_internal_fifo_data_31_Mux_25_o
    );
  TX_SENDER_BUSY_rstpot : LUT6
    generic map(
      INIT => X"AAAAABABAAAAAAA8"
    )
    port map (
      I0 => NlwRenamedSig_OI_TX_SENDER_BUSY,
      I1 => OOPS_RESET,
      I2 => tx_state_FSM_FFd1_1763,
      I3 => tx_state_FSM_FFd2_1764,
      I4 => tx_state_FSM_FFd3_1890,
      I5 => tx_state_FSM_FFd4_1765,
      O => TX_SENDER_BUSY_rstpot_1943
    );
  DATA_OUT_rstpot : LUT6
    generic map(
      INIT => X"5DD5DDD508808880"
    )
    port map (
      I0 => Q_n0341_inv,
      I1 => bit_count_4_internal_fifo_data_31_Mux_25_o,
      I2 => tx_state_FSM_FFd2_1764,
      I3 => tx_state_FSM_FFd3_1890,
      I4 => tx_state_FSM_FFd4_1765,
      I5 => NlwRenamedSig_OI_DATA_OUT,
      O => DATA_OUT_rstpot_1945
    );
  TX_rstpot : LUT6
    generic map(
      INIT => X"AAAAAAAAAAAA2EA8"
    )
    port map (
      I0 => NlwRenamedSig_OI_TX,
      I1 => tx_state_FSM_FFd3_1890,
      I2 => tx_state_FSM_FFd4_1765,
      I3 => tx_state_FSM_FFd2_1764,
      I4 => OOPS_RESET,
      I5 => tx_state_FSM_FFd1_1763,
      O => TX_rstpot_1944
    );
  Q_n0341_inv1 : LUT6
    generic map(
      INIT => X"1011100110101001"
    )
    port map (
      I0 => OOPS_RESET,
      I1 => tx_state_FSM_FFd1_1763,
      I2 => tx_state_FSM_FFd2_1764,
      I3 => tx_state_FSM_FFd4_1765,
      I4 => tx_state_FSM_FFd3_1890,
      I5 => trig_hold(0),
      O => Q_n0341_inv
    );
  tx_state_FSM_FFd4_In1 : LUT6
    generic map(
      INIT => X"6064202461652125"
    )
    port map (
      I0 => tx_state_FSM_FFd4_1765,
      I1 => tx_state_FSM_FFd2_1764,
      I2 => tx_state_FSM_FFd3_1890,
      I3 => wave_fifo_empty,
      I4 => n0035,
      I5 => tx_state_FSM_FFd1_1763,
      O => tx_state_FSM_FFd4_In
    );
  Mmux_n0347161 : LUT5
    generic map(
      INIT => X"AEAA0400"
    )
    port map (
      I0 => tx_state_FSM_FFd2_1764,
      I1 => RB_REG_VALUE(8),
      I2 => trig_hold(1),
      I3 => tx_state_FSM_FFd3_1890,
      I4 => wave_fifo_dout(8),
      O => Q_n0347(24)
    );
  Mmux_n0347141 : LUT5
    generic map(
      INIT => X"AEAA0400"
    )
    port map (
      I0 => tx_state_FSM_FFd2_1764,
      I1 => RB_REG_VALUE(10),
      I2 => trig_hold(1),
      I3 => tx_state_FSM_FFd3_1890,
      I4 => wave_fifo_dout(10),
      O => Q_n0347(22)
    );
  Mmux_n034791 : LUT5
    generic map(
      INIT => X"AEAA0400"
    )
    port map (
      I0 => tx_state_FSM_FFd2_1764,
      I1 => RB_REG_VALUE(14),
      I2 => trig_hold(1),
      I3 => tx_state_FSM_FFd3_1890,
      I4 => wave_fifo_dout(14),
      O => Q_n0347(18)
    );
  Mmux_n034771 : LUT5
    generic map(
      INIT => X"AEAA0400"
    )
    port map (
      I0 => tx_state_FSM_FFd2_1764,
      I1 => RB_REG_NUM(0),
      I2 => trig_hold(1),
      I3 => tx_state_FSM_FFd3_1890,
      I4 => wave_fifo_dout(16),
      O => Q_n0347(16)
    );
  Mmux_n034751 : LUT5
    generic map(
      INIT => X"AEAA0400"
    )
    port map (
      I0 => tx_state_FSM_FFd2_1764,
      I1 => RB_REG_NUM(2),
      I2 => trig_hold(1),
      I3 => tx_state_FSM_FFd3_1890,
      I4 => wave_fifo_dout(18),
      O => Q_n0347(14)
    );
  Mmux_n034714 : LUT5
    generic map(
      INIT => X"AEAA0400"
    )
    port map (
      I0 => tx_state_FSM_FFd2_1764,
      I1 => RB_REG_NUM(6),
      I2 => trig_hold(1),
      I3 => tx_state_FSM_FFd3_1890,
      I4 => wave_fifo_dout(22),
      O => Q_n0347(10)
    );
  Mmux_n0347301 : LUT4
    generic map(
      INIT => X"8D88"
    )
    port map (
      I0 => tx_state_FSM_FFd2_1764,
      I1 => wave_fifo_dout(25),
      I2 => tx_state_FSM_FFd3_1890,
      I3 => tx_state_FSM_FFd4_1765,
      O => Q_n0347(7)
    );
  Mmux_n0347281 : LUT4
    generic map(
      INIT => X"8D88"
    )
    port map (
      I0 => tx_state_FSM_FFd2_1764,
      I1 => wave_fifo_dout(27),
      I2 => tx_state_FSM_FFd3_1890,
      I3 => tx_state_FSM_FFd4_1765,
      O => Q_n0347(5)
    );
  Mmux_n0208251 : LUT5
    generic map(
      INIT => X"00000008"
    )
    port map (
      I0 => wait_count_31_GND_94_o_sub_8_OUT_0_Q,
      I1 => tx_state_FSM_FFd3_1890,
      I2 => n0010,
      I3 => XFER_BUSY,
      I4 => DC_DC_RX,
      O => Q_n0208(32)
    );
  Mmux_n0208231 : LUT5
    generic map(
      INIT => X"00000008"
    )
    port map (
      I0 => wait_count_31_GND_94_o_sub_8_OUT_2_Q,
      I1 => tx_state_FSM_FFd3_1890,
      I2 => n0010,
      I3 => XFER_BUSY,
      I4 => DC_DC_RX,
      O => Q_n0208(30)
    );
  wave_fifo_rd_en_rstpot : LUT4
    generic map(
      INIT => X"7520"
    )
    port map (
      I0 => Q_n0177_inv,
      I1 => tx_state_FSM_FFd4_1765,
      I2 => tx_state_FSM_FFd2_1764,
      I3 => wave_fifo_rd_en_1801,
      O => wave_fifo_rd_en_rstpot_1942
    );
  tx_state_FSM_FFd3_In3_SW0 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => DC_DC_RX,
      I1 => XFER_BUSY,
      I2 => wait_count(0),
      I3 => wait_count(1),
      I4 => wait_count(2),
      I5 => wait_count(3),
      O => N2
    );
  tx_state_FSM_FFd3_In3 : LUT6
    generic map(
      INIT => X"F7FDF3FD77893389"
    )
    port map (
      I0 => tx_state_FSM_FFd2_1764,
      I1 => tx_state_FSM_FFd3_1890,
      I2 => tx_state_FSM_FFd1_1763,
      I3 => tx_state_FSM_FFd4_1765,
      I4 => N2,
      I5 => trig_hold(0),
      O => tx_state_FSM_FFd3_In
    );
  Mmux_n0347101 : LUT6
    generic map(
      INIT => X"BBFBAAEA11510040"
    )
    port map (
      I0 => tx_state_FSM_FFd2_1764,
      I1 => tx_state_FSM_FFd3_1890,
      I2 => RB_REG_VALUE(13),
      I3 => trig_hold(1),
      I4 => tx_state_FSM_FFd4_1765,
      I5 => wave_fifo_dout(13),
      O => Q_n0347(19)
    );
  Mmux_n0347321 : LUT6
    generic map(
      INIT => X"BBFBAAEA11510040"
    )
    port map (
      I0 => tx_state_FSM_FFd2_1764,
      I1 => tx_state_FSM_FFd3_1890,
      I2 => RB_REG_NUM(7),
      I3 => trig_hold(1),
      I4 => tx_state_FSM_FFd4_1765,
      I5 => wave_fifo_dout(23),
      O => Q_n0347(9)
    );
  Mmux_n0347241 : LUT6
    generic map(
      INIT => X"BBFBAAEA11510040"
    )
    port map (
      I0 => tx_state_FSM_FFd2_1764,
      I1 => tx_state_FSM_FFd3_1890,
      I2 => RB_REG_VALUE(1),
      I3 => trig_hold(1),
      I4 => tx_state_FSM_FFd4_1765,
      I5 => wave_fifo_dout(1),
      O => Q_n0347(31)
    );
  Mmux_n0347201 : LUT6
    generic map(
      INIT => X"BBFBAAEA11510040"
    )
    port map (
      I0 => tx_state_FSM_FFd2_1764,
      I1 => tx_state_FSM_FFd3_1890,
      I2 => RB_REG_VALUE(4),
      I3 => trig_hold(1),
      I4 => tx_state_FSM_FFd4_1765,
      I5 => wave_fifo_dout(4),
      O => Q_n0347(28)
    );
  Mmux_n0347191 : LUT6
    generic map(
      INIT => X"BBFBAAEA11510040"
    )
    port map (
      I0 => tx_state_FSM_FFd2_1764,
      I1 => tx_state_FSM_FFd3_1890,
      I2 => RB_REG_VALUE(5),
      I3 => trig_hold(1),
      I4 => tx_state_FSM_FFd4_1765,
      I5 => wave_fifo_dout(5),
      O => Q_n0347(27)
    );
  Mmux_n0347151 : LUT6
    generic map(
      INIT => X"BBFBAAEA11510040"
    )
    port map (
      I0 => tx_state_FSM_FFd2_1764,
      I1 => tx_state_FSM_FFd3_1890,
      I2 => RB_REG_VALUE(9),
      I3 => trig_hold(1),
      I4 => tx_state_FSM_FFd4_1765,
      I5 => wave_fifo_dout(9),
      O => Q_n0347(23)
    );
  Mmux_n0347131 : LUT6
    generic map(
      INIT => X"BBFBAAEA11510040"
    )
    port map (
      I0 => tx_state_FSM_FFd2_1764,
      I1 => tx_state_FSM_FFd3_1890,
      I2 => RB_REG_VALUE(11),
      I3 => trig_hold(1),
      I4 => tx_state_FSM_FFd4_1765,
      I5 => wave_fifo_dout(11),
      O => Q_n0347(21)
    );
  Mmux_n0347121 : LUT6
    generic map(
      INIT => X"BBFBAAEA11510040"
    )
    port map (
      I0 => tx_state_FSM_FFd2_1764,
      I1 => tx_state_FSM_FFd3_1890,
      I2 => RB_REG_VALUE(12),
      I3 => trig_hold(1),
      I4 => tx_state_FSM_FFd4_1765,
      I5 => wave_fifo_dout(12),
      O => Q_n0347(20)
    );
  Mmux_n034781 : LUT6
    generic map(
      INIT => X"BBFBAAEA11510040"
    )
    port map (
      I0 => tx_state_FSM_FFd2_1764,
      I1 => tx_state_FSM_FFd3_1890,
      I2 => RB_REG_VALUE(15),
      I3 => trig_hold(1),
      I4 => tx_state_FSM_FFd4_1765,
      I5 => wave_fifo_dout(15),
      O => Q_n0347(17)
    );
  Mmux_n034761 : LUT6
    generic map(
      INIT => X"BBFBAAEA11510040"
    )
    port map (
      I0 => tx_state_FSM_FFd2_1764,
      I1 => tx_state_FSM_FFd3_1890,
      I2 => RB_REG_NUM(1),
      I3 => trig_hold(1),
      I4 => tx_state_FSM_FFd4_1765,
      I5 => wave_fifo_dout(17),
      O => Q_n0347(15)
    );
  Mmux_n034741 : LUT6
    generic map(
      INIT => X"BBFBAAEA11510040"
    )
    port map (
      I0 => tx_state_FSM_FFd2_1764,
      I1 => tx_state_FSM_FFd3_1890,
      I2 => RB_REG_NUM(3),
      I3 => trig_hold(1),
      I4 => tx_state_FSM_FFd4_1765,
      I5 => wave_fifo_dout(19),
      O => Q_n0347(13)
    );
  Mmux_n034731 : LUT6
    generic map(
      INIT => X"BBFBAAEA11510040"
    )
    port map (
      I0 => tx_state_FSM_FFd2_1764,
      I1 => tx_state_FSM_FFd3_1890,
      I2 => RB_REG_NUM(4),
      I3 => trig_hold(1),
      I4 => tx_state_FSM_FFd4_1765,
      I5 => wave_fifo_dout(20),
      O => Q_n0347(12)
    );
  Mmux_n034724 : LUT6
    generic map(
      INIT => X"BBFBAAEA11510040"
    )
    port map (
      I0 => tx_state_FSM_FFd2_1764,
      I1 => tx_state_FSM_FFd3_1890,
      I2 => RB_REG_NUM(5),
      I3 => trig_hold(1),
      I4 => tx_state_FSM_FFd4_1765,
      I5 => wave_fifo_dout(21),
      O => Q_n0347(11)
    );
  Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_lut_1_INV_0 : INV
    port map (
      I => bit_count_1_Q,
      O => Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_lut_1_Q
    );
  Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_lut_2_INV_0 : INV
    port map (
      I => bit_count_2_Q,
      O => Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_lut_2_Q
    );
  Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_lut_3_INV_0 : INV
    port map (
      I => bit_count_3_Q,
      O => Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_lut_3_Q
    );
  Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_lut_4_INV_0 : INV
    port map (
      I => bit_count_4_Q,
      O => Msub_bit_count_31_GND_94_o_sub_28_OUT_31_0_lut_4_Q
    );
  Msub_wait_count_31_GND_94_o_sub_8_OUT_31_0_lut_1_INV_0 : INV
    port map (
      I => wait_count(1),
      O => Msub_wait_count_31_GND_94_o_sub_8_OUT_31_0_lut_1_Q
    );
  Msub_wait_count_31_GND_94_o_sub_8_OUT_31_0_lut_2_INV_0 : INV
    port map (
      I => wait_count(2),
      O => Msub_wait_count_31_GND_94_o_sub_8_OUT_31_0_lut_2_Q
    );
  Msub_wait_count_31_GND_94_o_sub_8_OUT_31_0_lut_3_INV_0 : INV
    port map (
      I => wait_count(3),
      O => Msub_wait_count_31_GND_94_o_sub_8_OUT_31_0_lut_3_Q
    );
  OOPS_RESET_inv1_INV_0 : INV
    port map (
      I => OOPS_RESET,
      O => OOPS_RESET_inv
    );
  Mmux_n022911_INV_0 : INV
    port map (
      I => tx_state_FSM_FFd3_1890,
      O => Q_n0229(0)
    );
  waveform_fifo : waveform_fifo_wr32_rd32
    port map (
      rst => bit_count_10_Q,
      wr_clk => wave_fifo_clk,
      rd_clk => DATA_CLK,
      wr_en => wave_fifo_wr_en,
      rd_en => wave_fifo_rd_en_1801,
      full => NLW_waveform_fifo_full_UNCONNECTED,
      almost_full => wave_fifo_full,
      empty => wave_fifo_empty,
      din(31) => wave_fifo_data(31),
      din(30) => wave_fifo_data(30),
      din(29) => wave_fifo_data(29),
      din(28) => wave_fifo_data(28),
      din(27) => wave_fifo_data(27),
      din(26) => wave_fifo_data(26),
      din(25) => wave_fifo_data(25),
      din(24) => wave_fifo_data(24),
      din(23) => wave_fifo_data(23),
      din(22) => wave_fifo_data(22),
      din(21) => wave_fifo_data(21),
      din(20) => wave_fifo_data(20),
      din(19) => wave_fifo_data(19),
      din(18) => wave_fifo_data(18),
      din(17) => wave_fifo_data(17),
      din(16) => wave_fifo_data(16),
      din(15) => wave_fifo_data(15),
      din(14) => wave_fifo_data(14),
      din(13) => wave_fifo_data(13),
      din(12) => wave_fifo_data(12),
      din(11) => wave_fifo_data(11),
      din(10) => wave_fifo_data(10),
      din(9) => wave_fifo_data(9),
      din(8) => wave_fifo_data(8),
      din(7) => wave_fifo_data(7),
      din(6) => wave_fifo_data(6),
      din(5) => wave_fifo_data(5),
      din(4) => wave_fifo_data(4),
      din(3) => wave_fifo_data(3),
      din(2) => wave_fifo_data(2),
      din(1) => wave_fifo_data(1),
      din(0) => wave_fifo_data(0),
      dout(31) => wave_fifo_dout(31),
      dout(30) => wave_fifo_dout(30),
      dout(29) => wave_fifo_dout(29),
      dout(28) => wave_fifo_dout(28),
      dout(27) => wave_fifo_dout(27),
      dout(26) => wave_fifo_dout(26),
      dout(25) => wave_fifo_dout(25),
      dout(24) => wave_fifo_dout(24),
      dout(23) => wave_fifo_dout(23),
      dout(22) => wave_fifo_dout(22),
      dout(21) => wave_fifo_dout(21),
      dout(20) => wave_fifo_dout(20),
      dout(19) => wave_fifo_dout(19),
      dout(18) => wave_fifo_dout(18),
      dout(17) => wave_fifo_dout(17),
      dout(16) => wave_fifo_dout(16),
      dout(15) => wave_fifo_dout(15),
      dout(14) => wave_fifo_dout(14),
      dout(13) => wave_fifo_dout(13),
      dout(12) => wave_fifo_dout(12),
      dout(11) => wave_fifo_dout(11),
      dout(10) => wave_fifo_dout(10),
      dout(9) => wave_fifo_dout(9),
      dout(8) => wave_fifo_dout(8),
      dout(7) => wave_fifo_dout(7),
      dout(6) => wave_fifo_dout(6),
      dout(5) => wave_fifo_dout(5),
      dout(4) => wave_fifo_dout(4),
      dout(3) => wave_fifo_dout(3),
      dout(2) => wave_fifo_dout(2),
      dout(1) => wave_fifo_dout(1),
      dout(0) => wave_fifo_dout(0)
    );

end Structure;

-- synthesis translate_on

-- synthesis translate_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity RX_ADDR_CHECKER is
  port (
    CLK : in STD_LOGIC := 'X'; 
    DATA_CLK : in STD_LOGIC := 'X'; 
    DATA_IN : in STD_LOGIC := 'X'; 
    UPDATE : in STD_LOGIC := 'X'; 
    TX_BUSY : in STD_LOGIC := 'X'; 
    DAC_BUSY : in STD_LOGIC := 'X'; 
    SENDER_BUSY : in STD_LOGIC := 'X'; 
    READOUT_BUSY : in STD_LOGIC := 'X'; 
    OOPS_RESET : in STD_LOGIC := 'X'; 
    TX_UPDATE : out STD_LOGIC; 
    DAC_UPDATE : out STD_LOGIC; 
    RB_EN : out STD_LOGIC; 
    DC_ADDR : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    RB_REG_NUM : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    OUTPUT_REG : out STD_LOGIC_VECTOR2 ( 19 downto 0 , 15 downto 0 ) 
  );
end RX_ADDR_CHECKER;

architecture Structure of RX_ADDR_CHECKER is
  component CMD_FIFO_w1r8
    port (
      rst : in STD_LOGIC := 'X'; 
      wr_clk : in STD_LOGIC := 'X'; 
      rd_clk : in STD_LOGIC := 'X'; 
      wr_en : in STD_LOGIC := 'X'; 
      rd_en : in STD_LOGIC := 'X'; 
      full : out STD_LOGIC; 
      empty : out STD_LOGIC; 
      din : in STD_LOGIC_VECTOR ( 0 downto 0 ); 
      dout : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
    );
  end component;
  component CMD_FIFO_w8r32
    port (
      rst : in STD_LOGIC := 'X'; 
      wr_clk : in STD_LOGIC := 'X'; 
      rd_clk : in STD_LOGIC := 'X'; 
      wr_en : in STD_LOGIC := 'X'; 
      rd_en : in STD_LOGIC := 'X'; 
      full : out STD_LOGIC; 
      empty : out STD_LOGIC; 
      din : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
      dout : out STD_LOGIC_VECTOR ( 31 downto 0 ) 
    );
  end component;
  signal fifo_empty_w1r8 : STD_LOGIC; 
  signal fifo_empty_w8r32 : STD_LOGIC; 
  signal NlwRenamedSig_OI_OUTPUT_REG_0_0 : STD_LOGIC; 
  signal rx_st_10_Q : STD_LOGIC; 
  signal rx_st_3_Q : STD_LOGIC; 
  signal rx_st_2_Q : STD_LOGIC; 
  signal rx_st_1_Q : STD_LOGIC; 
  signal rx_st_0_Q : STD_LOGIC; 
  signal rd_en_w8r32_774 : STD_LOGIC; 
  signal NlwRenamedSig_OI_TX_UPDATE : STD_LOGIC; 
  signal NlwRenamedSig_OI_DAC_UPDATE : STD_LOGIC; 
  signal OUTPUT_REG_0_15_1117 : STD_LOGIC; 
  signal OUTPUT_REG_0_14_1118 : STD_LOGIC; 
  signal OUTPUT_REG_0_13_1119 : STD_LOGIC; 
  signal OUTPUT_REG_0_12_1120 : STD_LOGIC; 
  signal OUTPUT_REG_0_11_1121 : STD_LOGIC; 
  signal OUTPUT_REG_0_10_1122 : STD_LOGIC; 
  signal OUTPUT_REG_0_9_1123 : STD_LOGIC; 
  signal OUTPUT_REG_0_8_1124 : STD_LOGIC; 
  signal OUTPUT_REG_0_7_1125 : STD_LOGIC; 
  signal OUTPUT_REG_0_6_1126 : STD_LOGIC; 
  signal OUTPUT_REG_0_5_1127 : STD_LOGIC; 
  signal OUTPUT_REG_0_4_1128 : STD_LOGIC; 
  signal OUTPUT_REG_0_3_1129 : STD_LOGIC; 
  signal OUTPUT_REG_0_2_1130 : STD_LOGIC; 
  signal OUTPUT_REG_0_1_1131 : STD_LOGIC; 
  signal reset_count_31_dff_16_30_Q : STD_LOGIC; 
  signal reset_count_31_dff_16_29_Q : STD_LOGIC; 
  signal reset_count_31_dff_16_28_Q : STD_LOGIC; 
  signal reset_count_31_dff_16_27_Q : STD_LOGIC; 
  signal reset_count_31_dff_16_26_Q : STD_LOGIC; 
  signal reset_count_31_dff_16_25_Q : STD_LOGIC; 
  signal reset_count_31_dff_16_24_Q : STD_LOGIC; 
  signal reset_count_31_dff_16_23_Q : STD_LOGIC; 
  signal reset_count_31_dff_16_22_Q : STD_LOGIC; 
  signal reset_count_31_dff_16_21_Q : STD_LOGIC; 
  signal reset_count_31_dff_16_20_Q : STD_LOGIC; 
  signal reset_count_31_dff_16_19_Q : STD_LOGIC; 
  signal reset_count_31_dff_16_18_Q : STD_LOGIC; 
  signal reset_count_31_dff_16_17_Q : STD_LOGIC; 
  signal reset_count_31_dff_16_16_Q : STD_LOGIC; 
  signal reset_count_31_dff_16_15_Q : STD_LOGIC; 
  signal reset_count_31_dff_16_14_Q : STD_LOGIC; 
  signal reset_count_31_dff_16_13_Q : STD_LOGIC; 
  signal reset_count_31_dff_16_12_Q : STD_LOGIC; 
  signal reset_count_31_dff_16_11_Q : STD_LOGIC; 
  signal reset_count_31_dff_16_10_Q : STD_LOGIC; 
  signal reset_count_31_dff_16_9_Q : STD_LOGIC; 
  signal reset_count_31_dff_16_8_Q : STD_LOGIC; 
  signal reset_count_31_dff_16_7_Q : STD_LOGIC; 
  signal reset_count_31_dff_16_6_Q : STD_LOGIC; 
  signal reset_count_31_dff_16_5_Q : STD_LOGIC; 
  signal reset_count_31_dff_16_4_Q : STD_LOGIC; 
  signal reset_count_31_dff_16_3_Q : STD_LOGIC; 
  signal reset_count_31_dff_16_2_Q : STD_LOGIC; 
  signal reset_count_31_dff_16_1_Q : STD_LOGIC; 
  signal reset_count_31_dff_16_0_Q : STD_LOGIC; 
  signal reg_state_FSM_FFd1_1163 : STD_LOGIC; 
  signal reg_state_FSM_FFd2_1164 : STD_LOGIC; 
  signal reg_state_FSM_FFd3_1165 : STD_LOGIC; 
  signal reg_state_FSM_FFd4_1166 : STD_LOGIC; 
  signal reg_state_3_X_76_o_wide_mux_134_OUT_3_Q : STD_LOGIC; 
  signal reg_state_3_X_76_o_wide_mux_134_OUT_2_Q : STD_LOGIC; 
  signal reg_state_3_X_76_o_wide_mux_134_OUT_1_Q : STD_LOGIC; 
  signal reg_state_3_X_76_o_wide_mux_134_OUT_0_Q : STD_LOGIC; 
  signal fifo_wr_en_w1_r8_1171 : STD_LOGIC; 
  signal fifo_empty_w1r8_INV_69_o : STD_LOGIC; 
  signal wait_count_31_GND_89_o_add_131_OUT_15_Q : STD_LOGIC; 
  signal wait_count_31_GND_89_o_add_131_OUT_14_Q : STD_LOGIC; 
  signal wait_count_31_GND_89_o_add_131_OUT_13_Q : STD_LOGIC; 
  signal wait_count_31_GND_89_o_add_131_OUT_12_Q : STD_LOGIC; 
  signal wait_count_31_GND_89_o_add_131_OUT_11_Q : STD_LOGIC; 
  signal wait_count_31_GND_89_o_add_131_OUT_10_Q : STD_LOGIC; 
  signal wait_count_31_GND_89_o_add_131_OUT_9_Q : STD_LOGIC; 
  signal wait_count_31_GND_89_o_add_131_OUT_8_Q : STD_LOGIC; 
  signal wait_count_31_GND_89_o_add_131_OUT_7_Q : STD_LOGIC; 
  signal wait_count_31_GND_89_o_add_131_OUT_6_Q : STD_LOGIC; 
  signal wait_count_31_GND_89_o_add_131_OUT_5_Q : STD_LOGIC; 
  signal wait_count_31_GND_89_o_add_131_OUT_4_Q : STD_LOGIC; 
  signal wait_count_31_GND_89_o_add_131_OUT_3_Q : STD_LOGIC; 
  signal wait_count_31_GND_89_o_add_131_OUT_2_Q : STD_LOGIC; 
  signal wait_count_31_GND_89_o_add_131_OUT_1_Q : STD_LOGIC; 
  signal wait_count_31_GND_89_o_add_131_OUT_0_Q : STD_LOGIC; 
  signal OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_15_Q : STD_LOGIC; 
  signal OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_14_Q : STD_LOGIC; 
  signal OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_13_Q : STD_LOGIC; 
  signal OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_12_Q : STD_LOGIC; 
  signal OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_11_Q : STD_LOGIC; 
  signal OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_10_Q : STD_LOGIC; 
  signal OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_9_Q : STD_LOGIC; 
  signal OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_8_Q : STD_LOGIC; 
  signal OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_7_Q : STD_LOGIC; 
  signal OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_6_Q : STD_LOGIC; 
  signal OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_5_Q : STD_LOGIC; 
  signal OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_4_Q : STD_LOGIC; 
  signal OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_3_Q : STD_LOGIC; 
  signal OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_2_Q : STD_LOGIC; 
  signal OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_1_Q : STD_LOGIC; 
  signal OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_0_Q : STD_LOGIC; 
  signal reg_state_3_X_76_o_wide_mux_135_OUT_15_Q : STD_LOGIC; 
  signal reg_state_3_X_76_o_wide_mux_135_OUT_14_Q : STD_LOGIC; 
  signal reg_state_3_X_76_o_wide_mux_135_OUT_13_Q : STD_LOGIC; 
  signal reg_state_3_X_76_o_wide_mux_135_OUT_12_Q : STD_LOGIC; 
  signal reg_state_3_X_76_o_wide_mux_135_OUT_11_Q : STD_LOGIC; 
  signal reg_state_3_X_76_o_wide_mux_135_OUT_10_Q : STD_LOGIC; 
  signal reg_state_3_X_76_o_wide_mux_135_OUT_9_Q : STD_LOGIC; 
  signal reg_state_3_X_76_o_wide_mux_135_OUT_8_Q : STD_LOGIC; 
  signal reg_state_3_X_76_o_wide_mux_135_OUT_7_Q : STD_LOGIC; 
  signal reg_state_3_X_76_o_wide_mux_135_OUT_6_Q : STD_LOGIC; 
  signal reg_state_3_X_76_o_wide_mux_135_OUT_5_Q : STD_LOGIC; 
  signal reg_state_3_X_76_o_wide_mux_135_OUT_4_Q : STD_LOGIC; 
  signal reg_state_3_X_76_o_wide_mux_135_OUT_3_Q : STD_LOGIC; 
  signal reg_state_3_X_76_o_wide_mux_135_OUT_2_Q : STD_LOGIC; 
  signal reg_state_3_X_76_o_wide_mux_135_OUT_1_Q : STD_LOGIC; 
  signal reg_state_3_X_76_o_wide_mux_135_OUT_0_Q : STD_LOGIC; 
  signal rx_reset : STD_LOGIC; 
  signal rx_st_31_GND_89_o_AND_9_o : STD_LOGIC; 
  signal GND_89_o_PWR_20_o_AND_74_o : STD_LOGIC; 
  signal Q_n0613 : STD_LOGIC; 
  signal GND_89_o_PWR_20_o_AND_73_o : STD_LOGIC; 
  signal GND_89_o_bit_count_31_not_equal_1_o : STD_LOGIC; 
  signal rx_st_rst_1319 : STD_LOGIC; 
  signal Q_n1521_inv : STD_LOGIC; 
  signal UPDATE_inv : STD_LOGIC; 
  signal rx_st_rst_inv : STD_LOGIC; 
  signal Q_n0943_inv : STD_LOGIC; 
  signal Q_n0972_inv : STD_LOGIC; 
  signal Q_n1011_inv : STD_LOGIC; 
  signal Q_n1079_inv : STD_LOGIC; 
  signal Q_n1108_inv : STD_LOGIC; 
  signal Q_n1137_inv : STD_LOGIC; 
  signal Q_n1166_inv : STD_LOGIC; 
  signal Q_n1195_inv : STD_LOGIC; 
  signal Q_n1224_inv : STD_LOGIC; 
  signal Q_n1253_inv : STD_LOGIC; 
  signal Q_n1282_inv : STD_LOGIC; 
  signal Q_n1311_inv : STD_LOGIC; 
  signal Q_n1340_inv : STD_LOGIC; 
  signal Q_n1419_inv : STD_LOGIC; 
  signal Q_n1448_inv : STD_LOGIC; 
  signal Q_n1476_inv_1338 : STD_LOGIC; 
  signal Q_n1617_inv : STD_LOGIC; 
  signal Q_n0793_inv : STD_LOGIC; 
  signal Q_n0768_inv : STD_LOGIC; 
  signal Q_n0860_inv_1342 : STD_LOGIC; 
  signal Q_n0914_inv_1343 : STD_LOGIC; 
  signal Q_n0736_inv : STD_LOGIC; 
  signal Q_n1390_inv : STD_LOGIC; 
  signal Q_n1588_inv : STD_LOGIC; 
  signal Q_n1050_inv : STD_LOGIC; 
  signal Q_n1504_inv : STD_LOGIC; 
  signal DATA_CLK_inv : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal Result_2_1 : STD_LOGIC; 
  signal Result_3_1 : STD_LOGIC; 
  signal Result_4_1 : STD_LOGIC; 
  signal Result_5_1 : STD_LOGIC; 
  signal Mcount_bit_count_eqn_5 : STD_LOGIC; 
  signal Result_6_1 : STD_LOGIC; 
  signal Result_7_1 : STD_LOGIC; 
  signal Result_8_1 : STD_LOGIC; 
  signal Result_9_1 : STD_LOGIC; 
  signal Result_10_1 : STD_LOGIC; 
  signal Result_11_1 : STD_LOGIC; 
  signal Result_12_1 : STD_LOGIC; 
  signal Result_13_1 : STD_LOGIC; 
  signal Result_14_1 : STD_LOGIC; 
  signal Result_15_1 : STD_LOGIC; 
  signal Result_16_1 : STD_LOGIC; 
  signal Result_17_1 : STD_LOGIC; 
  signal Result_18_1 : STD_LOGIC; 
  signal Result_19_1 : STD_LOGIC; 
  signal Result_20_1 : STD_LOGIC; 
  signal Result_21_1 : STD_LOGIC; 
  signal Result_22_1 : STD_LOGIC; 
  signal Result_23_1 : STD_LOGIC; 
  signal Result_24_1 : STD_LOGIC; 
  signal Result_25_1 : STD_LOGIC; 
  signal Result_26_1 : STD_LOGIC; 
  signal Result_27_1 : STD_LOGIC; 
  signal Result_28_1 : STD_LOGIC; 
  signal Result_29_1 : STD_LOGIC; 
  signal Result_30_1 : STD_LOGIC; 
  signal Result_31_1 : STD_LOGIC; 
  signal reg_state_FSM_FFd3_In11 : STD_LOGIC; 
  signal reg_state_FSM_FFd1_In2 : STD_LOGIC; 
  signal reg_state_FSM_FFd4_In : STD_LOGIC; 
  signal reg_state_FSM_FFd3_In_1417 : STD_LOGIC; 
  signal reg_state_FSM_FFd2_In_1418 : STD_LOGIC; 
  signal reg_state_FSM_FFd1_In_1419 : STD_LOGIC; 
  signal GND_89_o_bit_count_31_not_equal_1_o_0 : STD_LOGIC; 
  signal Madd_wait_count_31_GND_89_o_add_131_OUT_lut_0_Q : STD_LOGIC; 
  signal Madd_wait_count_31_GND_89_o_add_131_OUT_cy_0_Q_1422 : STD_LOGIC; 
  signal Madd_wait_count_31_GND_89_o_add_131_OUT_cy_1_Q_1423 : STD_LOGIC; 
  signal Madd_wait_count_31_GND_89_o_add_131_OUT_cy_2_Q_1424 : STD_LOGIC; 
  signal Madd_wait_count_31_GND_89_o_add_131_OUT_cy_3_Q_1425 : STD_LOGIC; 
  signal Madd_wait_count_31_GND_89_o_add_131_OUT_cy_4_Q_1426 : STD_LOGIC; 
  signal Madd_wait_count_31_GND_89_o_add_131_OUT_cy_5_Q_1427 : STD_LOGIC; 
  signal Madd_wait_count_31_GND_89_o_add_131_OUT_cy_6_Q_1428 : STD_LOGIC; 
  signal Madd_wait_count_31_GND_89_o_add_131_OUT_cy_7_Q_1429 : STD_LOGIC; 
  signal Madd_wait_count_31_GND_89_o_add_131_OUT_cy_8_Q_1430 : STD_LOGIC; 
  signal Madd_wait_count_31_GND_89_o_add_131_OUT_cy_9_Q_1431 : STD_LOGIC; 
  signal Madd_wait_count_31_GND_89_o_add_131_OUT_cy_10_Q_1432 : STD_LOGIC; 
  signal Madd_wait_count_31_GND_89_o_add_131_OUT_cy_11_Q_1433 : STD_LOGIC; 
  signal Madd_wait_count_31_GND_89_o_add_131_OUT_cy_12_Q_1434 : STD_LOGIC; 
  signal Madd_wait_count_31_GND_89_o_add_131_OUT_cy_13_Q_1435 : STD_LOGIC; 
  signal Madd_wait_count_31_GND_89_o_add_131_OUT_cy_14_Q_1436 : STD_LOGIC; 
  signal Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lutdi_1437 : STD_LOGIC; 
  signal Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lut_0_Q_1438 : STD_LOGIC; 
  signal Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_0_Q_1439 : STD_LOGIC; 
  signal Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lutdi1_1440 : STD_LOGIC; 
  signal Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lut_1_Q_1441 : STD_LOGIC; 
  signal Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_1_Q_1442 : STD_LOGIC; 
  signal Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lutdi2_1443 : STD_LOGIC; 
  signal Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lut_2_Q_1444 : STD_LOGIC; 
  signal Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_2_Q_1445 : STD_LOGIC; 
  signal Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lutdi3_1446 : STD_LOGIC; 
  signal Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lut_3_Q_1447 : STD_LOGIC; 
  signal Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_3_Q_1448 : STD_LOGIC; 
  signal Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lutdi4_1449 : STD_LOGIC; 
  signal Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lut_4_Q_1450 : STD_LOGIC; 
  signal Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_4_Q_1451 : STD_LOGIC; 
  signal Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lutdi5_1452 : STD_LOGIC; 
  signal Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lut_5_Q_1453 : STD_LOGIC; 
  signal Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_5_Q_1454 : STD_LOGIC; 
  signal Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lutdi6_1455 : STD_LOGIC; 
  signal Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lut_6_Q_1456 : STD_LOGIC; 
  signal Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_6_Q_1457 : STD_LOGIC; 
  signal Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lutdi7_1458 : STD_LOGIC; 
  signal Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lut_7_Q_1459 : STD_LOGIC; 
  signal Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_7_Q_1460 : STD_LOGIC; 
  signal Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_8_Q_1461 : STD_LOGIC; 
  signal Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_9_Q_1462 : STD_LOGIC; 
  signal Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_10_Q_1463 : STD_LOGIC; 
  signal Mcompar_rx_st_31_GND_89_o_LessThan_11_o_lutdi_1464 : STD_LOGIC; 
  signal Mcompar_rx_st_31_GND_89_o_LessThan_11_o_lut_0_Q_1465 : STD_LOGIC; 
  signal Mcompar_rx_st_31_GND_89_o_LessThan_11_o_cy_0_Q_1466 : STD_LOGIC; 
  signal Mcompar_rx_st_31_GND_89_o_LessThan_11_o_cy_1_Q_1467 : STD_LOGIC; 
  signal Mcompar_rx_st_31_GND_89_o_LessThan_11_o_cy_2_Q_1468 : STD_LOGIC; 
  signal Mcompar_rx_st_31_GND_89_o_LessThan_11_o_cy_3_Q_1469 : STD_LOGIC; 
  signal Mcompar_rx_st_31_GND_89_o_LessThan_11_o_cy_4_Q_1470 : STD_LOGIC; 
  signal Mcompar_rx_st_31_GND_89_o_LessThan_11_o_cy_5_Q_1471 : STD_LOGIC; 
  signal Mcompar_rx_st_31_GND_89_o_LessThan_11_o_cy_6_Q_1472 : STD_LOGIC; 
  signal Mcompar_GND_89_o_rx_st_31_LessThan_9_o_lutdi : STD_LOGIC; 
  signal Mcompar_GND_89_o_rx_st_31_LessThan_9_o_lut_0_Q : STD_LOGIC; 
  signal Mcompar_GND_89_o_rx_st_31_LessThan_9_o_cy_0_Q_1475 : STD_LOGIC; 
  signal NlwRenamedSig_OI_RB_EN : STD_LOGIC; 
  signal Mcompar_GND_89_o_rx_st_31_LessThan_9_o_cy_1_Q_1477 : STD_LOGIC; 
  signal Mcompar_GND_89_o_rx_st_31_LessThan_9_o_cy_2_Q_1478 : STD_LOGIC; 
  signal Mcompar_GND_89_o_rx_st_31_LessThan_9_o_cy_3_Q_1479 : STD_LOGIC; 
  signal Mcompar_GND_89_o_rx_st_31_LessThan_9_o_cy_4_Q_1480 : STD_LOGIC; 
  signal Mcompar_GND_89_o_rx_st_31_LessThan_9_o_cy_5_Q_1481 : STD_LOGIC; 
  signal Mcompar_GND_89_o_rx_st_31_LessThan_9_o_cy_6_Q_1482 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_lut_0_Q : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_0_Q_1546 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_1_Q_1547 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_2_Q_1548 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_3_Q_1549 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_4_Q_1550 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_5_Q_1551 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_6_Q_1552 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_7_Q_1553 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_8_Q_1554 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_9_Q_1555 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_10_Q_1556 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_11_Q_1557 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_12_Q_1558 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_13_Q_1559 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_14_Q_1560 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_15_Q_1561 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_16_Q_1562 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_17_Q_1563 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_18_Q_1564 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_19_Q_1565 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_20_Q_1566 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_21_Q_1567 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_22_Q_1568 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_23_Q_1569 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_24_Q_1570 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_25_Q_1571 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_26_Q_1572 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_27_Q_1573 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_28_Q_1574 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_29_Q_1575 : STD_LOGIC; 
  signal Q_n0860_inv1 : STD_LOGIC; 
  signal Q_n1588_inv1 : STD_LOGIC; 
  signal Q_n1079_inv1_1578 : STD_LOGIC; 
  signal Q_n0914_inv2 : STD_LOGIC; 
  signal Q_n1011_inv11 : STD_LOGIC; 
  signal Q_n1390_inv11 : STD_LOGIC; 
  signal Q_n0732_2_1_1582 : STD_LOGIC; 
  signal rx_reset1_1583 : STD_LOGIC; 
  signal rx_reset2_1584 : STD_LOGIC; 
  signal rx_reset3_1585 : STD_LOGIC; 
  signal rx_reset5_1586 : STD_LOGIC; 
  signal GND_89_o_bit_count_31_not_equal_1_o32 : STD_LOGIC; 
  signal GND_89_o_bit_count_31_not_equal_1_o321_1588 : STD_LOGIC; 
  signal GND_89_o_bit_count_31_not_equal_1_o322_1589 : STD_LOGIC; 
  signal GND_89_o_bit_count_31_not_equal_1_o323_1590 : STD_LOGIC; 
  signal GND_89_o_bit_count_31_not_equal_1_o324_1591 : STD_LOGIC; 
  signal GND_89_o_bit_count_31_not_equal_1_o325_1592 : STD_LOGIC; 
  signal GND_89_o_PWR_20_o_AND_73_o1_1593 : STD_LOGIC; 
  signal GND_89_o_PWR_20_o_AND_73_o2_1594 : STD_LOGIC; 
  signal GND_89_o_PWR_20_o_AND_73_o3_1595 : STD_LOGIC; 
  signal GND_89_o_PWR_20_o_AND_73_o4_1596 : STD_LOGIC; 
  signal GND_89_o_PWR_20_o_AND_73_o5_1597 : STD_LOGIC; 
  signal GND_89_o_PWR_20_o_AND_73_o6_1598 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal reg_state_FSM_FFd4_In1_1600 : STD_LOGIC; 
  signal reg_state_FSM_FFd4_In2_1601 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal Q_n1390_inv1_1607 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal Madd_wait_count_31_GND_89_o_add_131_OUT_cy_1_rt_1609 : STD_LOGIC; 
  signal Madd_wait_count_31_GND_89_o_add_131_OUT_cy_2_rt_1610 : STD_LOGIC; 
  signal Madd_wait_count_31_GND_89_o_add_131_OUT_cy_3_rt_1611 : STD_LOGIC; 
  signal Madd_wait_count_31_GND_89_o_add_131_OUT_cy_4_rt_1612 : STD_LOGIC; 
  signal Madd_wait_count_31_GND_89_o_add_131_OUT_cy_5_rt_1613 : STD_LOGIC; 
  signal Madd_wait_count_31_GND_89_o_add_131_OUT_cy_6_rt_1614 : STD_LOGIC; 
  signal Madd_wait_count_31_GND_89_o_add_131_OUT_cy_7_rt_1615 : STD_LOGIC; 
  signal Madd_wait_count_31_GND_89_o_add_131_OUT_cy_8_rt_1616 : STD_LOGIC; 
  signal Madd_wait_count_31_GND_89_o_add_131_OUT_cy_9_rt_1617 : STD_LOGIC; 
  signal Madd_wait_count_31_GND_89_o_add_131_OUT_cy_10_rt_1618 : STD_LOGIC; 
  signal Madd_wait_count_31_GND_89_o_add_131_OUT_cy_11_rt_1619 : STD_LOGIC; 
  signal Madd_wait_count_31_GND_89_o_add_131_OUT_cy_12_rt_1620 : STD_LOGIC; 
  signal Madd_wait_count_31_GND_89_o_add_131_OUT_cy_13_rt_1621 : STD_LOGIC; 
  signal Madd_wait_count_31_GND_89_o_add_131_OUT_cy_14_rt_1622 : STD_LOGIC; 
  signal Mcount_bit_count_cy_0_rt_1623 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_1_rt_1624 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_2_rt_1625 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_3_rt_1626 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_4_rt_1627 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_5_rt_1628 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_6_rt_1629 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_7_rt_1630 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_8_rt_1631 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_9_rt_1632 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_10_rt_1633 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_11_rt_1634 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_12_rt_1635 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_13_rt_1636 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_14_rt_1637 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_15_rt_1638 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_16_rt_1639 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_17_rt_1640 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_18_rt_1641 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_19_rt_1642 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_20_rt_1643 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_21_rt_1644 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_22_rt_1645 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_23_rt_1646 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_24_rt_1647 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_25_rt_1648 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_26_rt_1649 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_27_rt_1650 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_28_rt_1651 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_cy_29_rt_1652 : STD_LOGIC; 
  signal Madd_wait_count_31_GND_89_o_add_131_OUT_xor_15_rt_1653 : STD_LOGIC; 
  signal Mcount_reset_count_31_dff_16_xor_30_rt_1654 : STD_LOGIC; 
  signal OUTPUT_REG_0_0_rstpot_1655 : STD_LOGIC; 
  signal rd_en_w8r32_rstpot_1656 : STD_LOGIC; 
  signal TX_UPDATE_rstpot_1657 : STD_LOGIC; 
  signal DAC_UPDATE_rstpot_1658 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal rx_st_rst_G_1660 : STD_LOGIC; 
  signal rx_st_rst_D_1661 : STD_LOGIC; 
  signal Mshreg_wr_en_w8r32_2_1662 : STD_LOGIC; 
  signal NLW_Mshreg_wr_en_w8r32_2_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_MAS_DC_RX_FIFO_W1R8_full_UNCONNECTED : STD_LOGIC; 
  signal NLW_MAS_DC_RX_FIFO_W8R32_dout_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_MAS_DC_RX_FIFO_W8R32_dout_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_MAS_DC_RX_FIFO_W8R32_dout_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_MAS_DC_RX_FIFO_W8R32_dout_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_MAS_DC_RX_FIFO_W8R32_full_UNCONNECTED : STD_LOGIC; 
  signal fifo_dout_w1r8 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal fifo_dout_w8r32 : STD_LOGIC_VECTOR ( 27 downto 0 ); 
  signal wr_en_w8r32 : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal wait_count : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal OUTPUT_REG_19 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal OUTPUT_REG_18 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal OUTPUT_REG_17 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal OUTPUT_REG_16 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal OUTPUT_REG_15 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal OUTPUT_REG_14 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal OUTPUT_REG_13 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal OUTPUT_REG_12 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal OUTPUT_REG_11 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal OUTPUT_REG_10 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal OUTPUT_REG_9 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal OUTPUT_REG_8 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal OUTPUT_REG_7 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal OUTPUT_REG_6 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal NlwRenamedSig_OI_OUTPUT_REG_5 : STD_LOGIC_VECTOR ( 15 downto 1 ); 
  signal OUTPUT_REG_5 : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal OUTPUT_REG_4 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal OUTPUT_REG_3 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal OUTPUT_REG_2 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal OUTPUT_REG_1 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal cmd_type : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal cmd_reg_num : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal cmd_data : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal internal_data : STD_LOGIC_VECTOR ( 27 downto 0 ); 
  signal bit_count : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal Q_n1018 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Q_n1345 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal Mcount_bit_count_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal Mcount_bit_count_lut : STD_LOGIC_VECTOR ( 31 downto 1 ); 
begin
  OUTPUT_REG(19, 15) <= OUTPUT_REG_19(15);
  OUTPUT_REG(19, 14) <= OUTPUT_REG_19(14);
  OUTPUT_REG(19, 13) <= OUTPUT_REG_19(13);
  OUTPUT_REG(19, 12) <= OUTPUT_REG_19(12);
  OUTPUT_REG(19, 11) <= OUTPUT_REG_19(11);
  OUTPUT_REG(19, 10) <= OUTPUT_REG_19(10);
  OUTPUT_REG(19, 9) <= OUTPUT_REG_19(9);
  OUTPUT_REG(19, 8) <= OUTPUT_REG_19(8);
  OUTPUT_REG(19, 7) <= OUTPUT_REG_19(7);
  OUTPUT_REG(19, 6) <= OUTPUT_REG_19(6);
  OUTPUT_REG(19, 5) <= OUTPUT_REG_19(5);
  OUTPUT_REG(19, 4) <= OUTPUT_REG_19(4);
  OUTPUT_REG(19, 3) <= OUTPUT_REG_19(3);
  OUTPUT_REG(19, 2) <= OUTPUT_REG_19(2);
  OUTPUT_REG(19, 1) <= OUTPUT_REG_19(1);
  OUTPUT_REG(19, 0) <= OUTPUT_REG_19(0);
  OUTPUT_REG(18, 15) <= OUTPUT_REG_18(15);
  OUTPUT_REG(18, 14) <= OUTPUT_REG_18(14);
  OUTPUT_REG(18, 13) <= OUTPUT_REG_18(13);
  OUTPUT_REG(18, 12) <= OUTPUT_REG_18(12);
  OUTPUT_REG(18, 11) <= OUTPUT_REG_18(11);
  OUTPUT_REG(18, 10) <= OUTPUT_REG_18(10);
  OUTPUT_REG(18, 9) <= OUTPUT_REG_18(9);
  OUTPUT_REG(18, 8) <= OUTPUT_REG_18(8);
  OUTPUT_REG(18, 7) <= OUTPUT_REG_18(7);
  OUTPUT_REG(18, 6) <= OUTPUT_REG_18(6);
  OUTPUT_REG(18, 5) <= OUTPUT_REG_18(5);
  OUTPUT_REG(18, 4) <= OUTPUT_REG_18(4);
  OUTPUT_REG(18, 3) <= OUTPUT_REG_18(3);
  OUTPUT_REG(18, 2) <= OUTPUT_REG_18(2);
  OUTPUT_REG(18, 1) <= OUTPUT_REG_18(1);
  OUTPUT_REG(18, 0) <= OUTPUT_REG_18(0);
  OUTPUT_REG(17, 15) <= OUTPUT_REG_17(15);
  OUTPUT_REG(17, 14) <= OUTPUT_REG_17(14);
  OUTPUT_REG(17, 13) <= OUTPUT_REG_17(13);
  OUTPUT_REG(17, 12) <= OUTPUT_REG_17(12);
  OUTPUT_REG(17, 11) <= OUTPUT_REG_17(11);
  OUTPUT_REG(17, 10) <= OUTPUT_REG_17(10);
  OUTPUT_REG(17, 9) <= OUTPUT_REG_17(9);
  OUTPUT_REG(17, 8) <= OUTPUT_REG_17(8);
  OUTPUT_REG(17, 7) <= OUTPUT_REG_17(7);
  OUTPUT_REG(17, 6) <= OUTPUT_REG_17(6);
  OUTPUT_REG(17, 5) <= OUTPUT_REG_17(5);
  OUTPUT_REG(17, 4) <= OUTPUT_REG_17(4);
  OUTPUT_REG(17, 3) <= OUTPUT_REG_17(3);
  OUTPUT_REG(17, 2) <= OUTPUT_REG_17(2);
  OUTPUT_REG(17, 1) <= OUTPUT_REG_17(1);
  OUTPUT_REG(17, 0) <= OUTPUT_REG_17(0);
  OUTPUT_REG(16, 15) <= OUTPUT_REG_16(15);
  OUTPUT_REG(16, 14) <= OUTPUT_REG_16(14);
  OUTPUT_REG(16, 13) <= OUTPUT_REG_16(13);
  OUTPUT_REG(16, 12) <= OUTPUT_REG_16(12);
  OUTPUT_REG(16, 11) <= OUTPUT_REG_16(11);
  OUTPUT_REG(16, 10) <= OUTPUT_REG_16(10);
  OUTPUT_REG(16, 9) <= OUTPUT_REG_16(9);
  OUTPUT_REG(16, 8) <= OUTPUT_REG_16(8);
  OUTPUT_REG(16, 7) <= OUTPUT_REG_16(7);
  OUTPUT_REG(16, 6) <= OUTPUT_REG_16(6);
  OUTPUT_REG(16, 5) <= OUTPUT_REG_16(5);
  OUTPUT_REG(16, 4) <= OUTPUT_REG_16(4);
  OUTPUT_REG(16, 3) <= OUTPUT_REG_16(3);
  OUTPUT_REG(16, 2) <= OUTPUT_REG_16(2);
  OUTPUT_REG(16, 1) <= OUTPUT_REG_16(1);
  OUTPUT_REG(16, 0) <= OUTPUT_REG_16(0);
  OUTPUT_REG(15, 15) <= OUTPUT_REG_15(15);
  OUTPUT_REG(15, 14) <= OUTPUT_REG_15(14);
  OUTPUT_REG(15, 13) <= OUTPUT_REG_15(13);
  OUTPUT_REG(15, 12) <= OUTPUT_REG_15(12);
  OUTPUT_REG(15, 11) <= OUTPUT_REG_15(11);
  OUTPUT_REG(15, 10) <= OUTPUT_REG_15(10);
  OUTPUT_REG(15, 9) <= OUTPUT_REG_15(9);
  OUTPUT_REG(15, 8) <= OUTPUT_REG_15(8);
  OUTPUT_REG(15, 7) <= OUTPUT_REG_15(7);
  OUTPUT_REG(15, 6) <= OUTPUT_REG_15(6);
  OUTPUT_REG(15, 5) <= OUTPUT_REG_15(5);
  OUTPUT_REG(15, 4) <= OUTPUT_REG_15(4);
  OUTPUT_REG(15, 3) <= OUTPUT_REG_15(3);
  OUTPUT_REG(15, 2) <= OUTPUT_REG_15(2);
  OUTPUT_REG(15, 1) <= OUTPUT_REG_15(1);
  OUTPUT_REG(15, 0) <= OUTPUT_REG_15(0);
  OUTPUT_REG(14, 15) <= OUTPUT_REG_14(15);
  OUTPUT_REG(14, 14) <= OUTPUT_REG_14(14);
  OUTPUT_REG(14, 13) <= OUTPUT_REG_14(13);
  OUTPUT_REG(14, 12) <= OUTPUT_REG_14(12);
  OUTPUT_REG(14, 11) <= OUTPUT_REG_14(11);
  OUTPUT_REG(14, 10) <= OUTPUT_REG_14(10);
  OUTPUT_REG(14, 9) <= OUTPUT_REG_14(9);
  OUTPUT_REG(14, 8) <= OUTPUT_REG_14(8);
  OUTPUT_REG(14, 7) <= OUTPUT_REG_14(7);
  OUTPUT_REG(14, 6) <= OUTPUT_REG_14(6);
  OUTPUT_REG(14, 5) <= OUTPUT_REG_14(5);
  OUTPUT_REG(14, 4) <= OUTPUT_REG_14(4);
  OUTPUT_REG(14, 3) <= OUTPUT_REG_14(3);
  OUTPUT_REG(14, 2) <= OUTPUT_REG_14(2);
  OUTPUT_REG(14, 1) <= OUTPUT_REG_14(1);
  OUTPUT_REG(14, 0) <= OUTPUT_REG_14(0);
  OUTPUT_REG(13, 15) <= OUTPUT_REG_13(15);
  OUTPUT_REG(13, 14) <= OUTPUT_REG_13(14);
  OUTPUT_REG(13, 13) <= OUTPUT_REG_13(13);
  OUTPUT_REG(13, 12) <= OUTPUT_REG_13(12);
  OUTPUT_REG(13, 11) <= OUTPUT_REG_13(11);
  OUTPUT_REG(13, 10) <= OUTPUT_REG_13(10);
  OUTPUT_REG(13, 9) <= OUTPUT_REG_13(9);
  OUTPUT_REG(13, 8) <= OUTPUT_REG_13(8);
  OUTPUT_REG(13, 7) <= OUTPUT_REG_13(7);
  OUTPUT_REG(13, 6) <= OUTPUT_REG_13(6);
  OUTPUT_REG(13, 5) <= OUTPUT_REG_13(5);
  OUTPUT_REG(13, 4) <= OUTPUT_REG_13(4);
  OUTPUT_REG(13, 3) <= OUTPUT_REG_13(3);
  OUTPUT_REG(13, 2) <= OUTPUT_REG_13(2);
  OUTPUT_REG(13, 1) <= OUTPUT_REG_13(1);
  OUTPUT_REG(13, 0) <= OUTPUT_REG_13(0);
  OUTPUT_REG(12, 15) <= OUTPUT_REG_12(15);
  OUTPUT_REG(12, 14) <= OUTPUT_REG_12(14);
  OUTPUT_REG(12, 13) <= OUTPUT_REG_12(13);
  OUTPUT_REG(12, 12) <= OUTPUT_REG_12(12);
  OUTPUT_REG(12, 11) <= OUTPUT_REG_12(11);
  OUTPUT_REG(12, 10) <= OUTPUT_REG_12(10);
  OUTPUT_REG(12, 9) <= OUTPUT_REG_12(9);
  OUTPUT_REG(12, 8) <= OUTPUT_REG_12(8);
  OUTPUT_REG(12, 7) <= OUTPUT_REG_12(7);
  OUTPUT_REG(12, 6) <= OUTPUT_REG_12(6);
  OUTPUT_REG(12, 5) <= OUTPUT_REG_12(5);
  OUTPUT_REG(12, 4) <= OUTPUT_REG_12(4);
  OUTPUT_REG(12, 3) <= OUTPUT_REG_12(3);
  OUTPUT_REG(12, 2) <= OUTPUT_REG_12(2);
  OUTPUT_REG(12, 1) <= OUTPUT_REG_12(1);
  OUTPUT_REG(12, 0) <= OUTPUT_REG_12(0);
  OUTPUT_REG(11, 15) <= OUTPUT_REG_11(15);
  OUTPUT_REG(11, 14) <= OUTPUT_REG_11(14);
  OUTPUT_REG(11, 13) <= OUTPUT_REG_11(13);
  OUTPUT_REG(11, 12) <= OUTPUT_REG_11(12);
  OUTPUT_REG(11, 11) <= OUTPUT_REG_11(11);
  OUTPUT_REG(11, 10) <= OUTPUT_REG_11(10);
  OUTPUT_REG(11, 9) <= OUTPUT_REG_11(9);
  OUTPUT_REG(11, 8) <= OUTPUT_REG_11(8);
  OUTPUT_REG(11, 7) <= OUTPUT_REG_11(7);
  OUTPUT_REG(11, 6) <= OUTPUT_REG_11(6);
  OUTPUT_REG(11, 5) <= OUTPUT_REG_11(5);
  OUTPUT_REG(11, 4) <= OUTPUT_REG_11(4);
  OUTPUT_REG(11, 3) <= OUTPUT_REG_11(3);
  OUTPUT_REG(11, 2) <= OUTPUT_REG_11(2);
  OUTPUT_REG(11, 1) <= OUTPUT_REG_11(1);
  OUTPUT_REG(11, 0) <= OUTPUT_REG_11(0);
  OUTPUT_REG(10, 15) <= OUTPUT_REG_10(15);
  OUTPUT_REG(10, 14) <= OUTPUT_REG_10(14);
  OUTPUT_REG(10, 13) <= OUTPUT_REG_10(13);
  OUTPUT_REG(10, 12) <= OUTPUT_REG_10(12);
  OUTPUT_REG(10, 11) <= OUTPUT_REG_10(11);
  OUTPUT_REG(10, 10) <= OUTPUT_REG_10(10);
  OUTPUT_REG(10, 9) <= OUTPUT_REG_10(9);
  OUTPUT_REG(10, 8) <= OUTPUT_REG_10(8);
  OUTPUT_REG(10, 7) <= OUTPUT_REG_10(7);
  OUTPUT_REG(10, 6) <= OUTPUT_REG_10(6);
  OUTPUT_REG(10, 5) <= OUTPUT_REG_10(5);
  OUTPUT_REG(10, 4) <= OUTPUT_REG_10(4);
  OUTPUT_REG(10, 3) <= OUTPUT_REG_10(3);
  OUTPUT_REG(10, 2) <= OUTPUT_REG_10(2);
  OUTPUT_REG(10, 1) <= OUTPUT_REG_10(1);
  OUTPUT_REG(10, 0) <= OUTPUT_REG_10(0);
  OUTPUT_REG(9, 15) <= OUTPUT_REG_9(15);
  OUTPUT_REG(9, 14) <= OUTPUT_REG_9(14);
  OUTPUT_REG(9, 13) <= OUTPUT_REG_9(13);
  OUTPUT_REG(9, 12) <= OUTPUT_REG_9(12);
  OUTPUT_REG(9, 11) <= OUTPUT_REG_9(11);
  OUTPUT_REG(9, 10) <= OUTPUT_REG_9(10);
  OUTPUT_REG(9, 9) <= OUTPUT_REG_9(9);
  OUTPUT_REG(9, 8) <= OUTPUT_REG_9(8);
  OUTPUT_REG(9, 7) <= OUTPUT_REG_9(7);
  OUTPUT_REG(9, 6) <= OUTPUT_REG_9(6);
  OUTPUT_REG(9, 5) <= OUTPUT_REG_9(5);
  OUTPUT_REG(9, 4) <= OUTPUT_REG_9(4);
  OUTPUT_REG(9, 3) <= OUTPUT_REG_9(3);
  OUTPUT_REG(9, 2) <= OUTPUT_REG_9(2);
  OUTPUT_REG(9, 1) <= OUTPUT_REG_9(1);
  OUTPUT_REG(9, 0) <= OUTPUT_REG_9(0);
  OUTPUT_REG(8, 15) <= OUTPUT_REG_8(15);
  OUTPUT_REG(8, 14) <= OUTPUT_REG_8(14);
  OUTPUT_REG(8, 13) <= OUTPUT_REG_8(13);
  OUTPUT_REG(8, 12) <= OUTPUT_REG_8(12);
  OUTPUT_REG(8, 11) <= OUTPUT_REG_8(11);
  OUTPUT_REG(8, 10) <= OUTPUT_REG_8(10);
  OUTPUT_REG(8, 9) <= OUTPUT_REG_8(9);
  OUTPUT_REG(8, 8) <= OUTPUT_REG_8(8);
  OUTPUT_REG(8, 7) <= OUTPUT_REG_8(7);
  OUTPUT_REG(8, 6) <= OUTPUT_REG_8(6);
  OUTPUT_REG(8, 5) <= OUTPUT_REG_8(5);
  OUTPUT_REG(8, 4) <= OUTPUT_REG_8(4);
  OUTPUT_REG(8, 3) <= OUTPUT_REG_8(3);
  OUTPUT_REG(8, 2) <= OUTPUT_REG_8(2);
  OUTPUT_REG(8, 1) <= OUTPUT_REG_8(1);
  OUTPUT_REG(8, 0) <= OUTPUT_REG_8(0);
  OUTPUT_REG(7, 15) <= OUTPUT_REG_7(15);
  OUTPUT_REG(7, 14) <= OUTPUT_REG_7(14);
  OUTPUT_REG(7, 13) <= OUTPUT_REG_7(13);
  OUTPUT_REG(7, 12) <= OUTPUT_REG_7(12);
  OUTPUT_REG(7, 11) <= OUTPUT_REG_7(11);
  OUTPUT_REG(7, 10) <= OUTPUT_REG_7(10);
  OUTPUT_REG(7, 9) <= OUTPUT_REG_7(9);
  OUTPUT_REG(7, 8) <= OUTPUT_REG_7(8);
  OUTPUT_REG(7, 7) <= OUTPUT_REG_7(7);
  OUTPUT_REG(7, 6) <= OUTPUT_REG_7(6);
  OUTPUT_REG(7, 5) <= OUTPUT_REG_7(5);
  OUTPUT_REG(7, 4) <= OUTPUT_REG_7(4);
  OUTPUT_REG(7, 3) <= OUTPUT_REG_7(3);
  OUTPUT_REG(7, 2) <= OUTPUT_REG_7(2);
  OUTPUT_REG(7, 1) <= OUTPUT_REG_7(1);
  OUTPUT_REG(7, 0) <= OUTPUT_REG_7(0);
  OUTPUT_REG(6, 15) <= OUTPUT_REG_6(15);
  OUTPUT_REG(6, 14) <= OUTPUT_REG_6(14);
  OUTPUT_REG(6, 13) <= OUTPUT_REG_6(13);
  OUTPUT_REG(6, 12) <= OUTPUT_REG_6(12);
  OUTPUT_REG(6, 11) <= OUTPUT_REG_6(11);
  OUTPUT_REG(6, 10) <= OUTPUT_REG_6(10);
  OUTPUT_REG(6, 9) <= OUTPUT_REG_6(9);
  OUTPUT_REG(6, 8) <= OUTPUT_REG_6(8);
  OUTPUT_REG(6, 7) <= OUTPUT_REG_6(7);
  OUTPUT_REG(6, 6) <= OUTPUT_REG_6(6);
  OUTPUT_REG(6, 5) <= OUTPUT_REG_6(5);
  OUTPUT_REG(6, 4) <= OUTPUT_REG_6(4);
  OUTPUT_REG(6, 3) <= OUTPUT_REG_6(3);
  OUTPUT_REG(6, 2) <= OUTPUT_REG_6(2);
  OUTPUT_REG(6, 1) <= OUTPUT_REG_6(1);
  OUTPUT_REG(6, 0) <= OUTPUT_REG_6(0);
  OUTPUT_REG(5, 15) <= NlwRenamedSig_OI_OUTPUT_REG_5(15);
  OUTPUT_REG(5, 14) <= NlwRenamedSig_OI_OUTPUT_REG_5(14);
  OUTPUT_REG(5, 13) <= NlwRenamedSig_OI_OUTPUT_REG_5(13);
  OUTPUT_REG(5, 12) <= NlwRenamedSig_OI_OUTPUT_REG_5(12);
  OUTPUT_REG(5, 11) <= NlwRenamedSig_OI_OUTPUT_REG_5(11);
  OUTPUT_REG(5, 10) <= NlwRenamedSig_OI_OUTPUT_REG_5(10);
  OUTPUT_REG(5, 9) <= NlwRenamedSig_OI_OUTPUT_REG_5(9);
  OUTPUT_REG(5, 8) <= NlwRenamedSig_OI_OUTPUT_REG_5(8);
  OUTPUT_REG(5, 7) <= NlwRenamedSig_OI_OUTPUT_REG_5(7);
  OUTPUT_REG(5, 6) <= NlwRenamedSig_OI_OUTPUT_REG_5(6);
  OUTPUT_REG(5, 5) <= NlwRenamedSig_OI_OUTPUT_REG_5(5);
  OUTPUT_REG(5, 4) <= NlwRenamedSig_OI_OUTPUT_REG_5(4);
  OUTPUT_REG(5, 3) <= NlwRenamedSig_OI_OUTPUT_REG_5(3);
  OUTPUT_REG(5, 2) <= NlwRenamedSig_OI_OUTPUT_REG_5(2);
  OUTPUT_REG(5, 1) <= NlwRenamedSig_OI_OUTPUT_REG_5(1);
  OUTPUT_REG(5, 0) <= OUTPUT_REG_5(0);
  OUTPUT_REG(4, 15) <= OUTPUT_REG_4(15);
  OUTPUT_REG(4, 14) <= OUTPUT_REG_4(14);
  OUTPUT_REG(4, 13) <= OUTPUT_REG_4(13);
  OUTPUT_REG(4, 12) <= OUTPUT_REG_4(12);
  OUTPUT_REG(4, 11) <= OUTPUT_REG_4(11);
  OUTPUT_REG(4, 10) <= OUTPUT_REG_4(10);
  OUTPUT_REG(4, 9) <= OUTPUT_REG_4(9);
  OUTPUT_REG(4, 8) <= OUTPUT_REG_4(8);
  OUTPUT_REG(4, 7) <= OUTPUT_REG_4(7);
  OUTPUT_REG(4, 6) <= OUTPUT_REG_4(6);
  OUTPUT_REG(4, 5) <= OUTPUT_REG_4(5);
  OUTPUT_REG(4, 4) <= OUTPUT_REG_4(4);
  OUTPUT_REG(4, 3) <= OUTPUT_REG_4(3);
  OUTPUT_REG(4, 2) <= OUTPUT_REG_4(2);
  OUTPUT_REG(4, 1) <= OUTPUT_REG_4(1);
  OUTPUT_REG(4, 0) <= OUTPUT_REG_4(0);
  OUTPUT_REG(3, 15) <= OUTPUT_REG_3(15);
  OUTPUT_REG(3, 14) <= OUTPUT_REG_3(14);
  OUTPUT_REG(3, 13) <= OUTPUT_REG_3(13);
  OUTPUT_REG(3, 12) <= OUTPUT_REG_3(12);
  OUTPUT_REG(3, 11) <= OUTPUT_REG_3(11);
  OUTPUT_REG(3, 10) <= OUTPUT_REG_3(10);
  OUTPUT_REG(3, 9) <= OUTPUT_REG_3(9);
  OUTPUT_REG(3, 8) <= OUTPUT_REG_3(8);
  OUTPUT_REG(3, 7) <= OUTPUT_REG_3(7);
  OUTPUT_REG(3, 6) <= OUTPUT_REG_3(6);
  OUTPUT_REG(3, 5) <= OUTPUT_REG_3(5);
  OUTPUT_REG(3, 4) <= OUTPUT_REG_3(4);
  OUTPUT_REG(3, 3) <= OUTPUT_REG_3(3);
  OUTPUT_REG(3, 2) <= OUTPUT_REG_3(2);
  OUTPUT_REG(3, 1) <= OUTPUT_REG_3(1);
  OUTPUT_REG(3, 0) <= OUTPUT_REG_3(0);
  OUTPUT_REG(2, 15) <= OUTPUT_REG_2(15);
  OUTPUT_REG(2, 14) <= OUTPUT_REG_2(14);
  OUTPUT_REG(2, 13) <= OUTPUT_REG_2(13);
  OUTPUT_REG(2, 12) <= OUTPUT_REG_2(12);
  OUTPUT_REG(2, 11) <= OUTPUT_REG_2(11);
  OUTPUT_REG(2, 10) <= OUTPUT_REG_2(10);
  OUTPUT_REG(2, 9) <= OUTPUT_REG_2(9);
  OUTPUT_REG(2, 8) <= OUTPUT_REG_2(8);
  OUTPUT_REG(2, 7) <= OUTPUT_REG_2(7);
  OUTPUT_REG(2, 6) <= OUTPUT_REG_2(6);
  OUTPUT_REG(2, 5) <= OUTPUT_REG_2(5);
  OUTPUT_REG(2, 4) <= OUTPUT_REG_2(4);
  OUTPUT_REG(2, 3) <= OUTPUT_REG_2(3);
  OUTPUT_REG(2, 2) <= OUTPUT_REG_2(2);
  OUTPUT_REG(2, 1) <= OUTPUT_REG_2(1);
  OUTPUT_REG(2, 0) <= OUTPUT_REG_2(0);
  OUTPUT_REG(1, 15) <= OUTPUT_REG_1(15);
  OUTPUT_REG(1, 14) <= OUTPUT_REG_1(14);
  OUTPUT_REG(1, 13) <= OUTPUT_REG_1(13);
  OUTPUT_REG(1, 12) <= OUTPUT_REG_1(12);
  OUTPUT_REG(1, 11) <= OUTPUT_REG_1(11);
  OUTPUT_REG(1, 10) <= OUTPUT_REG_1(10);
  OUTPUT_REG(1, 9) <= OUTPUT_REG_1(9);
  OUTPUT_REG(1, 8) <= OUTPUT_REG_1(8);
  OUTPUT_REG(1, 7) <= OUTPUT_REG_1(7);
  OUTPUT_REG(1, 6) <= OUTPUT_REG_1(6);
  OUTPUT_REG(1, 5) <= OUTPUT_REG_1(5);
  OUTPUT_REG(1, 4) <= OUTPUT_REG_1(4);
  OUTPUT_REG(1, 3) <= OUTPUT_REG_1(3);
  OUTPUT_REG(1, 2) <= OUTPUT_REG_1(2);
  OUTPUT_REG(1, 1) <= OUTPUT_REG_1(1);
  OUTPUT_REG(1, 0) <= OUTPUT_REG_1(0);
  OUTPUT_REG(0, 15) <= OUTPUT_REG_0_15_1117;
  OUTPUT_REG(0, 14) <= OUTPUT_REG_0_14_1118;
  OUTPUT_REG(0, 13) <= OUTPUT_REG_0_13_1119;
  OUTPUT_REG(0, 12) <= OUTPUT_REG_0_12_1120;
  OUTPUT_REG(0, 11) <= OUTPUT_REG_0_11_1121;
  OUTPUT_REG(0, 10) <= OUTPUT_REG_0_10_1122;
  OUTPUT_REG(0, 9) <= OUTPUT_REG_0_9_1123;
  OUTPUT_REG(0, 8) <= OUTPUT_REG_0_8_1124;
  OUTPUT_REG(0, 7) <= OUTPUT_REG_0_7_1125;
  OUTPUT_REG(0, 6) <= OUTPUT_REG_0_6_1126;
  OUTPUT_REG(0, 5) <= OUTPUT_REG_0_5_1127;
  OUTPUT_REG(0, 4) <= OUTPUT_REG_0_4_1128;
  OUTPUT_REG(0, 3) <= OUTPUT_REG_0_3_1129;
  OUTPUT_REG(0, 2) <= OUTPUT_REG_0_2_1130;
  OUTPUT_REG(0, 1) <= OUTPUT_REG_0_1_1131;
  OUTPUT_REG(0, 0) <= NlwRenamedSig_OI_OUTPUT_REG_0_0;
  TX_UPDATE <= NlwRenamedSig_OI_TX_UPDATE;
  DAC_UPDATE <= NlwRenamedSig_OI_DAC_UPDATE;
  RB_EN <= NlwRenamedSig_OI_RB_EN;
  XST_GND : GND
    port map (
      G => rx_st_10_Q
    );
  XST_VCC : VCC
    port map (
      P => NlwRenamedSig_OI_RB_EN
    );
  cmd_type_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n1521_inv,
      D => fifo_dout_w8r32(24),
      Q => cmd_type(0)
    );
  cmd_type_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n1521_inv,
      D => fifo_dout_w8r32(25),
      Q => cmd_type(1)
    );
  cmd_type_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n1521_inv,
      D => fifo_dout_w8r32(26),
      Q => cmd_type(2)
    );
  cmd_type_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n1521_inv,
      D => fifo_dout_w8r32(27),
      Q => cmd_type(3)
    );
  cmd_data_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n1521_inv,
      D => fifo_dout_w8r32(0),
      Q => cmd_data(0)
    );
  cmd_data_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n1521_inv,
      D => fifo_dout_w8r32(1),
      Q => cmd_data(1)
    );
  cmd_data_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n1521_inv,
      D => fifo_dout_w8r32(2),
      Q => cmd_data(2)
    );
  cmd_data_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n1521_inv,
      D => fifo_dout_w8r32(3),
      Q => cmd_data(3)
    );
  cmd_data_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n1521_inv,
      D => fifo_dout_w8r32(4),
      Q => cmd_data(4)
    );
  cmd_data_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n1521_inv,
      D => fifo_dout_w8r32(5),
      Q => cmd_data(5)
    );
  cmd_data_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n1521_inv,
      D => fifo_dout_w8r32(6),
      Q => cmd_data(6)
    );
  cmd_data_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n1521_inv,
      D => fifo_dout_w8r32(7),
      Q => cmd_data(7)
    );
  cmd_data_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n1521_inv,
      D => fifo_dout_w8r32(8),
      Q => cmd_data(8)
    );
  cmd_data_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n1521_inv,
      D => fifo_dout_w8r32(9),
      Q => cmd_data(9)
    );
  cmd_data_10 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n1521_inv,
      D => fifo_dout_w8r32(10),
      Q => cmd_data(10)
    );
  cmd_data_11 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n1521_inv,
      D => fifo_dout_w8r32(11),
      Q => cmd_data(11)
    );
  cmd_data_12 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n1521_inv,
      D => fifo_dout_w8r32(12),
      Q => cmd_data(12)
    );
  cmd_data_13 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n1521_inv,
      D => fifo_dout_w8r32(13),
      Q => cmd_data(13)
    );
  cmd_data_14 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n1521_inv,
      D => fifo_dout_w8r32(14),
      Q => cmd_data(14)
    );
  cmd_data_15 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n1521_inv,
      D => fifo_dout_w8r32(15),
      Q => cmd_data(15)
    );
  fifo_wr_en_w1_r8 : FDR_1
    port map (
      C => DATA_CLK,
      D => GND_89_o_bit_count_31_not_equal_1_o,
      R => UPDATE_inv,
      Q => fifo_wr_en_w1_r8_1171
    );
  internal_data_0 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      D => DATA_IN,
      R => UPDATE_inv,
      Q => internal_data(0)
    );
  internal_data_1 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      D => internal_data(0),
      R => UPDATE_inv,
      Q => internal_data(1)
    );
  internal_data_2 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      D => internal_data(1),
      R => UPDATE_inv,
      Q => internal_data(2)
    );
  internal_data_3 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      D => internal_data(2),
      R => UPDATE_inv,
      Q => internal_data(3)
    );
  internal_data_4 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      D => internal_data(3),
      R => UPDATE_inv,
      Q => internal_data(4)
    );
  internal_data_5 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      D => internal_data(4),
      R => UPDATE_inv,
      Q => internal_data(5)
    );
  internal_data_6 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      D => internal_data(5),
      R => UPDATE_inv,
      Q => internal_data(6)
    );
  internal_data_7 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      D => internal_data(6),
      R => UPDATE_inv,
      Q => internal_data(7)
    );
  internal_data_8 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      D => internal_data(7),
      R => UPDATE_inv,
      Q => internal_data(8)
    );
  internal_data_9 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      D => internal_data(8),
      R => UPDATE_inv,
      Q => internal_data(9)
    );
  internal_data_10 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      D => internal_data(9),
      R => UPDATE_inv,
      Q => internal_data(10)
    );
  internal_data_11 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      D => internal_data(10),
      R => UPDATE_inv,
      Q => internal_data(11)
    );
  internal_data_12 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      D => internal_data(11),
      R => UPDATE_inv,
      Q => internal_data(12)
    );
  internal_data_13 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      D => internal_data(12),
      R => UPDATE_inv,
      Q => internal_data(13)
    );
  internal_data_14 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      D => internal_data(13),
      R => UPDATE_inv,
      Q => internal_data(14)
    );
  internal_data_15 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      D => internal_data(14),
      R => UPDATE_inv,
      Q => internal_data(15)
    );
  internal_data_16 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      D => internal_data(15),
      R => UPDATE_inv,
      Q => internal_data(16)
    );
  internal_data_17 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      D => internal_data(16),
      R => UPDATE_inv,
      Q => internal_data(17)
    );
  internal_data_18 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      D => internal_data(17),
      R => UPDATE_inv,
      Q => internal_data(18)
    );
  internal_data_19 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      D => internal_data(18),
      R => UPDATE_inv,
      Q => internal_data(19)
    );
  internal_data_20 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      D => internal_data(19),
      R => UPDATE_inv,
      Q => internal_data(20)
    );
  internal_data_21 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      D => internal_data(20),
      R => UPDATE_inv,
      Q => internal_data(21)
    );
  internal_data_22 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      D => internal_data(21),
      R => UPDATE_inv,
      Q => internal_data(22)
    );
  internal_data_23 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      D => internal_data(22),
      R => UPDATE_inv,
      Q => internal_data(23)
    );
  internal_data_24 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      D => internal_data(23),
      R => UPDATE_inv,
      Q => internal_data(24)
    );
  internal_data_25 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      D => internal_data(24),
      R => UPDATE_inv,
      Q => internal_data(25)
    );
  internal_data_26 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      D => internal_data(25),
      R => UPDATE_inv,
      Q => internal_data(26)
    );
  internal_data_27 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK,
      D => internal_data(26),
      R => UPDATE_inv,
      Q => internal_data(27)
    );
  OUTPUT_REG_19_0 : FDE
    port map (
      C => CLK,
      CE => Q_n0943_inv,
      D => cmd_data(0),
      Q => OUTPUT_REG_19(0)
    );
  OUTPUT_REG_19_1 : FDE
    port map (
      C => CLK,
      CE => Q_n0943_inv,
      D => cmd_data(1),
      Q => OUTPUT_REG_19(1)
    );
  OUTPUT_REG_19_2 : FDE
    port map (
      C => CLK,
      CE => Q_n0943_inv,
      D => cmd_data(2),
      Q => OUTPUT_REG_19(2)
    );
  OUTPUT_REG_19_3 : FDE
    port map (
      C => CLK,
      CE => Q_n0943_inv,
      D => cmd_data(3),
      Q => OUTPUT_REG_19(3)
    );
  OUTPUT_REG_19_4 : FDE
    port map (
      C => CLK,
      CE => Q_n0943_inv,
      D => cmd_data(4),
      Q => OUTPUT_REG_19(4)
    );
  OUTPUT_REG_19_5 : FDE
    port map (
      C => CLK,
      CE => Q_n0943_inv,
      D => cmd_data(5),
      Q => OUTPUT_REG_19(5)
    );
  OUTPUT_REG_19_6 : FDE
    port map (
      C => CLK,
      CE => Q_n0943_inv,
      D => cmd_data(6),
      Q => OUTPUT_REG_19(6)
    );
  OUTPUT_REG_19_7 : FDE
    port map (
      C => CLK,
      CE => Q_n0943_inv,
      D => cmd_data(7),
      Q => OUTPUT_REG_19(7)
    );
  OUTPUT_REG_19_8 : FDE
    port map (
      C => CLK,
      CE => Q_n0943_inv,
      D => cmd_data(8),
      Q => OUTPUT_REG_19(8)
    );
  OUTPUT_REG_19_9 : FDE
    port map (
      C => CLK,
      CE => Q_n0943_inv,
      D => cmd_data(9),
      Q => OUTPUT_REG_19(9)
    );
  OUTPUT_REG_19_10 : FDE
    port map (
      C => CLK,
      CE => Q_n0943_inv,
      D => cmd_data(10),
      Q => OUTPUT_REG_19(10)
    );
  OUTPUT_REG_19_11 : FDE
    port map (
      C => CLK,
      CE => Q_n0943_inv,
      D => cmd_data(11),
      Q => OUTPUT_REG_19(11)
    );
  OUTPUT_REG_19_12 : FDE
    port map (
      C => CLK,
      CE => Q_n0943_inv,
      D => cmd_data(12),
      Q => OUTPUT_REG_19(12)
    );
  OUTPUT_REG_19_13 : FDE
    port map (
      C => CLK,
      CE => Q_n0943_inv,
      D => cmd_data(13),
      Q => OUTPUT_REG_19(13)
    );
  OUTPUT_REG_19_14 : FDE
    port map (
      C => CLK,
      CE => Q_n0943_inv,
      D => cmd_data(14),
      Q => OUTPUT_REG_19(14)
    );
  OUTPUT_REG_19_15 : FDE
    port map (
      C => CLK,
      CE => Q_n0943_inv,
      D => cmd_data(15),
      Q => OUTPUT_REG_19(15)
    );
  OUTPUT_REG_18_0 : FDE
    port map (
      C => CLK,
      CE => Q_n0972_inv,
      D => cmd_data(0),
      Q => OUTPUT_REG_18(0)
    );
  OUTPUT_REG_18_1 : FDE
    port map (
      C => CLK,
      CE => Q_n0972_inv,
      D => cmd_data(1),
      Q => OUTPUT_REG_18(1)
    );
  OUTPUT_REG_18_2 : FDE
    port map (
      C => CLK,
      CE => Q_n0972_inv,
      D => cmd_data(2),
      Q => OUTPUT_REG_18(2)
    );
  OUTPUT_REG_18_3 : FDE
    port map (
      C => CLK,
      CE => Q_n0972_inv,
      D => cmd_data(3),
      Q => OUTPUT_REG_18(3)
    );
  OUTPUT_REG_18_4 : FDE
    port map (
      C => CLK,
      CE => Q_n0972_inv,
      D => cmd_data(4),
      Q => OUTPUT_REG_18(4)
    );
  OUTPUT_REG_18_5 : FDE
    port map (
      C => CLK,
      CE => Q_n0972_inv,
      D => cmd_data(5),
      Q => OUTPUT_REG_18(5)
    );
  OUTPUT_REG_18_6 : FDE
    port map (
      C => CLK,
      CE => Q_n0972_inv,
      D => cmd_data(6),
      Q => OUTPUT_REG_18(6)
    );
  OUTPUT_REG_18_7 : FDE
    port map (
      C => CLK,
      CE => Q_n0972_inv,
      D => cmd_data(7),
      Q => OUTPUT_REG_18(7)
    );
  OUTPUT_REG_18_8 : FDE
    port map (
      C => CLK,
      CE => Q_n0972_inv,
      D => cmd_data(8),
      Q => OUTPUT_REG_18(8)
    );
  OUTPUT_REG_18_9 : FDE
    port map (
      C => CLK,
      CE => Q_n0972_inv,
      D => cmd_data(9),
      Q => OUTPUT_REG_18(9)
    );
  OUTPUT_REG_18_10 : FDE
    port map (
      C => CLK,
      CE => Q_n0972_inv,
      D => cmd_data(10),
      Q => OUTPUT_REG_18(10)
    );
  OUTPUT_REG_18_11 : FDE
    port map (
      C => CLK,
      CE => Q_n0972_inv,
      D => cmd_data(11),
      Q => OUTPUT_REG_18(11)
    );
  OUTPUT_REG_18_12 : FDE
    port map (
      C => CLK,
      CE => Q_n0972_inv,
      D => cmd_data(12),
      Q => OUTPUT_REG_18(12)
    );
  OUTPUT_REG_18_13 : FDE
    port map (
      C => CLK,
      CE => Q_n0972_inv,
      D => cmd_data(13),
      Q => OUTPUT_REG_18(13)
    );
  OUTPUT_REG_18_14 : FDE
    port map (
      C => CLK,
      CE => Q_n0972_inv,
      D => cmd_data(14),
      Q => OUTPUT_REG_18(14)
    );
  OUTPUT_REG_18_15 : FDE
    port map (
      C => CLK,
      CE => Q_n0972_inv,
      D => cmd_data(15),
      Q => OUTPUT_REG_18(15)
    );
  OUTPUT_REG_17_0 : FDE
    port map (
      C => CLK,
      CE => Q_n1011_inv,
      D => cmd_data(0),
      Q => OUTPUT_REG_17(0)
    );
  OUTPUT_REG_17_1 : FDE
    port map (
      C => CLK,
      CE => Q_n1011_inv,
      D => cmd_data(1),
      Q => OUTPUT_REG_17(1)
    );
  OUTPUT_REG_17_2 : FDE
    port map (
      C => CLK,
      CE => Q_n1011_inv,
      D => cmd_data(2),
      Q => OUTPUT_REG_17(2)
    );
  OUTPUT_REG_17_3 : FDE
    port map (
      C => CLK,
      CE => Q_n1011_inv,
      D => cmd_data(3),
      Q => OUTPUT_REG_17(3)
    );
  OUTPUT_REG_17_4 : FDE
    port map (
      C => CLK,
      CE => Q_n1011_inv,
      D => cmd_data(4),
      Q => OUTPUT_REG_17(4)
    );
  OUTPUT_REG_17_5 : FDE
    port map (
      C => CLK,
      CE => Q_n1011_inv,
      D => cmd_data(5),
      Q => OUTPUT_REG_17(5)
    );
  OUTPUT_REG_17_6 : FDE
    port map (
      C => CLK,
      CE => Q_n1011_inv,
      D => cmd_data(6),
      Q => OUTPUT_REG_17(6)
    );
  OUTPUT_REG_17_7 : FDE
    port map (
      C => CLK,
      CE => Q_n1011_inv,
      D => cmd_data(7),
      Q => OUTPUT_REG_17(7)
    );
  OUTPUT_REG_17_8 : FDE
    port map (
      C => CLK,
      CE => Q_n1011_inv,
      D => cmd_data(8),
      Q => OUTPUT_REG_17(8)
    );
  OUTPUT_REG_17_9 : FDE
    port map (
      C => CLK,
      CE => Q_n1011_inv,
      D => cmd_data(9),
      Q => OUTPUT_REG_17(9)
    );
  OUTPUT_REG_17_10 : FDE
    port map (
      C => CLK,
      CE => Q_n1011_inv,
      D => cmd_data(10),
      Q => OUTPUT_REG_17(10)
    );
  OUTPUT_REG_17_11 : FDE
    port map (
      C => CLK,
      CE => Q_n1011_inv,
      D => cmd_data(11),
      Q => OUTPUT_REG_17(11)
    );
  OUTPUT_REG_17_12 : FDE
    port map (
      C => CLK,
      CE => Q_n1011_inv,
      D => cmd_data(12),
      Q => OUTPUT_REG_17(12)
    );
  OUTPUT_REG_17_13 : FDE
    port map (
      C => CLK,
      CE => Q_n1011_inv,
      D => cmd_data(13),
      Q => OUTPUT_REG_17(13)
    );
  OUTPUT_REG_17_14 : FDE
    port map (
      C => CLK,
      CE => Q_n1011_inv,
      D => cmd_data(14),
      Q => OUTPUT_REG_17(14)
    );
  OUTPUT_REG_17_15 : FDE
    port map (
      C => CLK,
      CE => Q_n1011_inv,
      D => cmd_data(15),
      Q => OUTPUT_REG_17(15)
    );
  OUTPUT_REG_15_0 : FDE
    port map (
      C => CLK,
      CE => Q_n1079_inv,
      D => cmd_data(0),
      Q => OUTPUT_REG_15(0)
    );
  OUTPUT_REG_15_1 : FDE
    port map (
      C => CLK,
      CE => Q_n1079_inv,
      D => cmd_data(1),
      Q => OUTPUT_REG_15(1)
    );
  OUTPUT_REG_15_2 : FDE
    port map (
      C => CLK,
      CE => Q_n1079_inv,
      D => cmd_data(2),
      Q => OUTPUT_REG_15(2)
    );
  OUTPUT_REG_15_3 : FDE
    port map (
      C => CLK,
      CE => Q_n1079_inv,
      D => cmd_data(3),
      Q => OUTPUT_REG_15(3)
    );
  OUTPUT_REG_15_4 : FDE
    port map (
      C => CLK,
      CE => Q_n1079_inv,
      D => cmd_data(4),
      Q => OUTPUT_REG_15(4)
    );
  OUTPUT_REG_15_5 : FDE
    port map (
      C => CLK,
      CE => Q_n1079_inv,
      D => cmd_data(5),
      Q => OUTPUT_REG_15(5)
    );
  OUTPUT_REG_15_6 : FDE
    port map (
      C => CLK,
      CE => Q_n1079_inv,
      D => cmd_data(6),
      Q => OUTPUT_REG_15(6)
    );
  OUTPUT_REG_15_7 : FDE
    port map (
      C => CLK,
      CE => Q_n1079_inv,
      D => cmd_data(7),
      Q => OUTPUT_REG_15(7)
    );
  OUTPUT_REG_15_8 : FDE
    port map (
      C => CLK,
      CE => Q_n1079_inv,
      D => cmd_data(8),
      Q => OUTPUT_REG_15(8)
    );
  OUTPUT_REG_15_9 : FDE
    port map (
      C => CLK,
      CE => Q_n1079_inv,
      D => cmd_data(9),
      Q => OUTPUT_REG_15(9)
    );
  OUTPUT_REG_15_10 : FDE
    port map (
      C => CLK,
      CE => Q_n1079_inv,
      D => cmd_data(10),
      Q => OUTPUT_REG_15(10)
    );
  OUTPUT_REG_15_11 : FDE
    port map (
      C => CLK,
      CE => Q_n1079_inv,
      D => cmd_data(11),
      Q => OUTPUT_REG_15(11)
    );
  OUTPUT_REG_15_12 : FDE
    port map (
      C => CLK,
      CE => Q_n1079_inv,
      D => cmd_data(12),
      Q => OUTPUT_REG_15(12)
    );
  OUTPUT_REG_15_13 : FDE
    port map (
      C => CLK,
      CE => Q_n1079_inv,
      D => cmd_data(13),
      Q => OUTPUT_REG_15(13)
    );
  OUTPUT_REG_15_14 : FDE
    port map (
      C => CLK,
      CE => Q_n1079_inv,
      D => cmd_data(14),
      Q => OUTPUT_REG_15(14)
    );
  OUTPUT_REG_15_15 : FDE
    port map (
      C => CLK,
      CE => Q_n1079_inv,
      D => cmd_data(15),
      Q => OUTPUT_REG_15(15)
    );
  OUTPUT_REG_14_0 : FDE
    port map (
      C => CLK,
      CE => Q_n1108_inv,
      D => cmd_data(0),
      Q => OUTPUT_REG_14(0)
    );
  OUTPUT_REG_14_1 : FDE
    port map (
      C => CLK,
      CE => Q_n1108_inv,
      D => cmd_data(1),
      Q => OUTPUT_REG_14(1)
    );
  OUTPUT_REG_14_2 : FDE
    port map (
      C => CLK,
      CE => Q_n1108_inv,
      D => cmd_data(2),
      Q => OUTPUT_REG_14(2)
    );
  OUTPUT_REG_14_3 : FDE
    port map (
      C => CLK,
      CE => Q_n1108_inv,
      D => cmd_data(3),
      Q => OUTPUT_REG_14(3)
    );
  OUTPUT_REG_14_4 : FDE
    port map (
      C => CLK,
      CE => Q_n1108_inv,
      D => cmd_data(4),
      Q => OUTPUT_REG_14(4)
    );
  OUTPUT_REG_14_5 : FDE
    port map (
      C => CLK,
      CE => Q_n1108_inv,
      D => cmd_data(5),
      Q => OUTPUT_REG_14(5)
    );
  OUTPUT_REG_14_6 : FDE
    port map (
      C => CLK,
      CE => Q_n1108_inv,
      D => cmd_data(6),
      Q => OUTPUT_REG_14(6)
    );
  OUTPUT_REG_14_7 : FDE
    port map (
      C => CLK,
      CE => Q_n1108_inv,
      D => cmd_data(7),
      Q => OUTPUT_REG_14(7)
    );
  OUTPUT_REG_14_8 : FDE
    port map (
      C => CLK,
      CE => Q_n1108_inv,
      D => cmd_data(8),
      Q => OUTPUT_REG_14(8)
    );
  OUTPUT_REG_14_9 : FDE
    port map (
      C => CLK,
      CE => Q_n1108_inv,
      D => cmd_data(9),
      Q => OUTPUT_REG_14(9)
    );
  OUTPUT_REG_14_10 : FDE
    port map (
      C => CLK,
      CE => Q_n1108_inv,
      D => cmd_data(10),
      Q => OUTPUT_REG_14(10)
    );
  OUTPUT_REG_14_11 : FDE
    port map (
      C => CLK,
      CE => Q_n1108_inv,
      D => cmd_data(11),
      Q => OUTPUT_REG_14(11)
    );
  OUTPUT_REG_14_12 : FDE
    port map (
      C => CLK,
      CE => Q_n1108_inv,
      D => cmd_data(12),
      Q => OUTPUT_REG_14(12)
    );
  OUTPUT_REG_14_13 : FDE
    port map (
      C => CLK,
      CE => Q_n1108_inv,
      D => cmd_data(13),
      Q => OUTPUT_REG_14(13)
    );
  OUTPUT_REG_14_14 : FDE
    port map (
      C => CLK,
      CE => Q_n1108_inv,
      D => cmd_data(14),
      Q => OUTPUT_REG_14(14)
    );
  OUTPUT_REG_14_15 : FDE
    port map (
      C => CLK,
      CE => Q_n1108_inv,
      D => cmd_data(15),
      Q => OUTPUT_REG_14(15)
    );
  OUTPUT_REG_13_0 : FDE
    port map (
      C => CLK,
      CE => Q_n1137_inv,
      D => cmd_data(0),
      Q => OUTPUT_REG_13(0)
    );
  OUTPUT_REG_13_1 : FDE
    port map (
      C => CLK,
      CE => Q_n1137_inv,
      D => cmd_data(1),
      Q => OUTPUT_REG_13(1)
    );
  OUTPUT_REG_13_2 : FDE
    port map (
      C => CLK,
      CE => Q_n1137_inv,
      D => cmd_data(2),
      Q => OUTPUT_REG_13(2)
    );
  OUTPUT_REG_13_3 : FDE
    port map (
      C => CLK,
      CE => Q_n1137_inv,
      D => cmd_data(3),
      Q => OUTPUT_REG_13(3)
    );
  OUTPUT_REG_13_4 : FDE
    port map (
      C => CLK,
      CE => Q_n1137_inv,
      D => cmd_data(4),
      Q => OUTPUT_REG_13(4)
    );
  OUTPUT_REG_13_5 : FDE
    port map (
      C => CLK,
      CE => Q_n1137_inv,
      D => cmd_data(5),
      Q => OUTPUT_REG_13(5)
    );
  OUTPUT_REG_13_6 : FDE
    port map (
      C => CLK,
      CE => Q_n1137_inv,
      D => cmd_data(6),
      Q => OUTPUT_REG_13(6)
    );
  OUTPUT_REG_13_7 : FDE
    port map (
      C => CLK,
      CE => Q_n1137_inv,
      D => cmd_data(7),
      Q => OUTPUT_REG_13(7)
    );
  OUTPUT_REG_13_8 : FDE
    port map (
      C => CLK,
      CE => Q_n1137_inv,
      D => cmd_data(8),
      Q => OUTPUT_REG_13(8)
    );
  OUTPUT_REG_13_9 : FDE
    port map (
      C => CLK,
      CE => Q_n1137_inv,
      D => cmd_data(9),
      Q => OUTPUT_REG_13(9)
    );
  OUTPUT_REG_13_10 : FDE
    port map (
      C => CLK,
      CE => Q_n1137_inv,
      D => cmd_data(10),
      Q => OUTPUT_REG_13(10)
    );
  OUTPUT_REG_13_11 : FDE
    port map (
      C => CLK,
      CE => Q_n1137_inv,
      D => cmd_data(11),
      Q => OUTPUT_REG_13(11)
    );
  OUTPUT_REG_13_12 : FDE
    port map (
      C => CLK,
      CE => Q_n1137_inv,
      D => cmd_data(12),
      Q => OUTPUT_REG_13(12)
    );
  OUTPUT_REG_13_13 : FDE
    port map (
      C => CLK,
      CE => Q_n1137_inv,
      D => cmd_data(13),
      Q => OUTPUT_REG_13(13)
    );
  OUTPUT_REG_13_14 : FDE
    port map (
      C => CLK,
      CE => Q_n1137_inv,
      D => cmd_data(14),
      Q => OUTPUT_REG_13(14)
    );
  OUTPUT_REG_13_15 : FDE
    port map (
      C => CLK,
      CE => Q_n1137_inv,
      D => cmd_data(15),
      Q => OUTPUT_REG_13(15)
    );
  OUTPUT_REG_12_0 : FDE
    port map (
      C => CLK,
      CE => Q_n1166_inv,
      D => cmd_data(0),
      Q => OUTPUT_REG_12(0)
    );
  OUTPUT_REG_12_1 : FDE
    port map (
      C => CLK,
      CE => Q_n1166_inv,
      D => cmd_data(1),
      Q => OUTPUT_REG_12(1)
    );
  OUTPUT_REG_12_2 : FDE
    port map (
      C => CLK,
      CE => Q_n1166_inv,
      D => cmd_data(2),
      Q => OUTPUT_REG_12(2)
    );
  OUTPUT_REG_12_3 : FDE
    port map (
      C => CLK,
      CE => Q_n1166_inv,
      D => cmd_data(3),
      Q => OUTPUT_REG_12(3)
    );
  OUTPUT_REG_12_4 : FDE
    port map (
      C => CLK,
      CE => Q_n1166_inv,
      D => cmd_data(4),
      Q => OUTPUT_REG_12(4)
    );
  OUTPUT_REG_12_5 : FDE
    port map (
      C => CLK,
      CE => Q_n1166_inv,
      D => cmd_data(5),
      Q => OUTPUT_REG_12(5)
    );
  OUTPUT_REG_12_6 : FDE
    port map (
      C => CLK,
      CE => Q_n1166_inv,
      D => cmd_data(6),
      Q => OUTPUT_REG_12(6)
    );
  OUTPUT_REG_12_7 : FDE
    port map (
      C => CLK,
      CE => Q_n1166_inv,
      D => cmd_data(7),
      Q => OUTPUT_REG_12(7)
    );
  OUTPUT_REG_12_8 : FDE
    port map (
      C => CLK,
      CE => Q_n1166_inv,
      D => cmd_data(8),
      Q => OUTPUT_REG_12(8)
    );
  OUTPUT_REG_12_9 : FDE
    port map (
      C => CLK,
      CE => Q_n1166_inv,
      D => cmd_data(9),
      Q => OUTPUT_REG_12(9)
    );
  OUTPUT_REG_12_10 : FDE
    port map (
      C => CLK,
      CE => Q_n1166_inv,
      D => cmd_data(10),
      Q => OUTPUT_REG_12(10)
    );
  OUTPUT_REG_12_11 : FDE
    port map (
      C => CLK,
      CE => Q_n1166_inv,
      D => cmd_data(11),
      Q => OUTPUT_REG_12(11)
    );
  OUTPUT_REG_12_12 : FDE
    port map (
      C => CLK,
      CE => Q_n1166_inv,
      D => cmd_data(12),
      Q => OUTPUT_REG_12(12)
    );
  OUTPUT_REG_12_13 : FDE
    port map (
      C => CLK,
      CE => Q_n1166_inv,
      D => cmd_data(13),
      Q => OUTPUT_REG_12(13)
    );
  OUTPUT_REG_12_14 : FDE
    port map (
      C => CLK,
      CE => Q_n1166_inv,
      D => cmd_data(14),
      Q => OUTPUT_REG_12(14)
    );
  OUTPUT_REG_12_15 : FDE
    port map (
      C => CLK,
      CE => Q_n1166_inv,
      D => cmd_data(15),
      Q => OUTPUT_REG_12(15)
    );
  OUTPUT_REG_11_0 : FDE
    port map (
      C => CLK,
      CE => Q_n1195_inv,
      D => cmd_data(0),
      Q => OUTPUT_REG_11(0)
    );
  OUTPUT_REG_11_1 : FDE
    port map (
      C => CLK,
      CE => Q_n1195_inv,
      D => cmd_data(1),
      Q => OUTPUT_REG_11(1)
    );
  OUTPUT_REG_11_2 : FDE
    port map (
      C => CLK,
      CE => Q_n1195_inv,
      D => cmd_data(2),
      Q => OUTPUT_REG_11(2)
    );
  OUTPUT_REG_11_3 : FDE
    port map (
      C => CLK,
      CE => Q_n1195_inv,
      D => cmd_data(3),
      Q => OUTPUT_REG_11(3)
    );
  OUTPUT_REG_11_4 : FDE
    port map (
      C => CLK,
      CE => Q_n1195_inv,
      D => cmd_data(4),
      Q => OUTPUT_REG_11(4)
    );
  OUTPUT_REG_11_5 : FDE
    port map (
      C => CLK,
      CE => Q_n1195_inv,
      D => cmd_data(5),
      Q => OUTPUT_REG_11(5)
    );
  OUTPUT_REG_11_6 : FDE
    port map (
      C => CLK,
      CE => Q_n1195_inv,
      D => cmd_data(6),
      Q => OUTPUT_REG_11(6)
    );
  OUTPUT_REG_11_7 : FDE
    port map (
      C => CLK,
      CE => Q_n1195_inv,
      D => cmd_data(7),
      Q => OUTPUT_REG_11(7)
    );
  OUTPUT_REG_11_8 : FDE
    port map (
      C => CLK,
      CE => Q_n1195_inv,
      D => cmd_data(8),
      Q => OUTPUT_REG_11(8)
    );
  OUTPUT_REG_11_9 : FDE
    port map (
      C => CLK,
      CE => Q_n1195_inv,
      D => cmd_data(9),
      Q => OUTPUT_REG_11(9)
    );
  OUTPUT_REG_11_10 : FDE
    port map (
      C => CLK,
      CE => Q_n1195_inv,
      D => cmd_data(10),
      Q => OUTPUT_REG_11(10)
    );
  OUTPUT_REG_11_11 : FDE
    port map (
      C => CLK,
      CE => Q_n1195_inv,
      D => cmd_data(11),
      Q => OUTPUT_REG_11(11)
    );
  OUTPUT_REG_11_12 : FDE
    port map (
      C => CLK,
      CE => Q_n1195_inv,
      D => cmd_data(12),
      Q => OUTPUT_REG_11(12)
    );
  OUTPUT_REG_11_13 : FDE
    port map (
      C => CLK,
      CE => Q_n1195_inv,
      D => cmd_data(13),
      Q => OUTPUT_REG_11(13)
    );
  OUTPUT_REG_11_14 : FDE
    port map (
      C => CLK,
      CE => Q_n1195_inv,
      D => cmd_data(14),
      Q => OUTPUT_REG_11(14)
    );
  OUTPUT_REG_11_15 : FDE
    port map (
      C => CLK,
      CE => Q_n1195_inv,
      D => cmd_data(15),
      Q => OUTPUT_REG_11(15)
    );
  OUTPUT_REG_10_0 : FDE
    port map (
      C => CLK,
      CE => Q_n1224_inv,
      D => cmd_data(0),
      Q => OUTPUT_REG_10(0)
    );
  OUTPUT_REG_10_1 : FDE
    port map (
      C => CLK,
      CE => Q_n1224_inv,
      D => cmd_data(1),
      Q => OUTPUT_REG_10(1)
    );
  OUTPUT_REG_10_2 : FDE
    port map (
      C => CLK,
      CE => Q_n1224_inv,
      D => cmd_data(2),
      Q => OUTPUT_REG_10(2)
    );
  OUTPUT_REG_10_3 : FDE
    port map (
      C => CLK,
      CE => Q_n1224_inv,
      D => cmd_data(3),
      Q => OUTPUT_REG_10(3)
    );
  OUTPUT_REG_10_4 : FDE
    port map (
      C => CLK,
      CE => Q_n1224_inv,
      D => cmd_data(4),
      Q => OUTPUT_REG_10(4)
    );
  OUTPUT_REG_10_5 : FDE
    port map (
      C => CLK,
      CE => Q_n1224_inv,
      D => cmd_data(5),
      Q => OUTPUT_REG_10(5)
    );
  OUTPUT_REG_10_6 : FDE
    port map (
      C => CLK,
      CE => Q_n1224_inv,
      D => cmd_data(6),
      Q => OUTPUT_REG_10(6)
    );
  OUTPUT_REG_10_7 : FDE
    port map (
      C => CLK,
      CE => Q_n1224_inv,
      D => cmd_data(7),
      Q => OUTPUT_REG_10(7)
    );
  OUTPUT_REG_10_8 : FDE
    port map (
      C => CLK,
      CE => Q_n1224_inv,
      D => cmd_data(8),
      Q => OUTPUT_REG_10(8)
    );
  OUTPUT_REG_10_9 : FDE
    port map (
      C => CLK,
      CE => Q_n1224_inv,
      D => cmd_data(9),
      Q => OUTPUT_REG_10(9)
    );
  OUTPUT_REG_10_10 : FDE
    port map (
      C => CLK,
      CE => Q_n1224_inv,
      D => cmd_data(10),
      Q => OUTPUT_REG_10(10)
    );
  OUTPUT_REG_10_11 : FDE
    port map (
      C => CLK,
      CE => Q_n1224_inv,
      D => cmd_data(11),
      Q => OUTPUT_REG_10(11)
    );
  OUTPUT_REG_10_12 : FDE
    port map (
      C => CLK,
      CE => Q_n1224_inv,
      D => cmd_data(12),
      Q => OUTPUT_REG_10(12)
    );
  OUTPUT_REG_10_13 : FDE
    port map (
      C => CLK,
      CE => Q_n1224_inv,
      D => cmd_data(13),
      Q => OUTPUT_REG_10(13)
    );
  OUTPUT_REG_10_14 : FDE
    port map (
      C => CLK,
      CE => Q_n1224_inv,
      D => cmd_data(14),
      Q => OUTPUT_REG_10(14)
    );
  OUTPUT_REG_10_15 : FDE
    port map (
      C => CLK,
      CE => Q_n1224_inv,
      D => cmd_data(15),
      Q => OUTPUT_REG_10(15)
    );
  OUTPUT_REG_9_0 : FDE
    port map (
      C => CLK,
      CE => Q_n1253_inv,
      D => cmd_data(0),
      Q => OUTPUT_REG_9(0)
    );
  OUTPUT_REG_9_1 : FDE
    port map (
      C => CLK,
      CE => Q_n1253_inv,
      D => cmd_data(1),
      Q => OUTPUT_REG_9(1)
    );
  OUTPUT_REG_9_2 : FDE
    port map (
      C => CLK,
      CE => Q_n1253_inv,
      D => cmd_data(2),
      Q => OUTPUT_REG_9(2)
    );
  OUTPUT_REG_9_3 : FDE
    port map (
      C => CLK,
      CE => Q_n1253_inv,
      D => cmd_data(3),
      Q => OUTPUT_REG_9(3)
    );
  OUTPUT_REG_9_4 : FDE
    port map (
      C => CLK,
      CE => Q_n1253_inv,
      D => cmd_data(4),
      Q => OUTPUT_REG_9(4)
    );
  OUTPUT_REG_9_5 : FDE
    port map (
      C => CLK,
      CE => Q_n1253_inv,
      D => cmd_data(5),
      Q => OUTPUT_REG_9(5)
    );
  OUTPUT_REG_9_6 : FDE
    port map (
      C => CLK,
      CE => Q_n1253_inv,
      D => cmd_data(6),
      Q => OUTPUT_REG_9(6)
    );
  OUTPUT_REG_9_7 : FDE
    port map (
      C => CLK,
      CE => Q_n1253_inv,
      D => cmd_data(7),
      Q => OUTPUT_REG_9(7)
    );
  OUTPUT_REG_9_8 : FDE
    port map (
      C => CLK,
      CE => Q_n1253_inv,
      D => cmd_data(8),
      Q => OUTPUT_REG_9(8)
    );
  OUTPUT_REG_9_9 : FDE
    port map (
      C => CLK,
      CE => Q_n1253_inv,
      D => cmd_data(9),
      Q => OUTPUT_REG_9(9)
    );
  OUTPUT_REG_9_10 : FDE
    port map (
      C => CLK,
      CE => Q_n1253_inv,
      D => cmd_data(10),
      Q => OUTPUT_REG_9(10)
    );
  OUTPUT_REG_9_11 : FDE
    port map (
      C => CLK,
      CE => Q_n1253_inv,
      D => cmd_data(11),
      Q => OUTPUT_REG_9(11)
    );
  OUTPUT_REG_9_12 : FDE
    port map (
      C => CLK,
      CE => Q_n1253_inv,
      D => cmd_data(12),
      Q => OUTPUT_REG_9(12)
    );
  OUTPUT_REG_9_13 : FDE
    port map (
      C => CLK,
      CE => Q_n1253_inv,
      D => cmd_data(13),
      Q => OUTPUT_REG_9(13)
    );
  OUTPUT_REG_9_14 : FDE
    port map (
      C => CLK,
      CE => Q_n1253_inv,
      D => cmd_data(14),
      Q => OUTPUT_REG_9(14)
    );
  OUTPUT_REG_9_15 : FDE
    port map (
      C => CLK,
      CE => Q_n1253_inv,
      D => cmd_data(15),
      Q => OUTPUT_REG_9(15)
    );
  OUTPUT_REG_8_0 : FDE
    port map (
      C => CLK,
      CE => Q_n1282_inv,
      D => cmd_data(0),
      Q => OUTPUT_REG_8(0)
    );
  OUTPUT_REG_8_1 : FDE
    port map (
      C => CLK,
      CE => Q_n1282_inv,
      D => cmd_data(1),
      Q => OUTPUT_REG_8(1)
    );
  OUTPUT_REG_8_2 : FDE
    port map (
      C => CLK,
      CE => Q_n1282_inv,
      D => cmd_data(2),
      Q => OUTPUT_REG_8(2)
    );
  OUTPUT_REG_8_3 : FDE
    port map (
      C => CLK,
      CE => Q_n1282_inv,
      D => cmd_data(3),
      Q => OUTPUT_REG_8(3)
    );
  OUTPUT_REG_8_4 : FDE
    port map (
      C => CLK,
      CE => Q_n1282_inv,
      D => cmd_data(4),
      Q => OUTPUT_REG_8(4)
    );
  OUTPUT_REG_8_5 : FDE
    port map (
      C => CLK,
      CE => Q_n1282_inv,
      D => cmd_data(5),
      Q => OUTPUT_REG_8(5)
    );
  OUTPUT_REG_8_6 : FDE
    port map (
      C => CLK,
      CE => Q_n1282_inv,
      D => cmd_data(6),
      Q => OUTPUT_REG_8(6)
    );
  OUTPUT_REG_8_7 : FDE
    port map (
      C => CLK,
      CE => Q_n1282_inv,
      D => cmd_data(7),
      Q => OUTPUT_REG_8(7)
    );
  OUTPUT_REG_8_8 : FDE
    port map (
      C => CLK,
      CE => Q_n1282_inv,
      D => cmd_data(8),
      Q => OUTPUT_REG_8(8)
    );
  OUTPUT_REG_8_9 : FDE
    port map (
      C => CLK,
      CE => Q_n1282_inv,
      D => cmd_data(9),
      Q => OUTPUT_REG_8(9)
    );
  OUTPUT_REG_8_10 : FDE
    port map (
      C => CLK,
      CE => Q_n1282_inv,
      D => cmd_data(10),
      Q => OUTPUT_REG_8(10)
    );
  OUTPUT_REG_8_11 : FDE
    port map (
      C => CLK,
      CE => Q_n1282_inv,
      D => cmd_data(11),
      Q => OUTPUT_REG_8(11)
    );
  OUTPUT_REG_8_12 : FDE
    port map (
      C => CLK,
      CE => Q_n1282_inv,
      D => cmd_data(12),
      Q => OUTPUT_REG_8(12)
    );
  OUTPUT_REG_8_13 : FDE
    port map (
      C => CLK,
      CE => Q_n1282_inv,
      D => cmd_data(13),
      Q => OUTPUT_REG_8(13)
    );
  OUTPUT_REG_8_14 : FDE
    port map (
      C => CLK,
      CE => Q_n1282_inv,
      D => cmd_data(14),
      Q => OUTPUT_REG_8(14)
    );
  OUTPUT_REG_8_15 : FDE
    port map (
      C => CLK,
      CE => Q_n1282_inv,
      D => cmd_data(15),
      Q => OUTPUT_REG_8(15)
    );
  OUTPUT_REG_7_0 : FDE
    port map (
      C => CLK,
      CE => Q_n1311_inv,
      D => cmd_data(0),
      Q => OUTPUT_REG_7(0)
    );
  OUTPUT_REG_7_1 : FDE
    port map (
      C => CLK,
      CE => Q_n1311_inv,
      D => cmd_data(1),
      Q => OUTPUT_REG_7(1)
    );
  OUTPUT_REG_7_2 : FDE
    port map (
      C => CLK,
      CE => Q_n1311_inv,
      D => cmd_data(2),
      Q => OUTPUT_REG_7(2)
    );
  OUTPUT_REG_7_3 : FDE
    port map (
      C => CLK,
      CE => Q_n1311_inv,
      D => cmd_data(3),
      Q => OUTPUT_REG_7(3)
    );
  OUTPUT_REG_7_4 : FDE
    port map (
      C => CLK,
      CE => Q_n1311_inv,
      D => cmd_data(4),
      Q => OUTPUT_REG_7(4)
    );
  OUTPUT_REG_7_5 : FDE
    port map (
      C => CLK,
      CE => Q_n1311_inv,
      D => cmd_data(5),
      Q => OUTPUT_REG_7(5)
    );
  OUTPUT_REG_7_6 : FDE
    port map (
      C => CLK,
      CE => Q_n1311_inv,
      D => cmd_data(6),
      Q => OUTPUT_REG_7(6)
    );
  OUTPUT_REG_7_7 : FDE
    port map (
      C => CLK,
      CE => Q_n1311_inv,
      D => cmd_data(7),
      Q => OUTPUT_REG_7(7)
    );
  OUTPUT_REG_7_8 : FDE
    port map (
      C => CLK,
      CE => Q_n1311_inv,
      D => cmd_data(8),
      Q => OUTPUT_REG_7(8)
    );
  OUTPUT_REG_7_9 : FDE
    port map (
      C => CLK,
      CE => Q_n1311_inv,
      D => cmd_data(9),
      Q => OUTPUT_REG_7(9)
    );
  OUTPUT_REG_7_10 : FDE
    port map (
      C => CLK,
      CE => Q_n1311_inv,
      D => cmd_data(10),
      Q => OUTPUT_REG_7(10)
    );
  OUTPUT_REG_7_11 : FDE
    port map (
      C => CLK,
      CE => Q_n1311_inv,
      D => cmd_data(11),
      Q => OUTPUT_REG_7(11)
    );
  OUTPUT_REG_7_12 : FDE
    port map (
      C => CLK,
      CE => Q_n1311_inv,
      D => cmd_data(12),
      Q => OUTPUT_REG_7(12)
    );
  OUTPUT_REG_7_13 : FDE
    port map (
      C => CLK,
      CE => Q_n1311_inv,
      D => cmd_data(13),
      Q => OUTPUT_REG_7(13)
    );
  OUTPUT_REG_7_14 : FDE
    port map (
      C => CLK,
      CE => Q_n1311_inv,
      D => cmd_data(14),
      Q => OUTPUT_REG_7(14)
    );
  OUTPUT_REG_7_15 : FDE
    port map (
      C => CLK,
      CE => Q_n1311_inv,
      D => cmd_data(15),
      Q => OUTPUT_REG_7(15)
    );
  OUTPUT_REG_6_0 : FDE
    port map (
      C => CLK,
      CE => Q_n1340_inv,
      D => cmd_data(0),
      Q => OUTPUT_REG_6(0)
    );
  OUTPUT_REG_6_1 : FDE
    port map (
      C => CLK,
      CE => Q_n1340_inv,
      D => cmd_data(1),
      Q => OUTPUT_REG_6(1)
    );
  OUTPUT_REG_6_2 : FDE
    port map (
      C => CLK,
      CE => Q_n1340_inv,
      D => cmd_data(2),
      Q => OUTPUT_REG_6(2)
    );
  OUTPUT_REG_6_3 : FDE
    port map (
      C => CLK,
      CE => Q_n1340_inv,
      D => cmd_data(3),
      Q => OUTPUT_REG_6(3)
    );
  OUTPUT_REG_6_4 : FDE
    port map (
      C => CLK,
      CE => Q_n1340_inv,
      D => cmd_data(4),
      Q => OUTPUT_REG_6(4)
    );
  OUTPUT_REG_6_5 : FDE
    port map (
      C => CLK,
      CE => Q_n1340_inv,
      D => cmd_data(5),
      Q => OUTPUT_REG_6(5)
    );
  OUTPUT_REG_6_6 : FDE
    port map (
      C => CLK,
      CE => Q_n1340_inv,
      D => cmd_data(6),
      Q => OUTPUT_REG_6(6)
    );
  OUTPUT_REG_6_7 : FDE
    port map (
      C => CLK,
      CE => Q_n1340_inv,
      D => cmd_data(7),
      Q => OUTPUT_REG_6(7)
    );
  OUTPUT_REG_6_8 : FDE
    port map (
      C => CLK,
      CE => Q_n1340_inv,
      D => cmd_data(8),
      Q => OUTPUT_REG_6(8)
    );
  OUTPUT_REG_6_9 : FDE
    port map (
      C => CLK,
      CE => Q_n1340_inv,
      D => cmd_data(9),
      Q => OUTPUT_REG_6(9)
    );
  OUTPUT_REG_6_10 : FDE
    port map (
      C => CLK,
      CE => Q_n1340_inv,
      D => cmd_data(10),
      Q => OUTPUT_REG_6(10)
    );
  OUTPUT_REG_6_11 : FDE
    port map (
      C => CLK,
      CE => Q_n1340_inv,
      D => cmd_data(11),
      Q => OUTPUT_REG_6(11)
    );
  OUTPUT_REG_6_12 : FDE
    port map (
      C => CLK,
      CE => Q_n1340_inv,
      D => cmd_data(12),
      Q => OUTPUT_REG_6(12)
    );
  OUTPUT_REG_6_13 : FDE
    port map (
      C => CLK,
      CE => Q_n1340_inv,
      D => cmd_data(13),
      Q => OUTPUT_REG_6(13)
    );
  OUTPUT_REG_6_14 : FDE
    port map (
      C => CLK,
      CE => Q_n1340_inv,
      D => cmd_data(14),
      Q => OUTPUT_REG_6(14)
    );
  OUTPUT_REG_6_15 : FDE
    port map (
      C => CLK,
      CE => Q_n1340_inv,
      D => cmd_data(15),
      Q => OUTPUT_REG_6(15)
    );
  OUTPUT_REG_4_0 : FDE
    port map (
      C => CLK,
      CE => Q_n1419_inv,
      D => cmd_data(0),
      Q => OUTPUT_REG_4(0)
    );
  OUTPUT_REG_4_1 : FDE
    port map (
      C => CLK,
      CE => Q_n1419_inv,
      D => cmd_data(1),
      Q => OUTPUT_REG_4(1)
    );
  OUTPUT_REG_4_2 : FDE
    port map (
      C => CLK,
      CE => Q_n1419_inv,
      D => cmd_data(2),
      Q => OUTPUT_REG_4(2)
    );
  OUTPUT_REG_4_3 : FDE
    port map (
      C => CLK,
      CE => Q_n1419_inv,
      D => cmd_data(3),
      Q => OUTPUT_REG_4(3)
    );
  OUTPUT_REG_4_4 : FDE
    port map (
      C => CLK,
      CE => Q_n1419_inv,
      D => cmd_data(4),
      Q => OUTPUT_REG_4(4)
    );
  OUTPUT_REG_4_5 : FDE
    port map (
      C => CLK,
      CE => Q_n1419_inv,
      D => cmd_data(5),
      Q => OUTPUT_REG_4(5)
    );
  OUTPUT_REG_4_6 : FDE
    port map (
      C => CLK,
      CE => Q_n1419_inv,
      D => cmd_data(6),
      Q => OUTPUT_REG_4(6)
    );
  OUTPUT_REG_4_7 : FDE
    port map (
      C => CLK,
      CE => Q_n1419_inv,
      D => cmd_data(7),
      Q => OUTPUT_REG_4(7)
    );
  OUTPUT_REG_4_8 : FDE
    port map (
      C => CLK,
      CE => Q_n1419_inv,
      D => cmd_data(8),
      Q => OUTPUT_REG_4(8)
    );
  OUTPUT_REG_4_9 : FDE
    port map (
      C => CLK,
      CE => Q_n1419_inv,
      D => cmd_data(9),
      Q => OUTPUT_REG_4(9)
    );
  OUTPUT_REG_4_10 : FDE
    port map (
      C => CLK,
      CE => Q_n1419_inv,
      D => cmd_data(10),
      Q => OUTPUT_REG_4(10)
    );
  OUTPUT_REG_4_11 : FDE
    port map (
      C => CLK,
      CE => Q_n1419_inv,
      D => cmd_data(11),
      Q => OUTPUT_REG_4(11)
    );
  OUTPUT_REG_4_12 : FDE
    port map (
      C => CLK,
      CE => Q_n1419_inv,
      D => cmd_data(12),
      Q => OUTPUT_REG_4(12)
    );
  OUTPUT_REG_4_13 : FDE
    port map (
      C => CLK,
      CE => Q_n1419_inv,
      D => cmd_data(13),
      Q => OUTPUT_REG_4(13)
    );
  OUTPUT_REG_4_14 : FDE
    port map (
      C => CLK,
      CE => Q_n1419_inv,
      D => cmd_data(14),
      Q => OUTPUT_REG_4(14)
    );
  OUTPUT_REG_4_15 : FDE
    port map (
      C => CLK,
      CE => Q_n1419_inv,
      D => cmd_data(15),
      Q => OUTPUT_REG_4(15)
    );
  OUTPUT_REG_3_0 : FDE
    port map (
      C => CLK,
      CE => Q_n1448_inv,
      D => cmd_data(0),
      Q => OUTPUT_REG_3(0)
    );
  OUTPUT_REG_3_1 : FDE
    port map (
      C => CLK,
      CE => Q_n1448_inv,
      D => cmd_data(1),
      Q => OUTPUT_REG_3(1)
    );
  OUTPUT_REG_3_2 : FDE
    port map (
      C => CLK,
      CE => Q_n1448_inv,
      D => cmd_data(2),
      Q => OUTPUT_REG_3(2)
    );
  OUTPUT_REG_3_3 : FDE
    port map (
      C => CLK,
      CE => Q_n1448_inv,
      D => cmd_data(3),
      Q => OUTPUT_REG_3(3)
    );
  OUTPUT_REG_3_4 : FDE
    port map (
      C => CLK,
      CE => Q_n1448_inv,
      D => cmd_data(4),
      Q => OUTPUT_REG_3(4)
    );
  OUTPUT_REG_3_5 : FDE
    port map (
      C => CLK,
      CE => Q_n1448_inv,
      D => cmd_data(5),
      Q => OUTPUT_REG_3(5)
    );
  OUTPUT_REG_3_6 : FDE
    port map (
      C => CLK,
      CE => Q_n1448_inv,
      D => cmd_data(6),
      Q => OUTPUT_REG_3(6)
    );
  OUTPUT_REG_3_7 : FDE
    port map (
      C => CLK,
      CE => Q_n1448_inv,
      D => cmd_data(7),
      Q => OUTPUT_REG_3(7)
    );
  OUTPUT_REG_3_8 : FDE
    port map (
      C => CLK,
      CE => Q_n1448_inv,
      D => cmd_data(8),
      Q => OUTPUT_REG_3(8)
    );
  OUTPUT_REG_3_9 : FDE
    port map (
      C => CLK,
      CE => Q_n1448_inv,
      D => cmd_data(9),
      Q => OUTPUT_REG_3(9)
    );
  OUTPUT_REG_3_10 : FDE
    port map (
      C => CLK,
      CE => Q_n1448_inv,
      D => cmd_data(10),
      Q => OUTPUT_REG_3(10)
    );
  OUTPUT_REG_3_11 : FDE
    port map (
      C => CLK,
      CE => Q_n1448_inv,
      D => cmd_data(11),
      Q => OUTPUT_REG_3(11)
    );
  OUTPUT_REG_3_12 : FDE
    port map (
      C => CLK,
      CE => Q_n1448_inv,
      D => cmd_data(12),
      Q => OUTPUT_REG_3(12)
    );
  OUTPUT_REG_3_13 : FDE
    port map (
      C => CLK,
      CE => Q_n1448_inv,
      D => cmd_data(13),
      Q => OUTPUT_REG_3(13)
    );
  OUTPUT_REG_3_14 : FDE
    port map (
      C => CLK,
      CE => Q_n1448_inv,
      D => cmd_data(14),
      Q => OUTPUT_REG_3(14)
    );
  OUTPUT_REG_3_15 : FDE
    port map (
      C => CLK,
      CE => Q_n1448_inv,
      D => cmd_data(15),
      Q => OUTPUT_REG_3(15)
    );
  OUTPUT_REG_2_0 : FDE
    port map (
      C => CLK,
      CE => Q_n1476_inv_1338,
      D => cmd_data(0),
      Q => OUTPUT_REG_2(0)
    );
  OUTPUT_REG_2_1 : FDE
    port map (
      C => CLK,
      CE => Q_n1476_inv_1338,
      D => cmd_data(1),
      Q => OUTPUT_REG_2(1)
    );
  OUTPUT_REG_2_2 : FDE
    port map (
      C => CLK,
      CE => Q_n1476_inv_1338,
      D => cmd_data(2),
      Q => OUTPUT_REG_2(2)
    );
  OUTPUT_REG_2_3 : FDE
    port map (
      C => CLK,
      CE => Q_n1476_inv_1338,
      D => cmd_data(3),
      Q => OUTPUT_REG_2(3)
    );
  OUTPUT_REG_2_4 : FDE
    port map (
      C => CLK,
      CE => Q_n1476_inv_1338,
      D => cmd_data(4),
      Q => OUTPUT_REG_2(4)
    );
  OUTPUT_REG_2_5 : FDE
    port map (
      C => CLK,
      CE => Q_n1476_inv_1338,
      D => cmd_data(5),
      Q => OUTPUT_REG_2(5)
    );
  OUTPUT_REG_2_6 : FDE
    port map (
      C => CLK,
      CE => Q_n1476_inv_1338,
      D => cmd_data(6),
      Q => OUTPUT_REG_2(6)
    );
  OUTPUT_REG_2_7 : FDE
    port map (
      C => CLK,
      CE => Q_n1476_inv_1338,
      D => cmd_data(7),
      Q => OUTPUT_REG_2(7)
    );
  OUTPUT_REG_2_8 : FDE
    port map (
      C => CLK,
      CE => Q_n1476_inv_1338,
      D => cmd_data(8),
      Q => OUTPUT_REG_2(8)
    );
  OUTPUT_REG_2_9 : FDE
    port map (
      C => CLK,
      CE => Q_n1476_inv_1338,
      D => cmd_data(9),
      Q => OUTPUT_REG_2(9)
    );
  OUTPUT_REG_2_10 : FDE
    port map (
      C => CLK,
      CE => Q_n1476_inv_1338,
      D => cmd_data(10),
      Q => OUTPUT_REG_2(10)
    );
  OUTPUT_REG_2_11 : FDE
    port map (
      C => CLK,
      CE => Q_n1476_inv_1338,
      D => cmd_data(11),
      Q => OUTPUT_REG_2(11)
    );
  OUTPUT_REG_2_12 : FDE
    port map (
      C => CLK,
      CE => Q_n1476_inv_1338,
      D => cmd_data(12),
      Q => OUTPUT_REG_2(12)
    );
  OUTPUT_REG_2_13 : FDE
    port map (
      C => CLK,
      CE => Q_n1476_inv_1338,
      D => cmd_data(13),
      Q => OUTPUT_REG_2(13)
    );
  OUTPUT_REG_2_14 : FDE
    port map (
      C => CLK,
      CE => Q_n1476_inv_1338,
      D => cmd_data(14),
      Q => OUTPUT_REG_2(14)
    );
  OUTPUT_REG_2_15 : FDE
    port map (
      C => CLK,
      CE => Q_n1476_inv_1338,
      D => cmd_data(15),
      Q => OUTPUT_REG_2(15)
    );
  OUTPUT_REG_0_15 : FDE
    port map (
      C => CLK,
      CE => Q_n1617_inv,
      D => cmd_data(15),
      Q => OUTPUT_REG_0_15_1117
    );
  OUTPUT_REG_0_14 : FDE
    port map (
      C => CLK,
      CE => Q_n1617_inv,
      D => cmd_data(14),
      Q => OUTPUT_REG_0_14_1118
    );
  OUTPUT_REG_0_13 : FDE
    port map (
      C => CLK,
      CE => Q_n1617_inv,
      D => cmd_data(13),
      Q => OUTPUT_REG_0_13_1119
    );
  OUTPUT_REG_0_12 : FDE
    port map (
      C => CLK,
      CE => Q_n1617_inv,
      D => cmd_data(12),
      Q => OUTPUT_REG_0_12_1120
    );
  OUTPUT_REG_0_11 : FDE
    port map (
      C => CLK,
      CE => Q_n1617_inv,
      D => cmd_data(11),
      Q => OUTPUT_REG_0_11_1121
    );
  OUTPUT_REG_0_10 : FDE
    port map (
      C => CLK,
      CE => Q_n1617_inv,
      D => cmd_data(10),
      Q => OUTPUT_REG_0_10_1122
    );
  OUTPUT_REG_0_9 : FDE
    port map (
      C => CLK,
      CE => Q_n1617_inv,
      D => cmd_data(9),
      Q => OUTPUT_REG_0_9_1123
    );
  OUTPUT_REG_0_8 : FDE
    port map (
      C => CLK,
      CE => Q_n1617_inv,
      D => cmd_data(8),
      Q => OUTPUT_REG_0_8_1124
    );
  OUTPUT_REG_0_7 : FDE
    port map (
      C => CLK,
      CE => Q_n1617_inv,
      D => cmd_data(7),
      Q => OUTPUT_REG_0_7_1125
    );
  OUTPUT_REG_0_6 : FDE
    port map (
      C => CLK,
      CE => Q_n1617_inv,
      D => cmd_data(6),
      Q => OUTPUT_REG_0_6_1126
    );
  OUTPUT_REG_0_5 : FDE
    port map (
      C => CLK,
      CE => Q_n1617_inv,
      D => cmd_data(5),
      Q => OUTPUT_REG_0_5_1127
    );
  OUTPUT_REG_0_4 : FDE
    port map (
      C => CLK,
      CE => Q_n1617_inv,
      D => cmd_data(4),
      Q => OUTPUT_REG_0_4_1128
    );
  OUTPUT_REG_0_3 : FDE
    port map (
      C => CLK,
      CE => Q_n1617_inv,
      D => cmd_data(3),
      Q => OUTPUT_REG_0_3_1129
    );
  OUTPUT_REG_0_2 : FDE
    port map (
      C => CLK,
      CE => Q_n1617_inv,
      D => cmd_data(2),
      Q => OUTPUT_REG_0_2_1130
    );
  OUTPUT_REG_0_1 : FDE
    port map (
      C => CLK,
      CE => Q_n1617_inv,
      D => cmd_data(1),
      Q => OUTPUT_REG_0_1_1131
    );
  wait_count_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0793_inv,
      D => reg_state_3_X_76_o_wide_mux_135_OUT_0_Q,
      Q => wait_count(0)
    );
  wait_count_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0793_inv,
      D => reg_state_3_X_76_o_wide_mux_135_OUT_1_Q,
      Q => wait_count(1)
    );
  wait_count_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0793_inv,
      D => reg_state_3_X_76_o_wide_mux_135_OUT_2_Q,
      Q => wait_count(2)
    );
  wait_count_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0793_inv,
      D => reg_state_3_X_76_o_wide_mux_135_OUT_3_Q,
      Q => wait_count(3)
    );
  wait_count_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0793_inv,
      D => reg_state_3_X_76_o_wide_mux_135_OUT_4_Q,
      Q => wait_count(4)
    );
  wait_count_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0793_inv,
      D => reg_state_3_X_76_o_wide_mux_135_OUT_5_Q,
      Q => wait_count(5)
    );
  wait_count_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0793_inv,
      D => reg_state_3_X_76_o_wide_mux_135_OUT_6_Q,
      Q => wait_count(6)
    );
  wait_count_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0793_inv,
      D => reg_state_3_X_76_o_wide_mux_135_OUT_7_Q,
      Q => wait_count(7)
    );
  wait_count_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0793_inv,
      D => reg_state_3_X_76_o_wide_mux_135_OUT_8_Q,
      Q => wait_count(8)
    );
  wait_count_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0793_inv,
      D => reg_state_3_X_76_o_wide_mux_135_OUT_9_Q,
      Q => wait_count(9)
    );
  wait_count_10 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0793_inv,
      D => reg_state_3_X_76_o_wide_mux_135_OUT_10_Q,
      Q => wait_count(10)
    );
  wait_count_11 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0793_inv,
      D => reg_state_3_X_76_o_wide_mux_135_OUT_11_Q,
      Q => wait_count(11)
    );
  wait_count_12 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0793_inv,
      D => reg_state_3_X_76_o_wide_mux_135_OUT_12_Q,
      Q => wait_count(12)
    );
  wait_count_13 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0793_inv,
      D => reg_state_3_X_76_o_wide_mux_135_OUT_13_Q,
      Q => wait_count(13)
    );
  wait_count_14 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0793_inv,
      D => reg_state_3_X_76_o_wide_mux_135_OUT_14_Q,
      Q => wait_count(14)
    );
  wait_count_15 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0793_inv,
      D => reg_state_3_X_76_o_wide_mux_135_OUT_15_Q,
      Q => wait_count(15)
    );
  rx_st_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0768_inv,
      D => reg_state_3_X_76_o_wide_mux_134_OUT_0_Q,
      Q => rx_st_0_Q
    );
  rx_st_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0768_inv,
      D => reg_state_3_X_76_o_wide_mux_134_OUT_1_Q,
      Q => rx_st_1_Q
    );
  rx_st_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0768_inv,
      D => reg_state_3_X_76_o_wide_mux_134_OUT_2_Q,
      Q => rx_st_2_Q
    );
  rx_st_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0768_inv,
      D => reg_state_3_X_76_o_wide_mux_134_OUT_3_Q,
      Q => rx_st_3_Q
    );
  OUTPUT_REG_5_0 : FDE
    port map (
      C => CLK,
      CE => Q_n1390_inv,
      D => Q_n1345(15),
      Q => OUTPUT_REG_5(0)
    );
  OUTPUT_REG_5_1 : FDE
    port map (
      C => CLK,
      CE => Q_n1390_inv,
      D => Q_n1345(14),
      Q => NlwRenamedSig_OI_OUTPUT_REG_5(1)
    );
  OUTPUT_REG_5_2 : FDE
    port map (
      C => CLK,
      CE => Q_n1390_inv,
      D => Q_n1345(13),
      Q => NlwRenamedSig_OI_OUTPUT_REG_5(2)
    );
  OUTPUT_REG_5_3 : FDE
    port map (
      C => CLK,
      CE => Q_n1390_inv,
      D => Q_n1345(12),
      Q => NlwRenamedSig_OI_OUTPUT_REG_5(3)
    );
  OUTPUT_REG_5_4 : FDE
    port map (
      C => CLK,
      CE => Q_n1390_inv,
      D => Q_n1345(11),
      Q => NlwRenamedSig_OI_OUTPUT_REG_5(4)
    );
  OUTPUT_REG_5_5 : FDE
    port map (
      C => CLK,
      CE => Q_n1390_inv,
      D => Q_n1345(10),
      Q => NlwRenamedSig_OI_OUTPUT_REG_5(5)
    );
  OUTPUT_REG_5_6 : FDE
    port map (
      C => CLK,
      CE => Q_n1390_inv,
      D => Q_n1345(9),
      Q => NlwRenamedSig_OI_OUTPUT_REG_5(6)
    );
  OUTPUT_REG_5_7 : FDE
    port map (
      C => CLK,
      CE => Q_n1390_inv,
      D => Q_n1345(8),
      Q => NlwRenamedSig_OI_OUTPUT_REG_5(7)
    );
  OUTPUT_REG_5_8 : FDE
    port map (
      C => CLK,
      CE => Q_n1390_inv,
      D => Q_n1345(7),
      Q => NlwRenamedSig_OI_OUTPUT_REG_5(8)
    );
  OUTPUT_REG_5_9 : FDE
    port map (
      C => CLK,
      CE => Q_n1390_inv,
      D => Q_n1345(6),
      Q => NlwRenamedSig_OI_OUTPUT_REG_5(9)
    );
  OUTPUT_REG_5_10 : FDE
    port map (
      C => CLK,
      CE => Q_n1390_inv,
      D => Q_n1345(5),
      Q => NlwRenamedSig_OI_OUTPUT_REG_5(10)
    );
  OUTPUT_REG_5_11 : FDE
    port map (
      C => CLK,
      CE => Q_n1390_inv,
      D => Q_n1345(4),
      Q => NlwRenamedSig_OI_OUTPUT_REG_5(11)
    );
  OUTPUT_REG_5_12 : FDE
    port map (
      C => CLK,
      CE => Q_n1390_inv,
      D => Q_n1345(3),
      Q => NlwRenamedSig_OI_OUTPUT_REG_5(12)
    );
  OUTPUT_REG_5_13 : FDE
    port map (
      C => CLK,
      CE => Q_n1390_inv,
      D => Q_n1345(2),
      Q => NlwRenamedSig_OI_OUTPUT_REG_5(13)
    );
  OUTPUT_REG_5_14 : FDE
    port map (
      C => CLK,
      CE => Q_n1390_inv,
      D => Q_n1345(1),
      Q => NlwRenamedSig_OI_OUTPUT_REG_5(14)
    );
  OUTPUT_REG_5_15 : FDE
    port map (
      C => CLK,
      CE => Q_n1390_inv,
      D => Q_n1345(0),
      Q => NlwRenamedSig_OI_OUTPUT_REG_5(15)
    );
  cmd_reg_num_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n1521_inv,
      D => fifo_dout_w8r32(16),
      Q => cmd_reg_num(0)
    );
  cmd_reg_num_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n1521_inv,
      D => fifo_dout_w8r32(17),
      Q => cmd_reg_num(1)
    );
  cmd_reg_num_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n1521_inv,
      D => fifo_dout_w8r32(18),
      Q => cmd_reg_num(2)
    );
  cmd_reg_num_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n1521_inv,
      D => fifo_dout_w8r32(19),
      Q => cmd_reg_num(3)
    );
  cmd_reg_num_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n1521_inv,
      D => fifo_dout_w8r32(20),
      Q => cmd_reg_num(4)
    );
  cmd_reg_num_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n1521_inv,
      D => fifo_dout_w8r32(21),
      Q => cmd_reg_num(5)
    );
  cmd_reg_num_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n1521_inv,
      D => fifo_dout_w8r32(22),
      Q => cmd_reg_num(6)
    );
  cmd_reg_num_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n1521_inv,
      D => fifo_dout_w8r32(23),
      Q => cmd_reg_num(7)
    );
  RB_REG_NUM_0 : FDE
    port map (
      C => CLK,
      CE => Q_n1588_inv,
      D => cmd_reg_num(0),
      Q => RB_REG_NUM(0)
    );
  RB_REG_NUM_1 : FDE
    port map (
      C => CLK,
      CE => Q_n1588_inv,
      D => cmd_reg_num(1),
      Q => RB_REG_NUM(1)
    );
  RB_REG_NUM_2 : FDE
    port map (
      C => CLK,
      CE => Q_n1588_inv,
      D => cmd_reg_num(2),
      Q => RB_REG_NUM(2)
    );
  RB_REG_NUM_3 : FDE
    port map (
      C => CLK,
      CE => Q_n1588_inv,
      D => cmd_reg_num(3),
      Q => RB_REG_NUM(3)
    );
  RB_REG_NUM_4 : FDE
    port map (
      C => CLK,
      CE => Q_n1588_inv,
      D => cmd_reg_num(4),
      Q => RB_REG_NUM(4)
    );
  RB_REG_NUM_5 : FDE
    port map (
      C => CLK,
      CE => Q_n1588_inv,
      D => cmd_reg_num(5),
      Q => RB_REG_NUM(5)
    );
  RB_REG_NUM_6 : FDE
    port map (
      C => CLK,
      CE => Q_n1588_inv,
      D => cmd_reg_num(6),
      Q => RB_REG_NUM(6)
    );
  RB_REG_NUM_7 : FDE
    port map (
      C => CLK,
      CE => Q_n1588_inv,
      D => cmd_reg_num(7),
      Q => RB_REG_NUM(7)
    );
  OUTPUT_REG_16_0 : FDE
    port map (
      C => CLK,
      CE => Q_n1050_inv,
      D => Q_n1018(0),
      Q => OUTPUT_REG_16(0)
    );
  OUTPUT_REG_16_1 : FDE
    port map (
      C => CLK,
      CE => Q_n1050_inv,
      D => Q_n1018(1),
      Q => OUTPUT_REG_16(1)
    );
  OUTPUT_REG_16_2 : FDE
    port map (
      C => CLK,
      CE => Q_n1050_inv,
      D => Q_n1018(2),
      Q => OUTPUT_REG_16(2)
    );
  OUTPUT_REG_16_3 : FDE
    port map (
      C => CLK,
      CE => Q_n1050_inv,
      D => Q_n1018(3),
      Q => OUTPUT_REG_16(3)
    );
  OUTPUT_REG_16_4 : FDE
    port map (
      C => CLK,
      CE => Q_n1050_inv,
      D => Q_n1018(4),
      Q => OUTPUT_REG_16(4)
    );
  OUTPUT_REG_16_5 : FDE
    port map (
      C => CLK,
      CE => Q_n1050_inv,
      D => Q_n1018(5),
      Q => OUTPUT_REG_16(5)
    );
  OUTPUT_REG_16_6 : FDE
    port map (
      C => CLK,
      CE => Q_n1050_inv,
      D => Q_n1018(6),
      Q => OUTPUT_REG_16(6)
    );
  OUTPUT_REG_16_7 : FDE
    port map (
      C => CLK,
      CE => Q_n1050_inv,
      D => Q_n1018(7),
      Q => OUTPUT_REG_16(7)
    );
  OUTPUT_REG_16_8 : FDE
    port map (
      C => CLK,
      CE => Q_n1050_inv,
      D => Q_n1018(8),
      Q => OUTPUT_REG_16(8)
    );
  OUTPUT_REG_16_9 : FDE
    port map (
      C => CLK,
      CE => Q_n1050_inv,
      D => Q_n1018(9),
      Q => OUTPUT_REG_16(9)
    );
  OUTPUT_REG_16_10 : FDE
    port map (
      C => CLK,
      CE => Q_n1050_inv,
      D => Q_n1018(10),
      Q => OUTPUT_REG_16(10)
    );
  OUTPUT_REG_16_11 : FDE
    port map (
      C => CLK,
      CE => Q_n1050_inv,
      D => Q_n1018(11),
      Q => OUTPUT_REG_16(11)
    );
  OUTPUT_REG_16_12 : FDE
    port map (
      C => CLK,
      CE => Q_n1050_inv,
      D => Q_n1018(12),
      Q => OUTPUT_REG_16(12)
    );
  OUTPUT_REG_16_13 : FDE
    port map (
      C => CLK,
      CE => Q_n1050_inv,
      D => Q_n1018(13),
      Q => OUTPUT_REG_16(13)
    );
  OUTPUT_REG_16_14 : FDE
    port map (
      C => CLK,
      CE => Q_n1050_inv,
      D => Q_n1018(14),
      Q => OUTPUT_REG_16(14)
    );
  OUTPUT_REG_16_15 : FDE
    port map (
      C => CLK,
      CE => Q_n1050_inv,
      D => Q_n1018(15),
      Q => OUTPUT_REG_16(15)
    );
  OUTPUT_REG_1_0 : FDE
    port map (
      C => CLK,
      CE => Q_n1504_inv,
      D => OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_0_Q,
      Q => OUTPUT_REG_1(0)
    );
  OUTPUT_REG_1_1 : FDE
    port map (
      C => CLK,
      CE => Q_n1504_inv,
      D => OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_1_Q,
      Q => OUTPUT_REG_1(1)
    );
  OUTPUT_REG_1_2 : FDE
    port map (
      C => CLK,
      CE => Q_n1504_inv,
      D => OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_2_Q,
      Q => OUTPUT_REG_1(2)
    );
  OUTPUT_REG_1_3 : FDE
    port map (
      C => CLK,
      CE => Q_n1504_inv,
      D => OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_3_Q,
      Q => OUTPUT_REG_1(3)
    );
  OUTPUT_REG_1_4 : FDE
    port map (
      C => CLK,
      CE => Q_n1504_inv,
      D => OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_4_Q,
      Q => OUTPUT_REG_1(4)
    );
  OUTPUT_REG_1_5 : FDE
    port map (
      C => CLK,
      CE => Q_n1504_inv,
      D => OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_5_Q,
      Q => OUTPUT_REG_1(5)
    );
  OUTPUT_REG_1_6 : FDE
    port map (
      C => CLK,
      CE => Q_n1504_inv,
      D => OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_6_Q,
      Q => OUTPUT_REG_1(6)
    );
  OUTPUT_REG_1_7 : FDE
    port map (
      C => CLK,
      CE => Q_n1504_inv,
      D => OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_7_Q,
      Q => OUTPUT_REG_1(7)
    );
  OUTPUT_REG_1_8 : FDE
    port map (
      C => CLK,
      CE => Q_n1504_inv,
      D => OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_8_Q,
      Q => OUTPUT_REG_1(8)
    );
  OUTPUT_REG_1_9 : FDE
    port map (
      C => CLK,
      CE => Q_n1504_inv,
      D => OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_9_Q,
      Q => OUTPUT_REG_1(9)
    );
  OUTPUT_REG_1_10 : FDE
    port map (
      C => CLK,
      CE => Q_n1504_inv,
      D => OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_10_Q,
      Q => OUTPUT_REG_1(10)
    );
  OUTPUT_REG_1_11 : FDE
    port map (
      C => CLK,
      CE => Q_n1504_inv,
      D => OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_11_Q,
      Q => OUTPUT_REG_1(11)
    );
  OUTPUT_REG_1_12 : FDE
    port map (
      C => CLK,
      CE => Q_n1504_inv,
      D => OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_12_Q,
      Q => OUTPUT_REG_1(12)
    );
  OUTPUT_REG_1_13 : FDE
    port map (
      C => CLK,
      CE => Q_n1504_inv,
      D => OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_13_Q,
      Q => OUTPUT_REG_1(13)
    );
  OUTPUT_REG_1_14 : FDE
    port map (
      C => CLK,
      CE => Q_n1504_inv,
      D => OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_14_Q,
      Q => OUTPUT_REG_1(14)
    );
  OUTPUT_REG_1_15 : FDE
    port map (
      C => CLK,
      CE => Q_n1504_inv,
      D => OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_15_Q,
      Q => OUTPUT_REG_1(15)
    );
  bit_count_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK_inv,
      D => Result_0_1,
      R => GND_89_o_bit_count_31_not_equal_1_o_0,
      Q => bit_count(0)
    );
  bit_count_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK_inv,
      D => Result_1_1,
      R => GND_89_o_bit_count_31_not_equal_1_o_0,
      Q => bit_count(1)
    );
  bit_count_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK_inv,
      D => Result_4_1,
      R => GND_89_o_bit_count_31_not_equal_1_o_0,
      Q => bit_count(4)
    );
  bit_count_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK_inv,
      D => Result_2_1,
      R => GND_89_o_bit_count_31_not_equal_1_o_0,
      Q => bit_count(2)
    );
  bit_count_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK_inv,
      D => Result_3_1,
      R => GND_89_o_bit_count_31_not_equal_1_o_0,
      Q => bit_count(3)
    );
  bit_count_5 : FDS
    generic map(
      INIT => '1'
    )
    port map (
      C => DATA_CLK_inv,
      D => Mcount_bit_count_eqn_5,
      S => UPDATE_inv,
      Q => bit_count(5)
    );
  bit_count_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK_inv,
      D => Result_6_1,
      R => GND_89_o_bit_count_31_not_equal_1_o_0,
      Q => bit_count(6)
    );
  bit_count_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK_inv,
      D => Result_7_1,
      R => GND_89_o_bit_count_31_not_equal_1_o_0,
      Q => bit_count(7)
    );
  bit_count_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK_inv,
      D => Result_8_1,
      R => GND_89_o_bit_count_31_not_equal_1_o_0,
      Q => bit_count(8)
    );
  bit_count_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK_inv,
      D => Result_9_1,
      R => GND_89_o_bit_count_31_not_equal_1_o_0,
      Q => bit_count(9)
    );
  bit_count_10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK_inv,
      D => Result_10_1,
      R => GND_89_o_bit_count_31_not_equal_1_o_0,
      Q => bit_count(10)
    );
  bit_count_11 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK_inv,
      D => Result_11_1,
      R => GND_89_o_bit_count_31_not_equal_1_o_0,
      Q => bit_count(11)
    );
  bit_count_12 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK_inv,
      D => Result_12_1,
      R => GND_89_o_bit_count_31_not_equal_1_o_0,
      Q => bit_count(12)
    );
  bit_count_13 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK_inv,
      D => Result_13_1,
      R => GND_89_o_bit_count_31_not_equal_1_o_0,
      Q => bit_count(13)
    );
  bit_count_14 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK_inv,
      D => Result_14_1,
      R => GND_89_o_bit_count_31_not_equal_1_o_0,
      Q => bit_count(14)
    );
  bit_count_15 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK_inv,
      D => Result_15_1,
      R => GND_89_o_bit_count_31_not_equal_1_o_0,
      Q => bit_count(15)
    );
  bit_count_16 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK_inv,
      D => Result_16_1,
      R => GND_89_o_bit_count_31_not_equal_1_o_0,
      Q => bit_count(16)
    );
  bit_count_17 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK_inv,
      D => Result_17_1,
      R => GND_89_o_bit_count_31_not_equal_1_o_0,
      Q => bit_count(17)
    );
  bit_count_18 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK_inv,
      D => Result_18_1,
      R => GND_89_o_bit_count_31_not_equal_1_o_0,
      Q => bit_count(18)
    );
  bit_count_21 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK_inv,
      D => Result_21_1,
      R => GND_89_o_bit_count_31_not_equal_1_o_0,
      Q => bit_count(21)
    );
  bit_count_19 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK_inv,
      D => Result_19_1,
      R => GND_89_o_bit_count_31_not_equal_1_o_0,
      Q => bit_count(19)
    );
  bit_count_20 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK_inv,
      D => Result_20_1,
      R => GND_89_o_bit_count_31_not_equal_1_o_0,
      Q => bit_count(20)
    );
  bit_count_22 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK_inv,
      D => Result_22_1,
      R => GND_89_o_bit_count_31_not_equal_1_o_0,
      Q => bit_count(22)
    );
  bit_count_23 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK_inv,
      D => Result_23_1,
      R => GND_89_o_bit_count_31_not_equal_1_o_0,
      Q => bit_count(23)
    );
  bit_count_24 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK_inv,
      D => Result_24_1,
      R => GND_89_o_bit_count_31_not_equal_1_o_0,
      Q => bit_count(24)
    );
  bit_count_25 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK_inv,
      D => Result_25_1,
      R => GND_89_o_bit_count_31_not_equal_1_o_0,
      Q => bit_count(25)
    );
  bit_count_26 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK_inv,
      D => Result_26_1,
      R => GND_89_o_bit_count_31_not_equal_1_o_0,
      Q => bit_count(26)
    );
  bit_count_27 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK_inv,
      D => Result_27_1,
      R => GND_89_o_bit_count_31_not_equal_1_o_0,
      Q => bit_count(27)
    );
  bit_count_28 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK_inv,
      D => Result_28_1,
      R => GND_89_o_bit_count_31_not_equal_1_o_0,
      Q => bit_count(28)
    );
  bit_count_29 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK_inv,
      D => Result_29_1,
      R => GND_89_o_bit_count_31_not_equal_1_o_0,
      Q => bit_count(29)
    );
  bit_count_30 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK_inv,
      D => Result_30_1,
      R => GND_89_o_bit_count_31_not_equal_1_o_0,
      Q => bit_count(30)
    );
  bit_count_31 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => DATA_CLK_inv,
      D => Result_31_1,
      R => GND_89_o_bit_count_31_not_equal_1_o_0,
      Q => bit_count(31)
    );
  reg_state_FSM_FFd4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CLR => rx_st_rst_1319,
      D => reg_state_FSM_FFd4_In,
      Q => reg_state_FSM_FFd4_1166
    );
  reg_state_FSM_FFd3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CLR => rx_st_rst_1319,
      D => reg_state_FSM_FFd3_In_1417,
      Q => reg_state_FSM_FFd3_1165
    );
  reg_state_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CLR => rx_st_rst_1319,
      D => reg_state_FSM_FFd2_In_1418,
      Q => reg_state_FSM_FFd2_1164
    );
  reg_state_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CLR => rx_st_rst_1319,
      D => reg_state_FSM_FFd1_In_1419,
      Q => reg_state_FSM_FFd1_1163
    );
  reset_count_31_dff_16_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => rx_st_31_GND_89_o_AND_9_o,
      D => Result(0),
      R => Q_n0613,
      Q => reset_count_31_dff_16_0_Q
    );
  reset_count_31_dff_16_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => rx_st_31_GND_89_o_AND_9_o,
      D => Result(1),
      R => Q_n0613,
      Q => reset_count_31_dff_16_1_Q
    );
  reset_count_31_dff_16_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => rx_st_31_GND_89_o_AND_9_o,
      D => Result(2),
      R => Q_n0613,
      Q => reset_count_31_dff_16_2_Q
    );
  reset_count_31_dff_16_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => rx_st_31_GND_89_o_AND_9_o,
      D => Result(3),
      R => Q_n0613,
      Q => reset_count_31_dff_16_3_Q
    );
  reset_count_31_dff_16_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => rx_st_31_GND_89_o_AND_9_o,
      D => Result(4),
      R => Q_n0613,
      Q => reset_count_31_dff_16_4_Q
    );
  reset_count_31_dff_16_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => rx_st_31_GND_89_o_AND_9_o,
      D => Result(5),
      R => Q_n0613,
      Q => reset_count_31_dff_16_5_Q
    );
  reset_count_31_dff_16_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => rx_st_31_GND_89_o_AND_9_o,
      D => Result(6),
      R => Q_n0613,
      Q => reset_count_31_dff_16_6_Q
    );
  reset_count_31_dff_16_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => rx_st_31_GND_89_o_AND_9_o,
      D => Result(7),
      R => Q_n0613,
      Q => reset_count_31_dff_16_7_Q
    );
  reset_count_31_dff_16_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => rx_st_31_GND_89_o_AND_9_o,
      D => Result(8),
      R => Q_n0613,
      Q => reset_count_31_dff_16_8_Q
    );
  reset_count_31_dff_16_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => rx_st_31_GND_89_o_AND_9_o,
      D => Result(9),
      R => Q_n0613,
      Q => reset_count_31_dff_16_9_Q
    );
  reset_count_31_dff_16_10 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => rx_st_31_GND_89_o_AND_9_o,
      D => Result(10),
      R => Q_n0613,
      Q => reset_count_31_dff_16_10_Q
    );
  reset_count_31_dff_16_11 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => rx_st_31_GND_89_o_AND_9_o,
      D => Result(11),
      R => Q_n0613,
      Q => reset_count_31_dff_16_11_Q
    );
  reset_count_31_dff_16_12 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => rx_st_31_GND_89_o_AND_9_o,
      D => Result(12),
      R => Q_n0613,
      Q => reset_count_31_dff_16_12_Q
    );
  reset_count_31_dff_16_13 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => rx_st_31_GND_89_o_AND_9_o,
      D => Result(13),
      R => Q_n0613,
      Q => reset_count_31_dff_16_13_Q
    );
  reset_count_31_dff_16_14 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => rx_st_31_GND_89_o_AND_9_o,
      D => Result(14),
      R => Q_n0613,
      Q => reset_count_31_dff_16_14_Q
    );
  reset_count_31_dff_16_15 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => rx_st_31_GND_89_o_AND_9_o,
      D => Result(15),
      R => Q_n0613,
      Q => reset_count_31_dff_16_15_Q
    );
  reset_count_31_dff_16_16 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => rx_st_31_GND_89_o_AND_9_o,
      D => Result(16),
      R => Q_n0613,
      Q => reset_count_31_dff_16_16_Q
    );
  reset_count_31_dff_16_17 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => rx_st_31_GND_89_o_AND_9_o,
      D => Result(17),
      R => Q_n0613,
      Q => reset_count_31_dff_16_17_Q
    );
  reset_count_31_dff_16_18 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => rx_st_31_GND_89_o_AND_9_o,
      D => Result(18),
      R => Q_n0613,
      Q => reset_count_31_dff_16_18_Q
    );
  reset_count_31_dff_16_19 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => rx_st_31_GND_89_o_AND_9_o,
      D => Result(19),
      R => Q_n0613,
      Q => reset_count_31_dff_16_19_Q
    );
  reset_count_31_dff_16_20 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => rx_st_31_GND_89_o_AND_9_o,
      D => Result(20),
      R => Q_n0613,
      Q => reset_count_31_dff_16_20_Q
    );
  reset_count_31_dff_16_21 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => rx_st_31_GND_89_o_AND_9_o,
      D => Result(21),
      R => Q_n0613,
      Q => reset_count_31_dff_16_21_Q
    );
  reset_count_31_dff_16_22 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => rx_st_31_GND_89_o_AND_9_o,
      D => Result(22),
      R => Q_n0613,
      Q => reset_count_31_dff_16_22_Q
    );
  reset_count_31_dff_16_23 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => rx_st_31_GND_89_o_AND_9_o,
      D => Result(23),
      R => Q_n0613,
      Q => reset_count_31_dff_16_23_Q
    );
  reset_count_31_dff_16_24 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => rx_st_31_GND_89_o_AND_9_o,
      D => Result(24),
      R => Q_n0613,
      Q => reset_count_31_dff_16_24_Q
    );
  reset_count_31_dff_16_25 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => rx_st_31_GND_89_o_AND_9_o,
      D => Result(25),
      R => Q_n0613,
      Q => reset_count_31_dff_16_25_Q
    );
  reset_count_31_dff_16_26 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => rx_st_31_GND_89_o_AND_9_o,
      D => Result(26),
      R => Q_n0613,
      Q => reset_count_31_dff_16_26_Q
    );
  reset_count_31_dff_16_27 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => rx_st_31_GND_89_o_AND_9_o,
      D => Result(27),
      R => Q_n0613,
      Q => reset_count_31_dff_16_27_Q
    );
  reset_count_31_dff_16_28 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => rx_st_31_GND_89_o_AND_9_o,
      D => Result(28),
      R => Q_n0613,
      Q => reset_count_31_dff_16_28_Q
    );
  reset_count_31_dff_16_29 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => rx_st_31_GND_89_o_AND_9_o,
      D => Result(29),
      R => Q_n0613,
      Q => reset_count_31_dff_16_29_Q
    );
  reset_count_31_dff_16_30 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => rx_st_31_GND_89_o_AND_9_o,
      D => Result(30),
      R => Q_n0613,
      Q => reset_count_31_dff_16_30_Q
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_cy_0_Q : MUXCY
    port map (
      CI => rx_st_10_Q,
      DI => NlwRenamedSig_OI_RB_EN,
      S => Madd_wait_count_31_GND_89_o_add_131_OUT_lut_0_Q,
      O => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_0_Q_1422
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_xor_0_Q : XORCY
    port map (
      CI => rx_st_10_Q,
      LI => Madd_wait_count_31_GND_89_o_add_131_OUT_lut_0_Q,
      O => wait_count_31_GND_89_o_add_131_OUT_0_Q
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_cy_1_Q : MUXCY
    port map (
      CI => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_0_Q_1422,
      DI => rx_st_10_Q,
      S => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_1_rt_1609,
      O => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_1_Q_1423
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_xor_1_Q : XORCY
    port map (
      CI => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_0_Q_1422,
      LI => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_1_rt_1609,
      O => wait_count_31_GND_89_o_add_131_OUT_1_Q
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_cy_2_Q : MUXCY
    port map (
      CI => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_1_Q_1423,
      DI => rx_st_10_Q,
      S => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_2_rt_1610,
      O => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_2_Q_1424
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_xor_2_Q : XORCY
    port map (
      CI => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_1_Q_1423,
      LI => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_2_rt_1610,
      O => wait_count_31_GND_89_o_add_131_OUT_2_Q
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_cy_3_Q : MUXCY
    port map (
      CI => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_2_Q_1424,
      DI => rx_st_10_Q,
      S => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_3_rt_1611,
      O => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_3_Q_1425
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_xor_3_Q : XORCY
    port map (
      CI => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_2_Q_1424,
      LI => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_3_rt_1611,
      O => wait_count_31_GND_89_o_add_131_OUT_3_Q
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_cy_4_Q : MUXCY
    port map (
      CI => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_3_Q_1425,
      DI => rx_st_10_Q,
      S => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_4_rt_1612,
      O => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_4_Q_1426
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_xor_4_Q : XORCY
    port map (
      CI => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_3_Q_1425,
      LI => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_4_rt_1612,
      O => wait_count_31_GND_89_o_add_131_OUT_4_Q
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_cy_5_Q : MUXCY
    port map (
      CI => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_4_Q_1426,
      DI => rx_st_10_Q,
      S => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_5_rt_1613,
      O => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_5_Q_1427
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_xor_5_Q : XORCY
    port map (
      CI => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_4_Q_1426,
      LI => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_5_rt_1613,
      O => wait_count_31_GND_89_o_add_131_OUT_5_Q
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_cy_6_Q : MUXCY
    port map (
      CI => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_5_Q_1427,
      DI => rx_st_10_Q,
      S => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_6_rt_1614,
      O => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_6_Q_1428
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_xor_6_Q : XORCY
    port map (
      CI => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_5_Q_1427,
      LI => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_6_rt_1614,
      O => wait_count_31_GND_89_o_add_131_OUT_6_Q
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_cy_7_Q : MUXCY
    port map (
      CI => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_6_Q_1428,
      DI => rx_st_10_Q,
      S => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_7_rt_1615,
      O => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_7_Q_1429
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_xor_7_Q : XORCY
    port map (
      CI => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_6_Q_1428,
      LI => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_7_rt_1615,
      O => wait_count_31_GND_89_o_add_131_OUT_7_Q
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_cy_8_Q : MUXCY
    port map (
      CI => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_7_Q_1429,
      DI => rx_st_10_Q,
      S => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_8_rt_1616,
      O => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_8_Q_1430
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_xor_8_Q : XORCY
    port map (
      CI => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_7_Q_1429,
      LI => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_8_rt_1616,
      O => wait_count_31_GND_89_o_add_131_OUT_8_Q
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_cy_9_Q : MUXCY
    port map (
      CI => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_8_Q_1430,
      DI => rx_st_10_Q,
      S => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_9_rt_1617,
      O => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_9_Q_1431
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_xor_9_Q : XORCY
    port map (
      CI => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_8_Q_1430,
      LI => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_9_rt_1617,
      O => wait_count_31_GND_89_o_add_131_OUT_9_Q
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_cy_10_Q : MUXCY
    port map (
      CI => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_9_Q_1431,
      DI => rx_st_10_Q,
      S => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_10_rt_1618,
      O => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_10_Q_1432
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_xor_10_Q : XORCY
    port map (
      CI => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_9_Q_1431,
      LI => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_10_rt_1618,
      O => wait_count_31_GND_89_o_add_131_OUT_10_Q
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_cy_11_Q : MUXCY
    port map (
      CI => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_10_Q_1432,
      DI => rx_st_10_Q,
      S => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_11_rt_1619,
      O => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_11_Q_1433
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_xor_11_Q : XORCY
    port map (
      CI => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_10_Q_1432,
      LI => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_11_rt_1619,
      O => wait_count_31_GND_89_o_add_131_OUT_11_Q
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_cy_12_Q : MUXCY
    port map (
      CI => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_11_Q_1433,
      DI => rx_st_10_Q,
      S => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_12_rt_1620,
      O => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_12_Q_1434
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_xor_12_Q : XORCY
    port map (
      CI => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_11_Q_1433,
      LI => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_12_rt_1620,
      O => wait_count_31_GND_89_o_add_131_OUT_12_Q
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_cy_13_Q : MUXCY
    port map (
      CI => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_12_Q_1434,
      DI => rx_st_10_Q,
      S => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_13_rt_1621,
      O => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_13_Q_1435
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_xor_13_Q : XORCY
    port map (
      CI => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_12_Q_1434,
      LI => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_13_rt_1621,
      O => wait_count_31_GND_89_o_add_131_OUT_13_Q
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_cy_14_Q : MUXCY
    port map (
      CI => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_13_Q_1435,
      DI => rx_st_10_Q,
      S => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_14_rt_1622,
      O => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_14_Q_1436
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_xor_14_Q : XORCY
    port map (
      CI => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_13_Q_1435,
      LI => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_14_rt_1622,
      O => wait_count_31_GND_89_o_add_131_OUT_14_Q
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_xor_15_Q : XORCY
    port map (
      CI => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_14_Q_1436,
      LI => Madd_wait_count_31_GND_89_o_add_131_OUT_xor_15_rt_1653,
      O => wait_count_31_GND_89_o_add_131_OUT_15_Q
    );
  Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lutdi : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => wait_count(1),
      I1 => wait_count(0),
      I2 => cmd_data(0),
      I3 => cmd_data(1),
      O => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lutdi_1437
    );
  Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lut_0_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => cmd_data(0),
      I1 => wait_count(0),
      I2 => cmd_data(1),
      I3 => wait_count(1),
      O => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lut_0_Q_1438
    );
  Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_0_Q : MUXCY
    port map (
      CI => NlwRenamedSig_OI_RB_EN,
      DI => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lutdi_1437,
      S => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lut_0_Q_1438,
      O => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_0_Q_1439
    );
  Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lutdi1 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => wait_count(3),
      I1 => wait_count(2),
      I2 => cmd_data(2),
      I3 => cmd_data(3),
      O => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lutdi1_1440
    );
  Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lut_1_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => cmd_data(2),
      I1 => wait_count(2),
      I2 => cmd_data(3),
      I3 => wait_count(3),
      O => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lut_1_Q_1441
    );
  Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_0_Q_1439,
      DI => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lutdi1_1440,
      S => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lut_1_Q_1441,
      O => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_1_Q_1442
    );
  Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lutdi2 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => wait_count(5),
      I1 => wait_count(4),
      I2 => cmd_data(4),
      I3 => cmd_data(5),
      O => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lutdi2_1443
    );
  Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lut_2_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => cmd_data(4),
      I1 => wait_count(4),
      I2 => cmd_data(5),
      I3 => wait_count(5),
      O => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lut_2_Q_1444
    );
  Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_1_Q_1442,
      DI => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lutdi2_1443,
      S => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lut_2_Q_1444,
      O => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_2_Q_1445
    );
  Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lutdi3 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => wait_count(7),
      I1 => wait_count(6),
      I2 => cmd_data(6),
      I3 => cmd_data(7),
      O => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lutdi3_1446
    );
  Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lut_3_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => cmd_data(6),
      I1 => wait_count(6),
      I2 => cmd_data(7),
      I3 => wait_count(7),
      O => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lut_3_Q_1447
    );
  Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_2_Q_1445,
      DI => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lutdi3_1446,
      S => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lut_3_Q_1447,
      O => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_3_Q_1448
    );
  Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lutdi4 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => wait_count(9),
      I1 => wait_count(8),
      I2 => cmd_data(8),
      I3 => cmd_data(9),
      O => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lutdi4_1449
    );
  Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lut_4_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => cmd_data(8),
      I1 => wait_count(8),
      I2 => cmd_data(9),
      I3 => wait_count(9),
      O => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lut_4_Q_1450
    );
  Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_3_Q_1448,
      DI => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lutdi4_1449,
      S => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lut_4_Q_1450,
      O => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_4_Q_1451
    );
  Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lutdi5 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => wait_count(11),
      I1 => wait_count(10),
      I2 => cmd_data(10),
      I3 => cmd_data(11),
      O => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lutdi5_1452
    );
  Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lut_5_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => cmd_data(10),
      I1 => wait_count(10),
      I2 => cmd_data(11),
      I3 => wait_count(11),
      O => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lut_5_Q_1453
    );
  Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_4_Q_1451,
      DI => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lutdi5_1452,
      S => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lut_5_Q_1453,
      O => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_5_Q_1454
    );
  Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lutdi6 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => wait_count(13),
      I1 => wait_count(12),
      I2 => cmd_data(12),
      I3 => cmd_data(13),
      O => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lutdi6_1455
    );
  Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lut_6_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => cmd_data(12),
      I1 => wait_count(12),
      I2 => cmd_data(13),
      I3 => wait_count(13),
      O => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lut_6_Q_1456
    );
  Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_5_Q_1454,
      DI => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lutdi6_1455,
      S => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lut_6_Q_1456,
      O => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_6_Q_1457
    );
  Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lutdi7 : LUT5
    generic map(
      INIT => X"FFFF22B2"
    )
    port map (
      I0 => wait_count(15),
      I1 => cmd_data(15),
      I2 => wait_count(14),
      I3 => cmd_data(14),
      I4 => rx_st_10_Q,
      O => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lutdi7_1458
    );
  Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lut_7_Q : LUT5
    generic map(
      INIT => X"00009009"
    )
    port map (
      I0 => cmd_data(14),
      I1 => wait_count(14),
      I2 => cmd_data(15),
      I3 => wait_count(15),
      I4 => rx_st_10_Q,
      O => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lut_7_Q_1459
    );
  Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_6_Q_1457,
      DI => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lutdi7_1458,
      S => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_lut_7_Q_1459,
      O => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_7_Q_1460
    );
  Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_7_Q_1460,
      DI => rx_st_10_Q,
      S => NlwRenamedSig_OI_RB_EN,
      O => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_8_Q_1461
    );
  Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_8_Q_1461,
      DI => rx_st_10_Q,
      S => NlwRenamedSig_OI_RB_EN,
      O => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_9_Q_1462
    );
  Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_10_Q : MUXCY
    port map (
      CI => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_9_Q_1462,
      DI => rx_st_10_Q,
      S => NlwRenamedSig_OI_RB_EN,
      O => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_10_Q_1463
    );
  Mcompar_rx_st_31_GND_89_o_LessThan_11_o_lutdi : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => rx_st_1_Q,
      I1 => rx_st_2_Q,
      I2 => rx_st_3_Q,
      I3 => rx_st_10_Q,
      O => Mcompar_rx_st_31_GND_89_o_LessThan_11_o_lutdi_1464
    );
  Mcompar_rx_st_31_GND_89_o_LessThan_11_o_lut_0_Q : LUT5
    generic map(
      INIT => X"00000004"
    )
    port map (
      I0 => rx_st_0_Q,
      I1 => rx_st_1_Q,
      I2 => rx_st_2_Q,
      I3 => rx_st_3_Q,
      I4 => rx_st_10_Q,
      O => Mcompar_rx_st_31_GND_89_o_LessThan_11_o_lut_0_Q_1465
    );
  Mcompar_rx_st_31_GND_89_o_LessThan_11_o_cy_0_Q : MUXCY
    port map (
      CI => NlwRenamedSig_OI_RB_EN,
      DI => Mcompar_rx_st_31_GND_89_o_LessThan_11_o_lutdi_1464,
      S => Mcompar_rx_st_31_GND_89_o_LessThan_11_o_lut_0_Q_1465,
      O => Mcompar_rx_st_31_GND_89_o_LessThan_11_o_cy_0_Q_1466
    );
  Mcompar_rx_st_31_GND_89_o_LessThan_11_o_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_rx_st_31_GND_89_o_LessThan_11_o_cy_0_Q_1466,
      DI => rx_st_10_Q,
      S => NlwRenamedSig_OI_RB_EN,
      O => Mcompar_rx_st_31_GND_89_o_LessThan_11_o_cy_1_Q_1467
    );
  Mcompar_rx_st_31_GND_89_o_LessThan_11_o_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_rx_st_31_GND_89_o_LessThan_11_o_cy_1_Q_1467,
      DI => rx_st_10_Q,
      S => NlwRenamedSig_OI_RB_EN,
      O => Mcompar_rx_st_31_GND_89_o_LessThan_11_o_cy_2_Q_1468
    );
  Mcompar_rx_st_31_GND_89_o_LessThan_11_o_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_rx_st_31_GND_89_o_LessThan_11_o_cy_2_Q_1468,
      DI => rx_st_10_Q,
      S => NlwRenamedSig_OI_RB_EN,
      O => Mcompar_rx_st_31_GND_89_o_LessThan_11_o_cy_3_Q_1469
    );
  Mcompar_rx_st_31_GND_89_o_LessThan_11_o_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_rx_st_31_GND_89_o_LessThan_11_o_cy_3_Q_1469,
      DI => rx_st_10_Q,
      S => NlwRenamedSig_OI_RB_EN,
      O => Mcompar_rx_st_31_GND_89_o_LessThan_11_o_cy_4_Q_1470
    );
  Mcompar_rx_st_31_GND_89_o_LessThan_11_o_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_rx_st_31_GND_89_o_LessThan_11_o_cy_4_Q_1470,
      DI => rx_st_10_Q,
      S => NlwRenamedSig_OI_RB_EN,
      O => Mcompar_rx_st_31_GND_89_o_LessThan_11_o_cy_5_Q_1471
    );
  Mcompar_rx_st_31_GND_89_o_LessThan_11_o_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_rx_st_31_GND_89_o_LessThan_11_o_cy_5_Q_1471,
      DI => rx_st_10_Q,
      S => NlwRenamedSig_OI_RB_EN,
      O => Mcompar_rx_st_31_GND_89_o_LessThan_11_o_cy_6_Q_1472
    );
  Mcompar_GND_89_o_rx_st_31_LessThan_9_o_cy_0_Q : MUXCY
    port map (
      CI => NlwRenamedSig_OI_RB_EN,
      DI => Mcompar_GND_89_o_rx_st_31_LessThan_9_o_lutdi,
      S => Mcompar_GND_89_o_rx_st_31_LessThan_9_o_lut_0_Q,
      O => Mcompar_GND_89_o_rx_st_31_LessThan_9_o_cy_0_Q_1475
    );
  Mcompar_GND_89_o_rx_st_31_LessThan_9_o_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_GND_89_o_rx_st_31_LessThan_9_o_cy_0_Q_1475,
      DI => rx_st_10_Q,
      S => NlwRenamedSig_OI_RB_EN,
      O => Mcompar_GND_89_o_rx_st_31_LessThan_9_o_cy_1_Q_1477
    );
  Mcompar_GND_89_o_rx_st_31_LessThan_9_o_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_GND_89_o_rx_st_31_LessThan_9_o_cy_1_Q_1477,
      DI => rx_st_10_Q,
      S => NlwRenamedSig_OI_RB_EN,
      O => Mcompar_GND_89_o_rx_st_31_LessThan_9_o_cy_2_Q_1478
    );
  Mcompar_GND_89_o_rx_st_31_LessThan_9_o_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_GND_89_o_rx_st_31_LessThan_9_o_cy_2_Q_1478,
      DI => rx_st_10_Q,
      S => NlwRenamedSig_OI_RB_EN,
      O => Mcompar_GND_89_o_rx_st_31_LessThan_9_o_cy_3_Q_1479
    );
  Mcompar_GND_89_o_rx_st_31_LessThan_9_o_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_GND_89_o_rx_st_31_LessThan_9_o_cy_3_Q_1479,
      DI => rx_st_10_Q,
      S => NlwRenamedSig_OI_RB_EN,
      O => Mcompar_GND_89_o_rx_st_31_LessThan_9_o_cy_4_Q_1480
    );
  Mcompar_GND_89_o_rx_st_31_LessThan_9_o_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_GND_89_o_rx_st_31_LessThan_9_o_cy_4_Q_1480,
      DI => rx_st_10_Q,
      S => NlwRenamedSig_OI_RB_EN,
      O => Mcompar_GND_89_o_rx_st_31_LessThan_9_o_cy_5_Q_1481
    );
  Mcompar_GND_89_o_rx_st_31_LessThan_9_o_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_GND_89_o_rx_st_31_LessThan_9_o_cy_5_Q_1481,
      DI => rx_st_10_Q,
      S => NlwRenamedSig_OI_RB_EN,
      O => Mcompar_GND_89_o_rx_st_31_LessThan_9_o_cy_6_Q_1482
    );
  Mcount_bit_count_cy_0_Q : MUXCY
    port map (
      CI => NlwRenamedSig_OI_RB_EN,
      DI => rx_st_10_Q,
      S => Mcount_bit_count_cy_0_rt_1623,
      O => Mcount_bit_count_cy(0)
    );
  Mcount_bit_count_xor_0_Q : XORCY
    port map (
      CI => NlwRenamedSig_OI_RB_EN,
      LI => Mcount_bit_count_cy_0_rt_1623,
      O => Result_0_1
    );
  Mcount_bit_count_cy_1_Q : MUXCY
    port map (
      CI => Mcount_bit_count_cy(0),
      DI => NlwRenamedSig_OI_RB_EN,
      S => Mcount_bit_count_lut(1),
      O => Mcount_bit_count_cy(1)
    );
  Mcount_bit_count_xor_1_Q : XORCY
    port map (
      CI => Mcount_bit_count_cy(0),
      LI => Mcount_bit_count_lut(1),
      O => Result_1_1
    );
  Mcount_bit_count_cy_2_Q : MUXCY
    port map (
      CI => Mcount_bit_count_cy(1),
      DI => NlwRenamedSig_OI_RB_EN,
      S => Mcount_bit_count_lut(2),
      O => Mcount_bit_count_cy(2)
    );
  Mcount_bit_count_xor_2_Q : XORCY
    port map (
      CI => Mcount_bit_count_cy(1),
      LI => Mcount_bit_count_lut(2),
      O => Result_2_1
    );
  Mcount_bit_count_cy_3_Q : MUXCY
    port map (
      CI => Mcount_bit_count_cy(2),
      DI => NlwRenamedSig_OI_RB_EN,
      S => Mcount_bit_count_lut(3),
      O => Mcount_bit_count_cy(3)
    );
  Mcount_bit_count_xor_3_Q : XORCY
    port map (
      CI => Mcount_bit_count_cy(2),
      LI => Mcount_bit_count_lut(3),
      O => Result_3_1
    );
  Mcount_bit_count_cy_4_Q : MUXCY
    port map (
      CI => Mcount_bit_count_cy(3),
      DI => NlwRenamedSig_OI_RB_EN,
      S => Mcount_bit_count_lut(4),
      O => Mcount_bit_count_cy(4)
    );
  Mcount_bit_count_xor_4_Q : XORCY
    port map (
      CI => Mcount_bit_count_cy(3),
      LI => Mcount_bit_count_lut(4),
      O => Result_4_1
    );
  Mcount_bit_count_cy_5_Q : MUXCY
    port map (
      CI => Mcount_bit_count_cy(4),
      DI => NlwRenamedSig_OI_RB_EN,
      S => Mcount_bit_count_lut(5),
      O => Mcount_bit_count_cy(5)
    );
  Mcount_bit_count_xor_5_Q : XORCY
    port map (
      CI => Mcount_bit_count_cy(4),
      LI => Mcount_bit_count_lut(5),
      O => Result_5_1
    );
  Mcount_bit_count_cy_6_Q : MUXCY
    port map (
      CI => Mcount_bit_count_cy(5),
      DI => NlwRenamedSig_OI_RB_EN,
      S => Mcount_bit_count_lut(6),
      O => Mcount_bit_count_cy(6)
    );
  Mcount_bit_count_xor_6_Q : XORCY
    port map (
      CI => Mcount_bit_count_cy(5),
      LI => Mcount_bit_count_lut(6),
      O => Result_6_1
    );
  Mcount_bit_count_cy_7_Q : MUXCY
    port map (
      CI => Mcount_bit_count_cy(6),
      DI => NlwRenamedSig_OI_RB_EN,
      S => Mcount_bit_count_lut(7),
      O => Mcount_bit_count_cy(7)
    );
  Mcount_bit_count_xor_7_Q : XORCY
    port map (
      CI => Mcount_bit_count_cy(6),
      LI => Mcount_bit_count_lut(7),
      O => Result_7_1
    );
  Mcount_bit_count_cy_8_Q : MUXCY
    port map (
      CI => Mcount_bit_count_cy(7),
      DI => NlwRenamedSig_OI_RB_EN,
      S => Mcount_bit_count_lut(8),
      O => Mcount_bit_count_cy(8)
    );
  Mcount_bit_count_xor_8_Q : XORCY
    port map (
      CI => Mcount_bit_count_cy(7),
      LI => Mcount_bit_count_lut(8),
      O => Result_8_1
    );
  Mcount_bit_count_cy_9_Q : MUXCY
    port map (
      CI => Mcount_bit_count_cy(8),
      DI => NlwRenamedSig_OI_RB_EN,
      S => Mcount_bit_count_lut(9),
      O => Mcount_bit_count_cy(9)
    );
  Mcount_bit_count_xor_9_Q : XORCY
    port map (
      CI => Mcount_bit_count_cy(8),
      LI => Mcount_bit_count_lut(9),
      O => Result_9_1
    );
  Mcount_bit_count_cy_10_Q : MUXCY
    port map (
      CI => Mcount_bit_count_cy(9),
      DI => NlwRenamedSig_OI_RB_EN,
      S => Mcount_bit_count_lut(10),
      O => Mcount_bit_count_cy(10)
    );
  Mcount_bit_count_xor_10_Q : XORCY
    port map (
      CI => Mcount_bit_count_cy(9),
      LI => Mcount_bit_count_lut(10),
      O => Result_10_1
    );
  Mcount_bit_count_cy_11_Q : MUXCY
    port map (
      CI => Mcount_bit_count_cy(10),
      DI => NlwRenamedSig_OI_RB_EN,
      S => Mcount_bit_count_lut(11),
      O => Mcount_bit_count_cy(11)
    );
  Mcount_bit_count_xor_11_Q : XORCY
    port map (
      CI => Mcount_bit_count_cy(10),
      LI => Mcount_bit_count_lut(11),
      O => Result_11_1
    );
  Mcount_bit_count_cy_12_Q : MUXCY
    port map (
      CI => Mcount_bit_count_cy(11),
      DI => NlwRenamedSig_OI_RB_EN,
      S => Mcount_bit_count_lut(12),
      O => Mcount_bit_count_cy(12)
    );
  Mcount_bit_count_xor_12_Q : XORCY
    port map (
      CI => Mcount_bit_count_cy(11),
      LI => Mcount_bit_count_lut(12),
      O => Result_12_1
    );
  Mcount_bit_count_cy_13_Q : MUXCY
    port map (
      CI => Mcount_bit_count_cy(12),
      DI => NlwRenamedSig_OI_RB_EN,
      S => Mcount_bit_count_lut(13),
      O => Mcount_bit_count_cy(13)
    );
  Mcount_bit_count_xor_13_Q : XORCY
    port map (
      CI => Mcount_bit_count_cy(12),
      LI => Mcount_bit_count_lut(13),
      O => Result_13_1
    );
  Mcount_bit_count_cy_14_Q : MUXCY
    port map (
      CI => Mcount_bit_count_cy(13),
      DI => NlwRenamedSig_OI_RB_EN,
      S => Mcount_bit_count_lut(14),
      O => Mcount_bit_count_cy(14)
    );
  Mcount_bit_count_xor_14_Q : XORCY
    port map (
      CI => Mcount_bit_count_cy(13),
      LI => Mcount_bit_count_lut(14),
      O => Result_14_1
    );
  Mcount_bit_count_cy_15_Q : MUXCY
    port map (
      CI => Mcount_bit_count_cy(14),
      DI => NlwRenamedSig_OI_RB_EN,
      S => Mcount_bit_count_lut(15),
      O => Mcount_bit_count_cy(15)
    );
  Mcount_bit_count_xor_15_Q : XORCY
    port map (
      CI => Mcount_bit_count_cy(14),
      LI => Mcount_bit_count_lut(15),
      O => Result_15_1
    );
  Mcount_bit_count_cy_16_Q : MUXCY
    port map (
      CI => Mcount_bit_count_cy(15),
      DI => NlwRenamedSig_OI_RB_EN,
      S => Mcount_bit_count_lut(16),
      O => Mcount_bit_count_cy(16)
    );
  Mcount_bit_count_xor_16_Q : XORCY
    port map (
      CI => Mcount_bit_count_cy(15),
      LI => Mcount_bit_count_lut(16),
      O => Result_16_1
    );
  Mcount_bit_count_cy_17_Q : MUXCY
    port map (
      CI => Mcount_bit_count_cy(16),
      DI => NlwRenamedSig_OI_RB_EN,
      S => Mcount_bit_count_lut(17),
      O => Mcount_bit_count_cy(17)
    );
  Mcount_bit_count_xor_17_Q : XORCY
    port map (
      CI => Mcount_bit_count_cy(16),
      LI => Mcount_bit_count_lut(17),
      O => Result_17_1
    );
  Mcount_bit_count_cy_18_Q : MUXCY
    port map (
      CI => Mcount_bit_count_cy(17),
      DI => NlwRenamedSig_OI_RB_EN,
      S => Mcount_bit_count_lut(18),
      O => Mcount_bit_count_cy(18)
    );
  Mcount_bit_count_xor_18_Q : XORCY
    port map (
      CI => Mcount_bit_count_cy(17),
      LI => Mcount_bit_count_lut(18),
      O => Result_18_1
    );
  Mcount_bit_count_cy_19_Q : MUXCY
    port map (
      CI => Mcount_bit_count_cy(18),
      DI => NlwRenamedSig_OI_RB_EN,
      S => Mcount_bit_count_lut(19),
      O => Mcount_bit_count_cy(19)
    );
  Mcount_bit_count_xor_19_Q : XORCY
    port map (
      CI => Mcount_bit_count_cy(18),
      LI => Mcount_bit_count_lut(19),
      O => Result_19_1
    );
  Mcount_bit_count_cy_20_Q : MUXCY
    port map (
      CI => Mcount_bit_count_cy(19),
      DI => NlwRenamedSig_OI_RB_EN,
      S => Mcount_bit_count_lut(20),
      O => Mcount_bit_count_cy(20)
    );
  Mcount_bit_count_xor_20_Q : XORCY
    port map (
      CI => Mcount_bit_count_cy(19),
      LI => Mcount_bit_count_lut(20),
      O => Result_20_1
    );
  Mcount_bit_count_cy_21_Q : MUXCY
    port map (
      CI => Mcount_bit_count_cy(20),
      DI => NlwRenamedSig_OI_RB_EN,
      S => Mcount_bit_count_lut(21),
      O => Mcount_bit_count_cy(21)
    );
  Mcount_bit_count_xor_21_Q : XORCY
    port map (
      CI => Mcount_bit_count_cy(20),
      LI => Mcount_bit_count_lut(21),
      O => Result_21_1
    );
  Mcount_bit_count_cy_22_Q : MUXCY
    port map (
      CI => Mcount_bit_count_cy(21),
      DI => NlwRenamedSig_OI_RB_EN,
      S => Mcount_bit_count_lut(22),
      O => Mcount_bit_count_cy(22)
    );
  Mcount_bit_count_xor_22_Q : XORCY
    port map (
      CI => Mcount_bit_count_cy(21),
      LI => Mcount_bit_count_lut(22),
      O => Result_22_1
    );
  Mcount_bit_count_cy_23_Q : MUXCY
    port map (
      CI => Mcount_bit_count_cy(22),
      DI => NlwRenamedSig_OI_RB_EN,
      S => Mcount_bit_count_lut(23),
      O => Mcount_bit_count_cy(23)
    );
  Mcount_bit_count_xor_23_Q : XORCY
    port map (
      CI => Mcount_bit_count_cy(22),
      LI => Mcount_bit_count_lut(23),
      O => Result_23_1
    );
  Mcount_bit_count_cy_24_Q : MUXCY
    port map (
      CI => Mcount_bit_count_cy(23),
      DI => NlwRenamedSig_OI_RB_EN,
      S => Mcount_bit_count_lut(24),
      O => Mcount_bit_count_cy(24)
    );
  Mcount_bit_count_xor_24_Q : XORCY
    port map (
      CI => Mcount_bit_count_cy(23),
      LI => Mcount_bit_count_lut(24),
      O => Result_24_1
    );
  Mcount_bit_count_cy_25_Q : MUXCY
    port map (
      CI => Mcount_bit_count_cy(24),
      DI => NlwRenamedSig_OI_RB_EN,
      S => Mcount_bit_count_lut(25),
      O => Mcount_bit_count_cy(25)
    );
  Mcount_bit_count_xor_25_Q : XORCY
    port map (
      CI => Mcount_bit_count_cy(24),
      LI => Mcount_bit_count_lut(25),
      O => Result_25_1
    );
  Mcount_bit_count_cy_26_Q : MUXCY
    port map (
      CI => Mcount_bit_count_cy(25),
      DI => NlwRenamedSig_OI_RB_EN,
      S => Mcount_bit_count_lut(26),
      O => Mcount_bit_count_cy(26)
    );
  Mcount_bit_count_xor_26_Q : XORCY
    port map (
      CI => Mcount_bit_count_cy(25),
      LI => Mcount_bit_count_lut(26),
      O => Result_26_1
    );
  Mcount_bit_count_cy_27_Q : MUXCY
    port map (
      CI => Mcount_bit_count_cy(26),
      DI => NlwRenamedSig_OI_RB_EN,
      S => Mcount_bit_count_lut(27),
      O => Mcount_bit_count_cy(27)
    );
  Mcount_bit_count_xor_27_Q : XORCY
    port map (
      CI => Mcount_bit_count_cy(26),
      LI => Mcount_bit_count_lut(27),
      O => Result_27_1
    );
  Mcount_bit_count_cy_28_Q : MUXCY
    port map (
      CI => Mcount_bit_count_cy(27),
      DI => NlwRenamedSig_OI_RB_EN,
      S => Mcount_bit_count_lut(28),
      O => Mcount_bit_count_cy(28)
    );
  Mcount_bit_count_xor_28_Q : XORCY
    port map (
      CI => Mcount_bit_count_cy(27),
      LI => Mcount_bit_count_lut(28),
      O => Result_28_1
    );
  Mcount_bit_count_cy_29_Q : MUXCY
    port map (
      CI => Mcount_bit_count_cy(28),
      DI => NlwRenamedSig_OI_RB_EN,
      S => Mcount_bit_count_lut(29),
      O => Mcount_bit_count_cy(29)
    );
  Mcount_bit_count_xor_29_Q : XORCY
    port map (
      CI => Mcount_bit_count_cy(28),
      LI => Mcount_bit_count_lut(29),
      O => Result_29_1
    );
  Mcount_bit_count_cy_30_Q : MUXCY
    port map (
      CI => Mcount_bit_count_cy(29),
      DI => NlwRenamedSig_OI_RB_EN,
      S => Mcount_bit_count_lut(30),
      O => Mcount_bit_count_cy(30)
    );
  Mcount_bit_count_xor_30_Q : XORCY
    port map (
      CI => Mcount_bit_count_cy(29),
      LI => Mcount_bit_count_lut(30),
      O => Result_30_1
    );
  Mcount_bit_count_xor_31_Q : XORCY
    port map (
      CI => Mcount_bit_count_cy(30),
      LI => Mcount_bit_count_lut(31),
      O => Result_31_1
    );
  Mcount_reset_count_31_dff_16_cy_0_Q : MUXCY
    port map (
      CI => rx_st_10_Q,
      DI => NlwRenamedSig_OI_RB_EN,
      S => Mcount_reset_count_31_dff_16_lut_0_Q,
      O => Mcount_reset_count_31_dff_16_cy_0_Q_1546
    );
  Mcount_reset_count_31_dff_16_xor_0_Q : XORCY
    port map (
      CI => rx_st_10_Q,
      LI => Mcount_reset_count_31_dff_16_lut_0_Q,
      O => Result(0)
    );
  Mcount_reset_count_31_dff_16_cy_1_Q : MUXCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_0_Q_1546,
      DI => rx_st_10_Q,
      S => Mcount_reset_count_31_dff_16_cy_1_rt_1624,
      O => Mcount_reset_count_31_dff_16_cy_1_Q_1547
    );
  Mcount_reset_count_31_dff_16_xor_1_Q : XORCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_0_Q_1546,
      LI => Mcount_reset_count_31_dff_16_cy_1_rt_1624,
      O => Result(1)
    );
  Mcount_reset_count_31_dff_16_cy_2_Q : MUXCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_1_Q_1547,
      DI => rx_st_10_Q,
      S => Mcount_reset_count_31_dff_16_cy_2_rt_1625,
      O => Mcount_reset_count_31_dff_16_cy_2_Q_1548
    );
  Mcount_reset_count_31_dff_16_xor_2_Q : XORCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_1_Q_1547,
      LI => Mcount_reset_count_31_dff_16_cy_2_rt_1625,
      O => Result(2)
    );
  Mcount_reset_count_31_dff_16_cy_3_Q : MUXCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_2_Q_1548,
      DI => rx_st_10_Q,
      S => Mcount_reset_count_31_dff_16_cy_3_rt_1626,
      O => Mcount_reset_count_31_dff_16_cy_3_Q_1549
    );
  Mcount_reset_count_31_dff_16_xor_3_Q : XORCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_2_Q_1548,
      LI => Mcount_reset_count_31_dff_16_cy_3_rt_1626,
      O => Result(3)
    );
  Mcount_reset_count_31_dff_16_cy_4_Q : MUXCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_3_Q_1549,
      DI => rx_st_10_Q,
      S => Mcount_reset_count_31_dff_16_cy_4_rt_1627,
      O => Mcount_reset_count_31_dff_16_cy_4_Q_1550
    );
  Mcount_reset_count_31_dff_16_xor_4_Q : XORCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_3_Q_1549,
      LI => Mcount_reset_count_31_dff_16_cy_4_rt_1627,
      O => Result(4)
    );
  Mcount_reset_count_31_dff_16_cy_5_Q : MUXCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_4_Q_1550,
      DI => rx_st_10_Q,
      S => Mcount_reset_count_31_dff_16_cy_5_rt_1628,
      O => Mcount_reset_count_31_dff_16_cy_5_Q_1551
    );
  Mcount_reset_count_31_dff_16_xor_5_Q : XORCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_4_Q_1550,
      LI => Mcount_reset_count_31_dff_16_cy_5_rt_1628,
      O => Result(5)
    );
  Mcount_reset_count_31_dff_16_cy_6_Q : MUXCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_5_Q_1551,
      DI => rx_st_10_Q,
      S => Mcount_reset_count_31_dff_16_cy_6_rt_1629,
      O => Mcount_reset_count_31_dff_16_cy_6_Q_1552
    );
  Mcount_reset_count_31_dff_16_xor_6_Q : XORCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_5_Q_1551,
      LI => Mcount_reset_count_31_dff_16_cy_6_rt_1629,
      O => Result(6)
    );
  Mcount_reset_count_31_dff_16_cy_7_Q : MUXCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_6_Q_1552,
      DI => rx_st_10_Q,
      S => Mcount_reset_count_31_dff_16_cy_7_rt_1630,
      O => Mcount_reset_count_31_dff_16_cy_7_Q_1553
    );
  Mcount_reset_count_31_dff_16_xor_7_Q : XORCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_6_Q_1552,
      LI => Mcount_reset_count_31_dff_16_cy_7_rt_1630,
      O => Result(7)
    );
  Mcount_reset_count_31_dff_16_cy_8_Q : MUXCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_7_Q_1553,
      DI => rx_st_10_Q,
      S => Mcount_reset_count_31_dff_16_cy_8_rt_1631,
      O => Mcount_reset_count_31_dff_16_cy_8_Q_1554
    );
  Mcount_reset_count_31_dff_16_xor_8_Q : XORCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_7_Q_1553,
      LI => Mcount_reset_count_31_dff_16_cy_8_rt_1631,
      O => Result(8)
    );
  Mcount_reset_count_31_dff_16_cy_9_Q : MUXCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_8_Q_1554,
      DI => rx_st_10_Q,
      S => Mcount_reset_count_31_dff_16_cy_9_rt_1632,
      O => Mcount_reset_count_31_dff_16_cy_9_Q_1555
    );
  Mcount_reset_count_31_dff_16_xor_9_Q : XORCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_8_Q_1554,
      LI => Mcount_reset_count_31_dff_16_cy_9_rt_1632,
      O => Result(9)
    );
  Mcount_reset_count_31_dff_16_cy_10_Q : MUXCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_9_Q_1555,
      DI => rx_st_10_Q,
      S => Mcount_reset_count_31_dff_16_cy_10_rt_1633,
      O => Mcount_reset_count_31_dff_16_cy_10_Q_1556
    );
  Mcount_reset_count_31_dff_16_xor_10_Q : XORCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_9_Q_1555,
      LI => Mcount_reset_count_31_dff_16_cy_10_rt_1633,
      O => Result(10)
    );
  Mcount_reset_count_31_dff_16_cy_11_Q : MUXCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_10_Q_1556,
      DI => rx_st_10_Q,
      S => Mcount_reset_count_31_dff_16_cy_11_rt_1634,
      O => Mcount_reset_count_31_dff_16_cy_11_Q_1557
    );
  Mcount_reset_count_31_dff_16_xor_11_Q : XORCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_10_Q_1556,
      LI => Mcount_reset_count_31_dff_16_cy_11_rt_1634,
      O => Result(11)
    );
  Mcount_reset_count_31_dff_16_cy_12_Q : MUXCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_11_Q_1557,
      DI => rx_st_10_Q,
      S => Mcount_reset_count_31_dff_16_cy_12_rt_1635,
      O => Mcount_reset_count_31_dff_16_cy_12_Q_1558
    );
  Mcount_reset_count_31_dff_16_xor_12_Q : XORCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_11_Q_1557,
      LI => Mcount_reset_count_31_dff_16_cy_12_rt_1635,
      O => Result(12)
    );
  Mcount_reset_count_31_dff_16_cy_13_Q : MUXCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_12_Q_1558,
      DI => rx_st_10_Q,
      S => Mcount_reset_count_31_dff_16_cy_13_rt_1636,
      O => Mcount_reset_count_31_dff_16_cy_13_Q_1559
    );
  Mcount_reset_count_31_dff_16_xor_13_Q : XORCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_12_Q_1558,
      LI => Mcount_reset_count_31_dff_16_cy_13_rt_1636,
      O => Result(13)
    );
  Mcount_reset_count_31_dff_16_cy_14_Q : MUXCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_13_Q_1559,
      DI => rx_st_10_Q,
      S => Mcount_reset_count_31_dff_16_cy_14_rt_1637,
      O => Mcount_reset_count_31_dff_16_cy_14_Q_1560
    );
  Mcount_reset_count_31_dff_16_xor_14_Q : XORCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_13_Q_1559,
      LI => Mcount_reset_count_31_dff_16_cy_14_rt_1637,
      O => Result(14)
    );
  Mcount_reset_count_31_dff_16_cy_15_Q : MUXCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_14_Q_1560,
      DI => rx_st_10_Q,
      S => Mcount_reset_count_31_dff_16_cy_15_rt_1638,
      O => Mcount_reset_count_31_dff_16_cy_15_Q_1561
    );
  Mcount_reset_count_31_dff_16_xor_15_Q : XORCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_14_Q_1560,
      LI => Mcount_reset_count_31_dff_16_cy_15_rt_1638,
      O => Result(15)
    );
  Mcount_reset_count_31_dff_16_cy_16_Q : MUXCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_15_Q_1561,
      DI => rx_st_10_Q,
      S => Mcount_reset_count_31_dff_16_cy_16_rt_1639,
      O => Mcount_reset_count_31_dff_16_cy_16_Q_1562
    );
  Mcount_reset_count_31_dff_16_xor_16_Q : XORCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_15_Q_1561,
      LI => Mcount_reset_count_31_dff_16_cy_16_rt_1639,
      O => Result(16)
    );
  Mcount_reset_count_31_dff_16_cy_17_Q : MUXCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_16_Q_1562,
      DI => rx_st_10_Q,
      S => Mcount_reset_count_31_dff_16_cy_17_rt_1640,
      O => Mcount_reset_count_31_dff_16_cy_17_Q_1563
    );
  Mcount_reset_count_31_dff_16_xor_17_Q : XORCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_16_Q_1562,
      LI => Mcount_reset_count_31_dff_16_cy_17_rt_1640,
      O => Result(17)
    );
  Mcount_reset_count_31_dff_16_cy_18_Q : MUXCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_17_Q_1563,
      DI => rx_st_10_Q,
      S => Mcount_reset_count_31_dff_16_cy_18_rt_1641,
      O => Mcount_reset_count_31_dff_16_cy_18_Q_1564
    );
  Mcount_reset_count_31_dff_16_xor_18_Q : XORCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_17_Q_1563,
      LI => Mcount_reset_count_31_dff_16_cy_18_rt_1641,
      O => Result(18)
    );
  Mcount_reset_count_31_dff_16_cy_19_Q : MUXCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_18_Q_1564,
      DI => rx_st_10_Q,
      S => Mcount_reset_count_31_dff_16_cy_19_rt_1642,
      O => Mcount_reset_count_31_dff_16_cy_19_Q_1565
    );
  Mcount_reset_count_31_dff_16_xor_19_Q : XORCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_18_Q_1564,
      LI => Mcount_reset_count_31_dff_16_cy_19_rt_1642,
      O => Result(19)
    );
  Mcount_reset_count_31_dff_16_cy_20_Q : MUXCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_19_Q_1565,
      DI => rx_st_10_Q,
      S => Mcount_reset_count_31_dff_16_cy_20_rt_1643,
      O => Mcount_reset_count_31_dff_16_cy_20_Q_1566
    );
  Mcount_reset_count_31_dff_16_xor_20_Q : XORCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_19_Q_1565,
      LI => Mcount_reset_count_31_dff_16_cy_20_rt_1643,
      O => Result(20)
    );
  Mcount_reset_count_31_dff_16_cy_21_Q : MUXCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_20_Q_1566,
      DI => rx_st_10_Q,
      S => Mcount_reset_count_31_dff_16_cy_21_rt_1644,
      O => Mcount_reset_count_31_dff_16_cy_21_Q_1567
    );
  Mcount_reset_count_31_dff_16_xor_21_Q : XORCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_20_Q_1566,
      LI => Mcount_reset_count_31_dff_16_cy_21_rt_1644,
      O => Result(21)
    );
  Mcount_reset_count_31_dff_16_cy_22_Q : MUXCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_21_Q_1567,
      DI => rx_st_10_Q,
      S => Mcount_reset_count_31_dff_16_cy_22_rt_1645,
      O => Mcount_reset_count_31_dff_16_cy_22_Q_1568
    );
  Mcount_reset_count_31_dff_16_xor_22_Q : XORCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_21_Q_1567,
      LI => Mcount_reset_count_31_dff_16_cy_22_rt_1645,
      O => Result(22)
    );
  Mcount_reset_count_31_dff_16_cy_23_Q : MUXCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_22_Q_1568,
      DI => rx_st_10_Q,
      S => Mcount_reset_count_31_dff_16_cy_23_rt_1646,
      O => Mcount_reset_count_31_dff_16_cy_23_Q_1569
    );
  Mcount_reset_count_31_dff_16_xor_23_Q : XORCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_22_Q_1568,
      LI => Mcount_reset_count_31_dff_16_cy_23_rt_1646,
      O => Result(23)
    );
  Mcount_reset_count_31_dff_16_cy_24_Q : MUXCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_23_Q_1569,
      DI => rx_st_10_Q,
      S => Mcount_reset_count_31_dff_16_cy_24_rt_1647,
      O => Mcount_reset_count_31_dff_16_cy_24_Q_1570
    );
  Mcount_reset_count_31_dff_16_xor_24_Q : XORCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_23_Q_1569,
      LI => Mcount_reset_count_31_dff_16_cy_24_rt_1647,
      O => Result(24)
    );
  Mcount_reset_count_31_dff_16_cy_25_Q : MUXCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_24_Q_1570,
      DI => rx_st_10_Q,
      S => Mcount_reset_count_31_dff_16_cy_25_rt_1648,
      O => Mcount_reset_count_31_dff_16_cy_25_Q_1571
    );
  Mcount_reset_count_31_dff_16_xor_25_Q : XORCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_24_Q_1570,
      LI => Mcount_reset_count_31_dff_16_cy_25_rt_1648,
      O => Result(25)
    );
  Mcount_reset_count_31_dff_16_cy_26_Q : MUXCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_25_Q_1571,
      DI => rx_st_10_Q,
      S => Mcount_reset_count_31_dff_16_cy_26_rt_1649,
      O => Mcount_reset_count_31_dff_16_cy_26_Q_1572
    );
  Mcount_reset_count_31_dff_16_xor_26_Q : XORCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_25_Q_1571,
      LI => Mcount_reset_count_31_dff_16_cy_26_rt_1649,
      O => Result(26)
    );
  Mcount_reset_count_31_dff_16_cy_27_Q : MUXCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_26_Q_1572,
      DI => rx_st_10_Q,
      S => Mcount_reset_count_31_dff_16_cy_27_rt_1650,
      O => Mcount_reset_count_31_dff_16_cy_27_Q_1573
    );
  Mcount_reset_count_31_dff_16_xor_27_Q : XORCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_26_Q_1572,
      LI => Mcount_reset_count_31_dff_16_cy_27_rt_1650,
      O => Result(27)
    );
  Mcount_reset_count_31_dff_16_cy_28_Q : MUXCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_27_Q_1573,
      DI => rx_st_10_Q,
      S => Mcount_reset_count_31_dff_16_cy_28_rt_1651,
      O => Mcount_reset_count_31_dff_16_cy_28_Q_1574
    );
  Mcount_reset_count_31_dff_16_xor_28_Q : XORCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_27_Q_1573,
      LI => Mcount_reset_count_31_dff_16_cy_28_rt_1651,
      O => Result(28)
    );
  Mcount_reset_count_31_dff_16_cy_29_Q : MUXCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_28_Q_1574,
      DI => rx_st_10_Q,
      S => Mcount_reset_count_31_dff_16_cy_29_rt_1652,
      O => Mcount_reset_count_31_dff_16_cy_29_Q_1575
    );
  Mcount_reset_count_31_dff_16_xor_29_Q : XORCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_28_Q_1574,
      LI => Mcount_reset_count_31_dff_16_cy_29_rt_1652,
      O => Result(29)
    );
  Mcount_reset_count_31_dff_16_xor_30_Q : XORCY
    port map (
      CI => Mcount_reset_count_31_dff_16_cy_29_Q_1575,
      LI => Mcount_reset_count_31_dff_16_xor_30_rt_1654,
      O => Result(30)
    );
  Mcount_bit_count_eqn_51 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => GND_89_o_bit_count_31_not_equal_1_o,
      I1 => Result_5_1,
      O => Mcount_bit_count_eqn_5
    );
  reg_state_FSM_FFd3_In111 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => reg_state_FSM_FFd1_1163,
      I1 => reg_state_FSM_FFd3_1165,
      I2 => fifo_empty_w8r32,
      O => reg_state_FSM_FFd3_In11
    );
  reg_state_FSM_FFd1_In21 : LUT6
    generic map(
      INIT => X"0040AAEA00400040"
    )
    port map (
      I0 => reg_state_FSM_FFd2_1164,
      I1 => TX_BUSY,
      I2 => reg_state_FSM_FFd1_1163,
      I3 => reg_state_FSM_FFd4_1166,
      I4 => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_10_Q_1463,
      I5 => reg_state_FSM_FFd3_1165,
      O => reg_state_FSM_FFd1_In2
    );
  GND_89_o_bit_count_31_not_equal_1_o_01 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => GND_89_o_bit_count_31_not_equal_1_o,
      I1 => UPDATE,
      O => GND_89_o_bit_count_31_not_equal_1_o_0
    );
  Mmux_n1018161 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => cmd_type(1),
      I1 => cmd_data(9),
      O => Q_n1018(9)
    );
  Mmux_n1018151 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => cmd_type(1),
      I1 => cmd_data(8),
      O => Q_n1018(8)
    );
  Mmux_n1018141 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => cmd_type(1),
      I1 => cmd_reg_num(7),
      I2 => cmd_data(7),
      O => Q_n1018(7)
    );
  Mmux_n1018131 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => cmd_type(1),
      I1 => cmd_reg_num(6),
      I2 => cmd_data(6),
      O => Q_n1018(6)
    );
  Mmux_n1018121 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => cmd_type(1),
      I1 => cmd_reg_num(5),
      I2 => cmd_data(5),
      O => Q_n1018(5)
    );
  Mmux_n1018111 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => cmd_type(1),
      I1 => cmd_reg_num(4),
      I2 => cmd_data(4),
      O => Q_n1018(4)
    );
  Mmux_n1018101 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => cmd_type(1),
      I1 => cmd_reg_num(3),
      I2 => cmd_data(3),
      O => Q_n1018(3)
    );
  Mmux_n101891 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => cmd_type(1),
      I1 => cmd_reg_num(2),
      I2 => cmd_data(2),
      O => Q_n1018(2)
    );
  Mmux_n101881 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => cmd_type(1),
      I1 => cmd_reg_num(1),
      I2 => cmd_data(1),
      O => Q_n1018(1)
    );
  Mmux_n101871 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => cmd_type(1),
      I1 => cmd_data(15),
      O => Q_n1018(15)
    );
  Mmux_n101861 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => cmd_type(1),
      I1 => cmd_data(14),
      O => Q_n1018(14)
    );
  Mmux_n101851 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => cmd_type(1),
      I1 => cmd_data(13),
      O => Q_n1018(13)
    );
  Mmux_n101841 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => cmd_type(1),
      I1 => cmd_data(12),
      O => Q_n1018(12)
    );
  Mmux_n101831 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => cmd_type(1),
      I1 => cmd_data(11),
      O => Q_n1018(11)
    );
  Mmux_n101821 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => cmd_type(1),
      I1 => cmd_data(10),
      O => Q_n1018(10)
    );
  Mmux_n101811 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => cmd_type(1),
      I1 => cmd_reg_num(0),
      I2 => cmd_data(0),
      O => Q_n1018(0)
    );
  mux11041 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => reg_state_FSM_FFd2_1164,
      I1 => NlwRenamedSig_OI_OUTPUT_REG_5(6),
      I2 => cmd_type(2),
      I3 => cmd_data(6),
      O => Q_n1345(9)
    );
  mux11031 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => reg_state_FSM_FFd2_1164,
      I1 => NlwRenamedSig_OI_OUTPUT_REG_5(7),
      I2 => cmd_type(2),
      I3 => cmd_data(7),
      O => Q_n1345(8)
    );
  mux11021 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => reg_state_FSM_FFd2_1164,
      I1 => NlwRenamedSig_OI_OUTPUT_REG_5(8),
      I2 => cmd_type(2),
      I3 => cmd_data(8),
      O => Q_n1345(7)
    );
  mux11011 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => reg_state_FSM_FFd2_1164,
      I1 => NlwRenamedSig_OI_OUTPUT_REG_5(9),
      I2 => cmd_type(2),
      I3 => cmd_data(9),
      O => Q_n1345(6)
    );
  mux1141 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => reg_state_FSM_FFd2_1164,
      I1 => NlwRenamedSig_OI_OUTPUT_REG_5(10),
      I2 => cmd_type(2),
      I3 => cmd_data(10),
      O => Q_n1345(5)
    );
  mux1131 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => reg_state_FSM_FFd2_1164,
      I1 => NlwRenamedSig_OI_OUTPUT_REG_5(11),
      I2 => cmd_type(2),
      I3 => cmd_data(11),
      O => Q_n1345(4)
    );
  mux1121 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => reg_state_FSM_FFd2_1164,
      I1 => NlwRenamedSig_OI_OUTPUT_REG_5(12),
      I2 => cmd_type(2),
      I3 => cmd_data(12),
      O => Q_n1345(3)
    );
  mux1111 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => reg_state_FSM_FFd2_1164,
      I1 => NlwRenamedSig_OI_OUTPUT_REG_5(13),
      I2 => cmd_type(2),
      I3 => cmd_data(13),
      O => Q_n1345(2)
    );
  mux1101 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => reg_state_FSM_FFd2_1164,
      I1 => NlwRenamedSig_OI_OUTPUT_REG_5(14),
      I2 => cmd_type(2),
      I3 => cmd_data(14),
      O => Q_n1345(1)
    );
  mux211 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => reg_state_FSM_FFd2_1164,
      I1 => NlwRenamedSig_OI_OUTPUT_REG_5(1),
      I2 => cmd_type(2),
      I3 => cmd_data(1),
      O => Q_n1345(14)
    );
  mux201 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => reg_state_FSM_FFd2_1164,
      I1 => NlwRenamedSig_OI_OUTPUT_REG_5(2),
      I2 => cmd_type(2),
      I3 => cmd_data(2),
      O => Q_n1345(13)
    );
  mux191 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => reg_state_FSM_FFd2_1164,
      I1 => NlwRenamedSig_OI_OUTPUT_REG_5(3),
      I2 => cmd_type(2),
      I3 => cmd_data(3),
      O => Q_n1345(12)
    );
  mux181 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => reg_state_FSM_FFd2_1164,
      I1 => NlwRenamedSig_OI_OUTPUT_REG_5(4),
      I2 => cmd_type(2),
      I3 => cmd_data(4),
      O => Q_n1345(11)
    );
  mux171 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => reg_state_FSM_FFd2_1164,
      I1 => NlwRenamedSig_OI_OUTPUT_REG_5(5),
      I2 => cmd_type(2),
      I3 => cmd_data(5),
      O => Q_n1345(10)
    );
  mux161 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => reg_state_FSM_FFd2_1164,
      I1 => NlwRenamedSig_OI_OUTPUT_REG_5(15),
      I2 => cmd_type(2),
      I3 => cmd_data(15),
      O => Q_n1345(0)
    );
  Mmux_reg_state_3_X_76_o_wide_mux_135_OUT321 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => reg_state_FSM_FFd1_1163,
      I1 => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_10_Q_1463,
      I2 => wait_count_31_GND_89_o_add_131_OUT_9_Q,
      O => reg_state_3_X_76_o_wide_mux_135_OUT_9_Q
    );
  Mmux_reg_state_3_X_76_o_wide_mux_135_OUT311 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => reg_state_FSM_FFd1_1163,
      I1 => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_10_Q_1463,
      I2 => wait_count_31_GND_89_o_add_131_OUT_8_Q,
      O => reg_state_3_X_76_o_wide_mux_135_OUT_8_Q
    );
  Mmux_reg_state_3_X_76_o_wide_mux_135_OUT301 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => reg_state_FSM_FFd1_1163,
      I1 => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_10_Q_1463,
      I2 => wait_count_31_GND_89_o_add_131_OUT_7_Q,
      O => reg_state_3_X_76_o_wide_mux_135_OUT_7_Q
    );
  Mmux_reg_state_3_X_76_o_wide_mux_135_OUT291 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => reg_state_FSM_FFd1_1163,
      I1 => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_10_Q_1463,
      I2 => wait_count_31_GND_89_o_add_131_OUT_6_Q,
      O => reg_state_3_X_76_o_wide_mux_135_OUT_6_Q
    );
  Mmux_reg_state_3_X_76_o_wide_mux_135_OUT281 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => reg_state_FSM_FFd1_1163,
      I1 => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_10_Q_1463,
      I2 => wait_count_31_GND_89_o_add_131_OUT_5_Q,
      O => reg_state_3_X_76_o_wide_mux_135_OUT_5_Q
    );
  Mmux_reg_state_3_X_76_o_wide_mux_135_OUT271 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => reg_state_FSM_FFd1_1163,
      I1 => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_10_Q_1463,
      I2 => wait_count_31_GND_89_o_add_131_OUT_4_Q,
      O => reg_state_3_X_76_o_wide_mux_135_OUT_4_Q
    );
  Mmux_reg_state_3_X_76_o_wide_mux_135_OUT261 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => reg_state_FSM_FFd1_1163,
      I1 => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_10_Q_1463,
      I2 => wait_count_31_GND_89_o_add_131_OUT_3_Q,
      O => reg_state_3_X_76_o_wide_mux_135_OUT_3_Q
    );
  Mmux_reg_state_3_X_76_o_wide_mux_135_OUT231 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => reg_state_FSM_FFd1_1163,
      I1 => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_10_Q_1463,
      I2 => wait_count_31_GND_89_o_add_131_OUT_2_Q,
      O => reg_state_3_X_76_o_wide_mux_135_OUT_2_Q
    );
  Mmux_reg_state_3_X_76_o_wide_mux_135_OUT121 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => reg_state_FSM_FFd1_1163,
      I1 => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_10_Q_1463,
      I2 => wait_count_31_GND_89_o_add_131_OUT_1_Q,
      O => reg_state_3_X_76_o_wide_mux_135_OUT_1_Q
    );
  Mmux_reg_state_3_X_76_o_wide_mux_135_OUT71 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => reg_state_FSM_FFd1_1163,
      I1 => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_10_Q_1463,
      I2 => wait_count_31_GND_89_o_add_131_OUT_15_Q,
      O => reg_state_3_X_76_o_wide_mux_135_OUT_15_Q
    );
  Mmux_reg_state_3_X_76_o_wide_mux_135_OUT61 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => reg_state_FSM_FFd1_1163,
      I1 => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_10_Q_1463,
      I2 => wait_count_31_GND_89_o_add_131_OUT_14_Q,
      O => reg_state_3_X_76_o_wide_mux_135_OUT_14_Q
    );
  Mmux_reg_state_3_X_76_o_wide_mux_135_OUT51 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => reg_state_FSM_FFd1_1163,
      I1 => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_10_Q_1463,
      I2 => wait_count_31_GND_89_o_add_131_OUT_13_Q,
      O => reg_state_3_X_76_o_wide_mux_135_OUT_13_Q
    );
  Mmux_reg_state_3_X_76_o_wide_mux_135_OUT41 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => reg_state_FSM_FFd1_1163,
      I1 => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_10_Q_1463,
      I2 => wait_count_31_GND_89_o_add_131_OUT_12_Q,
      O => reg_state_3_X_76_o_wide_mux_135_OUT_12_Q
    );
  Mmux_reg_state_3_X_76_o_wide_mux_135_OUT31 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => reg_state_FSM_FFd1_1163,
      I1 => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_10_Q_1463,
      I2 => wait_count_31_GND_89_o_add_131_OUT_11_Q,
      O => reg_state_3_X_76_o_wide_mux_135_OUT_11_Q
    );
  Mmux_reg_state_3_X_76_o_wide_mux_135_OUT21 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => reg_state_FSM_FFd1_1163,
      I1 => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_10_Q_1463,
      I2 => wait_count_31_GND_89_o_add_131_OUT_10_Q,
      O => reg_state_3_X_76_o_wide_mux_135_OUT_10_Q
    );
  Mmux_reg_state_3_X_76_o_wide_mux_135_OUT11 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => reg_state_FSM_FFd1_1163,
      I1 => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_10_Q_1463,
      I2 => wait_count_31_GND_89_o_add_131_OUT_0_Q,
      O => reg_state_3_X_76_o_wide_mux_135_OUT_0_Q
    );
  Q_n0860_inv11 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => cmd_type(0),
      I1 => cmd_type(1),
      I2 => Q_n0914_inv2,
      O => Q_n0860_inv1
    );
  Q_n1588_inv11 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => cmd_type(2),
      I1 => Q_n0914_inv2,
      O => Q_n1588_inv1
    );
  Q_n1011_inv111 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => cmd_reg_num(2),
      I1 => cmd_reg_num(3),
      I2 => cmd_reg_num(4),
      O => Q_n1011_inv11
    );
  Q_n1390_inv111 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => cmd_reg_num(3),
      I1 => cmd_reg_num(1),
      I2 => cmd_reg_num(0),
      I3 => cmd_reg_num(4),
      O => Q_n1390_inv11
    );
  Q_n0736_inv1 : LUT5
    generic map(
      INIT => X"04040415"
    )
    port map (
      I0 => reg_state_FSM_FFd1_1163,
      I1 => reg_state_FSM_FFd2_1164,
      I2 => Q_n0732_2_1_1582,
      I3 => reg_state_FSM_FFd4_1166,
      I4 => reg_state_FSM_FFd3_1165,
      O => Q_n0736_inv
    );
  Q_n0793_inv1 : LUT5
    generic map(
      INIT => X"40004001"
    )
    port map (
      I0 => rx_st_rst_1319,
      I1 => reg_state_FSM_FFd3_1165,
      I2 => reg_state_FSM_FFd2_1164,
      I3 => reg_state_FSM_FFd1_1163,
      I4 => reg_state_FSM_FFd4_1166,
      O => Q_n0793_inv
    );
  rx_st_31_GND_89_o_AND_9_o1 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => Mcompar_rx_st_31_GND_89_o_LessThan_11_o_cy_6_Q_1472,
      I1 => reset_count_31_dff_16_30_Q,
      O => rx_st_31_GND_89_o_AND_9_o
    );
  mux221 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => reg_state_FSM_FFd2_1164,
      I1 => cmd_type(2),
      I2 => cmd_data(0),
      O => Q_n1345(15)
    );
  reg_state_reg_state_3_X_76_o_wide_mux_134_OUT_2_1 : LUT4
    generic map(
      INIT => X"FA64"
    )
    port map (
      I0 => reg_state_FSM_FFd3_1165,
      I1 => reg_state_FSM_FFd1_1163,
      I2 => reg_state_FSM_FFd4_1166,
      I3 => reg_state_FSM_FFd2_1164,
      O => reg_state_3_X_76_o_wide_mux_134_OUT_2_Q
    );
  reg_state_reg_state_3_X_76_o_wide_mux_134_OUT_3_1 : LUT3
    generic map(
      INIT => X"E8"
    )
    port map (
      I0 => reg_state_FSM_FFd2_1164,
      I1 => reg_state_FSM_FFd1_1163,
      I2 => reg_state_FSM_FFd3_1165,
      O => reg_state_3_X_76_o_wide_mux_134_OUT_3_Q
    );
  reg_state_reg_state_3_X_76_o_wide_mux_134_OUT_1_1 : LUT4
    generic map(
      INIT => X"1B1A"
    )
    port map (
      I0 => reg_state_FSM_FFd1_1163,
      I1 => reg_state_FSM_FFd4_1166,
      I2 => reg_state_FSM_FFd3_1165,
      I3 => reg_state_FSM_FFd2_1164,
      O => reg_state_3_X_76_o_wide_mux_134_OUT_1_Q
    );
  Q_n0914_inv21 : LUT6
    generic map(
      INIT => X"0000000000080000"
    )
    port map (
      I0 => cmd_type(3),
      I1 => reg_state_FSM_FFd4_1166,
      I2 => reg_state_FSM_FFd3_1165,
      I3 => reg_state_FSM_FFd1_1163,
      I4 => reg_state_FSM_FFd2_1164,
      I5 => rx_st_rst_1319,
      O => Q_n0914_inv2
    );
  Q_n1617_inv1 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => Q_n0732_2_1_1582,
      I1 => reg_state_FSM_FFd1_1163,
      I2 => reg_state_FSM_FFd2_1164,
      I3 => rx_st_rst_1319,
      O => Q_n1617_inv
    );
  Q_n0943_inv1 : LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => cmd_reg_num(0),
      I1 => cmd_type(2),
      I2 => cmd_reg_num(1),
      I3 => Q_n0860_inv1,
      I4 => Q_n1011_inv11,
      O => Q_n0943_inv
    );
  Q_n0972_inv1 : LUT5
    generic map(
      INIT => X"40000000"
    )
    port map (
      I0 => cmd_reg_num(0),
      I1 => cmd_type(2),
      I2 => cmd_reg_num(1),
      I3 => Q_n0860_inv1,
      I4 => Q_n1011_inv11,
      O => Q_n0972_inv
    );
  Q_n1011_inv1 : LUT6
    generic map(
      INIT => X"0202020282020202"
    )
    port map (
      I0 => Q_n1588_inv1,
      I1 => cmd_type(0),
      I2 => cmd_type(1),
      I3 => Q_n1011_inv11,
      I4 => cmd_reg_num(0),
      I5 => cmd_reg_num(1),
      O => Q_n1011_inv
    );
  Q_n1050_inv1 : LUT6
    generic map(
      INIT => X"0202020202028202"
    )
    port map (
      I0 => Q_n1588_inv1,
      I1 => cmd_type(0),
      I2 => cmd_type(1),
      I3 => Q_n1011_inv11,
      I4 => cmd_reg_num(0),
      I5 => cmd_reg_num(1),
      O => Q_n1050_inv
    );
  Q_n1521_inv1 : LUT5
    generic map(
      INIT => X"00000008"
    )
    port map (
      I0 => reg_state_FSM_FFd4_1166,
      I1 => reg_state_FSM_FFd3_1165,
      I2 => reg_state_FSM_FFd1_1163,
      I3 => reg_state_FSM_FFd2_1164,
      I4 => rx_st_rst_1319,
      O => Q_n1521_inv
    );
  Q_n1224_inv1 : LUT5
    generic map(
      INIT => X"00004000"
    )
    port map (
      I0 => cmd_reg_num(2),
      I1 => cmd_reg_num(3),
      I2 => cmd_reg_num(1),
      I3 => Q_n1079_inv1_1578,
      I4 => cmd_reg_num(0),
      O => Q_n1224_inv
    );
  Q_n1137_inv1 : LUT5
    generic map(
      INIT => X"40000000"
    )
    port map (
      I0 => cmd_reg_num(1),
      I1 => cmd_reg_num(2),
      I2 => cmd_reg_num(3),
      I3 => cmd_reg_num(0),
      I4 => Q_n1079_inv1_1578,
      O => Q_n1137_inv
    );
  Q_n1253_inv1 : LUT5
    generic map(
      INIT => X"00004000"
    )
    port map (
      I0 => cmd_reg_num(2),
      I1 => Q_n1079_inv1_1578,
      I2 => cmd_reg_num(3),
      I3 => cmd_reg_num(0),
      I4 => cmd_reg_num(1),
      O => Q_n1253_inv
    );
  Q_n1282_inv1 : LUT5
    generic map(
      INIT => X"00000008"
    )
    port map (
      I0 => Q_n1079_inv1_1578,
      I1 => cmd_reg_num(3),
      I2 => cmd_reg_num(0),
      I3 => cmd_reg_num(2),
      I4 => cmd_reg_num(1),
      O => Q_n1282_inv
    );
  reg_state_reg_state_3_X_76_o_wide_mux_134_OUT_0_1 : LUT4
    generic map(
      INIT => X"BB8A"
    )
    port map (
      I0 => reg_state_FSM_FFd4_1166,
      I1 => reg_state_FSM_FFd1_1163,
      I2 => reg_state_FSM_FFd3_1165,
      I3 => reg_state_FSM_FFd2_1164,
      O => reg_state_3_X_76_o_wide_mux_134_OUT_0_Q
    );
  Q_n0768_inv1 : LUT4
    generic map(
      INIT => X"5515"
    )
    port map (
      I0 => rx_st_rst_1319,
      I1 => reg_state_FSM_FFd3_1165,
      I2 => reg_state_FSM_FFd2_1164,
      I3 => reg_state_FSM_FFd1_1163,
      O => Q_n0768_inv
    );
  Q_n1079_inv1 : LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => cmd_reg_num(2),
      I1 => cmd_reg_num(3),
      I2 => cmd_reg_num(0),
      I3 => cmd_reg_num(1),
      I4 => Q_n1079_inv1_1578,
      O => Q_n1079_inv
    );
  Q_n1195_inv1 : LUT5
    generic map(
      INIT => X"40000000"
    )
    port map (
      I0 => cmd_reg_num(2),
      I1 => cmd_reg_num(3),
      I2 => cmd_reg_num(0),
      I3 => cmd_reg_num(1),
      I4 => Q_n1079_inv1_1578,
      O => Q_n1195_inv
    );
  Q_n1311_inv1 : LUT5
    generic map(
      INIT => X"40000000"
    )
    port map (
      I0 => cmd_reg_num(3),
      I1 => cmd_reg_num(2),
      I2 => cmd_reg_num(0),
      I3 => cmd_reg_num(1),
      I4 => Q_n1079_inv1_1578,
      O => Q_n1311_inv
    );
  Q_n1448_inv1 : LUT5
    generic map(
      INIT => X"00004000"
    )
    port map (
      I0 => cmd_reg_num(2),
      I1 => Q_n1079_inv1_1578,
      I2 => cmd_reg_num(0),
      I3 => cmd_reg_num(1),
      I4 => cmd_reg_num(3),
      O => Q_n1448_inv
    );
  Q_n1108_inv1 : LUT5
    generic map(
      INIT => X"40000000"
    )
    port map (
      I0 => cmd_reg_num(0),
      I1 => cmd_reg_num(3),
      I2 => cmd_reg_num(1),
      I3 => cmd_reg_num(2),
      I4 => Q_n1079_inv1_1578,
      O => Q_n1108_inv
    );
  Q_n1166_inv1 : LUT5
    generic map(
      INIT => X"00004000"
    )
    port map (
      I0 => cmd_reg_num(1),
      I1 => Q_n1079_inv1_1578,
      I2 => cmd_reg_num(3),
      I3 => cmd_reg_num(2),
      I4 => cmd_reg_num(0),
      O => Q_n1166_inv
    );
  Q_n1340_inv1 : LUT5
    generic map(
      INIT => X"00004000"
    )
    port map (
      I0 => cmd_reg_num(3),
      I1 => Q_n1079_inv1_1578,
      I2 => cmd_reg_num(1),
      I3 => cmd_reg_num(2),
      I4 => cmd_reg_num(0),
      O => Q_n1340_inv
    );
  Q_n1419_inv1 : LUT5
    generic map(
      INIT => X"00000008"
    )
    port map (
      I0 => Q_n1079_inv1_1578,
      I1 => cmd_reg_num(2),
      I2 => cmd_reg_num(1),
      I3 => cmd_reg_num(3),
      I4 => cmd_reg_num(0),
      O => Q_n1419_inv
    );
  rx_reset1 : LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => internal_data(27),
      I1 => internal_data(23),
      I2 => internal_data(25),
      I3 => internal_data(20),
      I4 => internal_data(21),
      O => rx_reset1_1583
    );
  rx_reset2 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => internal_data(9),
      I1 => internal_data(7),
      I2 => internal_data(12),
      I3 => internal_data(11),
      I4 => internal_data(15),
      I5 => internal_data(14),
      O => rx_reset2_1584
    );
  rx_reset3 : LUT6
    generic map(
      INIT => X"0000000000800000"
    )
    port map (
      I0 => internal_data(2),
      I1 => internal_data(3),
      I2 => internal_data(4),
      I3 => internal_data(1),
      I4 => internal_data(5),
      I5 => internal_data(0),
      O => rx_reset3_1585
    );
  rx_reset5 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => internal_data(8),
      I1 => internal_data(6),
      I2 => internal_data(10),
      I3 => internal_data(13),
      I4 => internal_data(16),
      I5 => internal_data(17),
      O => rx_reset5_1586
    );
  GND_89_o_bit_count_31_not_equal_1_o321 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => bit_count(11),
      I1 => bit_count(10),
      I2 => bit_count(13),
      I3 => bit_count(12),
      I4 => bit_count(15),
      I5 => bit_count(14),
      O => GND_89_o_bit_count_31_not_equal_1_o32
    );
  GND_89_o_bit_count_31_not_equal_1_o322 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => bit_count(5),
      I1 => bit_count(4),
      I2 => bit_count(7),
      I3 => bit_count(6),
      I4 => bit_count(9),
      I5 => bit_count(8),
      O => GND_89_o_bit_count_31_not_equal_1_o321_1588
    );
  GND_89_o_bit_count_31_not_equal_1_o323 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => bit_count(23),
      I1 => bit_count(22),
      I2 => bit_count(25),
      I3 => bit_count(24),
      I4 => bit_count(27),
      I5 => bit_count(26),
      O => GND_89_o_bit_count_31_not_equal_1_o322_1589
    );
  GND_89_o_bit_count_31_not_equal_1_o324 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => bit_count(17),
      I1 => bit_count(16),
      I2 => bit_count(19),
      I3 => bit_count(18),
      I4 => bit_count(21),
      I5 => bit_count(20),
      O => GND_89_o_bit_count_31_not_equal_1_o323_1590
    );
  GND_89_o_bit_count_31_not_equal_1_o325 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => bit_count(29),
      I1 => bit_count(28),
      O => GND_89_o_bit_count_31_not_equal_1_o324_1591
    );
  GND_89_o_bit_count_31_not_equal_1_o326 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => bit_count(31),
      I1 => bit_count(30),
      I2 => bit_count(1),
      I3 => bit_count(0),
      I4 => bit_count(3),
      I5 => bit_count(2),
      O => GND_89_o_bit_count_31_not_equal_1_o325_1592
    );
  GND_89_o_bit_count_31_not_equal_1_o327 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => GND_89_o_bit_count_31_not_equal_1_o324_1591,
      I1 => GND_89_o_bit_count_31_not_equal_1_o325_1592,
      I2 => GND_89_o_bit_count_31_not_equal_1_o32,
      I3 => GND_89_o_bit_count_31_not_equal_1_o321_1588,
      I4 => GND_89_o_bit_count_31_not_equal_1_o322_1589,
      I5 => GND_89_o_bit_count_31_not_equal_1_o323_1590,
      O => GND_89_o_bit_count_31_not_equal_1_o
    );
  GND_89_o_PWR_20_o_AND_73_o1 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => reset_count_31_dff_16_1_Q,
      I1 => reset_count_31_dff_16_0_Q,
      I2 => reset_count_31_dff_16_2_Q,
      I3 => reset_count_31_dff_16_3_Q,
      I4 => reset_count_31_dff_16_4_Q,
      I5 => reset_count_31_dff_16_5_Q,
      O => GND_89_o_PWR_20_o_AND_73_o1_1593
    );
  GND_89_o_PWR_20_o_AND_73_o2 : LUT6
    generic map(
      INIT => X"0000000000010000"
    )
    port map (
      I0 => reset_count_31_dff_16_6_Q,
      I1 => reset_count_31_dff_16_7_Q,
      I2 => reset_count_31_dff_16_8_Q,
      I3 => reset_count_31_dff_16_9_Q,
      I4 => GND_89_o_PWR_20_o_AND_73_o1_1593,
      I5 => reset_count_31_dff_16_10_Q,
      O => GND_89_o_PWR_20_o_AND_73_o2_1594
    );
  GND_89_o_PWR_20_o_AND_73_o3 : LUT6
    generic map(
      INIT => X"0000000000010000"
    )
    port map (
      I0 => reset_count_31_dff_16_11_Q,
      I1 => reset_count_31_dff_16_12_Q,
      I2 => reset_count_31_dff_16_13_Q,
      I3 => reset_count_31_dff_16_14_Q,
      I4 => GND_89_o_PWR_20_o_AND_73_o2_1594,
      I5 => reset_count_31_dff_16_15_Q,
      O => GND_89_o_PWR_20_o_AND_73_o3_1595
    );
  GND_89_o_PWR_20_o_AND_73_o4 : LUT6
    generic map(
      INIT => X"0000000000010000"
    )
    port map (
      I0 => reset_count_31_dff_16_16_Q,
      I1 => reset_count_31_dff_16_17_Q,
      I2 => reset_count_31_dff_16_18_Q,
      I3 => reset_count_31_dff_16_19_Q,
      I4 => GND_89_o_PWR_20_o_AND_73_o3_1595,
      I5 => reset_count_31_dff_16_20_Q,
      O => GND_89_o_PWR_20_o_AND_73_o4_1596
    );
  GND_89_o_PWR_20_o_AND_73_o5 : LUT6
    generic map(
      INIT => X"0000000000010000"
    )
    port map (
      I0 => reset_count_31_dff_16_21_Q,
      I1 => reset_count_31_dff_16_22_Q,
      I2 => reset_count_31_dff_16_23_Q,
      I3 => reset_count_31_dff_16_24_Q,
      I4 => GND_89_o_PWR_20_o_AND_73_o4_1596,
      I5 => reset_count_31_dff_16_25_Q,
      O => GND_89_o_PWR_20_o_AND_73_o5_1597
    );
  GND_89_o_PWR_20_o_AND_73_o6 : LUT6
    generic map(
      INIT => X"0000000000020000"
    )
    port map (
      I0 => GND_89_o_PWR_20_o_AND_73_o5_1597,
      I1 => reset_count_31_dff_16_26_Q,
      I2 => reset_count_31_dff_16_27_Q,
      I3 => reset_count_31_dff_16_28_Q,
      I4 => reset_count_31_dff_16_30_Q,
      I5 => reset_count_31_dff_16_29_Q,
      O => GND_89_o_PWR_20_o_AND_73_o6_1598
    );
  GND_89_o_PWR_20_o_AND_73_o7 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Mcompar_GND_89_o_rx_st_31_LessThan_9_o_cy_6_Q_1482,
      I1 => GND_89_o_PWR_20_o_AND_73_o6_1598,
      O => GND_89_o_PWR_20_o_AND_73_o
    );
  reg_state_FSM_FFd3_In_SW0 : LUT6
    generic map(
      INIT => X"2F0F0F0F20000000"
    )
    port map (
      I0 => cmd_type(2),
      I1 => cmd_type(0),
      I2 => reg_state_FSM_FFd2_1164,
      I3 => cmd_type(1),
      I4 => cmd_type(3),
      I5 => reg_state_FSM_FFd3_In11,
      O => N0
    );
  reg_state_FSM_FFd3_In : LUT6
    generic map(
      INIT => X"FFFFFFFFBB91AA80"
    )
    port map (
      I0 => reg_state_FSM_FFd4_1166,
      I1 => reg_state_FSM_FFd1_1163,
      I2 => DAC_BUSY,
      I3 => N0,
      I4 => reg_state_FSM_FFd2_1164,
      I5 => reg_state_FSM_FFd1_In2,
      O => reg_state_FSM_FFd3_In_1417
    );
  reg_state_FSM_FFd4_In2 : LUT6
    generic map(
      INIT => X"80AAAAAAD5FFFFFF"
    )
    port map (
      I0 => reg_state_FSM_FFd4_1166,
      I1 => cmd_type(0),
      I2 => cmd_type(2),
      I3 => cmd_type(3),
      I4 => cmd_type(1),
      I5 => reg_state_FSM_FFd1_1163,
      O => reg_state_FSM_FFd4_In2_1601
    );
  reg_state_FSM_FFd4_In3 : LUT5
    generic map(
      INIT => X"FFFFA888"
    )
    port map (
      I0 => reg_state_FSM_FFd2_1164,
      I1 => reg_state_FSM_FFd4_In2_1601,
      I2 => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_10_Q_1463,
      I3 => reg_state_FSM_FFd3_1165,
      I4 => reg_state_FSM_FFd4_In1_1600,
      O => reg_state_FSM_FFd4_In
    );
  reg_state_FSM_FFd2_In_SW0 : LUT5
    generic map(
      INIT => X"20202820"
    )
    port map (
      I0 => reg_state_FSM_FFd4_1166,
      I1 => cmd_type(0),
      I2 => cmd_type(1),
      I3 => cmd_type(2),
      I4 => SENDER_BUSY,
      O => N2
    );
  reg_state_FSM_FFd2_In : LUT6
    generic map(
      INIT => X"AAFA2AF02AF02AF0"
    )
    port map (
      I0 => reg_state_FSM_FFd2_1164,
      I1 => Mcompar_GND_89_o_wait_count_31_LessThan_131_o_cy_10_Q_1463,
      I2 => reg_state_FSM_FFd3_1165,
      I3 => reg_state_FSM_FFd1_1163,
      I4 => cmd_type(3),
      I5 => N2,
      O => reg_state_FSM_FFd2_In_1418
    );
  reg_state_FSM_FFd1_In_SW0 : LUT5
    generic map(
      INIT => X"08880080"
    )
    port map (
      I0 => reg_state_FSM_FFd2_1164,
      I1 => cmd_type(3),
      I2 => cmd_type(2),
      I3 => cmd_type(0),
      I4 => cmd_type(1),
      O => N4
    );
  reg_state_FSM_FFd1_In : LUT6
    generic map(
      INIT => X"FFFFFFFFAA80EECC"
    )
    port map (
      I0 => reg_state_FSM_FFd4_1166,
      I1 => reg_state_FSM_FFd1_1163,
      I2 => DAC_BUSY,
      I3 => N4,
      I4 => reg_state_FSM_FFd3_1165,
      I5 => reg_state_FSM_FFd1_In2,
      O => reg_state_FSM_FFd1_In_1419
    );
  Q_n0732_2_1_SW0 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => reg_state_FSM_FFd3_1165,
      I1 => cmd_reg_num(4),
      I2 => cmd_reg_num(3),
      I3 => cmd_reg_num(2),
      I4 => cmd_reg_num(1),
      I5 => cmd_reg_num(0),
      O => N6
    );
  Q_n0732_2_1 : LUT6
    generic map(
      INIT => X"FFFF7FFFFFFFFFFF"
    )
    port map (
      I0 => cmd_type(2),
      I1 => cmd_type(3),
      I2 => cmd_type(1),
      I3 => cmd_type(0),
      I4 => N6,
      I5 => reg_state_FSM_FFd4_1166,
      O => Q_n0732_2_1_1582
    );
  Q_n1476_inv_SW0 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => cmd_reg_num(1),
      I1 => cmd_reg_num(0),
      O => N8
    );
  Q_n1476_inv : LUT6
    generic map(
      INIT => X"00000002AAAAAAAA"
    )
    port map (
      I0 => Q_n0860_inv1,
      I1 => N8,
      I2 => cmd_reg_num(4),
      I3 => cmd_reg_num(3),
      I4 => cmd_reg_num(2),
      I5 => cmd_type(2),
      O => Q_n1476_inv_1338
    );
  Q_n0914_inv_SW0 : LUT4
    generic map(
      INIT => X"FF5E"
    )
    port map (
      I0 => reg_state_FSM_FFd4_1166,
      I1 => reg_state_FSM_FFd3_1165,
      I2 => reg_state_FSM_FFd1_1163,
      I3 => rx_st_rst_1319,
      O => N10
    );
  Q_n0914_inv : LUT6
    generic map(
      INIT => X"000800080008FFFF"
    )
    port map (
      I0 => Q_n0914_inv2,
      I1 => cmd_type(2),
      I2 => cmd_type(0),
      I3 => cmd_type(1),
      I4 => reg_state_FSM_FFd2_1164,
      I5 => N10,
      O => Q_n0914_inv_1343
    );
  Q_n1390_inv1 : LUT6
    generic map(
      INIT => X"8008000800080008"
    )
    port map (
      I0 => Q_n0914_inv2,
      I1 => cmd_type(1),
      I2 => cmd_type(0),
      I3 => cmd_type(2),
      I4 => Q_n1390_inv11,
      I5 => cmd_reg_num(2),
      O => Q_n1390_inv1_1607
    );
  Q_n1390_inv2 : LUT6
    generic map(
      INIT => X"FFFFFFFF00000001"
    )
    port map (
      I0 => reg_state_FSM_FFd1_1163,
      I1 => rx_st_rst_1319,
      I2 => reg_state_FSM_FFd2_1164,
      I3 => reg_state_FSM_FFd3_1165,
      I4 => reg_state_FSM_FFd4_1166,
      I5 => Q_n1390_inv1_1607,
      O => Q_n1390_inv
    );
  Q_n0860_inv_SW0 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => reg_state_FSM_FFd1_1163,
      I1 => reg_state_FSM_FFd3_1165,
      O => N12
    );
  Q_n0860_inv : LUT6
    generic map(
      INIT => X"222222222222222F"
    )
    port map (
      I0 => Q_n0860_inv1,
      I1 => cmd_type(2),
      I2 => reg_state_FSM_FFd2_1164,
      I3 => reg_state_FSM_FFd4_1166,
      I4 => rx_st_rst_1319,
      I5 => N12,
      O => Q_n0860_inv_1342
    );
  Mcompar_GND_89_o_rx_st_31_LessThan_9_o_lutdi1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => rx_st_3_Q,
      I1 => rx_st_2_Q,
      O => Mcompar_GND_89_o_rx_st_31_LessThan_9_o_lutdi
    );
  Mcompar_GND_89_o_rx_st_31_LessThan_9_o_lut_0_1 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => rx_st_2_Q,
      I1 => rx_st_3_Q,
      I2 => rx_st_1_Q,
      O => Mcompar_GND_89_o_rx_st_31_LessThan_9_o_lut_0_Q
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_count(1),
      O => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_1_rt_1609
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_count(2),
      O => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_2_rt_1610
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_count(3),
      O => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_3_rt_1611
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_count(4),
      O => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_4_rt_1612
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_count(5),
      O => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_5_rt_1613
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_count(6),
      O => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_6_rt_1614
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_count(7),
      O => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_7_rt_1615
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_count(8),
      O => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_8_rt_1616
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_count(9),
      O => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_9_rt_1617
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_count(10),
      O => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_10_rt_1618
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_count(11),
      O => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_11_rt_1619
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_count(12),
      O => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_12_rt_1620
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_count(13),
      O => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_13_rt_1621
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_count(14),
      O => Madd_wait_count_31_GND_89_o_add_131_OUT_cy_14_rt_1622
    );
  Mcount_bit_count_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bit_count(0),
      O => Mcount_bit_count_cy_0_rt_1623
    );
  Mcount_reset_count_31_dff_16_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => reset_count_31_dff_16_1_Q,
      O => Mcount_reset_count_31_dff_16_cy_1_rt_1624
    );
  Mcount_reset_count_31_dff_16_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => reset_count_31_dff_16_2_Q,
      O => Mcount_reset_count_31_dff_16_cy_2_rt_1625
    );
  Mcount_reset_count_31_dff_16_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => reset_count_31_dff_16_3_Q,
      O => Mcount_reset_count_31_dff_16_cy_3_rt_1626
    );
  Mcount_reset_count_31_dff_16_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => reset_count_31_dff_16_4_Q,
      O => Mcount_reset_count_31_dff_16_cy_4_rt_1627
    );
  Mcount_reset_count_31_dff_16_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => reset_count_31_dff_16_5_Q,
      O => Mcount_reset_count_31_dff_16_cy_5_rt_1628
    );
  Mcount_reset_count_31_dff_16_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => reset_count_31_dff_16_6_Q,
      O => Mcount_reset_count_31_dff_16_cy_6_rt_1629
    );
  Mcount_reset_count_31_dff_16_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => reset_count_31_dff_16_7_Q,
      O => Mcount_reset_count_31_dff_16_cy_7_rt_1630
    );
  Mcount_reset_count_31_dff_16_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => reset_count_31_dff_16_8_Q,
      O => Mcount_reset_count_31_dff_16_cy_8_rt_1631
    );
  Mcount_reset_count_31_dff_16_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => reset_count_31_dff_16_9_Q,
      O => Mcount_reset_count_31_dff_16_cy_9_rt_1632
    );
  Mcount_reset_count_31_dff_16_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => reset_count_31_dff_16_10_Q,
      O => Mcount_reset_count_31_dff_16_cy_10_rt_1633
    );
  Mcount_reset_count_31_dff_16_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => reset_count_31_dff_16_11_Q,
      O => Mcount_reset_count_31_dff_16_cy_11_rt_1634
    );
  Mcount_reset_count_31_dff_16_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => reset_count_31_dff_16_12_Q,
      O => Mcount_reset_count_31_dff_16_cy_12_rt_1635
    );
  Mcount_reset_count_31_dff_16_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => reset_count_31_dff_16_13_Q,
      O => Mcount_reset_count_31_dff_16_cy_13_rt_1636
    );
  Mcount_reset_count_31_dff_16_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => reset_count_31_dff_16_14_Q,
      O => Mcount_reset_count_31_dff_16_cy_14_rt_1637
    );
  Mcount_reset_count_31_dff_16_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => reset_count_31_dff_16_15_Q,
      O => Mcount_reset_count_31_dff_16_cy_15_rt_1638
    );
  Mcount_reset_count_31_dff_16_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => reset_count_31_dff_16_16_Q,
      O => Mcount_reset_count_31_dff_16_cy_16_rt_1639
    );
  Mcount_reset_count_31_dff_16_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => reset_count_31_dff_16_17_Q,
      O => Mcount_reset_count_31_dff_16_cy_17_rt_1640
    );
  Mcount_reset_count_31_dff_16_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => reset_count_31_dff_16_18_Q,
      O => Mcount_reset_count_31_dff_16_cy_18_rt_1641
    );
  Mcount_reset_count_31_dff_16_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => reset_count_31_dff_16_19_Q,
      O => Mcount_reset_count_31_dff_16_cy_19_rt_1642
    );
  Mcount_reset_count_31_dff_16_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => reset_count_31_dff_16_20_Q,
      O => Mcount_reset_count_31_dff_16_cy_20_rt_1643
    );
  Mcount_reset_count_31_dff_16_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => reset_count_31_dff_16_21_Q,
      O => Mcount_reset_count_31_dff_16_cy_21_rt_1644
    );
  Mcount_reset_count_31_dff_16_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => reset_count_31_dff_16_22_Q,
      O => Mcount_reset_count_31_dff_16_cy_22_rt_1645
    );
  Mcount_reset_count_31_dff_16_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => reset_count_31_dff_16_23_Q,
      O => Mcount_reset_count_31_dff_16_cy_23_rt_1646
    );
  Mcount_reset_count_31_dff_16_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => reset_count_31_dff_16_24_Q,
      O => Mcount_reset_count_31_dff_16_cy_24_rt_1647
    );
  Mcount_reset_count_31_dff_16_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => reset_count_31_dff_16_25_Q,
      O => Mcount_reset_count_31_dff_16_cy_25_rt_1648
    );
  Mcount_reset_count_31_dff_16_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => reset_count_31_dff_16_26_Q,
      O => Mcount_reset_count_31_dff_16_cy_26_rt_1649
    );
  Mcount_reset_count_31_dff_16_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => reset_count_31_dff_16_27_Q,
      O => Mcount_reset_count_31_dff_16_cy_27_rt_1650
    );
  Mcount_reset_count_31_dff_16_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => reset_count_31_dff_16_28_Q,
      O => Mcount_reset_count_31_dff_16_cy_28_rt_1651
    );
  Mcount_reset_count_31_dff_16_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => reset_count_31_dff_16_29_Q,
      O => Mcount_reset_count_31_dff_16_cy_29_rt_1652
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_xor_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_count(15),
      O => Madd_wait_count_31_GND_89_o_add_131_OUT_xor_15_rt_1653
    );
  Mcount_reset_count_31_dff_16_xor_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => reset_count_31_dff_16_30_Q,
      O => Mcount_reset_count_31_dff_16_xor_30_rt_1654
    );
  OUTPUT_REG_0_0 : FDP
    port map (
      C => CLK,
      D => OUTPUT_REG_0_0_rstpot_1655,
      PRE => rx_st_rst_1319,
      Q => NlwRenamedSig_OI_OUTPUT_REG_0_0
    );
  rd_en_w8r32 : FD
    port map (
      C => CLK,
      D => rd_en_w8r32_rstpot_1656,
      Q => rd_en_w8r32_774
    );
  TX_UPDATE_1993 : FD
    port map (
      C => CLK,
      D => TX_UPDATE_rstpot_1657,
      Q => NlwRenamedSig_OI_TX_UPDATE
    );
  DAC_UPDATE_1994 : FD
    port map (
      C => CLK,
      D => DAC_UPDATE_rstpot_1658,
      Q => NlwRenamedSig_OI_DAC_UPDATE
    );
  rx_reset4_SW0 : LUT5
    generic map(
      INIT => X"00000008"
    )
    port map (
      I0 => internal_data(19),
      I1 => internal_data(18),
      I2 => internal_data(26),
      I3 => internal_data(24),
      I4 => internal_data(22),
      O => N14
    );
  rx_reset6 : LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
    port map (
      I0 => rx_st_rst_1319,
      I1 => rx_reset1_1583,
      I2 => N14,
      I3 => rx_reset5_1586,
      I4 => rx_reset2_1584,
      I5 => rx_reset3_1585,
      O => rx_reset
    );
  rd_en_w8r32_rstpot : LUT6
    generic map(
      INIT => X"AAAAAAA8AAA8AAB8"
    )
    port map (
      I0 => rd_en_w8r32_774,
      I1 => reg_state_FSM_FFd1_1163,
      I2 => reg_state_FSM_FFd3_1165,
      I3 => rx_st_rst_1319,
      I4 => reg_state_FSM_FFd2_1164,
      I5 => reg_state_FSM_FFd4_1166,
      O => rd_en_w8r32_rstpot_1656
    );
  OUTPUT_REG_0_0_rstpot : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => Q_n0736_inv,
      I1 => NlwRenamedSig_OI_OUTPUT_REG_0_0,
      I2 => reg_state_FSM_FFd2_1164,
      I3 => cmd_data(0),
      O => OUTPUT_REG_0_0_rstpot_1655
    );
  reg_state_FSM_FFd4_In1 : LUT6
    generic map(
      INIT => X"A8A8A8E8A9A9A9E9"
    )
    port map (
      I0 => reg_state_FSM_FFd4_1166,
      I1 => reg_state_FSM_FFd1_1163,
      I2 => reg_state_FSM_FFd3_1165,
      I3 => TX_BUSY,
      I4 => reg_state_FSM_FFd2_1164,
      I5 => fifo_empty_w8r32,
      O => reg_state_FSM_FFd4_In1_1600
    );
  Q_n06131 : LUT3
    generic map(
      INIT => X"54"
    )
    port map (
      I0 => Mcompar_GND_89_o_rx_st_31_LessThan_9_o_cy_6_Q_1482,
      I1 => reset_count_31_dff_16_30_Q,
      I2 => Mcompar_rx_st_31_GND_89_o_LessThan_11_o_cy_6_Q_1472,
      O => Q_n0613
    );
  Mmux_OUTPUT_REG_1_15_GND_89_o_mux_96_OUT151 : LUT5
    generic map(
      INIT => X"A2AAAAAA"
    )
    port map (
      I0 => cmd_data(8),
      I1 => cmd_type(0),
      I2 => cmd_type(2),
      I3 => cmd_type(1),
      I4 => cmd_type(3),
      O => OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_8_Q
    );
  Mmux_OUTPUT_REG_1_15_GND_89_o_mux_96_OUT161 : LUT5
    generic map(
      INIT => X"A2AAAAAA"
    )
    port map (
      I0 => cmd_data(9),
      I1 => cmd_type(0),
      I2 => cmd_type(2),
      I3 => cmd_type(1),
      I4 => cmd_type(3),
      O => OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_9_Q
    );
  Mmux_OUTPUT_REG_1_15_GND_89_o_mux_96_OUT21 : LUT5
    generic map(
      INIT => X"A2AAAAAA"
    )
    port map (
      I0 => cmd_data(10),
      I1 => cmd_type(0),
      I2 => cmd_type(2),
      I3 => cmd_type(1),
      I4 => cmd_type(3),
      O => OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_10_Q
    );
  Mmux_OUTPUT_REG_1_15_GND_89_o_mux_96_OUT31 : LUT5
    generic map(
      INIT => X"A2AAAAAA"
    )
    port map (
      I0 => cmd_data(11),
      I1 => cmd_type(0),
      I2 => cmd_type(2),
      I3 => cmd_type(1),
      I4 => cmd_type(3),
      O => OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_11_Q
    );
  Mmux_OUTPUT_REG_1_15_GND_89_o_mux_96_OUT41 : LUT5
    generic map(
      INIT => X"A2AAAAAA"
    )
    port map (
      I0 => cmd_data(12),
      I1 => cmd_type(0),
      I2 => cmd_type(2),
      I3 => cmd_type(1),
      I4 => cmd_type(3),
      O => OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_12_Q
    );
  Mmux_OUTPUT_REG_1_15_GND_89_o_mux_96_OUT51 : LUT5
    generic map(
      INIT => X"A2AAAAAA"
    )
    port map (
      I0 => cmd_data(13),
      I1 => cmd_type(0),
      I2 => cmd_type(2),
      I3 => cmd_type(1),
      I4 => cmd_type(3),
      O => OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_13_Q
    );
  Mmux_OUTPUT_REG_1_15_GND_89_o_mux_96_OUT61 : LUT5
    generic map(
      INIT => X"A2AAAAAA"
    )
    port map (
      I0 => cmd_data(14),
      I1 => cmd_type(0),
      I2 => cmd_type(2),
      I3 => cmd_type(1),
      I4 => cmd_type(3),
      O => OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_14_Q
    );
  Mmux_OUTPUT_REG_1_15_GND_89_o_mux_96_OUT71 : LUT5
    generic map(
      INIT => X"A2AAAAAA"
    )
    port map (
      I0 => cmd_data(15),
      I1 => cmd_type(0),
      I2 => cmd_type(2),
      I3 => cmd_type(1),
      I4 => cmd_type(3),
      O => OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_15_Q
    );
  Mmux_OUTPUT_REG_1_15_GND_89_o_mux_96_OUT15 : LUT6
    generic map(
      INIT => X"AAEAAAAAAA2AAAAA"
    )
    port map (
      I0 => cmd_data(0),
      I1 => cmd_type(0),
      I2 => cmd_type(1),
      I3 => cmd_type(2),
      I4 => cmd_type(3),
      I5 => cmd_reg_num(0),
      O => OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_0_Q
    );
  Mmux_OUTPUT_REG_1_15_GND_89_o_mux_96_OUT101 : LUT6
    generic map(
      INIT => X"AAEAAAAAAA2AAAAA"
    )
    port map (
      I0 => cmd_data(3),
      I1 => cmd_type(0),
      I2 => cmd_type(1),
      I3 => cmd_type(2),
      I4 => cmd_type(3),
      I5 => cmd_reg_num(3),
      O => OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_3_Q
    );
  Mmux_OUTPUT_REG_1_15_GND_89_o_mux_96_OUT111 : LUT6
    generic map(
      INIT => X"AAEAAAAAAA2AAAAA"
    )
    port map (
      I0 => cmd_data(4),
      I1 => cmd_type(0),
      I2 => cmd_type(1),
      I3 => cmd_type(2),
      I4 => cmd_type(3),
      I5 => cmd_reg_num(4),
      O => OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_4_Q
    );
  Mmux_OUTPUT_REG_1_15_GND_89_o_mux_96_OUT121 : LUT6
    generic map(
      INIT => X"AAEAAAAAAA2AAAAA"
    )
    port map (
      I0 => cmd_data(5),
      I1 => cmd_type(0),
      I2 => cmd_type(1),
      I3 => cmd_type(2),
      I4 => cmd_type(3),
      I5 => cmd_reg_num(5),
      O => OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_5_Q
    );
  Mmux_OUTPUT_REG_1_15_GND_89_o_mux_96_OUT131 : LUT6
    generic map(
      INIT => X"AAEAAAAAAA2AAAAA"
    )
    port map (
      I0 => cmd_data(6),
      I1 => cmd_type(0),
      I2 => cmd_type(1),
      I3 => cmd_type(2),
      I4 => cmd_type(3),
      I5 => cmd_reg_num(6),
      O => OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_6_Q
    );
  Mmux_OUTPUT_REG_1_15_GND_89_o_mux_96_OUT141 : LUT6
    generic map(
      INIT => X"AAEAAAAAAA2AAAAA"
    )
    port map (
      I0 => cmd_data(7),
      I1 => cmd_type(0),
      I2 => cmd_type(1),
      I3 => cmd_type(2),
      I4 => cmd_type(3),
      I5 => cmd_reg_num(7),
      O => OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_7_Q
    );
  Mmux_OUTPUT_REG_1_15_GND_89_o_mux_96_OUT81 : LUT6
    generic map(
      INIT => X"AAEAAAAAAA2AAAAA"
    )
    port map (
      I0 => cmd_data(1),
      I1 => cmd_type(0),
      I2 => cmd_type(1),
      I3 => cmd_type(2),
      I4 => cmd_type(3),
      I5 => cmd_reg_num(1),
      O => OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_1_Q
    );
  Mmux_OUTPUT_REG_1_15_GND_89_o_mux_96_OUT91 : LUT6
    generic map(
      INIT => X"AAEAAAAAAA2AAAAA"
    )
    port map (
      I0 => cmd_data(2),
      I1 => cmd_type(0),
      I2 => cmd_type(1),
      I3 => cmd_type(2),
      I4 => cmd_type(3),
      I5 => cmd_reg_num(2),
      O => OUTPUT_REG_1_15_GND_89_o_mux_96_OUT_2_Q
    );
  Q_n1588_inv2 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => cmd_type(2),
      I1 => cmd_type(0),
      I2 => cmd_type(1),
      I3 => Q_n0914_inv2,
      O => Q_n1588_inv
    );
  Q_n1079_inv11 : LUT5
    generic map(
      INIT => X"40000000"
    )
    port map (
      I0 => cmd_reg_num(4),
      I1 => cmd_type(2),
      I2 => cmd_type(0),
      I3 => cmd_type(1),
      I4 => Q_n0914_inv2,
      O => Q_n1079_inv1_1578
    );
  Q_n1504_inv1 : LUT6
    generic map(
      INIT => X"0080008080800080"
    )
    port map (
      I0 => cmd_type(0),
      I1 => cmd_type(1),
      I2 => Q_n0914_inv2,
      I3 => cmd_type(2),
      I4 => Q_n1390_inv11,
      I5 => cmd_reg_num(2),
      O => Q_n1504_inv
    );
  TX_UPDATE_rstpot : LUT4
    generic map(
      INIT => X"7520"
    )
    port map (
      I0 => Q_n0860_inv_1342,
      I1 => reg_state_FSM_FFd3_1165,
      I2 => reg_state_FSM_FFd1_1163,
      I3 => NlwRenamedSig_OI_TX_UPDATE,
      O => TX_UPDATE_rstpot_1657
    );
  DAC_UPDATE_rstpot : LUT4
    generic map(
      INIT => X"7520"
    )
    port map (
      I0 => Q_n0914_inv_1343,
      I1 => reg_state_FSM_FFd3_1165,
      I2 => reg_state_FSM_FFd1_1163,
      I3 => NlwRenamedSig_OI_DAC_UPDATE,
      O => DAC_UPDATE_rstpot_1658
    );
  rx_st_rst_G : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => rx_st_10_Q,
      I1 => GND_89_o_PWR_20_o_AND_74_o,
      I2 => GND_89_o_PWR_20_o_AND_73_o,
      O => rx_st_rst_G_1660
    );
  rx_st_rst_D : LUT3
    generic map(
      INIT => X"54"
    )
    port map (
      I0 => GND_89_o_PWR_20_o_AND_74_o,
      I1 => GND_89_o_PWR_20_o_AND_73_o,
      I2 => rx_st_10_Q,
      O => rx_st_rst_D_1661
    );
  rx_st_rst : LD
    port map (
      D => rx_st_rst_D_1661,
      G => rx_st_rst_G_1660,
      Q => rx_st_rst_1319
    );
  Madd_wait_count_31_GND_89_o_add_131_OUT_lut_0_INV_0 : INV
    port map (
      I => wait_count(0),
      O => Madd_wait_count_31_GND_89_o_add_131_OUT_lut_0_Q
    );
  Mcount_bit_count_lut_1_INV_0 : INV
    port map (
      I => bit_count(1),
      O => Mcount_bit_count_lut(1)
    );
  Mcount_bit_count_lut_2_INV_0 : INV
    port map (
      I => bit_count(2),
      O => Mcount_bit_count_lut(2)
    );
  Mcount_bit_count_lut_3_INV_0 : INV
    port map (
      I => bit_count(3),
      O => Mcount_bit_count_lut(3)
    );
  Mcount_bit_count_lut_4_INV_0 : INV
    port map (
      I => bit_count(4),
      O => Mcount_bit_count_lut(4)
    );
  Mcount_bit_count_lut_5_INV_0 : INV
    port map (
      I => bit_count(5),
      O => Mcount_bit_count_lut(5)
    );
  Mcount_bit_count_lut_6_INV_0 : INV
    port map (
      I => bit_count(6),
      O => Mcount_bit_count_lut(6)
    );
  Mcount_bit_count_lut_7_INV_0 : INV
    port map (
      I => bit_count(7),
      O => Mcount_bit_count_lut(7)
    );
  Mcount_bit_count_lut_8_INV_0 : INV
    port map (
      I => bit_count(8),
      O => Mcount_bit_count_lut(8)
    );
  Mcount_bit_count_lut_9_INV_0 : INV
    port map (
      I => bit_count(9),
      O => Mcount_bit_count_lut(9)
    );
  Mcount_bit_count_lut_10_INV_0 : INV
    port map (
      I => bit_count(10),
      O => Mcount_bit_count_lut(10)
    );
  Mcount_bit_count_lut_11_INV_0 : INV
    port map (
      I => bit_count(11),
      O => Mcount_bit_count_lut(11)
    );
  Mcount_bit_count_lut_12_INV_0 : INV
    port map (
      I => bit_count(12),
      O => Mcount_bit_count_lut(12)
    );
  Mcount_bit_count_lut_13_INV_0 : INV
    port map (
      I => bit_count(13),
      O => Mcount_bit_count_lut(13)
    );
  Mcount_bit_count_lut_14_INV_0 : INV
    port map (
      I => bit_count(14),
      O => Mcount_bit_count_lut(14)
    );
  Mcount_bit_count_lut_15_INV_0 : INV
    port map (
      I => bit_count(15),
      O => Mcount_bit_count_lut(15)
    );
  Mcount_bit_count_lut_16_INV_0 : INV
    port map (
      I => bit_count(16),
      O => Mcount_bit_count_lut(16)
    );
  Mcount_bit_count_lut_17_INV_0 : INV
    port map (
      I => bit_count(17),
      O => Mcount_bit_count_lut(17)
    );
  Mcount_bit_count_lut_18_INV_0 : INV
    port map (
      I => bit_count(18),
      O => Mcount_bit_count_lut(18)
    );
  Mcount_bit_count_lut_19_INV_0 : INV
    port map (
      I => bit_count(19),
      O => Mcount_bit_count_lut(19)
    );
  Mcount_bit_count_lut_20_INV_0 : INV
    port map (
      I => bit_count(20),
      O => Mcount_bit_count_lut(20)
    );
  Mcount_bit_count_lut_21_INV_0 : INV
    port map (
      I => bit_count(21),
      O => Mcount_bit_count_lut(21)
    );
  Mcount_bit_count_lut_22_INV_0 : INV
    port map (
      I => bit_count(22),
      O => Mcount_bit_count_lut(22)
    );
  Mcount_bit_count_lut_23_INV_0 : INV
    port map (
      I => bit_count(23),
      O => Mcount_bit_count_lut(23)
    );
  Mcount_bit_count_lut_24_INV_0 : INV
    port map (
      I => bit_count(24),
      O => Mcount_bit_count_lut(24)
    );
  Mcount_bit_count_lut_25_INV_0 : INV
    port map (
      I => bit_count(25),
      O => Mcount_bit_count_lut(25)
    );
  Mcount_bit_count_lut_26_INV_0 : INV
    port map (
      I => bit_count(26),
      O => Mcount_bit_count_lut(26)
    );
  Mcount_bit_count_lut_27_INV_0 : INV
    port map (
      I => bit_count(27),
      O => Mcount_bit_count_lut(27)
    );
  Mcount_bit_count_lut_28_INV_0 : INV
    port map (
      I => bit_count(28),
      O => Mcount_bit_count_lut(28)
    );
  Mcount_bit_count_lut_29_INV_0 : INV
    port map (
      I => bit_count(29),
      O => Mcount_bit_count_lut(29)
    );
  Mcount_bit_count_lut_30_INV_0 : INV
    port map (
      I => bit_count(30),
      O => Mcount_bit_count_lut(30)
    );
  Mcount_bit_count_lut_31_INV_0 : INV
    port map (
      I => bit_count(31),
      O => Mcount_bit_count_lut(31)
    );
  Mcount_reset_count_31_dff_16_lut_0_INV_0 : INV
    port map (
      I => reset_count_31_dff_16_0_Q,
      O => Mcount_reset_count_31_dff_16_lut_0_Q
    );
  fifo_empty_w1r8_INV_69_o1_INV_0 : INV
    port map (
      I => fifo_empty_w1r8,
      O => fifo_empty_w1r8_INV_69_o
    );
  UPDATE_inv1_INV_0 : INV
    port map (
      I => UPDATE,
      O => UPDATE_inv
    );
  rx_st_rst_inv1_INV_0 : INV
    port map (
      I => rx_st_rst_1319,
      O => rx_st_rst_inv
    );
  DATA_CLK_inv1_INV_0 : INV
    port map (
      I => DATA_CLK,
      O => DATA_CLK_inv
    );
  GND_89_o_PWR_20_o_AND_74_o1_INV_0 : INV
    port map (
      I => Mcompar_GND_89_o_rx_st_31_LessThan_9_o_cy_6_Q_1482,
      O => GND_89_o_PWR_20_o_AND_74_o
    );
  Mshreg_wr_en_w8r32_2 : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => NlwRenamedSig_OI_RB_EN,
      A1 => rx_st_10_Q,
      A2 => rx_st_10_Q,
      A3 => rx_st_10_Q,
      CE => rx_st_rst_inv,
      CLK => CLK,
      D => fifo_empty_w1r8_INV_69_o,
      Q => Mshreg_wr_en_w8r32_2_1662,
      Q15 => NLW_Mshreg_wr_en_w8r32_2_Q15_UNCONNECTED
    );
  wr_en_w8r32_2 : FDE
    port map (
      C => CLK,
      CE => rx_st_rst_inv,
      D => Mshreg_wr_en_w8r32_2_1662,
      Q => wr_en_w8r32(2)
    );
  MAS_DC_RX_FIFO_W1R8 : CMD_FIFO_w1r8
    port map (
      rst => rx_reset,
      wr_clk => DATA_CLK,
      rd_clk => CLK,
      wr_en => fifo_wr_en_w1_r8_1171,
      rd_en => NlwRenamedSig_OI_RB_EN,
      full => NLW_MAS_DC_RX_FIFO_W1R8_full_UNCONNECTED,
      empty => fifo_empty_w1r8,
      din(0) => internal_data(0),
      dout(7) => fifo_dout_w1r8(7),
      dout(6) => fifo_dout_w1r8(6),
      dout(5) => fifo_dout_w1r8(5),
      dout(4) => fifo_dout_w1r8(4),
      dout(3) => fifo_dout_w1r8(3),
      dout(2) => fifo_dout_w1r8(2),
      dout(1) => fifo_dout_w1r8(1),
      dout(0) => fifo_dout_w1r8(0)
    );
  MAS_DC_RX_FIFO_W8R32 : CMD_FIFO_w8r32
    port map (
      rst => rx_reset,
      wr_clk => CLK,
      rd_clk => CLK,
      wr_en => wr_en_w8r32(2),
      rd_en => rd_en_w8r32_774,
      full => NLW_MAS_DC_RX_FIFO_W8R32_full_UNCONNECTED,
      empty => fifo_empty_w8r32,
      din(7) => fifo_dout_w1r8(7),
      din(6) => fifo_dout_w1r8(6),
      din(5) => fifo_dout_w1r8(5),
      din(4) => fifo_dout_w1r8(4),
      din(3) => fifo_dout_w1r8(3),
      din(2) => fifo_dout_w1r8(2),
      din(1) => fifo_dout_w1r8(1),
      din(0) => fifo_dout_w1r8(0),
      dout(31) => NLW_MAS_DC_RX_FIFO_W8R32_dout_31_UNCONNECTED,
      dout(30) => NLW_MAS_DC_RX_FIFO_W8R32_dout_30_UNCONNECTED,
      dout(29) => NLW_MAS_DC_RX_FIFO_W8R32_dout_29_UNCONNECTED,
      dout(28) => NLW_MAS_DC_RX_FIFO_W8R32_dout_28_UNCONNECTED,
      dout(27) => fifo_dout_w8r32(27),
      dout(26) => fifo_dout_w8r32(26),
      dout(25) => fifo_dout_w8r32(25),
      dout(24) => fifo_dout_w8r32(24),
      dout(23) => fifo_dout_w8r32(23),
      dout(22) => fifo_dout_w8r32(22),
      dout(21) => fifo_dout_w8r32(21),
      dout(20) => fifo_dout_w8r32(20),
      dout(19) => fifo_dout_w8r32(19),
      dout(18) => fifo_dout_w8r32(18),
      dout(17) => fifo_dout_w8r32(17),
      dout(16) => fifo_dout_w8r32(16),
      dout(15) => fifo_dout_w8r32(15),
      dout(14) => fifo_dout_w8r32(14),
      dout(13) => fifo_dout_w8r32(13),
      dout(12) => fifo_dout_w8r32(12),
      dout(11) => fifo_dout_w8r32(11),
      dout(10) => fifo_dout_w8r32(10),
      dout(9) => fifo_dout_w8r32(9),
      dout(8) => fifo_dout_w8r32(8),
      dout(7) => fifo_dout_w8r32(7),
      dout(6) => fifo_dout_w8r32(6),
      dout(5) => fifo_dout_w8r32(5),
      dout(4) => fifo_dout_w8r32(4),
      dout(3) => fifo_dout_w8r32(3),
      dout(2) => fifo_dout_w8r32(2),
      dout(1) => fifo_dout_w8r32(1),
      dout(0) => fifo_dout_w8r32(0)
    );

end Structure;

-- synthesis translate_on

-- synthesis translate_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity DC_COMM_PARSER_DC_COMM_PARSER is
  port (
    CLK : in STD_LOGIC := 'X'; 
    SEND : in STD_LOGIC := 'X'; 
    TRIGGER : in STD_LOGIC := 'X'; 
    OOPS_RESET : in STD_LOGIC := 'X'; 
    MAS_DC_DATA_CLK : in STD_LOGIC := 'X'; 
    MAS_DC_RX : in STD_LOGIC := 'X'; 
    MAS_DC_DATA_IN : in STD_LOGIC := 'X'; 
    DC_DC_RX : in STD_LOGIC := 'X'; 
    DC_DC_DATA_IN : in STD_LOGIC := 'X'; 
    READOUT_BUSY : in STD_LOGIC := 'X'; 
    ASIC_BUSY : in STD_LOGIC := 'X'; 
    DUMP_BUSY : in STD_LOGIC := 'X'; 
    MPPC_DAC_BUSY : in STD_LOGIC := 'X'; 
    wave_fifo_clk : in STD_LOGIC := 'X'; 
    wave_fifo_wr_en : in STD_LOGIC := 'X'; 
    wave_fifo_reset : in STD_LOGIC := 'X'; 
    DC_MAS_TX : out STD_LOGIC; 
    DC_MAS_DATA_OUT : out STD_LOGIC; 
    DC_DC_DATA_CLK : out STD_LOGIC; 
    DC_DC_TX : out STD_LOGIC; 
    DC_DC_DATA_OUT : out STD_LOGIC; 
    TX_BUSY : out STD_LOGIC; 
    TX_UPDATE : out STD_LOGIC; 
    DAC_UPDATE : out STD_LOGIC; 
    wave_fifo_full : out STD_LOGIC; 
    DC_ADDR : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    RB_REG_VALUE : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    wave_fifo_data : in STD_LOGIC_VECTOR ( 31 downto 0 ); 
    RB_REG_NUM : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    OUTPUT_REGISTERS : out STD_LOGIC_VECTOR2 ( 19 downto 0 , 15 downto 0 ) 
  );
end DC_COMM_PARSER_DC_COMM_PARSER;

architecture Structure of DC_COMM_PARSER_DC_COMM_PARSER is
  component RX_ADDR_CHECKER
    port (
      CLK : in STD_LOGIC := 'X'; 
      DATA_CLK : in STD_LOGIC := 'X'; 
      DATA_IN : in STD_LOGIC := 'X'; 
      UPDATE : in STD_LOGIC := 'X'; 
      TX_BUSY : in STD_LOGIC := 'X'; 
      DAC_BUSY : in STD_LOGIC := 'X'; 
      SENDER_BUSY : in STD_LOGIC := 'X'; 
      READOUT_BUSY : in STD_LOGIC := 'X'; 
      OOPS_RESET : in STD_LOGIC := 'X'; 
      TX_UPDATE : out STD_LOGIC; 
      DAC_UPDATE : out STD_LOGIC; 
      RB_EN : out STD_LOGIC; 
      DC_ADDR : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
      RB_REG_NUM : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
      OUTPUT_REG : out STD_LOGIC_VECTOR2 ( 19 downto 0 , 15 downto 0 ) 
    );
  end component;
  component TX_DATA_SENDER
    port (
      CLK : in STD_LOGIC := 'X'; 
      DATA_CLK : in STD_LOGIC := 'X'; 
      DC_DC_RX : in STD_LOGIC := 'X'; 
      XFER_BUSY : in STD_LOGIC := 'X'; 
      DUMP_BUSY : in STD_LOGIC := 'X'; 
      TRIGGER : in STD_LOGIC := 'X'; 
      RB_EN : in STD_LOGIC := 'X'; 
      SEND : in STD_LOGIC := 'X'; 
      wave_fifo_clk : in STD_LOGIC := 'X'; 
      wave_fifo_wr_en : in STD_LOGIC := 'X'; 
      wave_fifo_reset : in STD_LOGIC := 'X'; 
      OOPS_RESET : in STD_LOGIC := 'X'; 
      wave_fifo_full : out STD_LOGIC; 
      TX_SENDER_BUSY : out STD_LOGIC; 
      DATA_OUT : out STD_LOGIC; 
      TX : out STD_LOGIC; 
      DC_ADDR : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
      RB_REG_VALUE : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
      RB_REG_NUM : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
      wave_fifo_data : in STD_LOGIC_VECTOR ( 31 downto 0 ) 
    );
  end component;
  signal NlwRenamedSignal_DC_DC_DATA_CLK : STD_LOGIC; 
  signal internal_rb_reg_en : STD_LOGIC; 
  signal NlwRenamedSig_OI_TX_BUSY : STD_LOGIC; 
  signal internal_data_out : STD_LOGIC; 
  signal internal_tx : STD_LOGIC; 
  signal internal_dc_rx_internal_tx_MUX_135_o : STD_LOGIC; 
  signal internal_dc_din_internal_data_out_MUX_136_o : STD_LOGIC; 
  signal internal_dc_dc_dout_2349 : STD_LOGIC; 
  signal internal_dc_dc_tx_2352 : STD_LOGIC; 
  signal internal_xfer_busy : STD_LOGIC; 
  signal NLW_TX_Sender_DUMP_BUSY_UNCONNECTED : STD_LOGIC; 
  signal NLW_TX_Sender_TRIGGER_UNCONNECTED : STD_LOGIC; 
  signal NLW_TX_Sender_SEND_UNCONNECTED : STD_LOGIC; 
  signal NLW_TX_Sender_wave_fifo_reset_UNCONNECTED : STD_LOGIC; 
  signal NLW_RX_ADDR_CHECK_READOUT_BUSY_UNCONNECTED : STD_LOGIC; 
  signal NlwRenamedSig_OI_RB_REG_NUM : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  NlwRenamedSignal_DC_DC_DATA_CLK <= MAS_DC_DATA_CLK;
  RB_REG_NUM(7) <= NlwRenamedSig_OI_RB_REG_NUM(7);
  RB_REG_NUM(6) <= NlwRenamedSig_OI_RB_REG_NUM(6);
  RB_REG_NUM(5) <= NlwRenamedSig_OI_RB_REG_NUM(5);
  RB_REG_NUM(4) <= NlwRenamedSig_OI_RB_REG_NUM(4);
  RB_REG_NUM(3) <= NlwRenamedSig_OI_RB_REG_NUM(3);
  RB_REG_NUM(2) <= NlwRenamedSig_OI_RB_REG_NUM(2);
  RB_REG_NUM(1) <= NlwRenamedSig_OI_RB_REG_NUM(1);
  RB_REG_NUM(0) <= NlwRenamedSig_OI_RB_REG_NUM(0);
  DC_DC_DATA_CLK <= NlwRenamedSignal_DC_DC_DATA_CLK;
  TX_BUSY <= NlwRenamedSig_OI_TX_BUSY;
  internal_dc_dc_dout : FD_1
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_DC_DC_DATA_CLK,
      D => MAS_DC_DATA_IN,
      Q => internal_dc_dc_dout_2349
    );
  internal_dc_dc_tx : FD_1
    generic map(
      INIT => '0'
    )
    port map (
      C => NlwRenamedSignal_DC_DC_DATA_CLK,
      D => MAS_DC_RX,
      Q => internal_dc_dc_tx_2352
    );
  DC_DC_TX_1148 : FDR
    port map (
      C => NlwRenamedSignal_DC_DC_DATA_CLK,
      D => internal_dc_dc_tx_2352,
      R => NlwRenamedSig_OI_TX_BUSY,
      Q => DC_DC_TX
    );
  DC_DC_DATA_OUT_1149 : FDS
    port map (
      C => NlwRenamedSignal_DC_DC_DATA_CLK,
      D => internal_dc_dc_dout_2349,
      S => NlwRenamedSig_OI_TX_BUSY,
      Q => DC_DC_DATA_OUT
    );
  DC_MAS_TX_1150 : FD
    port map (
      C => NlwRenamedSignal_DC_DC_DATA_CLK,
      D => internal_dc_rx_internal_tx_MUX_135_o,
      Q => DC_MAS_TX
    );
  DC_MAS_DATA_OUT_1151 : FD
    port map (
      C => NlwRenamedSignal_DC_DC_DATA_CLK,
      D => internal_dc_din_internal_data_out_MUX_136_o,
      Q => DC_MAS_DATA_OUT
    );
  RX_ADDR_CHECK : RX_ADDR_CHECKER
    port map (
      CLK => CLK,
      DATA_CLK => NlwRenamedSignal_DC_DC_DATA_CLK,
      DATA_IN => MAS_DC_DATA_IN,
      UPDATE => MAS_DC_RX,
      TX_BUSY => ASIC_BUSY,
      DAC_BUSY => MPPC_DAC_BUSY,
      SENDER_BUSY => NlwRenamedSig_OI_TX_BUSY,
      READOUT_BUSY => NLW_RX_ADDR_CHECK_READOUT_BUSY_UNCONNECTED,
      OOPS_RESET => OOPS_RESET,
      TX_UPDATE => TX_UPDATE,
      DAC_UPDATE => DAC_UPDATE,
      RB_EN => internal_rb_reg_en,
      DC_ADDR(3) => DC_ADDR(3),
      DC_ADDR(2) => DC_ADDR(2),
      DC_ADDR(1) => DC_ADDR(1),
      DC_ADDR(0) => DC_ADDR(0),
      RB_REG_NUM(7) => NlwRenamedSig_OI_RB_REG_NUM(7),
      RB_REG_NUM(6) => NlwRenamedSig_OI_RB_REG_NUM(6),
      RB_REG_NUM(5) => NlwRenamedSig_OI_RB_REG_NUM(5),
      RB_REG_NUM(4) => NlwRenamedSig_OI_RB_REG_NUM(4),
      RB_REG_NUM(3) => NlwRenamedSig_OI_RB_REG_NUM(3),
      RB_REG_NUM(2) => NlwRenamedSig_OI_RB_REG_NUM(2),
      RB_REG_NUM(1) => NlwRenamedSig_OI_RB_REG_NUM(1),
      RB_REG_NUM(0) => NlwRenamedSig_OI_RB_REG_NUM(0),
      OUTPUT_REG(19, 15) => OUTPUT_REGISTERS(19, 15),
      OUTPUT_REG(19, 14) => OUTPUT_REGISTERS(19, 14),
      OUTPUT_REG(19, 13) => OUTPUT_REGISTERS(19, 13),
      OUTPUT_REG(19, 12) => OUTPUT_REGISTERS(19, 12),
      OUTPUT_REG(19, 11) => OUTPUT_REGISTERS(19, 11),
      OUTPUT_REG(19, 10) => OUTPUT_REGISTERS(19, 10),
      OUTPUT_REG(19, 9) => OUTPUT_REGISTERS(19, 9),
      OUTPUT_REG(19, 8) => OUTPUT_REGISTERS(19, 8),
      OUTPUT_REG(19, 7) => OUTPUT_REGISTERS(19, 7),
      OUTPUT_REG(19, 6) => OUTPUT_REGISTERS(19, 6),
      OUTPUT_REG(19, 5) => OUTPUT_REGISTERS(19, 5),
      OUTPUT_REG(19, 4) => OUTPUT_REGISTERS(19, 4),
      OUTPUT_REG(19, 3) => OUTPUT_REGISTERS(19, 3),
      OUTPUT_REG(19, 2) => OUTPUT_REGISTERS(19, 2),
      OUTPUT_REG(19, 1) => OUTPUT_REGISTERS(19, 1),
      OUTPUT_REG(19, 0) => OUTPUT_REGISTERS(19, 0),
      OUTPUT_REG(18, 15) => OUTPUT_REGISTERS(18, 15),
      OUTPUT_REG(18, 14) => OUTPUT_REGISTERS(18, 14),
      OUTPUT_REG(18, 13) => OUTPUT_REGISTERS(18, 13),
      OUTPUT_REG(18, 12) => OUTPUT_REGISTERS(18, 12),
      OUTPUT_REG(18, 11) => OUTPUT_REGISTERS(18, 11),
      OUTPUT_REG(18, 10) => OUTPUT_REGISTERS(18, 10),
      OUTPUT_REG(18, 9) => OUTPUT_REGISTERS(18, 9),
      OUTPUT_REG(18, 8) => OUTPUT_REGISTERS(18, 8),
      OUTPUT_REG(18, 7) => OUTPUT_REGISTERS(18, 7),
      OUTPUT_REG(18, 6) => OUTPUT_REGISTERS(18, 6),
      OUTPUT_REG(18, 5) => OUTPUT_REGISTERS(18, 5),
      OUTPUT_REG(18, 4) => OUTPUT_REGISTERS(18, 4),
      OUTPUT_REG(18, 3) => OUTPUT_REGISTERS(18, 3),
      OUTPUT_REG(18, 2) => OUTPUT_REGISTERS(18, 2),
      OUTPUT_REG(18, 1) => OUTPUT_REGISTERS(18, 1),
      OUTPUT_REG(18, 0) => OUTPUT_REGISTERS(18, 0),
      OUTPUT_REG(17, 15) => OUTPUT_REGISTERS(17, 15),
      OUTPUT_REG(17, 14) => OUTPUT_REGISTERS(17, 14),
      OUTPUT_REG(17, 13) => OUTPUT_REGISTERS(17, 13),
      OUTPUT_REG(17, 12) => OUTPUT_REGISTERS(17, 12),
      OUTPUT_REG(17, 11) => OUTPUT_REGISTERS(17, 11),
      OUTPUT_REG(17, 10) => OUTPUT_REGISTERS(17, 10),
      OUTPUT_REG(17, 9) => OUTPUT_REGISTERS(17, 9),
      OUTPUT_REG(17, 8) => OUTPUT_REGISTERS(17, 8),
      OUTPUT_REG(17, 7) => OUTPUT_REGISTERS(17, 7),
      OUTPUT_REG(17, 6) => OUTPUT_REGISTERS(17, 6),
      OUTPUT_REG(17, 5) => OUTPUT_REGISTERS(17, 5),
      OUTPUT_REG(17, 4) => OUTPUT_REGISTERS(17, 4),
      OUTPUT_REG(17, 3) => OUTPUT_REGISTERS(17, 3),
      OUTPUT_REG(17, 2) => OUTPUT_REGISTERS(17, 2),
      OUTPUT_REG(17, 1) => OUTPUT_REGISTERS(17, 1),
      OUTPUT_REG(17, 0) => OUTPUT_REGISTERS(17, 0),
      OUTPUT_REG(16, 15) => OUTPUT_REGISTERS(16, 15),
      OUTPUT_REG(16, 14) => OUTPUT_REGISTERS(16, 14),
      OUTPUT_REG(16, 13) => OUTPUT_REGISTERS(16, 13),
      OUTPUT_REG(16, 12) => OUTPUT_REGISTERS(16, 12),
      OUTPUT_REG(16, 11) => OUTPUT_REGISTERS(16, 11),
      OUTPUT_REG(16, 10) => OUTPUT_REGISTERS(16, 10),
      OUTPUT_REG(16, 9) => OUTPUT_REGISTERS(16, 9),
      OUTPUT_REG(16, 8) => OUTPUT_REGISTERS(16, 8),
      OUTPUT_REG(16, 7) => OUTPUT_REGISTERS(16, 7),
      OUTPUT_REG(16, 6) => OUTPUT_REGISTERS(16, 6),
      OUTPUT_REG(16, 5) => OUTPUT_REGISTERS(16, 5),
      OUTPUT_REG(16, 4) => OUTPUT_REGISTERS(16, 4),
      OUTPUT_REG(16, 3) => OUTPUT_REGISTERS(16, 3),
      OUTPUT_REG(16, 2) => OUTPUT_REGISTERS(16, 2),
      OUTPUT_REG(16, 1) => OUTPUT_REGISTERS(16, 1),
      OUTPUT_REG(16, 0) => OUTPUT_REGISTERS(16, 0),
      OUTPUT_REG(15, 15) => OUTPUT_REGISTERS(15, 15),
      OUTPUT_REG(15, 14) => OUTPUT_REGISTERS(15, 14),
      OUTPUT_REG(15, 13) => OUTPUT_REGISTERS(15, 13),
      OUTPUT_REG(15, 12) => OUTPUT_REGISTERS(15, 12),
      OUTPUT_REG(15, 11) => OUTPUT_REGISTERS(15, 11),
      OUTPUT_REG(15, 10) => OUTPUT_REGISTERS(15, 10),
      OUTPUT_REG(15, 9) => OUTPUT_REGISTERS(15, 9),
      OUTPUT_REG(15, 8) => OUTPUT_REGISTERS(15, 8),
      OUTPUT_REG(15, 7) => OUTPUT_REGISTERS(15, 7),
      OUTPUT_REG(15, 6) => OUTPUT_REGISTERS(15, 6),
      OUTPUT_REG(15, 5) => OUTPUT_REGISTERS(15, 5),
      OUTPUT_REG(15, 4) => OUTPUT_REGISTERS(15, 4),
      OUTPUT_REG(15, 3) => OUTPUT_REGISTERS(15, 3),
      OUTPUT_REG(15, 2) => OUTPUT_REGISTERS(15, 2),
      OUTPUT_REG(15, 1) => OUTPUT_REGISTERS(15, 1),
      OUTPUT_REG(15, 0) => OUTPUT_REGISTERS(15, 0),
      OUTPUT_REG(14, 15) => OUTPUT_REGISTERS(14, 15),
      OUTPUT_REG(14, 14) => OUTPUT_REGISTERS(14, 14),
      OUTPUT_REG(14, 13) => OUTPUT_REGISTERS(14, 13),
      OUTPUT_REG(14, 12) => OUTPUT_REGISTERS(14, 12),
      OUTPUT_REG(14, 11) => OUTPUT_REGISTERS(14, 11),
      OUTPUT_REG(14, 10) => OUTPUT_REGISTERS(14, 10),
      OUTPUT_REG(14, 9) => OUTPUT_REGISTERS(14, 9),
      OUTPUT_REG(14, 8) => OUTPUT_REGISTERS(14, 8),
      OUTPUT_REG(14, 7) => OUTPUT_REGISTERS(14, 7),
      OUTPUT_REG(14, 6) => OUTPUT_REGISTERS(14, 6),
      OUTPUT_REG(14, 5) => OUTPUT_REGISTERS(14, 5),
      OUTPUT_REG(14, 4) => OUTPUT_REGISTERS(14, 4),
      OUTPUT_REG(14, 3) => OUTPUT_REGISTERS(14, 3),
      OUTPUT_REG(14, 2) => OUTPUT_REGISTERS(14, 2),
      OUTPUT_REG(14, 1) => OUTPUT_REGISTERS(14, 1),
      OUTPUT_REG(14, 0) => OUTPUT_REGISTERS(14, 0),
      OUTPUT_REG(13, 15) => OUTPUT_REGISTERS(13, 15),
      OUTPUT_REG(13, 14) => OUTPUT_REGISTERS(13, 14),
      OUTPUT_REG(13, 13) => OUTPUT_REGISTERS(13, 13),
      OUTPUT_REG(13, 12) => OUTPUT_REGISTERS(13, 12),
      OUTPUT_REG(13, 11) => OUTPUT_REGISTERS(13, 11),
      OUTPUT_REG(13, 10) => OUTPUT_REGISTERS(13, 10),
      OUTPUT_REG(13, 9) => OUTPUT_REGISTERS(13, 9),
      OUTPUT_REG(13, 8) => OUTPUT_REGISTERS(13, 8),
      OUTPUT_REG(13, 7) => OUTPUT_REGISTERS(13, 7),
      OUTPUT_REG(13, 6) => OUTPUT_REGISTERS(13, 6),
      OUTPUT_REG(13, 5) => OUTPUT_REGISTERS(13, 5),
      OUTPUT_REG(13, 4) => OUTPUT_REGISTERS(13, 4),
      OUTPUT_REG(13, 3) => OUTPUT_REGISTERS(13, 3),
      OUTPUT_REG(13, 2) => OUTPUT_REGISTERS(13, 2),
      OUTPUT_REG(13, 1) => OUTPUT_REGISTERS(13, 1),
      OUTPUT_REG(13, 0) => OUTPUT_REGISTERS(13, 0),
      OUTPUT_REG(12, 15) => OUTPUT_REGISTERS(12, 15),
      OUTPUT_REG(12, 14) => OUTPUT_REGISTERS(12, 14),
      OUTPUT_REG(12, 13) => OUTPUT_REGISTERS(12, 13),
      OUTPUT_REG(12, 12) => OUTPUT_REGISTERS(12, 12),
      OUTPUT_REG(12, 11) => OUTPUT_REGISTERS(12, 11),
      OUTPUT_REG(12, 10) => OUTPUT_REGISTERS(12, 10),
      OUTPUT_REG(12, 9) => OUTPUT_REGISTERS(12, 9),
      OUTPUT_REG(12, 8) => OUTPUT_REGISTERS(12, 8),
      OUTPUT_REG(12, 7) => OUTPUT_REGISTERS(12, 7),
      OUTPUT_REG(12, 6) => OUTPUT_REGISTERS(12, 6),
      OUTPUT_REG(12, 5) => OUTPUT_REGISTERS(12, 5),
      OUTPUT_REG(12, 4) => OUTPUT_REGISTERS(12, 4),
      OUTPUT_REG(12, 3) => OUTPUT_REGISTERS(12, 3),
      OUTPUT_REG(12, 2) => OUTPUT_REGISTERS(12, 2),
      OUTPUT_REG(12, 1) => OUTPUT_REGISTERS(12, 1),
      OUTPUT_REG(12, 0) => OUTPUT_REGISTERS(12, 0),
      OUTPUT_REG(11, 15) => OUTPUT_REGISTERS(11, 15),
      OUTPUT_REG(11, 14) => OUTPUT_REGISTERS(11, 14),
      OUTPUT_REG(11, 13) => OUTPUT_REGISTERS(11, 13),
      OUTPUT_REG(11, 12) => OUTPUT_REGISTERS(11, 12),
      OUTPUT_REG(11, 11) => OUTPUT_REGISTERS(11, 11),
      OUTPUT_REG(11, 10) => OUTPUT_REGISTERS(11, 10),
      OUTPUT_REG(11, 9) => OUTPUT_REGISTERS(11, 9),
      OUTPUT_REG(11, 8) => OUTPUT_REGISTERS(11, 8),
      OUTPUT_REG(11, 7) => OUTPUT_REGISTERS(11, 7),
      OUTPUT_REG(11, 6) => OUTPUT_REGISTERS(11, 6),
      OUTPUT_REG(11, 5) => OUTPUT_REGISTERS(11, 5),
      OUTPUT_REG(11, 4) => OUTPUT_REGISTERS(11, 4),
      OUTPUT_REG(11, 3) => OUTPUT_REGISTERS(11, 3),
      OUTPUT_REG(11, 2) => OUTPUT_REGISTERS(11, 2),
      OUTPUT_REG(11, 1) => OUTPUT_REGISTERS(11, 1),
      OUTPUT_REG(11, 0) => OUTPUT_REGISTERS(11, 0),
      OUTPUT_REG(10, 15) => OUTPUT_REGISTERS(10, 15),
      OUTPUT_REG(10, 14) => OUTPUT_REGISTERS(10, 14),
      OUTPUT_REG(10, 13) => OUTPUT_REGISTERS(10, 13),
      OUTPUT_REG(10, 12) => OUTPUT_REGISTERS(10, 12),
      OUTPUT_REG(10, 11) => OUTPUT_REGISTERS(10, 11),
      OUTPUT_REG(10, 10) => OUTPUT_REGISTERS(10, 10),
      OUTPUT_REG(10, 9) => OUTPUT_REGISTERS(10, 9),
      OUTPUT_REG(10, 8) => OUTPUT_REGISTERS(10, 8),
      OUTPUT_REG(10, 7) => OUTPUT_REGISTERS(10, 7),
      OUTPUT_REG(10, 6) => OUTPUT_REGISTERS(10, 6),
      OUTPUT_REG(10, 5) => OUTPUT_REGISTERS(10, 5),
      OUTPUT_REG(10, 4) => OUTPUT_REGISTERS(10, 4),
      OUTPUT_REG(10, 3) => OUTPUT_REGISTERS(10, 3),
      OUTPUT_REG(10, 2) => OUTPUT_REGISTERS(10, 2),
      OUTPUT_REG(10, 1) => OUTPUT_REGISTERS(10, 1),
      OUTPUT_REG(10, 0) => OUTPUT_REGISTERS(10, 0),
      OUTPUT_REG(9, 15) => OUTPUT_REGISTERS(9, 15),
      OUTPUT_REG(9, 14) => OUTPUT_REGISTERS(9, 14),
      OUTPUT_REG(9, 13) => OUTPUT_REGISTERS(9, 13),
      OUTPUT_REG(9, 12) => OUTPUT_REGISTERS(9, 12),
      OUTPUT_REG(9, 11) => OUTPUT_REGISTERS(9, 11),
      OUTPUT_REG(9, 10) => OUTPUT_REGISTERS(9, 10),
      OUTPUT_REG(9, 9) => OUTPUT_REGISTERS(9, 9),
      OUTPUT_REG(9, 8) => OUTPUT_REGISTERS(9, 8),
      OUTPUT_REG(9, 7) => OUTPUT_REGISTERS(9, 7),
      OUTPUT_REG(9, 6) => OUTPUT_REGISTERS(9, 6),
      OUTPUT_REG(9, 5) => OUTPUT_REGISTERS(9, 5),
      OUTPUT_REG(9, 4) => OUTPUT_REGISTERS(9, 4),
      OUTPUT_REG(9, 3) => OUTPUT_REGISTERS(9, 3),
      OUTPUT_REG(9, 2) => OUTPUT_REGISTERS(9, 2),
      OUTPUT_REG(9, 1) => OUTPUT_REGISTERS(9, 1),
      OUTPUT_REG(9, 0) => OUTPUT_REGISTERS(9, 0),
      OUTPUT_REG(8, 15) => OUTPUT_REGISTERS(8, 15),
      OUTPUT_REG(8, 14) => OUTPUT_REGISTERS(8, 14),
      OUTPUT_REG(8, 13) => OUTPUT_REGISTERS(8, 13),
      OUTPUT_REG(8, 12) => OUTPUT_REGISTERS(8, 12),
      OUTPUT_REG(8, 11) => OUTPUT_REGISTERS(8, 11),
      OUTPUT_REG(8, 10) => OUTPUT_REGISTERS(8, 10),
      OUTPUT_REG(8, 9) => OUTPUT_REGISTERS(8, 9),
      OUTPUT_REG(8, 8) => OUTPUT_REGISTERS(8, 8),
      OUTPUT_REG(8, 7) => OUTPUT_REGISTERS(8, 7),
      OUTPUT_REG(8, 6) => OUTPUT_REGISTERS(8, 6),
      OUTPUT_REG(8, 5) => OUTPUT_REGISTERS(8, 5),
      OUTPUT_REG(8, 4) => OUTPUT_REGISTERS(8, 4),
      OUTPUT_REG(8, 3) => OUTPUT_REGISTERS(8, 3),
      OUTPUT_REG(8, 2) => OUTPUT_REGISTERS(8, 2),
      OUTPUT_REG(8, 1) => OUTPUT_REGISTERS(8, 1),
      OUTPUT_REG(8, 0) => OUTPUT_REGISTERS(8, 0),
      OUTPUT_REG(7, 15) => OUTPUT_REGISTERS(7, 15),
      OUTPUT_REG(7, 14) => OUTPUT_REGISTERS(7, 14),
      OUTPUT_REG(7, 13) => OUTPUT_REGISTERS(7, 13),
      OUTPUT_REG(7, 12) => OUTPUT_REGISTERS(7, 12),
      OUTPUT_REG(7, 11) => OUTPUT_REGISTERS(7, 11),
      OUTPUT_REG(7, 10) => OUTPUT_REGISTERS(7, 10),
      OUTPUT_REG(7, 9) => OUTPUT_REGISTERS(7, 9),
      OUTPUT_REG(7, 8) => OUTPUT_REGISTERS(7, 8),
      OUTPUT_REG(7, 7) => OUTPUT_REGISTERS(7, 7),
      OUTPUT_REG(7, 6) => OUTPUT_REGISTERS(7, 6),
      OUTPUT_REG(7, 5) => OUTPUT_REGISTERS(7, 5),
      OUTPUT_REG(7, 4) => OUTPUT_REGISTERS(7, 4),
      OUTPUT_REG(7, 3) => OUTPUT_REGISTERS(7, 3),
      OUTPUT_REG(7, 2) => OUTPUT_REGISTERS(7, 2),
      OUTPUT_REG(7, 1) => OUTPUT_REGISTERS(7, 1),
      OUTPUT_REG(7, 0) => OUTPUT_REGISTERS(7, 0),
      OUTPUT_REG(6, 15) => OUTPUT_REGISTERS(6, 15),
      OUTPUT_REG(6, 14) => OUTPUT_REGISTERS(6, 14),
      OUTPUT_REG(6, 13) => OUTPUT_REGISTERS(6, 13),
      OUTPUT_REG(6, 12) => OUTPUT_REGISTERS(6, 12),
      OUTPUT_REG(6, 11) => OUTPUT_REGISTERS(6, 11),
      OUTPUT_REG(6, 10) => OUTPUT_REGISTERS(6, 10),
      OUTPUT_REG(6, 9) => OUTPUT_REGISTERS(6, 9),
      OUTPUT_REG(6, 8) => OUTPUT_REGISTERS(6, 8),
      OUTPUT_REG(6, 7) => OUTPUT_REGISTERS(6, 7),
      OUTPUT_REG(6, 6) => OUTPUT_REGISTERS(6, 6),
      OUTPUT_REG(6, 5) => OUTPUT_REGISTERS(6, 5),
      OUTPUT_REG(6, 4) => OUTPUT_REGISTERS(6, 4),
      OUTPUT_REG(6, 3) => OUTPUT_REGISTERS(6, 3),
      OUTPUT_REG(6, 2) => OUTPUT_REGISTERS(6, 2),
      OUTPUT_REG(6, 1) => OUTPUT_REGISTERS(6, 1),
      OUTPUT_REG(6, 0) => OUTPUT_REGISTERS(6, 0),
      OUTPUT_REG(5, 15) => OUTPUT_REGISTERS(5, 15),
      OUTPUT_REG(5, 14) => OUTPUT_REGISTERS(5, 14),
      OUTPUT_REG(5, 13) => OUTPUT_REGISTERS(5, 13),
      OUTPUT_REG(5, 12) => OUTPUT_REGISTERS(5, 12),
      OUTPUT_REG(5, 11) => OUTPUT_REGISTERS(5, 11),
      OUTPUT_REG(5, 10) => OUTPUT_REGISTERS(5, 10),
      OUTPUT_REG(5, 9) => OUTPUT_REGISTERS(5, 9),
      OUTPUT_REG(5, 8) => OUTPUT_REGISTERS(5, 8),
      OUTPUT_REG(5, 7) => OUTPUT_REGISTERS(5, 7),
      OUTPUT_REG(5, 6) => OUTPUT_REGISTERS(5, 6),
      OUTPUT_REG(5, 5) => OUTPUT_REGISTERS(5, 5),
      OUTPUT_REG(5, 4) => OUTPUT_REGISTERS(5, 4),
      OUTPUT_REG(5, 3) => OUTPUT_REGISTERS(5, 3),
      OUTPUT_REG(5, 2) => OUTPUT_REGISTERS(5, 2),
      OUTPUT_REG(5, 1) => OUTPUT_REGISTERS(5, 1),
      OUTPUT_REG(5, 0) => OUTPUT_REGISTERS(5, 0),
      OUTPUT_REG(4, 15) => OUTPUT_REGISTERS(4, 15),
      OUTPUT_REG(4, 14) => OUTPUT_REGISTERS(4, 14),
      OUTPUT_REG(4, 13) => OUTPUT_REGISTERS(4, 13),
      OUTPUT_REG(4, 12) => OUTPUT_REGISTERS(4, 12),
      OUTPUT_REG(4, 11) => OUTPUT_REGISTERS(4, 11),
      OUTPUT_REG(4, 10) => OUTPUT_REGISTERS(4, 10),
      OUTPUT_REG(4, 9) => OUTPUT_REGISTERS(4, 9),
      OUTPUT_REG(4, 8) => OUTPUT_REGISTERS(4, 8),
      OUTPUT_REG(4, 7) => OUTPUT_REGISTERS(4, 7),
      OUTPUT_REG(4, 6) => OUTPUT_REGISTERS(4, 6),
      OUTPUT_REG(4, 5) => OUTPUT_REGISTERS(4, 5),
      OUTPUT_REG(4, 4) => OUTPUT_REGISTERS(4, 4),
      OUTPUT_REG(4, 3) => OUTPUT_REGISTERS(4, 3),
      OUTPUT_REG(4, 2) => OUTPUT_REGISTERS(4, 2),
      OUTPUT_REG(4, 1) => OUTPUT_REGISTERS(4, 1),
      OUTPUT_REG(4, 0) => OUTPUT_REGISTERS(4, 0),
      OUTPUT_REG(3, 15) => OUTPUT_REGISTERS(3, 15),
      OUTPUT_REG(3, 14) => OUTPUT_REGISTERS(3, 14),
      OUTPUT_REG(3, 13) => OUTPUT_REGISTERS(3, 13),
      OUTPUT_REG(3, 12) => OUTPUT_REGISTERS(3, 12),
      OUTPUT_REG(3, 11) => OUTPUT_REGISTERS(3, 11),
      OUTPUT_REG(3, 10) => OUTPUT_REGISTERS(3, 10),
      OUTPUT_REG(3, 9) => OUTPUT_REGISTERS(3, 9),
      OUTPUT_REG(3, 8) => OUTPUT_REGISTERS(3, 8),
      OUTPUT_REG(3, 7) => OUTPUT_REGISTERS(3, 7),
      OUTPUT_REG(3, 6) => OUTPUT_REGISTERS(3, 6),
      OUTPUT_REG(3, 5) => OUTPUT_REGISTERS(3, 5),
      OUTPUT_REG(3, 4) => OUTPUT_REGISTERS(3, 4),
      OUTPUT_REG(3, 3) => OUTPUT_REGISTERS(3, 3),
      OUTPUT_REG(3, 2) => OUTPUT_REGISTERS(3, 2),
      OUTPUT_REG(3, 1) => OUTPUT_REGISTERS(3, 1),
      OUTPUT_REG(3, 0) => OUTPUT_REGISTERS(3, 0),
      OUTPUT_REG(2, 15) => OUTPUT_REGISTERS(2, 15),
      OUTPUT_REG(2, 14) => OUTPUT_REGISTERS(2, 14),
      OUTPUT_REG(2, 13) => OUTPUT_REGISTERS(2, 13),
      OUTPUT_REG(2, 12) => OUTPUT_REGISTERS(2, 12),
      OUTPUT_REG(2, 11) => OUTPUT_REGISTERS(2, 11),
      OUTPUT_REG(2, 10) => OUTPUT_REGISTERS(2, 10),
      OUTPUT_REG(2, 9) => OUTPUT_REGISTERS(2, 9),
      OUTPUT_REG(2, 8) => OUTPUT_REGISTERS(2, 8),
      OUTPUT_REG(2, 7) => OUTPUT_REGISTERS(2, 7),
      OUTPUT_REG(2, 6) => OUTPUT_REGISTERS(2, 6),
      OUTPUT_REG(2, 5) => OUTPUT_REGISTERS(2, 5),
      OUTPUT_REG(2, 4) => OUTPUT_REGISTERS(2, 4),
      OUTPUT_REG(2, 3) => OUTPUT_REGISTERS(2, 3),
      OUTPUT_REG(2, 2) => OUTPUT_REGISTERS(2, 2),
      OUTPUT_REG(2, 1) => OUTPUT_REGISTERS(2, 1),
      OUTPUT_REG(2, 0) => OUTPUT_REGISTERS(2, 0),
      OUTPUT_REG(1, 15) => OUTPUT_REGISTERS(1, 15),
      OUTPUT_REG(1, 14) => OUTPUT_REGISTERS(1, 14),
      OUTPUT_REG(1, 13) => OUTPUT_REGISTERS(1, 13),
      OUTPUT_REG(1, 12) => OUTPUT_REGISTERS(1, 12),
      OUTPUT_REG(1, 11) => OUTPUT_REGISTERS(1, 11),
      OUTPUT_REG(1, 10) => OUTPUT_REGISTERS(1, 10),
      OUTPUT_REG(1, 9) => OUTPUT_REGISTERS(1, 9),
      OUTPUT_REG(1, 8) => OUTPUT_REGISTERS(1, 8),
      OUTPUT_REG(1, 7) => OUTPUT_REGISTERS(1, 7),
      OUTPUT_REG(1, 6) => OUTPUT_REGISTERS(1, 6),
      OUTPUT_REG(1, 5) => OUTPUT_REGISTERS(1, 5),
      OUTPUT_REG(1, 4) => OUTPUT_REGISTERS(1, 4),
      OUTPUT_REG(1, 3) => OUTPUT_REGISTERS(1, 3),
      OUTPUT_REG(1, 2) => OUTPUT_REGISTERS(1, 2),
      OUTPUT_REG(1, 1) => OUTPUT_REGISTERS(1, 1),
      OUTPUT_REG(1, 0) => OUTPUT_REGISTERS(1, 0),
      OUTPUT_REG(0, 15) => OUTPUT_REGISTERS(0, 15),
      OUTPUT_REG(0, 14) => OUTPUT_REGISTERS(0, 14),
      OUTPUT_REG(0, 13) => OUTPUT_REGISTERS(0, 13),
      OUTPUT_REG(0, 12) => OUTPUT_REGISTERS(0, 12),
      OUTPUT_REG(0, 11) => OUTPUT_REGISTERS(0, 11),
      OUTPUT_REG(0, 10) => OUTPUT_REGISTERS(0, 10),
      OUTPUT_REG(0, 9) => OUTPUT_REGISTERS(0, 9),
      OUTPUT_REG(0, 8) => OUTPUT_REGISTERS(0, 8),
      OUTPUT_REG(0, 7) => OUTPUT_REGISTERS(0, 7),
      OUTPUT_REG(0, 6) => OUTPUT_REGISTERS(0, 6),
      OUTPUT_REG(0, 5) => OUTPUT_REGISTERS(0, 5),
      OUTPUT_REG(0, 4) => OUTPUT_REGISTERS(0, 4),
      OUTPUT_REG(0, 3) => OUTPUT_REGISTERS(0, 3),
      OUTPUT_REG(0, 2) => OUTPUT_REGISTERS(0, 2),
      OUTPUT_REG(0, 1) => OUTPUT_REGISTERS(0, 1),
      OUTPUT_REG(0, 0) => OUTPUT_REGISTERS(0, 0)
    );
  TX_Sender : TX_DATA_SENDER
    port map (
      CLK => CLK,
      DATA_CLK => NlwRenamedSignal_DC_DC_DATA_CLK,
      DC_DC_RX => DC_DC_RX,
      XFER_BUSY => internal_xfer_busy,
      DUMP_BUSY => NLW_TX_Sender_DUMP_BUSY_UNCONNECTED,
      TRIGGER => NLW_TX_Sender_TRIGGER_UNCONNECTED,
      RB_EN => internal_rb_reg_en,
      SEND => NLW_TX_Sender_SEND_UNCONNECTED,
      wave_fifo_clk => wave_fifo_clk,
      wave_fifo_wr_en => wave_fifo_wr_en,
      wave_fifo_reset => NLW_TX_Sender_wave_fifo_reset_UNCONNECTED,
      OOPS_RESET => OOPS_RESET,
      wave_fifo_full => wave_fifo_full,
      TX_SENDER_BUSY => NlwRenamedSig_OI_TX_BUSY,
      DATA_OUT => internal_data_out,
      TX => internal_tx,
      DC_ADDR(3) => DC_ADDR(3),
      DC_ADDR(2) => DC_ADDR(2),
      DC_ADDR(1) => DC_ADDR(1),
      DC_ADDR(0) => DC_ADDR(0),
      RB_REG_VALUE(15) => RB_REG_VALUE(15),
      RB_REG_VALUE(14) => RB_REG_VALUE(14),
      RB_REG_VALUE(13) => RB_REG_VALUE(13),
      RB_REG_VALUE(12) => RB_REG_VALUE(12),
      RB_REG_VALUE(11) => RB_REG_VALUE(11),
      RB_REG_VALUE(10) => RB_REG_VALUE(10),
      RB_REG_VALUE(9) => RB_REG_VALUE(9),
      RB_REG_VALUE(8) => RB_REG_VALUE(8),
      RB_REG_VALUE(7) => RB_REG_VALUE(7),
      RB_REG_VALUE(6) => RB_REG_VALUE(6),
      RB_REG_VALUE(5) => RB_REG_VALUE(5),
      RB_REG_VALUE(4) => RB_REG_VALUE(4),
      RB_REG_VALUE(3) => RB_REG_VALUE(3),
      RB_REG_VALUE(2) => RB_REG_VALUE(2),
      RB_REG_VALUE(1) => RB_REG_VALUE(1),
      RB_REG_VALUE(0) => RB_REG_VALUE(0),
      RB_REG_NUM(7) => NlwRenamedSig_OI_RB_REG_NUM(7),
      RB_REG_NUM(6) => NlwRenamedSig_OI_RB_REG_NUM(6),
      RB_REG_NUM(5) => NlwRenamedSig_OI_RB_REG_NUM(5),
      RB_REG_NUM(4) => NlwRenamedSig_OI_RB_REG_NUM(4),
      RB_REG_NUM(3) => NlwRenamedSig_OI_RB_REG_NUM(3),
      RB_REG_NUM(2) => NlwRenamedSig_OI_RB_REG_NUM(2),
      RB_REG_NUM(1) => NlwRenamedSig_OI_RB_REG_NUM(1),
      RB_REG_NUM(0) => NlwRenamedSig_OI_RB_REG_NUM(0),
      wave_fifo_data(31) => wave_fifo_data(31),
      wave_fifo_data(30) => wave_fifo_data(30),
      wave_fifo_data(29) => wave_fifo_data(29),
      wave_fifo_data(28) => wave_fifo_data(28),
      wave_fifo_data(27) => wave_fifo_data(27),
      wave_fifo_data(26) => wave_fifo_data(26),
      wave_fifo_data(25) => wave_fifo_data(25),
      wave_fifo_data(24) => wave_fifo_data(24),
      wave_fifo_data(23) => wave_fifo_data(23),
      wave_fifo_data(22) => wave_fifo_data(22),
      wave_fifo_data(21) => wave_fifo_data(21),
      wave_fifo_data(20) => wave_fifo_data(20),
      wave_fifo_data(19) => wave_fifo_data(19),
      wave_fifo_data(18) => wave_fifo_data(18),
      wave_fifo_data(17) => wave_fifo_data(17),
      wave_fifo_data(16) => wave_fifo_data(16),
      wave_fifo_data(15) => wave_fifo_data(15),
      wave_fifo_data(14) => wave_fifo_data(14),
      wave_fifo_data(13) => wave_fifo_data(13),
      wave_fifo_data(12) => wave_fifo_data(12),
      wave_fifo_data(11) => wave_fifo_data(11),
      wave_fifo_data(10) => wave_fifo_data(10),
      wave_fifo_data(9) => wave_fifo_data(9),
      wave_fifo_data(8) => wave_fifo_data(8),
      wave_fifo_data(7) => wave_fifo_data(7),
      wave_fifo_data(6) => wave_fifo_data(6),
      wave_fifo_data(5) => wave_fifo_data(5),
      wave_fifo_data(4) => wave_fifo_data(4),
      wave_fifo_data(3) => wave_fifo_data(3),
      wave_fifo_data(2) => wave_fifo_data(2),
      wave_fifo_data(1) => wave_fifo_data(1),
      wave_fifo_data(0) => wave_fifo_data(0)
    );
  internal_xfer_busy1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => MAS_DC_RX,
      I1 => MAS_DC_DATA_IN,
      O => internal_xfer_busy
    );
  Mmux_internal_dc_rx_internal_tx_MUX_135_o11 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => NlwRenamedSig_OI_TX_BUSY,
      I1 => DC_DC_RX,
      I2 => internal_tx,
      O => internal_dc_rx_internal_tx_MUX_135_o
    );
  Mmux_internal_dc_din_internal_data_out_MUX_136_o11 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => NlwRenamedSig_OI_TX_BUSY,
      I1 => DC_DC_DATA_IN,
      I2 => internal_data_out,
      O => internal_dc_din_internal_data_out_MUX_136_o
    );

end Structure;

-- synthesis translate_on

-- synthesis translate_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity edge_to_pulse_converter is
  port (
    INPUT_EDGE : in STD_LOGIC := 'X'; 
    CLOCK : in STD_LOGIC := 'X'; 
    CLOCK_ENABLE : in STD_LOGIC := 'X'; 
    OUTPUT_PULSE : out STD_LOGIC 
  );
end edge_to_pulse_converter;

architecture Structure of edge_to_pulse_converter is
  signal output0_2 : STD_LOGIC; 
  signal output1_3 : STD_LOGIC; 
  signal output2_4 : STD_LOGIC; 
  signal CLOCK_ENABLE_6 : STD_LOGIC; 
begin
  XST_VCC : VCC
    port map (
      P => CLOCK_ENABLE_6
    );
  output1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK,
      D => output0_2,
      Q => output1_3
    );
  output2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK,
      D => output1_3,
      Q => output2_4
    );
  output0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => INPUT_EDGE,
      CLR => output2_4,
      D => CLOCK_ENABLE_6,
      Q => output0_2
    );
  OUTPUT_PULSE1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => output2_4,
      I1 => output1_3,
      O => OUTPUT_PULSE
    );

end Structure;

-- synthesis translate_on

-- synthesis translate_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity BMD_TRIG_LOGIC is
  port (
    CLK : in STD_LOGIC := 'X'; 
    OOPS : in STD_LOGIC := 'X'; 
    SW_TRIG : in STD_LOGIC := 'X'; 
    SCROD_TRIG : in STD_LOGIC := 'X'; 
    CNT_START : in STD_LOGIC := 'X'; 
    RD_BUSY : in STD_LOGIC := 'X'; 
    TRIGGER : out STD_LOGIC; 
    TX_HW_TRIG : out STD_LOGIC; 
    DC_DC_TRIG : inout STD_LOGIC; 
    SC_DC_TRIG : inout STD_LOGIC; 
    TRIG_MODE : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    TX_TRIG : in STD_LOGIC_VECTOR ( 4 downto 0 ); 
    DC_MASK : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    DC_ADDRESS : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    WAIT_COUNT : in STD_LOGIC_VECTOR ( 31 downto 0 ); 
    MAX_CNT : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    TRIG_COUNT : out STD_LOGIC_VECTOR ( 31 downto 0 ); 
    TRIG_BITS : out STD_LOGIC_VECTOR ( 4 downto 0 ) 
  );
end BMD_TRIG_LOGIC;

architecture Structure of BMD_TRIG_LOGIC is
  component edge_to_pulse_converter
    port (
      INPUT_EDGE : in STD_LOGIC := 'X'; 
      CLOCK : in STD_LOGIC := 'X'; 
      CLOCK_ENABLE : in STD_LOGIC := 'X'; 
      OUTPUT_PULSE : out STD_LOGIC 
    );
  end component;
  signal n0075 : STD_LOGIC; 
  signal pulse_to_count : STD_LOGIC; 
  signal start_cnt_83 : STD_LOGIC; 
  signal trig_cnt_st_FSM_FFd1_84 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal IO_dir_118 : STD_LOGIC; 
  signal trig_st_FSM_FFd1_230 : STD_LOGIC; 
  signal trig_st_FSM_FFd2_231 : STD_LOGIC; 
  signal EX_trig : STD_LOGIC; 
  signal trig_cnt_st_1_X_83_o_wide_mux_59_OUT_31_Q : STD_LOGIC; 
  signal trig_cnt_st_1_X_83_o_wide_mux_59_OUT_30_Q : STD_LOGIC; 
  signal trig_cnt_st_1_X_83_o_wide_mux_59_OUT_29_Q : STD_LOGIC; 
  signal trig_cnt_st_1_X_83_o_wide_mux_59_OUT_28_Q : STD_LOGIC; 
  signal trig_cnt_st_1_X_83_o_wide_mux_59_OUT_27_Q : STD_LOGIC; 
  signal trig_cnt_st_1_X_83_o_wide_mux_59_OUT_26_Q : STD_LOGIC; 
  signal trig_cnt_st_1_X_83_o_wide_mux_59_OUT_25_Q : STD_LOGIC; 
  signal trig_cnt_st_1_X_83_o_wide_mux_59_OUT_24_Q : STD_LOGIC; 
  signal trig_cnt_st_1_X_83_o_wide_mux_59_OUT_23_Q : STD_LOGIC; 
  signal trig_cnt_st_1_X_83_o_wide_mux_59_OUT_22_Q : STD_LOGIC; 
  signal trig_cnt_st_1_X_83_o_wide_mux_59_OUT_21_Q : STD_LOGIC; 
  signal trig_cnt_st_1_X_83_o_wide_mux_59_OUT_20_Q : STD_LOGIC; 
  signal trig_cnt_st_1_X_83_o_wide_mux_59_OUT_19_Q : STD_LOGIC; 
  signal trig_cnt_st_1_X_83_o_wide_mux_59_OUT_18_Q : STD_LOGIC; 
  signal trig_cnt_st_1_X_83_o_wide_mux_59_OUT_17_Q : STD_LOGIC; 
  signal trig_cnt_st_1_X_83_o_wide_mux_59_OUT_16_Q : STD_LOGIC; 
  signal trig_cnt_st_1_X_83_o_wide_mux_59_OUT_15_Q : STD_LOGIC; 
  signal trig_cnt_st_1_X_83_o_wide_mux_59_OUT_14_Q : STD_LOGIC; 
  signal trig_cnt_st_1_X_83_o_wide_mux_59_OUT_13_Q : STD_LOGIC; 
  signal trig_cnt_st_1_X_83_o_wide_mux_59_OUT_12_Q : STD_LOGIC; 
  signal trig_cnt_st_1_X_83_o_wide_mux_59_OUT_11_Q : STD_LOGIC; 
  signal trig_cnt_st_1_X_83_o_wide_mux_59_OUT_10_Q : STD_LOGIC; 
  signal trig_cnt_st_1_X_83_o_wide_mux_59_OUT_9_Q : STD_LOGIC; 
  signal trig_cnt_st_1_X_83_o_wide_mux_59_OUT_8_Q : STD_LOGIC; 
  signal trig_cnt_st_1_X_83_o_wide_mux_59_OUT_7_Q : STD_LOGIC; 
  signal trig_cnt_st_1_X_83_o_wide_mux_59_OUT_6_Q : STD_LOGIC; 
  signal trig_cnt_st_1_X_83_o_wide_mux_59_OUT_5_Q : STD_LOGIC; 
  signal trig_cnt_st_1_X_83_o_wide_mux_59_OUT_4_Q : STD_LOGIC; 
  signal trig_cnt_st_1_X_83_o_wide_mux_59_OUT_3_Q : STD_LOGIC; 
  signal trig_cnt_st_1_X_83_o_wide_mux_59_OUT_2_Q : STD_LOGIC; 
  signal trig_cnt_st_1_X_83_o_wide_mux_59_OUT_1_Q : STD_LOGIC; 
  signal trig_cnt_st_1_X_83_o_wide_mux_59_OUT_0_Q : STD_LOGIC; 
  signal sc_dc_ack : STD_LOGIC; 
  signal IO_dir_INV_111_o : STD_LOGIC; 
  signal scrod_ack : STD_LOGIC; 
  signal trig_wait_31_GND_117_o_add_21_OUT_30_Q : STD_LOGIC; 
  signal trig_wait_31_GND_117_o_add_21_OUT_29_Q : STD_LOGIC; 
  signal trig_wait_31_GND_117_o_add_21_OUT_28_Q : STD_LOGIC; 
  signal trig_wait_31_GND_117_o_add_21_OUT_27_Q : STD_LOGIC; 
  signal trig_wait_31_GND_117_o_add_21_OUT_26_Q : STD_LOGIC; 
  signal trig_wait_31_GND_117_o_add_21_OUT_25_Q : STD_LOGIC; 
  signal trig_wait_31_GND_117_o_add_21_OUT_24_Q : STD_LOGIC; 
  signal trig_wait_31_GND_117_o_add_21_OUT_23_Q : STD_LOGIC; 
  signal trig_wait_31_GND_117_o_add_21_OUT_22_Q : STD_LOGIC; 
  signal trig_wait_31_GND_117_o_add_21_OUT_21_Q : STD_LOGIC; 
  signal trig_wait_31_GND_117_o_add_21_OUT_20_Q : STD_LOGIC; 
  signal trig_wait_31_GND_117_o_add_21_OUT_19_Q : STD_LOGIC; 
  signal trig_wait_31_GND_117_o_add_21_OUT_18_Q : STD_LOGIC; 
  signal trig_wait_31_GND_117_o_add_21_OUT_17_Q : STD_LOGIC; 
  signal trig_wait_31_GND_117_o_add_21_OUT_16_Q : STD_LOGIC; 
  signal trig_wait_31_GND_117_o_add_21_OUT_15_Q : STD_LOGIC; 
  signal trig_wait_31_GND_117_o_add_21_OUT_14_Q : STD_LOGIC; 
  signal trig_wait_31_GND_117_o_add_21_OUT_13_Q : STD_LOGIC; 
  signal trig_wait_31_GND_117_o_add_21_OUT_12_Q : STD_LOGIC; 
  signal trig_wait_31_GND_117_o_add_21_OUT_11_Q : STD_LOGIC; 
  signal trig_wait_31_GND_117_o_add_21_OUT_10_Q : STD_LOGIC; 
  signal trig_wait_31_GND_117_o_add_21_OUT_9_Q : STD_LOGIC; 
  signal trig_wait_31_GND_117_o_add_21_OUT_8_Q : STD_LOGIC; 
  signal trig_wait_31_GND_117_o_add_21_OUT_7_Q : STD_LOGIC; 
  signal trig_wait_31_GND_117_o_add_21_OUT_6_Q : STD_LOGIC; 
  signal trig_wait_31_GND_117_o_add_21_OUT_5_Q : STD_LOGIC; 
  signal trig_wait_31_GND_117_o_add_21_OUT_4_Q : STD_LOGIC; 
  signal trig_wait_31_GND_117_o_add_21_OUT_3_Q : STD_LOGIC; 
  signal trig_wait_31_GND_117_o_add_21_OUT_2_Q : STD_LOGIC; 
  signal trig_wait_31_GND_117_o_add_21_OUT_1_Q : STD_LOGIC; 
  signal trig_wait_31_GND_117_o_add_21_OUT_0_Q : STD_LOGIC; 
  signal coin_trigger : STD_LOGIC; 
  signal trig_st_2_X_83_o_Mux_29_o : STD_LOGIC; 
  signal this_DC_trig : STD_LOGIC; 
  signal next_DC_trig : STD_LOGIC; 
  signal dc_dc_trigger : STD_LOGIC; 
  signal Q_n0231_inv : STD_LOGIC; 
  signal Q_n0255_inv : STD_LOGIC; 
  signal OOPS_inv : STD_LOGIC; 
  signal trig_cnt_st_FSM_FFd2_In : STD_LOGIC; 
  signal trig_cnt_st_FSM_FFd1_In : STD_LOGIC; 
  signal trig_st_FSM_FFd2_In_343 : STD_LOGIC; 
  signal trig_st_FSM_FFd1_In : STD_LOGIC; 
  signal Q_n0265_inv : STD_LOGIC; 
  signal Mcount_clk_counter : STD_LOGIC; 
  signal Mcount_clk_counter1 : STD_LOGIC; 
  signal Mcount_clk_counter2 : STD_LOGIC; 
  signal Mcount_clk_counter3 : STD_LOGIC; 
  signal Mcount_clk_counter4 : STD_LOGIC; 
  signal Mcount_clk_counter5 : STD_LOGIC; 
  signal Mcount_clk_counter6 : STD_LOGIC; 
  signal Mcount_clk_counter7 : STD_LOGIC; 
  signal Mcount_clk_counter8 : STD_LOGIC; 
  signal Mcount_clk_counter9 : STD_LOGIC; 
  signal Mcount_clk_counter10 : STD_LOGIC; 
  signal Mcount_clk_counter11 : STD_LOGIC; 
  signal Mcount_clk_counter12 : STD_LOGIC; 
  signal Mcount_clk_counter13 : STD_LOGIC; 
  signal Mcount_clk_counter14 : STD_LOGIC; 
  signal Mcount_clk_counter15 : STD_LOGIC; 
  signal Mcount_clk_counter16 : STD_LOGIC; 
  signal Mcount_clk_counter17 : STD_LOGIC; 
  signal Mcount_clk_counter18 : STD_LOGIC; 
  signal Mcount_clk_counter19 : STD_LOGIC; 
  signal Mcount_clk_counter20 : STD_LOGIC; 
  signal Mcount_clk_counter21 : STD_LOGIC; 
  signal Mcount_clk_counter22 : STD_LOGIC; 
  signal Mcount_clk_counter23 : STD_LOGIC; 
  signal Mcount_clk_counter24 : STD_LOGIC; 
  signal Mcount_clk_counter25 : STD_LOGIC; 
  signal Mcount_clk_counter26 : STD_LOGIC; 
  signal Mcount_clk_counter27 : STD_LOGIC; 
  signal Mcount_clk_counter28 : STD_LOGIC; 
  signal Mcount_clk_counter29 : STD_LOGIC; 
  signal Mcount_clk_counter30 : STD_LOGIC; 
  signal Mcount_clk_counter31 : STD_LOGIC; 
  signal Q_n0278_inv : STD_LOGIC; 
  signal trig_cnt_st_FSM_FFd2_458 : STD_LOGIC; 
  signal Mcount_pulse_count : STD_LOGIC; 
  signal Mcount_pulse_count1 : STD_LOGIC; 
  signal Mcount_pulse_count2 : STD_LOGIC; 
  signal Mcount_pulse_count3 : STD_LOGIC; 
  signal Mcount_pulse_count4 : STD_LOGIC; 
  signal Mcount_pulse_count5 : STD_LOGIC; 
  signal Mcount_pulse_count6 : STD_LOGIC; 
  signal Mcount_pulse_count7 : STD_LOGIC; 
  signal Mcount_pulse_count8 : STD_LOGIC; 
  signal Mcount_pulse_count9 : STD_LOGIC; 
  signal Mcount_pulse_count10 : STD_LOGIC; 
  signal Mcount_pulse_count11 : STD_LOGIC; 
  signal Mcount_pulse_count12 : STD_LOGIC; 
  signal Mcount_pulse_count13 : STD_LOGIC; 
  signal Mcount_pulse_count14 : STD_LOGIC; 
  signal Mcount_pulse_count15 : STD_LOGIC; 
  signal Mcount_pulse_count16 : STD_LOGIC; 
  signal Mcount_pulse_count17 : STD_LOGIC; 
  signal Mcount_pulse_count18 : STD_LOGIC; 
  signal Mcount_pulse_count19 : STD_LOGIC; 
  signal Mcount_pulse_count20 : STD_LOGIC; 
  signal Mcount_pulse_count21 : STD_LOGIC; 
  signal Mcount_pulse_count22 : STD_LOGIC; 
  signal Mcount_pulse_count23 : STD_LOGIC; 
  signal Mcount_pulse_count24 : STD_LOGIC; 
  signal Mcount_pulse_count25 : STD_LOGIC; 
  signal Mcount_pulse_count26 : STD_LOGIC; 
  signal Mcount_pulse_count27 : STD_LOGIC; 
  signal Mcount_pulse_count28 : STD_LOGIC; 
  signal Mcount_pulse_count29 : STD_LOGIC; 
  signal Mcount_pulse_count30 : STD_LOGIC; 
  signal Mcount_pulse_count31 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_lut_0_Q : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_0_Q_566 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_1_Q_567 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_2_Q_568 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_3_Q_569 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_4_Q_570 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_5_Q_571 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_6_Q_572 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_7_Q_573 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_8_Q_574 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_9_Q_575 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_10_Q_576 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_11_Q_577 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_12_Q_578 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_13_Q_579 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_14_Q_580 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_15_Q_581 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_16_Q_582 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_17_Q_583 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_18_Q_584 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_19_Q_585 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_20_Q_586 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_21_Q_587 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_22_Q_588 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_23_Q_589 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_24_Q_590 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_25_Q_591 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_26_Q_592 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_27_Q_593 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_28_Q_594 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_29_Q_595 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi_596 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_0_Q_597 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_0_Q_598 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi1_599 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_1_Q_600 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_1_Q_601 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi2_602 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_2_Q_603 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_2_Q_604 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi3_605 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_3_Q_606 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_3_Q_607 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi4_608 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_4_Q_609 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_4_Q_610 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi5_611 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_5_Q_612 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_5_Q_613 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi6_614 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_6_Q_615 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_6_Q_616 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi7_617 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_7_Q_618 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_7_Q_619 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi8_620 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_8_Q_621 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_8_Q_622 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi9_623 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_9_Q_624 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_9_Q_625 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi10_626 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_10_Q_627 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_10_Q_628 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi11_629 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_11_Q_630 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_11_Q_631 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi12_632 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_12_Q_633 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_12_Q_634 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi13_635 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_13_Q_636 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_13_Q_637 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi14_638 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_14_Q_639 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_14_Q_640 : STD_LOGIC; 
  signal Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_15_Q_641 : STD_LOGIC; 
  signal Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lutdi_642 : STD_LOGIC; 
  signal Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lut_0_Q_643 : STD_LOGIC; 
  signal Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_0_Q_644 : STD_LOGIC; 
  signal Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lutdi1_645 : STD_LOGIC; 
  signal Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lut_1_Q_646 : STD_LOGIC; 
  signal Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_1_Q_647 : STD_LOGIC; 
  signal Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lutdi2_648 : STD_LOGIC; 
  signal Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lut_2_Q_649 : STD_LOGIC; 
  signal Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_2_Q_650 : STD_LOGIC; 
  signal Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lutdi3_651 : STD_LOGIC; 
  signal Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lut_3_Q_652 : STD_LOGIC; 
  signal Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_3_Q_653 : STD_LOGIC; 
  signal Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lutdi4_654 : STD_LOGIC; 
  signal Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lut_4_Q_655 : STD_LOGIC; 
  signal Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_4_Q_656 : STD_LOGIC; 
  signal Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lutdi5_657 : STD_LOGIC; 
  signal Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lut_5_Q_658 : STD_LOGIC; 
  signal Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_5_Q_659 : STD_LOGIC; 
  signal Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lut_6_Q : STD_LOGIC; 
  signal Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_6_Q_662 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal Q_n0278_inv1_664 : STD_LOGIC; 
  signal Q_n0278_inv2_665 : STD_LOGIC; 
  signal Q_n0278_inv3_666 : STD_LOGIC; 
  signal Q_n0278_inv4_667 : STD_LOGIC; 
  signal Q_n0278_inv5_668 : STD_LOGIC; 
  signal Q_n0278_inv6_669 : STD_LOGIC; 
  signal Q_n0278_inv7_670 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_1_rt_672 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_2_rt_673 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_3_rt_674 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_4_rt_675 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_5_rt_676 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_6_rt_677 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_7_rt_678 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_8_rt_679 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_9_rt_680 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_10_rt_681 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_11_rt_682 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_12_rt_683 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_13_rt_684 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_14_rt_685 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_15_rt_686 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_16_rt_687 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_17_rt_688 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_18_rt_689 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_19_rt_690 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_20_rt_691 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_21_rt_692 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_22_rt_693 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_23_rt_694 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_24_rt_695 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_25_rt_696 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_26_rt_697 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_27_rt_698 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_28_rt_699 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_29_rt_700 : STD_LOGIC; 
  signal Madd_trig_wait_31_GND_117_o_add_21_OUT_xor_30_rt_701 : STD_LOGIC; 
  signal IO_dir_rstpot_702 : STD_LOGIC; 
  signal coin_buf_1_1_703 : STD_LOGIC; 
  signal IO_dir_1_704 : STD_LOGIC; 
  signal Mshreg_ex_tbuf_1_705 : STD_LOGIC; 
  signal NLW_Mshreg_ex_tbuf_1_Q15_UNCONNECTED : STD_LOGIC; 
  signal coin_buf : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal sc_ack_buf : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal dc_dc_tbuf : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal ex_tbuf : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal t_st : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal trig_wait : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal clk_counter : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal pulse_count : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal Q_n0215 : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal Mcount_clk_counter_lut : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal Mcount_clk_counter_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal Mcount_pulse_count_lut : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal Mcount_pulse_count_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal Mcompar_n0075_lut : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal Mcompar_n0075_cy : STD_LOGIC_VECTOR ( 4 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => trig_wait(31)
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  coin_buf_0 : FD
    port map (
      C => CLK,
      D => coin_trigger,
      Q => coin_buf(0)
    );
  coin_buf_1 : FD
    port map (
      C => CLK,
      D => coin_buf(0),
      Q => coin_buf(1)
    );
  start_cnt : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => CNT_START,
      Q => start_cnt_83
    );
  dc_dc_tbuf_0 : FD
    port map (
      C => CLK,
      D => dc_dc_trigger,
      Q => dc_dc_tbuf(0)
    );
  dc_dc_tbuf_1 : FD
    port map (
      C => CLK,
      D => dc_dc_tbuf(0),
      Q => dc_dc_tbuf(1)
    );
  trig_wait_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0231_inv,
      D => Q_n0215(0),
      Q => trig_wait(0)
    );
  trig_wait_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0231_inv,
      D => Q_n0215(1),
      Q => trig_wait(1)
    );
  trig_wait_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0231_inv,
      D => Q_n0215(2),
      Q => trig_wait(2)
    );
  trig_wait_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0231_inv,
      D => Q_n0215(3),
      Q => trig_wait(3)
    );
  trig_wait_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0231_inv,
      D => Q_n0215(4),
      Q => trig_wait(4)
    );
  trig_wait_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0231_inv,
      D => Q_n0215(5),
      Q => trig_wait(5)
    );
  trig_wait_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0231_inv,
      D => Q_n0215(6),
      Q => trig_wait(6)
    );
  trig_wait_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0231_inv,
      D => Q_n0215(7),
      Q => trig_wait(7)
    );
  trig_wait_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0231_inv,
      D => Q_n0215(8),
      Q => trig_wait(8)
    );
  trig_wait_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0231_inv,
      D => Q_n0215(9),
      Q => trig_wait(9)
    );
  trig_wait_10 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0231_inv,
      D => Q_n0215(10),
      Q => trig_wait(10)
    );
  trig_wait_11 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0231_inv,
      D => Q_n0215(11),
      Q => trig_wait(11)
    );
  trig_wait_12 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0231_inv,
      D => Q_n0215(12),
      Q => trig_wait(12)
    );
  trig_wait_13 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0231_inv,
      D => Q_n0215(13),
      Q => trig_wait(13)
    );
  trig_wait_14 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0231_inv,
      D => Q_n0215(14),
      Q => trig_wait(14)
    );
  trig_wait_15 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0231_inv,
      D => Q_n0215(15),
      Q => trig_wait(15)
    );
  trig_wait_16 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0231_inv,
      D => Q_n0215(16),
      Q => trig_wait(16)
    );
  trig_wait_17 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0231_inv,
      D => Q_n0215(17),
      Q => trig_wait(17)
    );
  trig_wait_18 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0231_inv,
      D => Q_n0215(18),
      Q => trig_wait(18)
    );
  trig_wait_19 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0231_inv,
      D => Q_n0215(19),
      Q => trig_wait(19)
    );
  trig_wait_20 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0231_inv,
      D => Q_n0215(20),
      Q => trig_wait(20)
    );
  trig_wait_21 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0231_inv,
      D => Q_n0215(21),
      Q => trig_wait(21)
    );
  trig_wait_22 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0231_inv,
      D => Q_n0215(22),
      Q => trig_wait(22)
    );
  trig_wait_23 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0231_inv,
      D => Q_n0215(23),
      Q => trig_wait(23)
    );
  trig_wait_24 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0231_inv,
      D => Q_n0215(24),
      Q => trig_wait(24)
    );
  trig_wait_25 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0231_inv,
      D => Q_n0215(25),
      Q => trig_wait(25)
    );
  trig_wait_26 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0231_inv,
      D => Q_n0215(26),
      Q => trig_wait(26)
    );
  trig_wait_27 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0231_inv,
      D => Q_n0215(27),
      Q => trig_wait(27)
    );
  trig_wait_28 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0231_inv,
      D => Q_n0215(28),
      Q => trig_wait(28)
    );
  trig_wait_29 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0231_inv,
      D => Q_n0215(29),
      Q => trig_wait(29)
    );
  trig_wait_30 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0231_inv,
      D => Q_n0215(30),
      Q => trig_wait(30)
    );
  TRIG_COUNT_0 : FDE
    port map (
      C => CLK,
      CE => Q_n0255_inv,
      D => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_0_Q,
      Q => TRIG_COUNT(0)
    );
  TRIG_COUNT_1 : FDE
    port map (
      C => CLK,
      CE => Q_n0255_inv,
      D => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_1_Q,
      Q => TRIG_COUNT(1)
    );
  TRIG_COUNT_2 : FDE
    port map (
      C => CLK,
      CE => Q_n0255_inv,
      D => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_2_Q,
      Q => TRIG_COUNT(2)
    );
  TRIG_COUNT_3 : FDE
    port map (
      C => CLK,
      CE => Q_n0255_inv,
      D => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_3_Q,
      Q => TRIG_COUNT(3)
    );
  TRIG_COUNT_4 : FDE
    port map (
      C => CLK,
      CE => Q_n0255_inv,
      D => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_4_Q,
      Q => TRIG_COUNT(4)
    );
  TRIG_COUNT_5 : FDE
    port map (
      C => CLK,
      CE => Q_n0255_inv,
      D => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_5_Q,
      Q => TRIG_COUNT(5)
    );
  TRIG_COUNT_6 : FDE
    port map (
      C => CLK,
      CE => Q_n0255_inv,
      D => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_6_Q,
      Q => TRIG_COUNT(6)
    );
  TRIG_COUNT_7 : FDE
    port map (
      C => CLK,
      CE => Q_n0255_inv,
      D => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_7_Q,
      Q => TRIG_COUNT(7)
    );
  TRIG_COUNT_8 : FDE
    port map (
      C => CLK,
      CE => Q_n0255_inv,
      D => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_8_Q,
      Q => TRIG_COUNT(8)
    );
  TRIG_COUNT_9 : FDE
    port map (
      C => CLK,
      CE => Q_n0255_inv,
      D => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_9_Q,
      Q => TRIG_COUNT(9)
    );
  TRIG_COUNT_10 : FDE
    port map (
      C => CLK,
      CE => Q_n0255_inv,
      D => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_10_Q,
      Q => TRIG_COUNT(10)
    );
  TRIG_COUNT_11 : FDE
    port map (
      C => CLK,
      CE => Q_n0255_inv,
      D => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_11_Q,
      Q => TRIG_COUNT(11)
    );
  TRIG_COUNT_12 : FDE
    port map (
      C => CLK,
      CE => Q_n0255_inv,
      D => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_12_Q,
      Q => TRIG_COUNT(12)
    );
  TRIG_COUNT_13 : FDE
    port map (
      C => CLK,
      CE => Q_n0255_inv,
      D => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_13_Q,
      Q => TRIG_COUNT(13)
    );
  TRIG_COUNT_14 : FDE
    port map (
      C => CLK,
      CE => Q_n0255_inv,
      D => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_14_Q,
      Q => TRIG_COUNT(14)
    );
  TRIG_COUNT_15 : FDE
    port map (
      C => CLK,
      CE => Q_n0255_inv,
      D => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_15_Q,
      Q => TRIG_COUNT(15)
    );
  TRIG_COUNT_16 : FDE
    port map (
      C => CLK,
      CE => Q_n0255_inv,
      D => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_16_Q,
      Q => TRIG_COUNT(16)
    );
  TRIG_COUNT_17 : FDE
    port map (
      C => CLK,
      CE => Q_n0255_inv,
      D => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_17_Q,
      Q => TRIG_COUNT(17)
    );
  TRIG_COUNT_18 : FDE
    port map (
      C => CLK,
      CE => Q_n0255_inv,
      D => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_18_Q,
      Q => TRIG_COUNT(18)
    );
  TRIG_COUNT_19 : FDE
    port map (
      C => CLK,
      CE => Q_n0255_inv,
      D => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_19_Q,
      Q => TRIG_COUNT(19)
    );
  TRIG_COUNT_20 : FDE
    port map (
      C => CLK,
      CE => Q_n0255_inv,
      D => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_20_Q,
      Q => TRIG_COUNT(20)
    );
  TRIG_COUNT_21 : FDE
    port map (
      C => CLK,
      CE => Q_n0255_inv,
      D => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_21_Q,
      Q => TRIG_COUNT(21)
    );
  TRIG_COUNT_22 : FDE
    port map (
      C => CLK,
      CE => Q_n0255_inv,
      D => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_22_Q,
      Q => TRIG_COUNT(22)
    );
  TRIG_COUNT_23 : FDE
    port map (
      C => CLK,
      CE => Q_n0255_inv,
      D => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_23_Q,
      Q => TRIG_COUNT(23)
    );
  TRIG_COUNT_24 : FDE
    port map (
      C => CLK,
      CE => Q_n0255_inv,
      D => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_24_Q,
      Q => TRIG_COUNT(24)
    );
  TRIG_COUNT_25 : FDE
    port map (
      C => CLK,
      CE => Q_n0255_inv,
      D => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_25_Q,
      Q => TRIG_COUNT(25)
    );
  TRIG_COUNT_26 : FDE
    port map (
      C => CLK,
      CE => Q_n0255_inv,
      D => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_26_Q,
      Q => TRIG_COUNT(26)
    );
  TRIG_COUNT_27 : FDE
    port map (
      C => CLK,
      CE => Q_n0255_inv,
      D => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_27_Q,
      Q => TRIG_COUNT(27)
    );
  TRIG_COUNT_28 : FDE
    port map (
      C => CLK,
      CE => Q_n0255_inv,
      D => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_28_Q,
      Q => TRIG_COUNT(28)
    );
  TRIG_COUNT_29 : FDE
    port map (
      C => CLK,
      CE => Q_n0255_inv,
      D => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_29_Q,
      Q => TRIG_COUNT(29)
    );
  TRIG_COUNT_30 : FDE
    port map (
      C => CLK,
      CE => Q_n0255_inv,
      D => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_30_Q,
      Q => TRIG_COUNT(30)
    );
  TRIG_COUNT_31 : FDE
    port map (
      C => CLK,
      CE => Q_n0255_inv,
      D => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_31_Q,
      Q => TRIG_COUNT(31)
    );
  t_st_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => OOPS_inv,
      D => trig_st_FSM_FFd2_231,
      Q => t_st(0)
    );
  t_st_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => OOPS_inv,
      D => trig_st_FSM_FFd1_230,
      Q => t_st(1)
    );
  t_st_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => OOPS_inv,
      D => trig_wait(31),
      Q => t_st(2)
    );
  t_st_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => OOPS_inv,
      D => trig_wait(31),
      Q => t_st(3)
    );
  t_st_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => OOPS_inv,
      D => trig_wait(31),
      Q => t_st(4)
    );
  t_st_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => OOPS_inv,
      D => trig_wait(31),
      Q => t_st(5)
    );
  t_st_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => OOPS_inv,
      D => trig_wait(31),
      Q => t_st(6)
    );
  t_st_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => OOPS_inv,
      D => trig_wait(31),
      Q => t_st(7)
    );
  t_st_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => OOPS_inv,
      D => trig_wait(31),
      Q => t_st(8)
    );
  t_st_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => OOPS_inv,
      D => trig_wait(31),
      Q => t_st(9)
    );
  t_st_10 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => OOPS_inv,
      D => trig_wait(31),
      Q => t_st(10)
    );
  t_st_11 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => OOPS_inv,
      D => trig_wait(31),
      Q => t_st(11)
    );
  t_st_12 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => OOPS_inv,
      D => trig_wait(31),
      Q => t_st(12)
    );
  t_st_13 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => OOPS_inv,
      D => trig_wait(31),
      Q => t_st(13)
    );
  t_st_14 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => OOPS_inv,
      D => trig_wait(31),
      Q => t_st(14)
    );
  t_st_15 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => OOPS_inv,
      D => trig_wait(31),
      Q => t_st(15)
    );
  t_st_16 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => OOPS_inv,
      D => trig_wait(31),
      Q => t_st(16)
    );
  t_st_17 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => OOPS_inv,
      D => trig_wait(31),
      Q => t_st(17)
    );
  t_st_18 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => OOPS_inv,
      D => trig_wait(31),
      Q => t_st(18)
    );
  t_st_19 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => OOPS_inv,
      D => trig_wait(31),
      Q => t_st(19)
    );
  t_st_20 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => OOPS_inv,
      D => trig_wait(31),
      Q => t_st(20)
    );
  t_st_21 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => OOPS_inv,
      D => trig_wait(31),
      Q => t_st(21)
    );
  t_st_22 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => OOPS_inv,
      D => trig_wait(31),
      Q => t_st(22)
    );
  t_st_23 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => OOPS_inv,
      D => trig_wait(31),
      Q => t_st(23)
    );
  t_st_24 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => OOPS_inv,
      D => trig_wait(31),
      Q => t_st(24)
    );
  t_st_25 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => OOPS_inv,
      D => trig_wait(31),
      Q => t_st(25)
    );
  t_st_26 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => OOPS_inv,
      D => trig_wait(31),
      Q => t_st(26)
    );
  t_st_27 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => OOPS_inv,
      D => trig_wait(31),
      Q => t_st(27)
    );
  t_st_28 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => OOPS_inv,
      D => trig_wait(31),
      Q => t_st(28)
    );
  t_st_29 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => OOPS_inv,
      D => trig_wait(31),
      Q => t_st(29)
    );
  t_st_30 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => OOPS_inv,
      D => trig_wait(31),
      Q => t_st(30)
    );
  t_st_31 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => OOPS_inv,
      D => trig_wait(31),
      Q => t_st(31)
    );
  sc_ack_buf_0 : FD
    port map (
      C => CLK,
      D => sc_dc_ack,
      Q => sc_ack_buf(0)
    );
  sc_ack_buf_1 : FD
    port map (
      C => CLK,
      D => sc_ack_buf(0),
      Q => sc_ack_buf(1)
    );
  Mcount_clk_counter_cy_0_Q : MUXCY
    port map (
      CI => trig_cnt_st_FSM_FFd2_458,
      DI => trig_wait(31),
      S => Mcount_clk_counter_lut(0),
      O => Mcount_clk_counter_cy(0)
    );
  Mcount_clk_counter_xor_0_Q : XORCY
    port map (
      CI => trig_cnt_st_FSM_FFd2_458,
      LI => Mcount_clk_counter_lut(0),
      O => Mcount_clk_counter
    );
  Mcount_clk_counter_cy_1_Q : MUXCY
    port map (
      CI => Mcount_clk_counter_cy(0),
      DI => trig_wait(31),
      S => Mcount_clk_counter_lut(1),
      O => Mcount_clk_counter_cy(1)
    );
  Mcount_clk_counter_xor_1_Q : XORCY
    port map (
      CI => Mcount_clk_counter_cy(0),
      LI => Mcount_clk_counter_lut(1),
      O => Mcount_clk_counter1
    );
  Mcount_clk_counter_cy_2_Q : MUXCY
    port map (
      CI => Mcount_clk_counter_cy(1),
      DI => trig_wait(31),
      S => Mcount_clk_counter_lut(2),
      O => Mcount_clk_counter_cy(2)
    );
  Mcount_clk_counter_xor_2_Q : XORCY
    port map (
      CI => Mcount_clk_counter_cy(1),
      LI => Mcount_clk_counter_lut(2),
      O => Mcount_clk_counter2
    );
  Mcount_clk_counter_cy_3_Q : MUXCY
    port map (
      CI => Mcount_clk_counter_cy(2),
      DI => trig_wait(31),
      S => Mcount_clk_counter_lut(3),
      O => Mcount_clk_counter_cy(3)
    );
  Mcount_clk_counter_xor_3_Q : XORCY
    port map (
      CI => Mcount_clk_counter_cy(2),
      LI => Mcount_clk_counter_lut(3),
      O => Mcount_clk_counter3
    );
  Mcount_clk_counter_cy_4_Q : MUXCY
    port map (
      CI => Mcount_clk_counter_cy(3),
      DI => trig_wait(31),
      S => Mcount_clk_counter_lut(4),
      O => Mcount_clk_counter_cy(4)
    );
  Mcount_clk_counter_xor_4_Q : XORCY
    port map (
      CI => Mcount_clk_counter_cy(3),
      LI => Mcount_clk_counter_lut(4),
      O => Mcount_clk_counter4
    );
  Mcount_clk_counter_cy_5_Q : MUXCY
    port map (
      CI => Mcount_clk_counter_cy(4),
      DI => trig_wait(31),
      S => Mcount_clk_counter_lut(5),
      O => Mcount_clk_counter_cy(5)
    );
  Mcount_clk_counter_xor_5_Q : XORCY
    port map (
      CI => Mcount_clk_counter_cy(4),
      LI => Mcount_clk_counter_lut(5),
      O => Mcount_clk_counter5
    );
  Mcount_clk_counter_cy_6_Q : MUXCY
    port map (
      CI => Mcount_clk_counter_cy(5),
      DI => trig_wait(31),
      S => Mcount_clk_counter_lut(6),
      O => Mcount_clk_counter_cy(6)
    );
  Mcount_clk_counter_xor_6_Q : XORCY
    port map (
      CI => Mcount_clk_counter_cy(5),
      LI => Mcount_clk_counter_lut(6),
      O => Mcount_clk_counter6
    );
  Mcount_clk_counter_cy_7_Q : MUXCY
    port map (
      CI => Mcount_clk_counter_cy(6),
      DI => trig_wait(31),
      S => Mcount_clk_counter_lut(7),
      O => Mcount_clk_counter_cy(7)
    );
  Mcount_clk_counter_xor_7_Q : XORCY
    port map (
      CI => Mcount_clk_counter_cy(6),
      LI => Mcount_clk_counter_lut(7),
      O => Mcount_clk_counter7
    );
  Mcount_clk_counter_cy_8_Q : MUXCY
    port map (
      CI => Mcount_clk_counter_cy(7),
      DI => trig_wait(31),
      S => Mcount_clk_counter_lut(8),
      O => Mcount_clk_counter_cy(8)
    );
  Mcount_clk_counter_xor_8_Q : XORCY
    port map (
      CI => Mcount_clk_counter_cy(7),
      LI => Mcount_clk_counter_lut(8),
      O => Mcount_clk_counter8
    );
  Mcount_clk_counter_cy_9_Q : MUXCY
    port map (
      CI => Mcount_clk_counter_cy(8),
      DI => trig_wait(31),
      S => Mcount_clk_counter_lut(9),
      O => Mcount_clk_counter_cy(9)
    );
  Mcount_clk_counter_xor_9_Q : XORCY
    port map (
      CI => Mcount_clk_counter_cy(8),
      LI => Mcount_clk_counter_lut(9),
      O => Mcount_clk_counter9
    );
  Mcount_clk_counter_cy_10_Q : MUXCY
    port map (
      CI => Mcount_clk_counter_cy(9),
      DI => trig_wait(31),
      S => Mcount_clk_counter_lut(10),
      O => Mcount_clk_counter_cy(10)
    );
  Mcount_clk_counter_xor_10_Q : XORCY
    port map (
      CI => Mcount_clk_counter_cy(9),
      LI => Mcount_clk_counter_lut(10),
      O => Mcount_clk_counter10
    );
  Mcount_clk_counter_cy_11_Q : MUXCY
    port map (
      CI => Mcount_clk_counter_cy(10),
      DI => trig_wait(31),
      S => Mcount_clk_counter_lut(11),
      O => Mcount_clk_counter_cy(11)
    );
  Mcount_clk_counter_xor_11_Q : XORCY
    port map (
      CI => Mcount_clk_counter_cy(10),
      LI => Mcount_clk_counter_lut(11),
      O => Mcount_clk_counter11
    );
  Mcount_clk_counter_cy_12_Q : MUXCY
    port map (
      CI => Mcount_clk_counter_cy(11),
      DI => trig_wait(31),
      S => Mcount_clk_counter_lut(12),
      O => Mcount_clk_counter_cy(12)
    );
  Mcount_clk_counter_xor_12_Q : XORCY
    port map (
      CI => Mcount_clk_counter_cy(11),
      LI => Mcount_clk_counter_lut(12),
      O => Mcount_clk_counter12
    );
  Mcount_clk_counter_cy_13_Q : MUXCY
    port map (
      CI => Mcount_clk_counter_cy(12),
      DI => trig_wait(31),
      S => Mcount_clk_counter_lut(13),
      O => Mcount_clk_counter_cy(13)
    );
  Mcount_clk_counter_xor_13_Q : XORCY
    port map (
      CI => Mcount_clk_counter_cy(12),
      LI => Mcount_clk_counter_lut(13),
      O => Mcount_clk_counter13
    );
  Mcount_clk_counter_cy_14_Q : MUXCY
    port map (
      CI => Mcount_clk_counter_cy(13),
      DI => trig_wait(31),
      S => Mcount_clk_counter_lut(14),
      O => Mcount_clk_counter_cy(14)
    );
  Mcount_clk_counter_xor_14_Q : XORCY
    port map (
      CI => Mcount_clk_counter_cy(13),
      LI => Mcount_clk_counter_lut(14),
      O => Mcount_clk_counter14
    );
  Mcount_clk_counter_cy_15_Q : MUXCY
    port map (
      CI => Mcount_clk_counter_cy(14),
      DI => trig_wait(31),
      S => Mcount_clk_counter_lut(15),
      O => Mcount_clk_counter_cy(15)
    );
  Mcount_clk_counter_xor_15_Q : XORCY
    port map (
      CI => Mcount_clk_counter_cy(14),
      LI => Mcount_clk_counter_lut(15),
      O => Mcount_clk_counter15
    );
  Mcount_clk_counter_cy_16_Q : MUXCY
    port map (
      CI => Mcount_clk_counter_cy(15),
      DI => trig_wait(31),
      S => Mcount_clk_counter_lut(16),
      O => Mcount_clk_counter_cy(16)
    );
  Mcount_clk_counter_xor_16_Q : XORCY
    port map (
      CI => Mcount_clk_counter_cy(15),
      LI => Mcount_clk_counter_lut(16),
      O => Mcount_clk_counter16
    );
  Mcount_clk_counter_cy_17_Q : MUXCY
    port map (
      CI => Mcount_clk_counter_cy(16),
      DI => trig_wait(31),
      S => Mcount_clk_counter_lut(17),
      O => Mcount_clk_counter_cy(17)
    );
  Mcount_clk_counter_xor_17_Q : XORCY
    port map (
      CI => Mcount_clk_counter_cy(16),
      LI => Mcount_clk_counter_lut(17),
      O => Mcount_clk_counter17
    );
  Mcount_clk_counter_cy_18_Q : MUXCY
    port map (
      CI => Mcount_clk_counter_cy(17),
      DI => trig_wait(31),
      S => Mcount_clk_counter_lut(18),
      O => Mcount_clk_counter_cy(18)
    );
  Mcount_clk_counter_xor_18_Q : XORCY
    port map (
      CI => Mcount_clk_counter_cy(17),
      LI => Mcount_clk_counter_lut(18),
      O => Mcount_clk_counter18
    );
  Mcount_clk_counter_cy_19_Q : MUXCY
    port map (
      CI => Mcount_clk_counter_cy(18),
      DI => trig_wait(31),
      S => Mcount_clk_counter_lut(19),
      O => Mcount_clk_counter_cy(19)
    );
  Mcount_clk_counter_xor_19_Q : XORCY
    port map (
      CI => Mcount_clk_counter_cy(18),
      LI => Mcount_clk_counter_lut(19),
      O => Mcount_clk_counter19
    );
  Mcount_clk_counter_cy_20_Q : MUXCY
    port map (
      CI => Mcount_clk_counter_cy(19),
      DI => trig_wait(31),
      S => Mcount_clk_counter_lut(20),
      O => Mcount_clk_counter_cy(20)
    );
  Mcount_clk_counter_xor_20_Q : XORCY
    port map (
      CI => Mcount_clk_counter_cy(19),
      LI => Mcount_clk_counter_lut(20),
      O => Mcount_clk_counter20
    );
  Mcount_clk_counter_cy_21_Q : MUXCY
    port map (
      CI => Mcount_clk_counter_cy(20),
      DI => trig_wait(31),
      S => Mcount_clk_counter_lut(21),
      O => Mcount_clk_counter_cy(21)
    );
  Mcount_clk_counter_xor_21_Q : XORCY
    port map (
      CI => Mcount_clk_counter_cy(20),
      LI => Mcount_clk_counter_lut(21),
      O => Mcount_clk_counter21
    );
  Mcount_clk_counter_cy_22_Q : MUXCY
    port map (
      CI => Mcount_clk_counter_cy(21),
      DI => trig_wait(31),
      S => Mcount_clk_counter_lut(22),
      O => Mcount_clk_counter_cy(22)
    );
  Mcount_clk_counter_xor_22_Q : XORCY
    port map (
      CI => Mcount_clk_counter_cy(21),
      LI => Mcount_clk_counter_lut(22),
      O => Mcount_clk_counter22
    );
  Mcount_clk_counter_cy_23_Q : MUXCY
    port map (
      CI => Mcount_clk_counter_cy(22),
      DI => trig_wait(31),
      S => Mcount_clk_counter_lut(23),
      O => Mcount_clk_counter_cy(23)
    );
  Mcount_clk_counter_xor_23_Q : XORCY
    port map (
      CI => Mcount_clk_counter_cy(22),
      LI => Mcount_clk_counter_lut(23),
      O => Mcount_clk_counter23
    );
  Mcount_clk_counter_cy_24_Q : MUXCY
    port map (
      CI => Mcount_clk_counter_cy(23),
      DI => trig_wait(31),
      S => Mcount_clk_counter_lut(24),
      O => Mcount_clk_counter_cy(24)
    );
  Mcount_clk_counter_xor_24_Q : XORCY
    port map (
      CI => Mcount_clk_counter_cy(23),
      LI => Mcount_clk_counter_lut(24),
      O => Mcount_clk_counter24
    );
  Mcount_clk_counter_cy_25_Q : MUXCY
    port map (
      CI => Mcount_clk_counter_cy(24),
      DI => trig_wait(31),
      S => Mcount_clk_counter_lut(25),
      O => Mcount_clk_counter_cy(25)
    );
  Mcount_clk_counter_xor_25_Q : XORCY
    port map (
      CI => Mcount_clk_counter_cy(24),
      LI => Mcount_clk_counter_lut(25),
      O => Mcount_clk_counter25
    );
  Mcount_clk_counter_cy_26_Q : MUXCY
    port map (
      CI => Mcount_clk_counter_cy(25),
      DI => trig_wait(31),
      S => Mcount_clk_counter_lut(26),
      O => Mcount_clk_counter_cy(26)
    );
  Mcount_clk_counter_xor_26_Q : XORCY
    port map (
      CI => Mcount_clk_counter_cy(25),
      LI => Mcount_clk_counter_lut(26),
      O => Mcount_clk_counter26
    );
  Mcount_clk_counter_cy_27_Q : MUXCY
    port map (
      CI => Mcount_clk_counter_cy(26),
      DI => trig_wait(31),
      S => Mcount_clk_counter_lut(27),
      O => Mcount_clk_counter_cy(27)
    );
  Mcount_clk_counter_xor_27_Q : XORCY
    port map (
      CI => Mcount_clk_counter_cy(26),
      LI => Mcount_clk_counter_lut(27),
      O => Mcount_clk_counter27
    );
  Mcount_clk_counter_cy_28_Q : MUXCY
    port map (
      CI => Mcount_clk_counter_cy(27),
      DI => trig_wait(31),
      S => Mcount_clk_counter_lut(28),
      O => Mcount_clk_counter_cy(28)
    );
  Mcount_clk_counter_xor_28_Q : XORCY
    port map (
      CI => Mcount_clk_counter_cy(27),
      LI => Mcount_clk_counter_lut(28),
      O => Mcount_clk_counter28
    );
  Mcount_clk_counter_cy_29_Q : MUXCY
    port map (
      CI => Mcount_clk_counter_cy(28),
      DI => trig_wait(31),
      S => Mcount_clk_counter_lut(29),
      O => Mcount_clk_counter_cy(29)
    );
  Mcount_clk_counter_xor_29_Q : XORCY
    port map (
      CI => Mcount_clk_counter_cy(28),
      LI => Mcount_clk_counter_lut(29),
      O => Mcount_clk_counter29
    );
  Mcount_clk_counter_cy_30_Q : MUXCY
    port map (
      CI => Mcount_clk_counter_cy(29),
      DI => trig_wait(31),
      S => Mcount_clk_counter_lut(30),
      O => Mcount_clk_counter_cy(30)
    );
  Mcount_clk_counter_xor_30_Q : XORCY
    port map (
      CI => Mcount_clk_counter_cy(29),
      LI => Mcount_clk_counter_lut(30),
      O => Mcount_clk_counter30
    );
  Mcount_clk_counter_xor_31_Q : XORCY
    port map (
      CI => Mcount_clk_counter_cy(30),
      LI => Mcount_clk_counter_lut(31),
      O => Mcount_clk_counter31
    );
  Mcount_pulse_count_cy_0_Q : MUXCY
    port map (
      CI => trig_cnt_st_FSM_FFd2_458,
      DI => trig_wait(31),
      S => Mcount_pulse_count_lut(0),
      O => Mcount_pulse_count_cy(0)
    );
  Mcount_pulse_count_xor_0_Q : XORCY
    port map (
      CI => trig_cnt_st_FSM_FFd2_458,
      LI => Mcount_pulse_count_lut(0),
      O => Mcount_pulse_count
    );
  Mcount_pulse_count_cy_1_Q : MUXCY
    port map (
      CI => Mcount_pulse_count_cy(0),
      DI => trig_wait(31),
      S => Mcount_pulse_count_lut(1),
      O => Mcount_pulse_count_cy(1)
    );
  Mcount_pulse_count_xor_1_Q : XORCY
    port map (
      CI => Mcount_pulse_count_cy(0),
      LI => Mcount_pulse_count_lut(1),
      O => Mcount_pulse_count1
    );
  Mcount_pulse_count_cy_2_Q : MUXCY
    port map (
      CI => Mcount_pulse_count_cy(1),
      DI => trig_wait(31),
      S => Mcount_pulse_count_lut(2),
      O => Mcount_pulse_count_cy(2)
    );
  Mcount_pulse_count_xor_2_Q : XORCY
    port map (
      CI => Mcount_pulse_count_cy(1),
      LI => Mcount_pulse_count_lut(2),
      O => Mcount_pulse_count2
    );
  Mcount_pulse_count_cy_3_Q : MUXCY
    port map (
      CI => Mcount_pulse_count_cy(2),
      DI => trig_wait(31),
      S => Mcount_pulse_count_lut(3),
      O => Mcount_pulse_count_cy(3)
    );
  Mcount_pulse_count_xor_3_Q : XORCY
    port map (
      CI => Mcount_pulse_count_cy(2),
      LI => Mcount_pulse_count_lut(3),
      O => Mcount_pulse_count3
    );
  Mcount_pulse_count_cy_4_Q : MUXCY
    port map (
      CI => Mcount_pulse_count_cy(3),
      DI => trig_wait(31),
      S => Mcount_pulse_count_lut(4),
      O => Mcount_pulse_count_cy(4)
    );
  Mcount_pulse_count_xor_4_Q : XORCY
    port map (
      CI => Mcount_pulse_count_cy(3),
      LI => Mcount_pulse_count_lut(4),
      O => Mcount_pulse_count4
    );
  Mcount_pulse_count_cy_5_Q : MUXCY
    port map (
      CI => Mcount_pulse_count_cy(4),
      DI => trig_wait(31),
      S => Mcount_pulse_count_lut(5),
      O => Mcount_pulse_count_cy(5)
    );
  Mcount_pulse_count_xor_5_Q : XORCY
    port map (
      CI => Mcount_pulse_count_cy(4),
      LI => Mcount_pulse_count_lut(5),
      O => Mcount_pulse_count5
    );
  Mcount_pulse_count_cy_6_Q : MUXCY
    port map (
      CI => Mcount_pulse_count_cy(5),
      DI => trig_wait(31),
      S => Mcount_pulse_count_lut(6),
      O => Mcount_pulse_count_cy(6)
    );
  Mcount_pulse_count_xor_6_Q : XORCY
    port map (
      CI => Mcount_pulse_count_cy(5),
      LI => Mcount_pulse_count_lut(6),
      O => Mcount_pulse_count6
    );
  Mcount_pulse_count_cy_7_Q : MUXCY
    port map (
      CI => Mcount_pulse_count_cy(6),
      DI => trig_wait(31),
      S => Mcount_pulse_count_lut(7),
      O => Mcount_pulse_count_cy(7)
    );
  Mcount_pulse_count_xor_7_Q : XORCY
    port map (
      CI => Mcount_pulse_count_cy(6),
      LI => Mcount_pulse_count_lut(7),
      O => Mcount_pulse_count7
    );
  Mcount_pulse_count_cy_8_Q : MUXCY
    port map (
      CI => Mcount_pulse_count_cy(7),
      DI => trig_wait(31),
      S => Mcount_pulse_count_lut(8),
      O => Mcount_pulse_count_cy(8)
    );
  Mcount_pulse_count_xor_8_Q : XORCY
    port map (
      CI => Mcount_pulse_count_cy(7),
      LI => Mcount_pulse_count_lut(8),
      O => Mcount_pulse_count8
    );
  Mcount_pulse_count_cy_9_Q : MUXCY
    port map (
      CI => Mcount_pulse_count_cy(8),
      DI => trig_wait(31),
      S => Mcount_pulse_count_lut(9),
      O => Mcount_pulse_count_cy(9)
    );
  Mcount_pulse_count_xor_9_Q : XORCY
    port map (
      CI => Mcount_pulse_count_cy(8),
      LI => Mcount_pulse_count_lut(9),
      O => Mcount_pulse_count9
    );
  Mcount_pulse_count_cy_10_Q : MUXCY
    port map (
      CI => Mcount_pulse_count_cy(9),
      DI => trig_wait(31),
      S => Mcount_pulse_count_lut(10),
      O => Mcount_pulse_count_cy(10)
    );
  Mcount_pulse_count_xor_10_Q : XORCY
    port map (
      CI => Mcount_pulse_count_cy(9),
      LI => Mcount_pulse_count_lut(10),
      O => Mcount_pulse_count10
    );
  Mcount_pulse_count_cy_11_Q : MUXCY
    port map (
      CI => Mcount_pulse_count_cy(10),
      DI => trig_wait(31),
      S => Mcount_pulse_count_lut(11),
      O => Mcount_pulse_count_cy(11)
    );
  Mcount_pulse_count_xor_11_Q : XORCY
    port map (
      CI => Mcount_pulse_count_cy(10),
      LI => Mcount_pulse_count_lut(11),
      O => Mcount_pulse_count11
    );
  Mcount_pulse_count_cy_12_Q : MUXCY
    port map (
      CI => Mcount_pulse_count_cy(11),
      DI => trig_wait(31),
      S => Mcount_pulse_count_lut(12),
      O => Mcount_pulse_count_cy(12)
    );
  Mcount_pulse_count_xor_12_Q : XORCY
    port map (
      CI => Mcount_pulse_count_cy(11),
      LI => Mcount_pulse_count_lut(12),
      O => Mcount_pulse_count12
    );
  Mcount_pulse_count_cy_13_Q : MUXCY
    port map (
      CI => Mcount_pulse_count_cy(12),
      DI => trig_wait(31),
      S => Mcount_pulse_count_lut(13),
      O => Mcount_pulse_count_cy(13)
    );
  Mcount_pulse_count_xor_13_Q : XORCY
    port map (
      CI => Mcount_pulse_count_cy(12),
      LI => Mcount_pulse_count_lut(13),
      O => Mcount_pulse_count13
    );
  Mcount_pulse_count_cy_14_Q : MUXCY
    port map (
      CI => Mcount_pulse_count_cy(13),
      DI => trig_wait(31),
      S => Mcount_pulse_count_lut(14),
      O => Mcount_pulse_count_cy(14)
    );
  Mcount_pulse_count_xor_14_Q : XORCY
    port map (
      CI => Mcount_pulse_count_cy(13),
      LI => Mcount_pulse_count_lut(14),
      O => Mcount_pulse_count14
    );
  Mcount_pulse_count_cy_15_Q : MUXCY
    port map (
      CI => Mcount_pulse_count_cy(14),
      DI => trig_wait(31),
      S => Mcount_pulse_count_lut(15),
      O => Mcount_pulse_count_cy(15)
    );
  Mcount_pulse_count_xor_15_Q : XORCY
    port map (
      CI => Mcount_pulse_count_cy(14),
      LI => Mcount_pulse_count_lut(15),
      O => Mcount_pulse_count15
    );
  Mcount_pulse_count_cy_16_Q : MUXCY
    port map (
      CI => Mcount_pulse_count_cy(15),
      DI => trig_wait(31),
      S => Mcount_pulse_count_lut(16),
      O => Mcount_pulse_count_cy(16)
    );
  Mcount_pulse_count_xor_16_Q : XORCY
    port map (
      CI => Mcount_pulse_count_cy(15),
      LI => Mcount_pulse_count_lut(16),
      O => Mcount_pulse_count16
    );
  Mcount_pulse_count_cy_17_Q : MUXCY
    port map (
      CI => Mcount_pulse_count_cy(16),
      DI => trig_wait(31),
      S => Mcount_pulse_count_lut(17),
      O => Mcount_pulse_count_cy(17)
    );
  Mcount_pulse_count_xor_17_Q : XORCY
    port map (
      CI => Mcount_pulse_count_cy(16),
      LI => Mcount_pulse_count_lut(17),
      O => Mcount_pulse_count17
    );
  Mcount_pulse_count_cy_18_Q : MUXCY
    port map (
      CI => Mcount_pulse_count_cy(17),
      DI => trig_wait(31),
      S => Mcount_pulse_count_lut(18),
      O => Mcount_pulse_count_cy(18)
    );
  Mcount_pulse_count_xor_18_Q : XORCY
    port map (
      CI => Mcount_pulse_count_cy(17),
      LI => Mcount_pulse_count_lut(18),
      O => Mcount_pulse_count18
    );
  Mcount_pulse_count_cy_19_Q : MUXCY
    port map (
      CI => Mcount_pulse_count_cy(18),
      DI => trig_wait(31),
      S => Mcount_pulse_count_lut(19),
      O => Mcount_pulse_count_cy(19)
    );
  Mcount_pulse_count_xor_19_Q : XORCY
    port map (
      CI => Mcount_pulse_count_cy(18),
      LI => Mcount_pulse_count_lut(19),
      O => Mcount_pulse_count19
    );
  Mcount_pulse_count_cy_20_Q : MUXCY
    port map (
      CI => Mcount_pulse_count_cy(19),
      DI => trig_wait(31),
      S => Mcount_pulse_count_lut(20),
      O => Mcount_pulse_count_cy(20)
    );
  Mcount_pulse_count_xor_20_Q : XORCY
    port map (
      CI => Mcount_pulse_count_cy(19),
      LI => Mcount_pulse_count_lut(20),
      O => Mcount_pulse_count20
    );
  Mcount_pulse_count_cy_21_Q : MUXCY
    port map (
      CI => Mcount_pulse_count_cy(20),
      DI => trig_wait(31),
      S => Mcount_pulse_count_lut(21),
      O => Mcount_pulse_count_cy(21)
    );
  Mcount_pulse_count_xor_21_Q : XORCY
    port map (
      CI => Mcount_pulse_count_cy(20),
      LI => Mcount_pulse_count_lut(21),
      O => Mcount_pulse_count21
    );
  Mcount_pulse_count_cy_22_Q : MUXCY
    port map (
      CI => Mcount_pulse_count_cy(21),
      DI => trig_wait(31),
      S => Mcount_pulse_count_lut(22),
      O => Mcount_pulse_count_cy(22)
    );
  Mcount_pulse_count_xor_22_Q : XORCY
    port map (
      CI => Mcount_pulse_count_cy(21),
      LI => Mcount_pulse_count_lut(22),
      O => Mcount_pulse_count22
    );
  Mcount_pulse_count_cy_23_Q : MUXCY
    port map (
      CI => Mcount_pulse_count_cy(22),
      DI => trig_wait(31),
      S => Mcount_pulse_count_lut(23),
      O => Mcount_pulse_count_cy(23)
    );
  Mcount_pulse_count_xor_23_Q : XORCY
    port map (
      CI => Mcount_pulse_count_cy(22),
      LI => Mcount_pulse_count_lut(23),
      O => Mcount_pulse_count23
    );
  Mcount_pulse_count_cy_24_Q : MUXCY
    port map (
      CI => Mcount_pulse_count_cy(23),
      DI => trig_wait(31),
      S => Mcount_pulse_count_lut(24),
      O => Mcount_pulse_count_cy(24)
    );
  Mcount_pulse_count_xor_24_Q : XORCY
    port map (
      CI => Mcount_pulse_count_cy(23),
      LI => Mcount_pulse_count_lut(24),
      O => Mcount_pulse_count24
    );
  Mcount_pulse_count_cy_25_Q : MUXCY
    port map (
      CI => Mcount_pulse_count_cy(24),
      DI => trig_wait(31),
      S => Mcount_pulse_count_lut(25),
      O => Mcount_pulse_count_cy(25)
    );
  Mcount_pulse_count_xor_25_Q : XORCY
    port map (
      CI => Mcount_pulse_count_cy(24),
      LI => Mcount_pulse_count_lut(25),
      O => Mcount_pulse_count25
    );
  Mcount_pulse_count_cy_26_Q : MUXCY
    port map (
      CI => Mcount_pulse_count_cy(25),
      DI => trig_wait(31),
      S => Mcount_pulse_count_lut(26),
      O => Mcount_pulse_count_cy(26)
    );
  Mcount_pulse_count_xor_26_Q : XORCY
    port map (
      CI => Mcount_pulse_count_cy(25),
      LI => Mcount_pulse_count_lut(26),
      O => Mcount_pulse_count26
    );
  Mcount_pulse_count_cy_27_Q : MUXCY
    port map (
      CI => Mcount_pulse_count_cy(26),
      DI => trig_wait(31),
      S => Mcount_pulse_count_lut(27),
      O => Mcount_pulse_count_cy(27)
    );
  Mcount_pulse_count_xor_27_Q : XORCY
    port map (
      CI => Mcount_pulse_count_cy(26),
      LI => Mcount_pulse_count_lut(27),
      O => Mcount_pulse_count27
    );
  Mcount_pulse_count_cy_28_Q : MUXCY
    port map (
      CI => Mcount_pulse_count_cy(27),
      DI => trig_wait(31),
      S => Mcount_pulse_count_lut(28),
      O => Mcount_pulse_count_cy(28)
    );
  Mcount_pulse_count_xor_28_Q : XORCY
    port map (
      CI => Mcount_pulse_count_cy(27),
      LI => Mcount_pulse_count_lut(28),
      O => Mcount_pulse_count28
    );
  Mcount_pulse_count_cy_29_Q : MUXCY
    port map (
      CI => Mcount_pulse_count_cy(28),
      DI => trig_wait(31),
      S => Mcount_pulse_count_lut(29),
      O => Mcount_pulse_count_cy(29)
    );
  Mcount_pulse_count_xor_29_Q : XORCY
    port map (
      CI => Mcount_pulse_count_cy(28),
      LI => Mcount_pulse_count_lut(29),
      O => Mcount_pulse_count29
    );
  Mcount_pulse_count_cy_30_Q : MUXCY
    port map (
      CI => Mcount_pulse_count_cy(29),
      DI => trig_wait(31),
      S => Mcount_pulse_count_lut(30),
      O => Mcount_pulse_count_cy(30)
    );
  Mcount_pulse_count_xor_30_Q : XORCY
    port map (
      CI => Mcount_pulse_count_cy(29),
      LI => Mcount_pulse_count_lut(30),
      O => Mcount_pulse_count30
    );
  Mcount_pulse_count_xor_31_Q : XORCY
    port map (
      CI => Mcount_pulse_count_cy(30),
      LI => Mcount_pulse_count_lut(31),
      O => Mcount_pulse_count31
    );
  trig_cnt_st_FSM_FFd2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => trig_cnt_st_FSM_FFd2_In,
      R => OOPS,
      Q => trig_cnt_st_FSM_FFd2_458
    );
  trig_cnt_st_FSM_FFd1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => trig_cnt_st_FSM_FFd1_In,
      R => OOPS,
      Q => trig_cnt_st_FSM_FFd1_84
    );
  trig_st_FSM_FFd2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => trig_st_FSM_FFd2_In_343,
      R => OOPS,
      Q => trig_st_FSM_FFd2_231
    );
  pulse_count_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0278_inv,
      D => Mcount_pulse_count,
      Q => pulse_count(0)
    );
  pulse_count_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0278_inv,
      D => Mcount_pulse_count1,
      Q => pulse_count(1)
    );
  pulse_count_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0278_inv,
      D => Mcount_pulse_count2,
      Q => pulse_count(2)
    );
  pulse_count_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0278_inv,
      D => Mcount_pulse_count3,
      Q => pulse_count(3)
    );
  pulse_count_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0278_inv,
      D => Mcount_pulse_count4,
      Q => pulse_count(4)
    );
  pulse_count_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0278_inv,
      D => Mcount_pulse_count5,
      Q => pulse_count(5)
    );
  pulse_count_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0278_inv,
      D => Mcount_pulse_count6,
      Q => pulse_count(6)
    );
  pulse_count_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0278_inv,
      D => Mcount_pulse_count7,
      Q => pulse_count(7)
    );
  pulse_count_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0278_inv,
      D => Mcount_pulse_count8,
      Q => pulse_count(8)
    );
  pulse_count_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0278_inv,
      D => Mcount_pulse_count9,
      Q => pulse_count(9)
    );
  pulse_count_10 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0278_inv,
      D => Mcount_pulse_count10,
      Q => pulse_count(10)
    );
  pulse_count_11 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0278_inv,
      D => Mcount_pulse_count11,
      Q => pulse_count(11)
    );
  pulse_count_12 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0278_inv,
      D => Mcount_pulse_count12,
      Q => pulse_count(12)
    );
  pulse_count_13 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0278_inv,
      D => Mcount_pulse_count13,
      Q => pulse_count(13)
    );
  pulse_count_14 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0278_inv,
      D => Mcount_pulse_count14,
      Q => pulse_count(14)
    );
  pulse_count_15 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0278_inv,
      D => Mcount_pulse_count15,
      Q => pulse_count(15)
    );
  pulse_count_16 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0278_inv,
      D => Mcount_pulse_count16,
      Q => pulse_count(16)
    );
  pulse_count_17 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0278_inv,
      D => Mcount_pulse_count17,
      Q => pulse_count(17)
    );
  pulse_count_18 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0278_inv,
      D => Mcount_pulse_count18,
      Q => pulse_count(18)
    );
  pulse_count_19 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0278_inv,
      D => Mcount_pulse_count19,
      Q => pulse_count(19)
    );
  pulse_count_20 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0278_inv,
      D => Mcount_pulse_count20,
      Q => pulse_count(20)
    );
  pulse_count_21 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0278_inv,
      D => Mcount_pulse_count21,
      Q => pulse_count(21)
    );
  pulse_count_22 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0278_inv,
      D => Mcount_pulse_count22,
      Q => pulse_count(22)
    );
  pulse_count_23 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0278_inv,
      D => Mcount_pulse_count23,
      Q => pulse_count(23)
    );
  pulse_count_24 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0278_inv,
      D => Mcount_pulse_count24,
      Q => pulse_count(24)
    );
  pulse_count_25 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0278_inv,
      D => Mcount_pulse_count25,
      Q => pulse_count(25)
    );
  pulse_count_26 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0278_inv,
      D => Mcount_pulse_count26,
      Q => pulse_count(26)
    );
  pulse_count_27 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0278_inv,
      D => Mcount_pulse_count27,
      Q => pulse_count(27)
    );
  pulse_count_28 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0278_inv,
      D => Mcount_pulse_count28,
      Q => pulse_count(28)
    );
  pulse_count_29 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0278_inv,
      D => Mcount_pulse_count29,
      Q => pulse_count(29)
    );
  pulse_count_30 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0278_inv,
      D => Mcount_pulse_count30,
      Q => pulse_count(30)
    );
  pulse_count_31 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0278_inv,
      D => Mcount_pulse_count31,
      Q => pulse_count(31)
    );
  trig_st_FSM_FFd1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => trig_st_FSM_FFd1_In,
      R => OOPS,
      Q => trig_st_FSM_FFd1_230
    );
  clk_counter_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0265_inv,
      D => Mcount_clk_counter,
      Q => clk_counter(0)
    );
  clk_counter_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0265_inv,
      D => Mcount_clk_counter1,
      Q => clk_counter(1)
    );
  clk_counter_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0265_inv,
      D => Mcount_clk_counter2,
      Q => clk_counter(2)
    );
  clk_counter_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0265_inv,
      D => Mcount_clk_counter3,
      Q => clk_counter(3)
    );
  clk_counter_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0265_inv,
      D => Mcount_clk_counter4,
      Q => clk_counter(4)
    );
  clk_counter_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0265_inv,
      D => Mcount_clk_counter5,
      Q => clk_counter(5)
    );
  clk_counter_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0265_inv,
      D => Mcount_clk_counter6,
      Q => clk_counter(6)
    );
  clk_counter_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0265_inv,
      D => Mcount_clk_counter7,
      Q => clk_counter(7)
    );
  clk_counter_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0265_inv,
      D => Mcount_clk_counter8,
      Q => clk_counter(8)
    );
  clk_counter_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0265_inv,
      D => Mcount_clk_counter9,
      Q => clk_counter(9)
    );
  clk_counter_10 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0265_inv,
      D => Mcount_clk_counter10,
      Q => clk_counter(10)
    );
  clk_counter_11 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0265_inv,
      D => Mcount_clk_counter11,
      Q => clk_counter(11)
    );
  clk_counter_12 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0265_inv,
      D => Mcount_clk_counter12,
      Q => clk_counter(12)
    );
  clk_counter_13 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0265_inv,
      D => Mcount_clk_counter13,
      Q => clk_counter(13)
    );
  clk_counter_14 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0265_inv,
      D => Mcount_clk_counter14,
      Q => clk_counter(14)
    );
  clk_counter_15 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0265_inv,
      D => Mcount_clk_counter15,
      Q => clk_counter(15)
    );
  clk_counter_16 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0265_inv,
      D => Mcount_clk_counter16,
      Q => clk_counter(16)
    );
  clk_counter_17 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0265_inv,
      D => Mcount_clk_counter17,
      Q => clk_counter(17)
    );
  clk_counter_18 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0265_inv,
      D => Mcount_clk_counter18,
      Q => clk_counter(18)
    );
  clk_counter_19 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0265_inv,
      D => Mcount_clk_counter19,
      Q => clk_counter(19)
    );
  clk_counter_20 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0265_inv,
      D => Mcount_clk_counter20,
      Q => clk_counter(20)
    );
  clk_counter_21 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0265_inv,
      D => Mcount_clk_counter21,
      Q => clk_counter(21)
    );
  clk_counter_22 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0265_inv,
      D => Mcount_clk_counter22,
      Q => clk_counter(22)
    );
  clk_counter_23 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0265_inv,
      D => Mcount_clk_counter23,
      Q => clk_counter(23)
    );
  clk_counter_24 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0265_inv,
      D => Mcount_clk_counter24,
      Q => clk_counter(24)
    );
  clk_counter_25 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0265_inv,
      D => Mcount_clk_counter25,
      Q => clk_counter(25)
    );
  clk_counter_26 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0265_inv,
      D => Mcount_clk_counter26,
      Q => clk_counter(26)
    );
  clk_counter_27 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0265_inv,
      D => Mcount_clk_counter27,
      Q => clk_counter(27)
    );
  clk_counter_28 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0265_inv,
      D => Mcount_clk_counter28,
      Q => clk_counter(28)
    );
  clk_counter_29 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0265_inv,
      D => Mcount_clk_counter29,
      Q => clk_counter(29)
    );
  clk_counter_30 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0265_inv,
      D => Mcount_clk_counter30,
      Q => clk_counter(30)
    );
  clk_counter_31 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0265_inv,
      D => Mcount_clk_counter31,
      Q => clk_counter(31)
    );
  Mcompar_n0075_lut_0_Q : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => clk_counter(16),
      I1 => MAX_CNT(0),
      I2 => clk_counter(17),
      I3 => MAX_CNT(1),
      I4 => clk_counter(18),
      I5 => MAX_CNT(2),
      O => Mcompar_n0075_lut(0)
    );
  Mcompar_n0075_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => trig_wait(31),
      S => Mcompar_n0075_lut(0),
      O => Mcompar_n0075_cy(0)
    );
  Mcompar_n0075_lut_1_Q : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => clk_counter(19),
      I1 => MAX_CNT(3),
      I2 => clk_counter(20),
      I3 => MAX_CNT(4),
      I4 => clk_counter(21),
      I5 => MAX_CNT(5),
      O => Mcompar_n0075_lut(1)
    );
  Mcompar_n0075_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_n0075_cy(0),
      DI => trig_wait(31),
      S => Mcompar_n0075_lut(1),
      O => Mcompar_n0075_cy(1)
    );
  Mcompar_n0075_lut_2_Q : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => clk_counter(22),
      I1 => MAX_CNT(6),
      I2 => clk_counter(23),
      I3 => MAX_CNT(7),
      I4 => clk_counter(24),
      I5 => MAX_CNT(8),
      O => Mcompar_n0075_lut(2)
    );
  Mcompar_n0075_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_n0075_cy(1),
      DI => trig_wait(31),
      S => Mcompar_n0075_lut(2),
      O => Mcompar_n0075_cy(2)
    );
  Mcompar_n0075_lut_3_Q : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => clk_counter(25),
      I1 => MAX_CNT(9),
      I2 => clk_counter(26),
      I3 => MAX_CNT(10),
      I4 => clk_counter(27),
      I5 => MAX_CNT(11),
      O => Mcompar_n0075_lut(3)
    );
  Mcompar_n0075_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_n0075_cy(2),
      DI => trig_wait(31),
      S => Mcompar_n0075_lut(3),
      O => Mcompar_n0075_cy(3)
    );
  Mcompar_n0075_lut_4_Q : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => clk_counter(28),
      I1 => MAX_CNT(12),
      I2 => clk_counter(29),
      I3 => MAX_CNT(13),
      I4 => clk_counter(30),
      I5 => MAX_CNT(14),
      O => Mcompar_n0075_lut(4)
    );
  Mcompar_n0075_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_n0075_cy(3),
      DI => trig_wait(31),
      S => Mcompar_n0075_lut(4),
      O => Mcompar_n0075_cy(4)
    );
  Mcompar_n0075_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => clk_counter(31),
      I1 => MAX_CNT(15),
      O => Mcompar_n0075_lut(5)
    );
  Mcompar_n0075_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_n0075_cy(4),
      DI => trig_wait(31),
      S => Mcompar_n0075_lut(5),
      O => n0075
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_0_Q : MUXCY
    port map (
      CI => trig_wait(31),
      DI => N1,
      S => Madd_trig_wait_31_GND_117_o_add_21_OUT_lut_0_Q,
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_0_Q_566
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_xor_0_Q : XORCY
    port map (
      CI => trig_wait(31),
      LI => Madd_trig_wait_31_GND_117_o_add_21_OUT_lut_0_Q,
      O => trig_wait_31_GND_117_o_add_21_OUT_0_Q
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_1_Q : MUXCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_0_Q_566,
      DI => trig_wait(31),
      S => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_1_rt_672,
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_1_Q_567
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_xor_1_Q : XORCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_0_Q_566,
      LI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_1_rt_672,
      O => trig_wait_31_GND_117_o_add_21_OUT_1_Q
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_2_Q : MUXCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_1_Q_567,
      DI => trig_wait(31),
      S => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_2_rt_673,
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_2_Q_568
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_xor_2_Q : XORCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_1_Q_567,
      LI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_2_rt_673,
      O => trig_wait_31_GND_117_o_add_21_OUT_2_Q
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_3_Q : MUXCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_2_Q_568,
      DI => trig_wait(31),
      S => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_3_rt_674,
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_3_Q_569
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_xor_3_Q : XORCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_2_Q_568,
      LI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_3_rt_674,
      O => trig_wait_31_GND_117_o_add_21_OUT_3_Q
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_4_Q : MUXCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_3_Q_569,
      DI => trig_wait(31),
      S => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_4_rt_675,
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_4_Q_570
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_xor_4_Q : XORCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_3_Q_569,
      LI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_4_rt_675,
      O => trig_wait_31_GND_117_o_add_21_OUT_4_Q
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_5_Q : MUXCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_4_Q_570,
      DI => trig_wait(31),
      S => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_5_rt_676,
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_5_Q_571
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_xor_5_Q : XORCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_4_Q_570,
      LI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_5_rt_676,
      O => trig_wait_31_GND_117_o_add_21_OUT_5_Q
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_6_Q : MUXCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_5_Q_571,
      DI => trig_wait(31),
      S => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_6_rt_677,
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_6_Q_572
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_xor_6_Q : XORCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_5_Q_571,
      LI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_6_rt_677,
      O => trig_wait_31_GND_117_o_add_21_OUT_6_Q
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_7_Q : MUXCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_6_Q_572,
      DI => trig_wait(31),
      S => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_7_rt_678,
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_7_Q_573
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_xor_7_Q : XORCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_6_Q_572,
      LI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_7_rt_678,
      O => trig_wait_31_GND_117_o_add_21_OUT_7_Q
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_8_Q : MUXCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_7_Q_573,
      DI => trig_wait(31),
      S => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_8_rt_679,
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_8_Q_574
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_xor_8_Q : XORCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_7_Q_573,
      LI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_8_rt_679,
      O => trig_wait_31_GND_117_o_add_21_OUT_8_Q
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_9_Q : MUXCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_8_Q_574,
      DI => trig_wait(31),
      S => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_9_rt_680,
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_9_Q_575
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_xor_9_Q : XORCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_8_Q_574,
      LI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_9_rt_680,
      O => trig_wait_31_GND_117_o_add_21_OUT_9_Q
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_10_Q : MUXCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_9_Q_575,
      DI => trig_wait(31),
      S => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_10_rt_681,
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_10_Q_576
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_xor_10_Q : XORCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_9_Q_575,
      LI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_10_rt_681,
      O => trig_wait_31_GND_117_o_add_21_OUT_10_Q
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_11_Q : MUXCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_10_Q_576,
      DI => trig_wait(31),
      S => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_11_rt_682,
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_11_Q_577
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_xor_11_Q : XORCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_10_Q_576,
      LI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_11_rt_682,
      O => trig_wait_31_GND_117_o_add_21_OUT_11_Q
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_12_Q : MUXCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_11_Q_577,
      DI => trig_wait(31),
      S => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_12_rt_683,
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_12_Q_578
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_xor_12_Q : XORCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_11_Q_577,
      LI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_12_rt_683,
      O => trig_wait_31_GND_117_o_add_21_OUT_12_Q
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_13_Q : MUXCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_12_Q_578,
      DI => trig_wait(31),
      S => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_13_rt_684,
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_13_Q_579
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_xor_13_Q : XORCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_12_Q_578,
      LI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_13_rt_684,
      O => trig_wait_31_GND_117_o_add_21_OUT_13_Q
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_14_Q : MUXCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_13_Q_579,
      DI => trig_wait(31),
      S => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_14_rt_685,
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_14_Q_580
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_xor_14_Q : XORCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_13_Q_579,
      LI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_14_rt_685,
      O => trig_wait_31_GND_117_o_add_21_OUT_14_Q
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_15_Q : MUXCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_14_Q_580,
      DI => trig_wait(31),
      S => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_15_rt_686,
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_15_Q_581
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_xor_15_Q : XORCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_14_Q_580,
      LI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_15_rt_686,
      O => trig_wait_31_GND_117_o_add_21_OUT_15_Q
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_16_Q : MUXCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_15_Q_581,
      DI => trig_wait(31),
      S => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_16_rt_687,
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_16_Q_582
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_xor_16_Q : XORCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_15_Q_581,
      LI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_16_rt_687,
      O => trig_wait_31_GND_117_o_add_21_OUT_16_Q
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_17_Q : MUXCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_16_Q_582,
      DI => trig_wait(31),
      S => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_17_rt_688,
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_17_Q_583
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_xor_17_Q : XORCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_16_Q_582,
      LI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_17_rt_688,
      O => trig_wait_31_GND_117_o_add_21_OUT_17_Q
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_18_Q : MUXCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_17_Q_583,
      DI => trig_wait(31),
      S => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_18_rt_689,
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_18_Q_584
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_xor_18_Q : XORCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_17_Q_583,
      LI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_18_rt_689,
      O => trig_wait_31_GND_117_o_add_21_OUT_18_Q
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_19_Q : MUXCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_18_Q_584,
      DI => trig_wait(31),
      S => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_19_rt_690,
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_19_Q_585
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_xor_19_Q : XORCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_18_Q_584,
      LI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_19_rt_690,
      O => trig_wait_31_GND_117_o_add_21_OUT_19_Q
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_20_Q : MUXCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_19_Q_585,
      DI => trig_wait(31),
      S => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_20_rt_691,
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_20_Q_586
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_xor_20_Q : XORCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_19_Q_585,
      LI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_20_rt_691,
      O => trig_wait_31_GND_117_o_add_21_OUT_20_Q
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_21_Q : MUXCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_20_Q_586,
      DI => trig_wait(31),
      S => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_21_rt_692,
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_21_Q_587
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_xor_21_Q : XORCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_20_Q_586,
      LI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_21_rt_692,
      O => trig_wait_31_GND_117_o_add_21_OUT_21_Q
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_22_Q : MUXCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_21_Q_587,
      DI => trig_wait(31),
      S => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_22_rt_693,
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_22_Q_588
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_xor_22_Q : XORCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_21_Q_587,
      LI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_22_rt_693,
      O => trig_wait_31_GND_117_o_add_21_OUT_22_Q
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_23_Q : MUXCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_22_Q_588,
      DI => trig_wait(31),
      S => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_23_rt_694,
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_23_Q_589
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_xor_23_Q : XORCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_22_Q_588,
      LI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_23_rt_694,
      O => trig_wait_31_GND_117_o_add_21_OUT_23_Q
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_24_Q : MUXCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_23_Q_589,
      DI => trig_wait(31),
      S => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_24_rt_695,
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_24_Q_590
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_xor_24_Q : XORCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_23_Q_589,
      LI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_24_rt_695,
      O => trig_wait_31_GND_117_o_add_21_OUT_24_Q
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_25_Q : MUXCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_24_Q_590,
      DI => trig_wait(31),
      S => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_25_rt_696,
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_25_Q_591
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_xor_25_Q : XORCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_24_Q_590,
      LI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_25_rt_696,
      O => trig_wait_31_GND_117_o_add_21_OUT_25_Q
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_26_Q : MUXCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_25_Q_591,
      DI => trig_wait(31),
      S => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_26_rt_697,
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_26_Q_592
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_xor_26_Q : XORCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_25_Q_591,
      LI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_26_rt_697,
      O => trig_wait_31_GND_117_o_add_21_OUT_26_Q
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_27_Q : MUXCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_26_Q_592,
      DI => trig_wait(31),
      S => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_27_rt_698,
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_27_Q_593
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_xor_27_Q : XORCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_26_Q_592,
      LI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_27_rt_698,
      O => trig_wait_31_GND_117_o_add_21_OUT_27_Q
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_28_Q : MUXCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_27_Q_593,
      DI => trig_wait(31),
      S => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_28_rt_699,
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_28_Q_594
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_xor_28_Q : XORCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_27_Q_593,
      LI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_28_rt_699,
      O => trig_wait_31_GND_117_o_add_21_OUT_28_Q
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_29_Q : MUXCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_28_Q_594,
      DI => trig_wait(31),
      S => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_29_rt_700,
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_29_Q_595
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_xor_29_Q : XORCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_28_Q_594,
      LI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_29_rt_700,
      O => trig_wait_31_GND_117_o_add_21_OUT_29_Q
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_xor_30_Q : XORCY
    port map (
      CI => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_29_Q_595,
      LI => Madd_trig_wait_31_GND_117_o_add_21_OUT_xor_30_rt_701,
      O => trig_wait_31_GND_117_o_add_21_OUT_30_Q
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => trig_wait(1),
      I1 => trig_wait(0),
      I2 => WAIT_COUNT(0),
      I3 => WAIT_COUNT(1),
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi_596
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_0_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => WAIT_COUNT(0),
      I1 => trig_wait(0),
      I2 => WAIT_COUNT(1),
      I3 => trig_wait(1),
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_0_Q_597
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi_596,
      S => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_0_Q_597,
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_0_Q_598
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi1 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => trig_wait(3),
      I1 => trig_wait(2),
      I2 => WAIT_COUNT(2),
      I3 => WAIT_COUNT(3),
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi1_599
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_1_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => WAIT_COUNT(2),
      I1 => trig_wait(2),
      I2 => WAIT_COUNT(3),
      I3 => trig_wait(3),
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_1_Q_600
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_0_Q_598,
      DI => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi1_599,
      S => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_1_Q_600,
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_1_Q_601
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi2 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => trig_wait(5),
      I1 => trig_wait(4),
      I2 => WAIT_COUNT(4),
      I3 => WAIT_COUNT(5),
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi2_602
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_2_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => WAIT_COUNT(4),
      I1 => trig_wait(4),
      I2 => WAIT_COUNT(5),
      I3 => trig_wait(5),
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_2_Q_603
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_1_Q_601,
      DI => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi2_602,
      S => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_2_Q_603,
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_2_Q_604
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi3 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => trig_wait(7),
      I1 => trig_wait(6),
      I2 => WAIT_COUNT(6),
      I3 => WAIT_COUNT(7),
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi3_605
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_3_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => WAIT_COUNT(6),
      I1 => trig_wait(6),
      I2 => WAIT_COUNT(7),
      I3 => trig_wait(7),
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_3_Q_606
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_2_Q_604,
      DI => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi3_605,
      S => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_3_Q_606,
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_3_Q_607
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi4 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => trig_wait(9),
      I1 => trig_wait(8),
      I2 => WAIT_COUNT(8),
      I3 => WAIT_COUNT(9),
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi4_608
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_4_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => WAIT_COUNT(8),
      I1 => trig_wait(8),
      I2 => WAIT_COUNT(9),
      I3 => trig_wait(9),
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_4_Q_609
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_3_Q_607,
      DI => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi4_608,
      S => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_4_Q_609,
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_4_Q_610
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi5 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => trig_wait(11),
      I1 => trig_wait(10),
      I2 => WAIT_COUNT(10),
      I3 => WAIT_COUNT(11),
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi5_611
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_5_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => WAIT_COUNT(10),
      I1 => trig_wait(10),
      I2 => WAIT_COUNT(11),
      I3 => trig_wait(11),
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_5_Q_612
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_4_Q_610,
      DI => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi5_611,
      S => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_5_Q_612,
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_5_Q_613
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi6 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => trig_wait(13),
      I1 => trig_wait(12),
      I2 => WAIT_COUNT(12),
      I3 => WAIT_COUNT(13),
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi6_614
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_6_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => WAIT_COUNT(12),
      I1 => trig_wait(12),
      I2 => WAIT_COUNT(13),
      I3 => trig_wait(13),
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_6_Q_615
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_5_Q_613,
      DI => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi6_614,
      S => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_6_Q_615,
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_6_Q_616
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi7 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => trig_wait(15),
      I1 => trig_wait(14),
      I2 => WAIT_COUNT(14),
      I3 => WAIT_COUNT(15),
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi7_617
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_7_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => WAIT_COUNT(14),
      I1 => trig_wait(14),
      I2 => WAIT_COUNT(15),
      I3 => trig_wait(15),
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_7_Q_618
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_6_Q_616,
      DI => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi7_617,
      S => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_7_Q_618,
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_7_Q_619
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi8 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => trig_wait(17),
      I1 => trig_wait(16),
      I2 => WAIT_COUNT(16),
      I3 => WAIT_COUNT(17),
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi8_620
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_8_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => WAIT_COUNT(16),
      I1 => trig_wait(16),
      I2 => WAIT_COUNT(17),
      I3 => trig_wait(17),
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_8_Q_621
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_7_Q_619,
      DI => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi8_620,
      S => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_8_Q_621,
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_8_Q_622
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi9 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => trig_wait(19),
      I1 => trig_wait(18),
      I2 => WAIT_COUNT(18),
      I3 => WAIT_COUNT(19),
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi9_623
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_9_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => WAIT_COUNT(18),
      I1 => trig_wait(18),
      I2 => WAIT_COUNT(19),
      I3 => trig_wait(19),
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_9_Q_624
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_8_Q_622,
      DI => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi9_623,
      S => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_9_Q_624,
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_9_Q_625
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi10 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => trig_wait(21),
      I1 => trig_wait(20),
      I2 => WAIT_COUNT(20),
      I3 => WAIT_COUNT(21),
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi10_626
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_10_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => WAIT_COUNT(20),
      I1 => trig_wait(20),
      I2 => WAIT_COUNT(21),
      I3 => trig_wait(21),
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_10_Q_627
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_10_Q : MUXCY
    port map (
      CI => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_9_Q_625,
      DI => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi10_626,
      S => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_10_Q_627,
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_10_Q_628
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi11 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => trig_wait(23),
      I1 => trig_wait(22),
      I2 => WAIT_COUNT(22),
      I3 => WAIT_COUNT(23),
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi11_629
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_11_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => WAIT_COUNT(22),
      I1 => trig_wait(22),
      I2 => WAIT_COUNT(23),
      I3 => trig_wait(23),
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_11_Q_630
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_11_Q : MUXCY
    port map (
      CI => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_10_Q_628,
      DI => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi11_629,
      S => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_11_Q_630,
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_11_Q_631
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi12 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => trig_wait(25),
      I1 => trig_wait(24),
      I2 => WAIT_COUNT(24),
      I3 => WAIT_COUNT(25),
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi12_632
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_12_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => WAIT_COUNT(24),
      I1 => trig_wait(24),
      I2 => WAIT_COUNT(25),
      I3 => trig_wait(25),
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_12_Q_633
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_12_Q : MUXCY
    port map (
      CI => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_11_Q_631,
      DI => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi12_632,
      S => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_12_Q_633,
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_12_Q_634
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi13 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => trig_wait(27),
      I1 => trig_wait(26),
      I2 => WAIT_COUNT(26),
      I3 => WAIT_COUNT(27),
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi13_635
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_13_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => WAIT_COUNT(26),
      I1 => trig_wait(26),
      I2 => WAIT_COUNT(27),
      I3 => trig_wait(27),
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_13_Q_636
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_13_Q : MUXCY
    port map (
      CI => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_12_Q_634,
      DI => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi13_635,
      S => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_13_Q_636,
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_13_Q_637
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi14 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => trig_wait(29),
      I1 => trig_wait(28),
      I2 => WAIT_COUNT(28),
      I3 => WAIT_COUNT(29),
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi14_638
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_14_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => WAIT_COUNT(28),
      I1 => trig_wait(28),
      I2 => WAIT_COUNT(29),
      I3 => trig_wait(29),
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_14_Q_639
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_14_Q : MUXCY
    port map (
      CI => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_13_Q_637,
      DI => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lutdi14_638,
      S => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_lut_14_Q_639,
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_14_Q_640
    );
  Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lutdi : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => trig_wait(4),
      I1 => trig_wait(2),
      I2 => trig_wait(1),
      I3 => trig_wait(3),
      O => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lutdi_642
    );
  Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lut_0_Q : LUT5
    generic map(
      INIT => X"00000008"
    )
    port map (
      I0 => trig_wait(2),
      I1 => trig_wait(0),
      I2 => trig_wait(1),
      I3 => trig_wait(3),
      I4 => trig_wait(4),
      O => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lut_0_Q_643
    );
  Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lutdi_642,
      S => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lut_0_Q_643,
      O => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_0_Q_644
    );
  Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lutdi1 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => trig_wait(9),
      I1 => trig_wait(8),
      I2 => trig_wait(7),
      I3 => trig_wait(6),
      I4 => trig_wait(5),
      O => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lutdi1_645
    );
  Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lut_1_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => trig_wait(5),
      I1 => trig_wait(6),
      I2 => trig_wait(7),
      I3 => trig_wait(8),
      I4 => trig_wait(9),
      O => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lut_1_Q_646
    );
  Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_0_Q_644,
      DI => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lutdi1_645,
      S => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lut_1_Q_646,
      O => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_1_Q_647
    );
  Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lutdi2 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => trig_wait(14),
      I1 => trig_wait(13),
      I2 => trig_wait(12),
      I3 => trig_wait(11),
      I4 => trig_wait(10),
      O => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lutdi2_648
    );
  Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lut_2_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => trig_wait(10),
      I1 => trig_wait(11),
      I2 => trig_wait(12),
      I3 => trig_wait(13),
      I4 => trig_wait(14),
      O => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lut_2_Q_649
    );
  Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_1_Q_647,
      DI => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lutdi2_648,
      S => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lut_2_Q_649,
      O => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_2_Q_650
    );
  Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lutdi3 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => trig_wait(19),
      I1 => trig_wait(18),
      I2 => trig_wait(17),
      I3 => trig_wait(16),
      I4 => trig_wait(15),
      O => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lutdi3_651
    );
  Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lut_3_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => trig_wait(15),
      I1 => trig_wait(16),
      I2 => trig_wait(17),
      I3 => trig_wait(18),
      I4 => trig_wait(19),
      O => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lut_3_Q_652
    );
  Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_2_Q_650,
      DI => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lutdi3_651,
      S => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lut_3_Q_652,
      O => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_3_Q_653
    );
  Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lutdi4 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => trig_wait(24),
      I1 => trig_wait(23),
      I2 => trig_wait(22),
      I3 => trig_wait(21),
      I4 => trig_wait(20),
      O => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lutdi4_654
    );
  Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lut_4_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => trig_wait(20),
      I1 => trig_wait(21),
      I2 => trig_wait(22),
      I3 => trig_wait(23),
      I4 => trig_wait(24),
      O => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lut_4_Q_655
    );
  Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_3_Q_653,
      DI => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lutdi4_654,
      S => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lut_4_Q_655,
      O => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_4_Q_656
    );
  Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lutdi5 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => trig_wait(29),
      I1 => trig_wait(28),
      I2 => trig_wait(27),
      I3 => trig_wait(26),
      I4 => trig_wait(25),
      O => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lutdi5_657
    );
  Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lut_5_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => trig_wait(25),
      I1 => trig_wait(26),
      I2 => trig_wait(27),
      I3 => trig_wait(28),
      I4 => trig_wait(29),
      O => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lut_5_Q_658
    );
  Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_4_Q_656,
      DI => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lutdi5_657,
      S => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lut_5_Q_658,
      O => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_5_Q_659
    );
  Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_5_Q_659,
      DI => trig_wait(30),
      S => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lut_6_Q,
      O => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_6_Q_662
    );
  SC_DC_IOBUF : IOBUF
    generic map(
      CAPACITANCE => "DONT_CARE",
      DRIVE => 12,
      IBUF_DELAY_VALUE => "0",
      IBUF_LOW_PWR => TRUE,
      IFD_DELAY_VALUE => "AUTO",
      IOSTANDARD => "DEFAULT",
      SLEW => "20"
    )
    port map (
      I => coin_buf_1_1_703,
      T => IO_dir_1_704,
      O => sc_dc_ack,
      IO => SC_DC_TRIG
    );
  DC_DC_IOBUF : IOBUF
    generic map(
      CAPACITANCE => "DONT_CARE",
      DRIVE => 12,
      IBUF_DELAY_VALUE => "0",
      IBUF_LOW_PWR => TRUE,
      IFD_DELAY_VALUE => "AUTO",
      IOSTANDARD => "DEFAULT",
      SLEW => "20"
    )
    port map (
      I => scrod_ack,
      T => IO_dir_INV_111_o,
      O => dc_dc_trigger,
      IO => DC_DC_TRIG
    );
  map_trigger_flip_flop : edge_to_pulse_converter
    port map (
      INPUT_EDGE => EX_trig,
      CLOCK => CLK,
      CLOCK_ENABLE => N1,
      OUTPUT_PULSE => pulse_to_count
    );
  EX_trig_0_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => TX_TRIG(0),
      I1 => TX_TRIG(1),
      I2 => TX_TRIG(2),
      I3 => TX_TRIG(3),
      O => EX_trig
    );
  trig_cnt_st_FSM_FFd2_In1 : LUT4
    generic map(
      INIT => X"04AE"
    )
    port map (
      I0 => trig_cnt_st_FSM_FFd2_458,
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd1_84,
      I3 => n0075,
      O => trig_cnt_st_FSM_FFd2_In
    );
  trig_cnt_st_FSM_FFd1_In1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => start_cnt_83,
      I1 => trig_cnt_st_FSM_FFd1_84,
      I2 => n0075,
      I3 => trig_cnt_st_FSM_FFd2_458,
      O => trig_cnt_st_FSM_FFd1_In
    );
  Mmux_scrod_ack11 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => IO_dir_118,
      I1 => sc_ack_buf(0),
      I2 => sc_ack_buf(1),
      I3 => sc_dc_ack,
      O => scrod_ack
    );
  Mmux_next_DC_trig11 : LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => DC_ADDRESS(2),
      I1 => dc_dc_tbuf(1),
      I2 => DC_ADDRESS(3),
      I3 => DC_ADDRESS(0),
      O => next_DC_trig
    );
  trig_st_FSM_FFd1_In1 : LUT5
    generic map(
      INIT => X"ECEEA8AA"
    )
    port map (
      I0 => trig_st_FSM_FFd1_230,
      I1 => trig_st_FSM_FFd2_231,
      I2 => scrod_ack,
      I3 => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_15_Q_641,
      I4 => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_6_Q_662,
      O => trig_st_FSM_FFd1_In
    );
  Q_n0265_inv1 : LUT4
    generic map(
      INIT => X"0111"
    )
    port map (
      I0 => OOPS,
      I1 => trig_cnt_st_FSM_FFd1_84,
      I2 => n0075,
      I3 => trig_cnt_st_FSM_FFd2_458,
      O => Q_n0265_inv
    );
  Q_n0231_inv1 : LUT4
    generic map(
      INIT => X"0155"
    )
    port map (
      I0 => OOPS,
      I1 => scrod_ack,
      I2 => trig_st_FSM_FFd2_231,
      I3 => trig_st_FSM_FFd1_230,
      O => Q_n0231_inv
    );
  Mmux_coin_trigger11 : LUT4
    generic map(
      INIT => X"5540"
    )
    port map (
      I0 => trig_st_FSM_FFd1_230,
      I1 => next_DC_trig,
      I2 => this_DC_trig,
      I3 => trig_st_FSM_FFd2_231,
      O => coin_trigger
    );
  Q_n0255_inv1 : LUT3
    generic map(
      INIT => X"51"
    )
    port map (
      I0 => OOPS,
      I1 => trig_cnt_st_FSM_FFd2_458,
      I2 => trig_cnt_st_FSM_FFd1_84,
      O => Q_n0255_inv
    );
  Mmux_trig_st_2_X_83_o_Mux_29_o11 : LUT4
    generic map(
      INIT => X"DF8A"
    )
    port map (
      I0 => trig_st_FSM_FFd1_230,
      I1 => scrod_ack,
      I2 => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_15_Q_641,
      I3 => trig_st_FSM_FFd2_231,
      O => trig_st_2_X_83_o_Mux_29_o
    );
  Mmux_TX_HW_TRIG11 : LUT5
    generic map(
      INIT => X"00000008"
    )
    port map (
      I0 => TRIG_MODE(1),
      I1 => ex_tbuf(1),
      I2 => TRIG_MODE(0),
      I3 => TRIG_MODE(3),
      I4 => TRIG_MODE(2),
      O => TX_HW_TRIG
    );
  trig_st_FSM_FFd2_In_SW0 : LUT5
    generic map(
      INIT => X"40000000"
    )
    port map (
      I0 => TRIG_MODE(2),
      I1 => TRIG_MODE(1),
      I2 => TRIG_MODE(0),
      I3 => coin_buf(1),
      I4 => coin_buf(0),
      O => N0
    );
  trig_st_FSM_FFd2_In : LUT6
    generic map(
      INIT => X"A8ECB9FDA8ECA8EC"
    )
    port map (
      I0 => trig_st_FSM_FFd1_230,
      I1 => trig_st_FSM_FFd2_231,
      I2 => scrod_ack,
      I3 => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_6_Q_662,
      I4 => TRIG_MODE(3),
      I5 => N0,
      O => trig_st_FSM_FFd2_In_343
    );
  Q_n0278_inv1 : LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      I0 => pulse_count(26),
      I1 => pulse_count(27),
      I2 => pulse_count(25),
      I3 => pulse_count(24),
      I4 => pulse_count(23),
      I5 => pulse_count(22),
      O => Q_n0278_inv1_664
    );
  Q_n0278_inv2 : LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      I0 => pulse_count(20),
      I1 => pulse_count(21),
      I2 => pulse_count(1),
      I3 => pulse_count(19),
      I4 => pulse_count(18),
      I5 => pulse_count(17),
      O => Q_n0278_inv2_665
    );
  Q_n0278_inv3 : LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      I0 => pulse_count(8),
      I1 => pulse_count(9),
      I2 => pulse_count(7),
      I3 => pulse_count(6),
      I4 => pulse_count(5),
      I5 => pulse_count(4),
      O => Q_n0278_inv3_666
    );
  Q_n0278_inv4 : LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      I0 => pulse_count(31),
      I1 => pulse_count(3),
      I2 => pulse_count(30),
      I3 => pulse_count(2),
      I4 => pulse_count(29),
      I5 => pulse_count(28),
      O => Q_n0278_inv4_667
    );
  Q_n0278_inv5 : LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      I0 => pulse_count(15),
      I1 => pulse_count(16),
      I2 => pulse_count(14),
      I3 => pulse_count(13),
      I4 => pulse_count(12),
      I5 => pulse_count(11),
      O => Q_n0278_inv5_668
    );
  Q_n0278_inv6 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => pulse_count(0),
      I1 => pulse_count(10),
      O => Q_n0278_inv6_669
    );
  Q_n0278_inv7 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => Q_n0278_inv1_664,
      I1 => Q_n0278_inv2_665,
      I2 => Q_n0278_inv3_666,
      I3 => Q_n0278_inv4_667,
      I4 => Q_n0278_inv5_668,
      I5 => Q_n0278_inv6_669,
      O => Q_n0278_inv7_670
    );
  Q_n0278_inv8 : LUT6
    generic map(
      INIT => X"0101010111010101"
    )
    port map (
      I0 => OOPS,
      I1 => trig_cnt_st_FSM_FFd1_84,
      I2 => trig_cnt_st_FSM_FFd2_458,
      I3 => pulse_to_count,
      I4 => Q_n0278_inv7_670,
      I5 => n0075,
      O => Q_n0278_inv
    );
  Mmux_this_DC_trig1_SW0 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => DC_ADDRESS(1),
      I1 => DC_MASK(0),
      I2 => DC_MASK(2),
      O => N2
    );
  Mmux_this_DC_trig1 : LUT6
    generic map(
      INIT => X"FFFFFFFF1015BABF"
    )
    port map (
      I0 => DC_ADDRESS(0),
      I1 => DC_MASK(1),
      I2 => DC_ADDRESS(1),
      I3 => DC_MASK(3),
      I4 => N2,
      I5 => ex_tbuf(1),
      O => this_DC_trig
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => trig_wait(1),
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_1_rt_672
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => trig_wait(2),
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_2_rt_673
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => trig_wait(3),
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_3_rt_674
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => trig_wait(4),
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_4_rt_675
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => trig_wait(5),
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_5_rt_676
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => trig_wait(6),
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_6_rt_677
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => trig_wait(7),
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_7_rt_678
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => trig_wait(8),
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_8_rt_679
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => trig_wait(9),
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_9_rt_680
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => trig_wait(10),
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_10_rt_681
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => trig_wait(11),
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_11_rt_682
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => trig_wait(12),
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_12_rt_683
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => trig_wait(13),
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_13_rt_684
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => trig_wait(14),
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_14_rt_685
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => trig_wait(15),
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_15_rt_686
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => trig_wait(16),
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_16_rt_687
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => trig_wait(17),
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_17_rt_688
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => trig_wait(18),
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_18_rt_689
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => trig_wait(19),
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_19_rt_690
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => trig_wait(20),
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_20_rt_691
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => trig_wait(21),
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_21_rt_692
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => trig_wait(22),
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_22_rt_693
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => trig_wait(23),
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_23_rt_694
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => trig_wait(24),
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_24_rt_695
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => trig_wait(25),
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_25_rt_696
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => trig_wait(26),
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_26_rt_697
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => trig_wait(27),
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_27_rt_698
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => trig_wait(28),
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_28_rt_699
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => trig_wait(29),
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_cy_29_rt_700
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_xor_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => trig_wait(30),
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_xor_30_rt_701
    );
  IO_dir : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => IO_dir_rstpot_702,
      Q => IO_dir_118
    );
  IO_dir_rstpot : LUT6
    generic map(
      INIT => X"AAAABBFBAAAA8808"
    )
    port map (
      I0 => IO_dir_118,
      I1 => trig_st_FSM_FFd2_231,
      I2 => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_6_Q_662,
      I3 => trig_st_FSM_FFd1_230,
      I4 => OOPS,
      I5 => trig_st_2_X_83_o_Mux_29_o,
      O => IO_dir_rstpot_702
    );
  Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_15_Q : LUT4
    generic map(
      INIT => X"FF8E"
    )
    port map (
      I0 => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_14_Q_640,
      I1 => trig_wait(30),
      I2 => WAIT_COUNT(30),
      I3 => WAIT_COUNT(31),
      O => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_15_Q_641
    );
  Mcount_clk_counter_lut_0_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => trig_cnt_st_FSM_FFd2_458,
      I1 => clk_counter(0),
      O => Mcount_clk_counter_lut(0)
    );
  Mcount_clk_counter_lut_1_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => trig_cnt_st_FSM_FFd2_458,
      I1 => clk_counter(1),
      O => Mcount_clk_counter_lut(1)
    );
  Mcount_clk_counter_lut_2_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => trig_cnt_st_FSM_FFd2_458,
      I1 => clk_counter(2),
      O => Mcount_clk_counter_lut(2)
    );
  Mcount_clk_counter_lut_3_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => trig_cnt_st_FSM_FFd2_458,
      I1 => clk_counter(3),
      O => Mcount_clk_counter_lut(3)
    );
  Mcount_clk_counter_lut_4_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => trig_cnt_st_FSM_FFd2_458,
      I1 => clk_counter(4),
      O => Mcount_clk_counter_lut(4)
    );
  Mcount_clk_counter_lut_5_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => trig_cnt_st_FSM_FFd2_458,
      I1 => clk_counter(5),
      O => Mcount_clk_counter_lut(5)
    );
  Mcount_clk_counter_lut_6_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => trig_cnt_st_FSM_FFd2_458,
      I1 => clk_counter(6),
      O => Mcount_clk_counter_lut(6)
    );
  Mcount_clk_counter_lut_7_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => trig_cnt_st_FSM_FFd2_458,
      I1 => clk_counter(7),
      O => Mcount_clk_counter_lut(7)
    );
  Mcount_clk_counter_lut_8_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => trig_cnt_st_FSM_FFd2_458,
      I1 => clk_counter(8),
      O => Mcount_clk_counter_lut(8)
    );
  Mcount_clk_counter_lut_9_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => trig_cnt_st_FSM_FFd2_458,
      I1 => clk_counter(9),
      O => Mcount_clk_counter_lut(9)
    );
  Mcount_clk_counter_lut_10_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => trig_cnt_st_FSM_FFd2_458,
      I1 => clk_counter(10),
      O => Mcount_clk_counter_lut(10)
    );
  Mcount_clk_counter_lut_11_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => trig_cnt_st_FSM_FFd2_458,
      I1 => clk_counter(11),
      O => Mcount_clk_counter_lut(11)
    );
  Mcount_clk_counter_lut_12_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => trig_cnt_st_FSM_FFd2_458,
      I1 => clk_counter(12),
      O => Mcount_clk_counter_lut(12)
    );
  Mcount_clk_counter_lut_13_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => trig_cnt_st_FSM_FFd2_458,
      I1 => clk_counter(13),
      O => Mcount_clk_counter_lut(13)
    );
  Mcount_clk_counter_lut_14_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => trig_cnt_st_FSM_FFd2_458,
      I1 => clk_counter(14),
      O => Mcount_clk_counter_lut(14)
    );
  Mcount_clk_counter_lut_15_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => trig_cnt_st_FSM_FFd2_458,
      I1 => clk_counter(15),
      O => Mcount_clk_counter_lut(15)
    );
  Mcount_clk_counter_lut_16_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => trig_cnt_st_FSM_FFd2_458,
      I1 => clk_counter(16),
      O => Mcount_clk_counter_lut(16)
    );
  Mcount_clk_counter_lut_17_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => trig_cnt_st_FSM_FFd2_458,
      I1 => clk_counter(17),
      O => Mcount_clk_counter_lut(17)
    );
  Mcount_clk_counter_lut_18_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => trig_cnt_st_FSM_FFd2_458,
      I1 => clk_counter(18),
      O => Mcount_clk_counter_lut(18)
    );
  Mcount_clk_counter_lut_19_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => trig_cnt_st_FSM_FFd2_458,
      I1 => clk_counter(19),
      O => Mcount_clk_counter_lut(19)
    );
  Mcount_clk_counter_lut_20_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => trig_cnt_st_FSM_FFd2_458,
      I1 => clk_counter(20),
      O => Mcount_clk_counter_lut(20)
    );
  Mcount_clk_counter_lut_21_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => trig_cnt_st_FSM_FFd2_458,
      I1 => clk_counter(21),
      O => Mcount_clk_counter_lut(21)
    );
  Mcount_clk_counter_lut_22_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => trig_cnt_st_FSM_FFd2_458,
      I1 => clk_counter(22),
      O => Mcount_clk_counter_lut(22)
    );
  Mcount_clk_counter_lut_23_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => trig_cnt_st_FSM_FFd2_458,
      I1 => clk_counter(23),
      O => Mcount_clk_counter_lut(23)
    );
  Mcount_clk_counter_lut_24_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => trig_cnt_st_FSM_FFd2_458,
      I1 => clk_counter(24),
      O => Mcount_clk_counter_lut(24)
    );
  Mcount_clk_counter_lut_25_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => trig_cnt_st_FSM_FFd2_458,
      I1 => clk_counter(25),
      O => Mcount_clk_counter_lut(25)
    );
  Mcount_clk_counter_lut_26_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => trig_cnt_st_FSM_FFd2_458,
      I1 => clk_counter(26),
      O => Mcount_clk_counter_lut(26)
    );
  Mcount_clk_counter_lut_27_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => trig_cnt_st_FSM_FFd2_458,
      I1 => clk_counter(27),
      O => Mcount_clk_counter_lut(27)
    );
  Mcount_clk_counter_lut_28_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => trig_cnt_st_FSM_FFd2_458,
      I1 => clk_counter(28),
      O => Mcount_clk_counter_lut(28)
    );
  Mcount_clk_counter_lut_29_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => trig_cnt_st_FSM_FFd2_458,
      I1 => clk_counter(29),
      O => Mcount_clk_counter_lut(29)
    );
  Mcount_clk_counter_lut_30_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => trig_cnt_st_FSM_FFd2_458,
      I1 => clk_counter(30),
      O => Mcount_clk_counter_lut(30)
    );
  Mcount_clk_counter_lut_31_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => trig_cnt_st_FSM_FFd2_458,
      I1 => clk_counter(31),
      O => Mcount_clk_counter_lut(31)
    );
  Mmux_n0215321 : LUT5
    generic map(
      INIT => X"08082A08"
    )
    port map (
      I0 => trig_wait_31_GND_117_o_add_21_OUT_9_Q,
      I1 => trig_st_FSM_FFd1_230,
      I2 => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_15_Q_641,
      I3 => trig_st_FSM_FFd2_231,
      I4 => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_6_Q_662,
      O => Q_n0215(9)
    );
  Mmux_n0215311 : LUT5
    generic map(
      INIT => X"08082A08"
    )
    port map (
      I0 => trig_wait_31_GND_117_o_add_21_OUT_8_Q,
      I1 => trig_st_FSM_FFd1_230,
      I2 => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_15_Q_641,
      I3 => trig_st_FSM_FFd2_231,
      I4 => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_6_Q_662,
      O => Q_n0215(8)
    );
  Mmux_n0215301 : LUT5
    generic map(
      INIT => X"08082A08"
    )
    port map (
      I0 => trig_wait_31_GND_117_o_add_21_OUT_7_Q,
      I1 => trig_st_FSM_FFd1_230,
      I2 => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_15_Q_641,
      I3 => trig_st_FSM_FFd2_231,
      I4 => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_6_Q_662,
      O => Q_n0215(7)
    );
  Mmux_n0215291 : LUT5
    generic map(
      INIT => X"08082A08"
    )
    port map (
      I0 => trig_wait_31_GND_117_o_add_21_OUT_6_Q,
      I1 => trig_st_FSM_FFd1_230,
      I2 => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_15_Q_641,
      I3 => trig_st_FSM_FFd2_231,
      I4 => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_6_Q_662,
      O => Q_n0215(6)
    );
  Mmux_n0215281 : LUT5
    generic map(
      INIT => X"08082A08"
    )
    port map (
      I0 => trig_wait_31_GND_117_o_add_21_OUT_5_Q,
      I1 => trig_st_FSM_FFd1_230,
      I2 => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_15_Q_641,
      I3 => trig_st_FSM_FFd2_231,
      I4 => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_6_Q_662,
      O => Q_n0215(5)
    );
  Mmux_n0215271 : LUT5
    generic map(
      INIT => X"08082A08"
    )
    port map (
      I0 => trig_wait_31_GND_117_o_add_21_OUT_4_Q,
      I1 => trig_st_FSM_FFd1_230,
      I2 => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_15_Q_641,
      I3 => trig_st_FSM_FFd2_231,
      I4 => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_6_Q_662,
      O => Q_n0215(4)
    );
  Mmux_n0215261 : LUT5
    generic map(
      INIT => X"08082A08"
    )
    port map (
      I0 => trig_wait_31_GND_117_o_add_21_OUT_3_Q,
      I1 => trig_st_FSM_FFd1_230,
      I2 => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_15_Q_641,
      I3 => trig_st_FSM_FFd2_231,
      I4 => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_6_Q_662,
      O => Q_n0215(3)
    );
  Mmux_n0215241 : LUT5
    generic map(
      INIT => X"08082A08"
    )
    port map (
      I0 => trig_wait_31_GND_117_o_add_21_OUT_30_Q,
      I1 => trig_st_FSM_FFd1_230,
      I2 => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_15_Q_641,
      I3 => trig_st_FSM_FFd2_231,
      I4 => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_6_Q_662,
      O => Q_n0215(30)
    );
  Mmux_n0215231 : LUT5
    generic map(
      INIT => X"08082A08"
    )
    port map (
      I0 => trig_wait_31_GND_117_o_add_21_OUT_2_Q,
      I1 => trig_st_FSM_FFd1_230,
      I2 => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_15_Q_641,
      I3 => trig_st_FSM_FFd2_231,
      I4 => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_6_Q_662,
      O => Q_n0215(2)
    );
  Mmux_n0215221 : LUT5
    generic map(
      INIT => X"08082A08"
    )
    port map (
      I0 => trig_wait_31_GND_117_o_add_21_OUT_29_Q,
      I1 => trig_st_FSM_FFd1_230,
      I2 => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_15_Q_641,
      I3 => trig_st_FSM_FFd2_231,
      I4 => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_6_Q_662,
      O => Q_n0215(29)
    );
  Mmux_n0215211 : LUT5
    generic map(
      INIT => X"08082A08"
    )
    port map (
      I0 => trig_wait_31_GND_117_o_add_21_OUT_28_Q,
      I1 => trig_st_FSM_FFd1_230,
      I2 => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_15_Q_641,
      I3 => trig_st_FSM_FFd2_231,
      I4 => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_6_Q_662,
      O => Q_n0215(28)
    );
  Mmux_n0215201 : LUT5
    generic map(
      INIT => X"08082A08"
    )
    port map (
      I0 => trig_wait_31_GND_117_o_add_21_OUT_27_Q,
      I1 => trig_st_FSM_FFd1_230,
      I2 => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_15_Q_641,
      I3 => trig_st_FSM_FFd2_231,
      I4 => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_6_Q_662,
      O => Q_n0215(27)
    );
  Mmux_n0215191 : LUT5
    generic map(
      INIT => X"08082A08"
    )
    port map (
      I0 => trig_wait_31_GND_117_o_add_21_OUT_26_Q,
      I1 => trig_st_FSM_FFd1_230,
      I2 => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_15_Q_641,
      I3 => trig_st_FSM_FFd2_231,
      I4 => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_6_Q_662,
      O => Q_n0215(26)
    );
  Mmux_n0215181 : LUT5
    generic map(
      INIT => X"08082A08"
    )
    port map (
      I0 => trig_wait_31_GND_117_o_add_21_OUT_25_Q,
      I1 => trig_st_FSM_FFd1_230,
      I2 => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_15_Q_641,
      I3 => trig_st_FSM_FFd2_231,
      I4 => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_6_Q_662,
      O => Q_n0215(25)
    );
  Mmux_n0215171 : LUT5
    generic map(
      INIT => X"08082A08"
    )
    port map (
      I0 => trig_wait_31_GND_117_o_add_21_OUT_24_Q,
      I1 => trig_st_FSM_FFd1_230,
      I2 => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_15_Q_641,
      I3 => trig_st_FSM_FFd2_231,
      I4 => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_6_Q_662,
      O => Q_n0215(24)
    );
  Mmux_n0215161 : LUT5
    generic map(
      INIT => X"08082A08"
    )
    port map (
      I0 => trig_wait_31_GND_117_o_add_21_OUT_23_Q,
      I1 => trig_st_FSM_FFd1_230,
      I2 => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_15_Q_641,
      I3 => trig_st_FSM_FFd2_231,
      I4 => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_6_Q_662,
      O => Q_n0215(23)
    );
  Mmux_n0215151 : LUT5
    generic map(
      INIT => X"08082A08"
    )
    port map (
      I0 => trig_wait_31_GND_117_o_add_21_OUT_22_Q,
      I1 => trig_st_FSM_FFd1_230,
      I2 => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_15_Q_641,
      I3 => trig_st_FSM_FFd2_231,
      I4 => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_6_Q_662,
      O => Q_n0215(22)
    );
  Mmux_n0215141 : LUT5
    generic map(
      INIT => X"08082A08"
    )
    port map (
      I0 => trig_wait_31_GND_117_o_add_21_OUT_21_Q,
      I1 => trig_st_FSM_FFd1_230,
      I2 => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_15_Q_641,
      I3 => trig_st_FSM_FFd2_231,
      I4 => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_6_Q_662,
      O => Q_n0215(21)
    );
  Mmux_n0215131 : LUT5
    generic map(
      INIT => X"08082A08"
    )
    port map (
      I0 => trig_wait_31_GND_117_o_add_21_OUT_20_Q,
      I1 => trig_st_FSM_FFd1_230,
      I2 => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_15_Q_641,
      I3 => trig_st_FSM_FFd2_231,
      I4 => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_6_Q_662,
      O => Q_n0215(20)
    );
  Mmux_n0215121 : LUT5
    generic map(
      INIT => X"08082A08"
    )
    port map (
      I0 => trig_wait_31_GND_117_o_add_21_OUT_1_Q,
      I1 => trig_st_FSM_FFd1_230,
      I2 => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_15_Q_641,
      I3 => trig_st_FSM_FFd2_231,
      I4 => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_6_Q_662,
      O => Q_n0215(1)
    );
  Mmux_n0215111 : LUT5
    generic map(
      INIT => X"08082A08"
    )
    port map (
      I0 => trig_wait_31_GND_117_o_add_21_OUT_19_Q,
      I1 => trig_st_FSM_FFd1_230,
      I2 => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_15_Q_641,
      I3 => trig_st_FSM_FFd2_231,
      I4 => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_6_Q_662,
      O => Q_n0215(19)
    );
  Mmux_n0215101 : LUT5
    generic map(
      INIT => X"08082A08"
    )
    port map (
      I0 => trig_wait_31_GND_117_o_add_21_OUT_18_Q,
      I1 => trig_st_FSM_FFd1_230,
      I2 => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_15_Q_641,
      I3 => trig_st_FSM_FFd2_231,
      I4 => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_6_Q_662,
      O => Q_n0215(18)
    );
  Mmux_n021591 : LUT5
    generic map(
      INIT => X"08082A08"
    )
    port map (
      I0 => trig_wait_31_GND_117_o_add_21_OUT_17_Q,
      I1 => trig_st_FSM_FFd1_230,
      I2 => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_15_Q_641,
      I3 => trig_st_FSM_FFd2_231,
      I4 => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_6_Q_662,
      O => Q_n0215(17)
    );
  Mmux_n021581 : LUT5
    generic map(
      INIT => X"08082A08"
    )
    port map (
      I0 => trig_wait_31_GND_117_o_add_21_OUT_16_Q,
      I1 => trig_st_FSM_FFd1_230,
      I2 => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_15_Q_641,
      I3 => trig_st_FSM_FFd2_231,
      I4 => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_6_Q_662,
      O => Q_n0215(16)
    );
  Mmux_n021571 : LUT5
    generic map(
      INIT => X"08082A08"
    )
    port map (
      I0 => trig_wait_31_GND_117_o_add_21_OUT_15_Q,
      I1 => trig_st_FSM_FFd1_230,
      I2 => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_15_Q_641,
      I3 => trig_st_FSM_FFd2_231,
      I4 => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_6_Q_662,
      O => Q_n0215(15)
    );
  Mmux_n021561 : LUT5
    generic map(
      INIT => X"08082A08"
    )
    port map (
      I0 => trig_wait_31_GND_117_o_add_21_OUT_14_Q,
      I1 => trig_st_FSM_FFd1_230,
      I2 => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_15_Q_641,
      I3 => trig_st_FSM_FFd2_231,
      I4 => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_6_Q_662,
      O => Q_n0215(14)
    );
  Mmux_n021551 : LUT5
    generic map(
      INIT => X"08082A08"
    )
    port map (
      I0 => trig_wait_31_GND_117_o_add_21_OUT_13_Q,
      I1 => trig_st_FSM_FFd1_230,
      I2 => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_15_Q_641,
      I3 => trig_st_FSM_FFd2_231,
      I4 => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_6_Q_662,
      O => Q_n0215(13)
    );
  Mmux_n021541 : LUT5
    generic map(
      INIT => X"08082A08"
    )
    port map (
      I0 => trig_wait_31_GND_117_o_add_21_OUT_12_Q,
      I1 => trig_st_FSM_FFd1_230,
      I2 => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_15_Q_641,
      I3 => trig_st_FSM_FFd2_231,
      I4 => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_6_Q_662,
      O => Q_n0215(12)
    );
  Mmux_n021531 : LUT5
    generic map(
      INIT => X"08082A08"
    )
    port map (
      I0 => trig_wait_31_GND_117_o_add_21_OUT_11_Q,
      I1 => trig_st_FSM_FFd1_230,
      I2 => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_15_Q_641,
      I3 => trig_st_FSM_FFd2_231,
      I4 => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_6_Q_662,
      O => Q_n0215(11)
    );
  Mmux_n021521 : LUT5
    generic map(
      INIT => X"08082A08"
    )
    port map (
      I0 => trig_wait_31_GND_117_o_add_21_OUT_10_Q,
      I1 => trig_st_FSM_FFd1_230,
      I2 => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_15_Q_641,
      I3 => trig_st_FSM_FFd2_231,
      I4 => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_6_Q_662,
      O => Q_n0215(10)
    );
  Mmux_n021511 : LUT5
    generic map(
      INIT => X"08082A08"
    )
    port map (
      I0 => trig_wait_31_GND_117_o_add_21_OUT_0_Q,
      I1 => trig_st_FSM_FFd1_230,
      I2 => Mcompar_WAIT_COUNT_31_trig_wait_31_LessThan_21_o_cy_15_Q_641,
      I3 => trig_st_FSM_FFd2_231,
      I4 => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_cy_6_Q_662,
      O => Q_n0215(0)
    );
  Mmux_trig_cnt_st_1_X_83_o_wide_mux_59_OUT321 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(9),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd1_84,
      O => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_9_Q
    );
  Mmux_trig_cnt_st_1_X_83_o_wide_mux_59_OUT311 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(8),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd1_84,
      O => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_8_Q
    );
  Mmux_trig_cnt_st_1_X_83_o_wide_mux_59_OUT301 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(7),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd1_84,
      O => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_7_Q
    );
  Mmux_trig_cnt_st_1_X_83_o_wide_mux_59_OUT291 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(6),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd1_84,
      O => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_6_Q
    );
  Mmux_trig_cnt_st_1_X_83_o_wide_mux_59_OUT281 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(5),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd1_84,
      O => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_5_Q
    );
  Mmux_trig_cnt_st_1_X_83_o_wide_mux_59_OUT271 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(4),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd1_84,
      O => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_4_Q
    );
  Mmux_trig_cnt_st_1_X_83_o_wide_mux_59_OUT261 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(3),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd1_84,
      O => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_3_Q
    );
  Mmux_trig_cnt_st_1_X_83_o_wide_mux_59_OUT251 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(31),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd1_84,
      O => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_31_Q
    );
  Mmux_trig_cnt_st_1_X_83_o_wide_mux_59_OUT241 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(30),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd1_84,
      O => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_30_Q
    );
  Mmux_trig_cnt_st_1_X_83_o_wide_mux_59_OUT231 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(2),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd1_84,
      O => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_2_Q
    );
  Mmux_trig_cnt_st_1_X_83_o_wide_mux_59_OUT221 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(29),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd1_84,
      O => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_29_Q
    );
  Mmux_trig_cnt_st_1_X_83_o_wide_mux_59_OUT211 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(28),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd1_84,
      O => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_28_Q
    );
  Mmux_trig_cnt_st_1_X_83_o_wide_mux_59_OUT201 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(27),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd1_84,
      O => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_27_Q
    );
  Mmux_trig_cnt_st_1_X_83_o_wide_mux_59_OUT191 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(26),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd1_84,
      O => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_26_Q
    );
  Mmux_trig_cnt_st_1_X_83_o_wide_mux_59_OUT181 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(25),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd1_84,
      O => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_25_Q
    );
  Mmux_trig_cnt_st_1_X_83_o_wide_mux_59_OUT171 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(24),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd1_84,
      O => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_24_Q
    );
  Mmux_trig_cnt_st_1_X_83_o_wide_mux_59_OUT161 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(23),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd1_84,
      O => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_23_Q
    );
  Mmux_trig_cnt_st_1_X_83_o_wide_mux_59_OUT151 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(22),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd1_84,
      O => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_22_Q
    );
  Mmux_trig_cnt_st_1_X_83_o_wide_mux_59_OUT141 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(21),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd1_84,
      O => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_21_Q
    );
  Mmux_trig_cnt_st_1_X_83_o_wide_mux_59_OUT131 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(20),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd1_84,
      O => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_20_Q
    );
  Mmux_trig_cnt_st_1_X_83_o_wide_mux_59_OUT121 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(1),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd1_84,
      O => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_1_Q
    );
  Mmux_trig_cnt_st_1_X_83_o_wide_mux_59_OUT111 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(19),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd1_84,
      O => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_19_Q
    );
  Mmux_trig_cnt_st_1_X_83_o_wide_mux_59_OUT101 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(18),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd1_84,
      O => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_18_Q
    );
  Mmux_trig_cnt_st_1_X_83_o_wide_mux_59_OUT91 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(17),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd1_84,
      O => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_17_Q
    );
  Mmux_trig_cnt_st_1_X_83_o_wide_mux_59_OUT81 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(16),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd1_84,
      O => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_16_Q
    );
  Mmux_trig_cnt_st_1_X_83_o_wide_mux_59_OUT71 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(15),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd1_84,
      O => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_15_Q
    );
  Mmux_trig_cnt_st_1_X_83_o_wide_mux_59_OUT61 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(14),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd1_84,
      O => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_14_Q
    );
  Mmux_trig_cnt_st_1_X_83_o_wide_mux_59_OUT51 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(13),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd1_84,
      O => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_13_Q
    );
  Mmux_trig_cnt_st_1_X_83_o_wide_mux_59_OUT41 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(12),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd1_84,
      O => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_12_Q
    );
  Mmux_trig_cnt_st_1_X_83_o_wide_mux_59_OUT31 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(11),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd1_84,
      O => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_11_Q
    );
  Mmux_trig_cnt_st_1_X_83_o_wide_mux_59_OUT21 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(10),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd1_84,
      O => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_10_Q
    );
  Mmux_trig_cnt_st_1_X_83_o_wide_mux_59_OUT11 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(0),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd1_84,
      O => trig_cnt_st_1_X_83_o_wide_mux_59_OUT_0_Q
    );
  Mcount_pulse_count_lut_0_Q : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(0),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd2_458,
      O => Mcount_pulse_count_lut(0)
    );
  Mcount_pulse_count_lut_1_Q : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(1),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd2_458,
      O => Mcount_pulse_count_lut(1)
    );
  Mcount_pulse_count_lut_2_Q : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(2),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd2_458,
      O => Mcount_pulse_count_lut(2)
    );
  Mcount_pulse_count_lut_3_Q : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(3),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd2_458,
      O => Mcount_pulse_count_lut(3)
    );
  Mcount_pulse_count_lut_4_Q : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(4),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd2_458,
      O => Mcount_pulse_count_lut(4)
    );
  Mcount_pulse_count_lut_5_Q : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(5),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd2_458,
      O => Mcount_pulse_count_lut(5)
    );
  Mcount_pulse_count_lut_6_Q : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(6),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd2_458,
      O => Mcount_pulse_count_lut(6)
    );
  Mcount_pulse_count_lut_7_Q : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(7),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd2_458,
      O => Mcount_pulse_count_lut(7)
    );
  Mcount_pulse_count_lut_8_Q : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(8),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd2_458,
      O => Mcount_pulse_count_lut(8)
    );
  Mcount_pulse_count_lut_9_Q : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(9),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd2_458,
      O => Mcount_pulse_count_lut(9)
    );
  Mcount_pulse_count_lut_10_Q : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(10),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd2_458,
      O => Mcount_pulse_count_lut(10)
    );
  Mcount_pulse_count_lut_11_Q : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(11),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd2_458,
      O => Mcount_pulse_count_lut(11)
    );
  Mcount_pulse_count_lut_12_Q : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(12),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd2_458,
      O => Mcount_pulse_count_lut(12)
    );
  Mcount_pulse_count_lut_13_Q : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(13),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd2_458,
      O => Mcount_pulse_count_lut(13)
    );
  Mcount_pulse_count_lut_14_Q : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(14),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd2_458,
      O => Mcount_pulse_count_lut(14)
    );
  Mcount_pulse_count_lut_15_Q : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(15),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd2_458,
      O => Mcount_pulse_count_lut(15)
    );
  Mcount_pulse_count_lut_16_Q : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(16),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd2_458,
      O => Mcount_pulse_count_lut(16)
    );
  Mcount_pulse_count_lut_17_Q : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(17),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd2_458,
      O => Mcount_pulse_count_lut(17)
    );
  Mcount_pulse_count_lut_18_Q : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(18),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd2_458,
      O => Mcount_pulse_count_lut(18)
    );
  Mcount_pulse_count_lut_19_Q : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(19),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd2_458,
      O => Mcount_pulse_count_lut(19)
    );
  Mcount_pulse_count_lut_20_Q : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(20),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd2_458,
      O => Mcount_pulse_count_lut(20)
    );
  Mcount_pulse_count_lut_21_Q : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(21),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd2_458,
      O => Mcount_pulse_count_lut(21)
    );
  Mcount_pulse_count_lut_22_Q : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(22),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd2_458,
      O => Mcount_pulse_count_lut(22)
    );
  Mcount_pulse_count_lut_23_Q : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(23),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd2_458,
      O => Mcount_pulse_count_lut(23)
    );
  Mcount_pulse_count_lut_24_Q : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(24),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd2_458,
      O => Mcount_pulse_count_lut(24)
    );
  Mcount_pulse_count_lut_25_Q : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(25),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd2_458,
      O => Mcount_pulse_count_lut(25)
    );
  Mcount_pulse_count_lut_26_Q : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(26),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd2_458,
      O => Mcount_pulse_count_lut(26)
    );
  Mcount_pulse_count_lut_27_Q : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(27),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd2_458,
      O => Mcount_pulse_count_lut(27)
    );
  Mcount_pulse_count_lut_28_Q : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(28),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd2_458,
      O => Mcount_pulse_count_lut(28)
    );
  Mcount_pulse_count_lut_29_Q : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(29),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd2_458,
      O => Mcount_pulse_count_lut(29)
    );
  Mcount_pulse_count_lut_30_Q : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(30),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd2_458,
      O => Mcount_pulse_count_lut(30)
    );
  Mcount_pulse_count_lut_31_Q : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => pulse_count(31),
      I1 => start_cnt_83,
      I2 => trig_cnt_st_FSM_FFd2_458,
      O => Mcount_pulse_count_lut(31)
    );
  Madd_trig_wait_31_GND_117_o_add_21_OUT_lut_0_INV_0 : INV
    port map (
      I => trig_wait(0),
      O => Madd_trig_wait_31_GND_117_o_add_21_OUT_lut_0_Q
    );
  IO_dir_INV_111_o1_INV_0 : INV
    port map (
      I => IO_dir_118,
      O => IO_dir_INV_111_o
    );
  OOPS_inv1_INV_0 : INV
    port map (
      I => OOPS,
      O => OOPS_inv
    );
  Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lut_6_1_INV_0 : INV
    port map (
      I => trig_wait(30),
      O => Mcompar_GND_117_o_trig_wait_31_LessThan_17_o_lut_6_Q
    );
  coin_buf_1_1 : FD
    port map (
      C => CLK,
      D => coin_buf(0),
      Q => coin_buf_1_1_703
    );
  IO_dir_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => IO_dir_rstpot_702,
      Q => IO_dir_1_704
    );
  Mshreg_ex_tbuf_1 : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => trig_wait(31),
      A1 => trig_wait(31),
      A2 => trig_wait(31),
      A3 => trig_wait(31),
      CE => N1,
      CLK => CLK,
      D => EX_trig,
      Q => Mshreg_ex_tbuf_1_705,
      Q15 => NLW_Mshreg_ex_tbuf_1_Q15_UNCONNECTED
    );
  ex_tbuf_1 : FDE
    port map (
      C => CLK,
      CE => N1,
      D => Mshreg_ex_tbuf_1_705,
      Q => ex_tbuf(1)
    );

end Structure;

-- synthesis translate_on

-- synthesis translate_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity BMD_DC_TOP_V2 is
  port (
    MAS_CLK_P : in STD_LOGIC := 'X'; 
    MAS_CLK_N : in STD_LOGIC := 'X'; 
    DC_DC_RX : in STD_LOGIC := 'X'; 
    DC_DC_DATA_IN : in STD_LOGIC := 'X'; 
    TX_TRIG16 : in STD_LOGIC := 'X'; 
    SHOUT : in STD_LOGIC := 'X'; 
    DONE : in STD_LOGIC := 'X'; 
    SRAM_SO : in STD_LOGIC := 'X'; 
    TS_EVENT : in STD_LOGIC := 'X'; 
    SCROD_TRIG : in STD_LOGIC := 'X'; 
    MON_Timing : in STD_LOGIC := 'X'; 
    DATA_IN_N : in STD_LOGIC := 'X'; 
    DATA_IN_P : in STD_LOGIC := 'X'; 
    RX_N : in STD_LOGIC := 'X'; 
    RX_P : in STD_LOGIC := 'X'; 
    MAS_ACK_N : in STD_LOGIC := 'X'; 
    MAS_ACK_P : in STD_LOGIC := 'X'; 
    SC_DC_TRIG : inout STD_LOGIC; 
    DC_DC_TX : out STD_LOGIC; 
    DC_DC_DATA_OUT : out STD_LOGIC; 
    DC_DC_TRIG : inout STD_LOGIC; 
    DC_DC_CLK_P : out STD_LOGIC; 
    DC_DC_CLK_N : out STD_LOGIC; 
    SIN : out STD_LOGIC; 
    PCLK : out STD_LOGIC; 
    SCLK : out STD_LOGIC; 
    SAMPLESEL_ANY : out STD_LOGIC; 
    SR_CLEAR : out STD_LOGIC; 
    SR_CLK : out STD_LOGIC; 
    SR_SEL : out STD_LOGIC; 
    REGCLR : out STD_LOGIC; 
    RD_ENA : out STD_LOGIC; 
    WR_ADDRCLR : out STD_LOGIC; 
    RAMP : out STD_LOGIC; 
    CLR : out STD_LOGIC; 
    SSTIN_P : out STD_LOGIC; 
    SSTIN_N : out STD_LOGIC; 
    WL_CLK_P : out STD_LOGIC; 
    WL_CLK_N : out STD_LOGIC; 
    WR1_ENA : out STD_LOGIC; 
    WR2_ENA : out STD_LOGIC; 
    SRAM_SCL : out STD_LOGIC; 
    SRAM_SI : out STD_LOGIC; 
    SRAM_CS : out STD_LOGIC; 
    SRAM_HOLD : out STD_LOGIC; 
    DAC_SCLK : out STD_LOGIC; 
    DAC_SDI : out STD_LOGIC; 
    DAC_SYNC : out STD_LOGIC; 
    DAC_LDAC : out STD_LOGIC; 
    TS_SCL : out STD_LOGIC; 
    TS_SDA : out STD_LOGIC; 
    CALIB_EN : out STD_LOGIC; 
    TX_HW_TRIG : out STD_LOGIC; 
    AUX1_N : inout STD_LOGIC; 
    AUX1_P : inout STD_LOGIC; 
    DATA_OUT_N : out STD_LOGIC; 
    DATA_OUT_P : out STD_LOGIC; 
    TX_N : out STD_LOGIC; 
    TX_P : out STD_LOGIC; 
    ORed_Trig_N : out STD_LOGIC; 
    ORed_Trig_P : out STD_LOGIC; 
    TX_DATA : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    TX_TRIG : in STD_LOGIC_VECTOR ( 4 downto 0 ); 
    DC_ADDRESS : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    SAMPLESEL_S : out STD_LOGIC_VECTOR ( 4 downto 0 ); 
    RD_COLSEL_S : out STD_LOGIC_VECTOR ( 5 downto 0 ); 
    RD_ROWSEL_S : out STD_LOGIC_VECTOR ( 2 downto 0 ) 
  );
end BMD_DC_TOP_V2;

architecture Structure of BMD_DC_TOP_V2 is
  component BMD_TRIG_LOGIC
    port (
      CLK : in STD_LOGIC := 'X'; 
      OOPS : in STD_LOGIC := 'X'; 
      SW_TRIG : in STD_LOGIC := 'X'; 
      SCROD_TRIG : in STD_LOGIC := 'X'; 
      CNT_START : in STD_LOGIC := 'X'; 
      RD_BUSY : in STD_LOGIC := 'X'; 
      TRIGGER : out STD_LOGIC; 
      TX_HW_TRIG : out STD_LOGIC; 
      DC_DC_TRIG : inout STD_LOGIC; 
      SC_DC_TRIG : inout STD_LOGIC; 
      TRIG_MODE : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
      TX_TRIG : in STD_LOGIC_VECTOR ( 4 downto 0 ); 
      DC_MASK : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
      DC_ADDRESS : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
      WAIT_COUNT : in STD_LOGIC_VECTOR ( 31 downto 0 ); 
      MAX_CNT : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
      TRIG_COUNT : out STD_LOGIC_VECTOR ( 31 downto 0 ); 
      TRIG_BITS : out STD_LOGIC_VECTOR ( 4 downto 0 ) 
    );
  end component;
  component DC_COMM_PARSER_DC_COMM_PARSER
    port (
      CLK : in STD_LOGIC := 'X'; 
      SEND : in STD_LOGIC := 'X'; 
      TRIGGER : in STD_LOGIC := 'X'; 
      OOPS_RESET : in STD_LOGIC := 'X'; 
      MAS_DC_DATA_CLK : in STD_LOGIC := 'X'; 
      MAS_DC_RX : in STD_LOGIC := 'X'; 
      MAS_DC_DATA_IN : in STD_LOGIC := 'X'; 
      DC_DC_RX : in STD_LOGIC := 'X'; 
      DC_DC_DATA_IN : in STD_LOGIC := 'X'; 
      READOUT_BUSY : in STD_LOGIC := 'X'; 
      ASIC_BUSY : in STD_LOGIC := 'X'; 
      DUMP_BUSY : in STD_LOGIC := 'X'; 
      MPPC_DAC_BUSY : in STD_LOGIC := 'X'; 
      wave_fifo_clk : in STD_LOGIC := 'X'; 
      wave_fifo_wr_en : in STD_LOGIC := 'X'; 
      wave_fifo_reset : in STD_LOGIC := 'X'; 
      DC_MAS_TX : out STD_LOGIC; 
      DC_MAS_DATA_OUT : out STD_LOGIC; 
      DC_DC_DATA_CLK : out STD_LOGIC; 
      DC_DC_TX : out STD_LOGIC; 
      DC_DC_DATA_OUT : out STD_LOGIC; 
      TX_BUSY : out STD_LOGIC; 
      TX_UPDATE : out STD_LOGIC; 
      DAC_UPDATE : out STD_LOGIC; 
      wave_fifo_full : out STD_LOGIC; 
      DC_ADDR : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
      RB_REG_VALUE : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
      wave_fifo_data : in STD_LOGIC_VECTOR ( 31 downto 0 ); 
      RB_REG_NUM : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
      OUTPUT_REGISTERS : out STD_LOGIC_VECTOR2 ( 19 downto 0 , 15 downto 0 ) 
    );
  end component;
  component BMD_DC_CLK_GEN
    port (
      CLK_IN1_P : in STD_LOGIC := 'X'; 
      CLK_IN1_N : in STD_LOGIC := 'X'; 
      CLK_OUT1 : out STD_LOGIC; 
      CLK_OUT2 : out STD_LOGIC; 
      CLK_OUT3 : out STD_LOGIC 
    );
  end component;
  component TARGETX_DAC_CONTROL
    port (
      CLK : in STD_LOGIC := 'X'; 
      UPDATE : in STD_LOGIC := 'X'; 
      OOPS_RESET : in STD_LOGIC := 'X'; 
      busy : out STD_LOGIC; 
      SIN : out STD_LOGIC; 
      SCLK : out STD_LOGIC; 
      PCLK : out STD_LOGIC; 
      LOAD_PERIOD : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
      LATCH_PERIOD : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
      REG_DATA : in STD_LOGIC_VECTOR ( 18 downto 0 ) 
    );
  end component;
  component mppc_dac_calb
    port (
      CLOCK : in STD_LOGIC := 'X'; 
      DAC_CLOCK : in STD_LOGIC := 'X'; 
      DAC_UPDATE : in STD_LOGIC := 'X'; 
      OOPS_RESET : in STD_LOGIC := 'X'; 
      DAC_BUSY : out STD_LOGIC; 
      DAC_SCLK : out STD_LOGIC; 
      DAC_DIN : out STD_LOGIC; 
      LDAC : out STD_LOGIC; 
      SYNC : out STD_LOGIC; 
      DAC_ADDR : in STD_LOGIC_VECTOR ( 4 downto 0 ); 
      DAC_VALUE : in STD_LOGIC_VECTOR ( 11 downto 0 ) 
    );
  end component;
  signal TX_TRIG_4_IBUF_3007 : STD_LOGIC; 
  signal TX_TRIG_3_IBUF_3008 : STD_LOGIC; 
  signal TX_TRIG_2_IBUF_3009 : STD_LOGIC; 
  signal TX_TRIG_1_IBUF_3010 : STD_LOGIC; 
  signal TX_TRIG_0_IBUF_3011 : STD_LOGIC; 
  signal DC_ADDRESS_3_IBUF_3012 : STD_LOGIC; 
  signal DC_ADDRESS_2_IBUF_3013 : STD_LOGIC; 
  signal DC_ADDRESS_1_IBUF_3014 : STD_LOGIC; 
  signal DC_ADDRESS_0_IBUF_3015 : STD_LOGIC; 
  signal DC_DC_RX_IBUF_3018 : STD_LOGIC; 
  signal DC_DC_DATA_IN_IBUF_3019 : STD_LOGIC; 
  signal TX_TRIG16_IBUF_3020 : STD_LOGIC; 
  signal AUX1_N_OBUF_3056 : STD_LOGIC; 
  signal TX_HW_TRIG_OBUF_3057 : STD_LOGIC; 
  signal SAMPLESEL_ANY_OBUF_3058 : STD_LOGIC; 
  signal ctrl_register_19_0_Q : STD_LOGIC; 
  signal ctrl_register_19_15_Q : STD_LOGIC; 
  signal ctrl_register_19_14_Q : STD_LOGIC; 
  signal ctrl_register_19_13_Q : STD_LOGIC; 
  signal ctrl_register_19_12_Q : STD_LOGIC; 
  signal ctrl_register_19_11_Q : STD_LOGIC; 
  signal ctrl_register_19_10_Q : STD_LOGIC; 
  signal ctrl_register_19_9_Q : STD_LOGIC; 
  signal ctrl_register_19_8_Q : STD_LOGIC; 
  signal ctrl_register_19_7_Q : STD_LOGIC; 
  signal ctrl_register_19_6_Q : STD_LOGIC; 
  signal ctrl_register_19_5_Q : STD_LOGIC; 
  signal ctrl_register_19_4_Q : STD_LOGIC; 
  signal ctrl_register_19_3_Q : STD_LOGIC; 
  signal ctrl_register_19_2_Q : STD_LOGIC; 
  signal ctrl_register_19_1_Q : STD_LOGIC; 
  signal ctrl_register_18_15_Q : STD_LOGIC; 
  signal ctrl_register_18_14_Q : STD_LOGIC; 
  signal ctrl_register_18_13_Q : STD_LOGIC; 
  signal ctrl_register_18_12_Q : STD_LOGIC; 
  signal ctrl_register_18_11_Q : STD_LOGIC; 
  signal ctrl_register_18_10_Q : STD_LOGIC; 
  signal ctrl_register_18_9_Q : STD_LOGIC; 
  signal ctrl_register_18_8_Q : STD_LOGIC; 
  signal ctrl_register_18_7_Q : STD_LOGIC; 
  signal ctrl_register_18_6_Q : STD_LOGIC; 
  signal ctrl_register_18_5_Q : STD_LOGIC; 
  signal ctrl_register_18_4_Q : STD_LOGIC; 
  signal ctrl_register_18_3_Q : STD_LOGIC; 
  signal ctrl_register_18_2_Q : STD_LOGIC; 
  signal ctrl_register_18_1_Q : STD_LOGIC; 
  signal ctrl_register_18_0_Q : STD_LOGIC; 
  signal ctrl_register_17_11_Q : STD_LOGIC; 
  signal ctrl_register_17_10_Q : STD_LOGIC; 
  signal ctrl_register_17_9_Q : STD_LOGIC; 
  signal ctrl_register_17_8_Q : STD_LOGIC; 
  signal ctrl_register_17_7_Q : STD_LOGIC; 
  signal ctrl_register_17_6_Q : STD_LOGIC; 
  signal ctrl_register_17_5_Q : STD_LOGIC; 
  signal ctrl_register_17_4_Q : STD_LOGIC; 
  signal ctrl_register_17_3_Q : STD_LOGIC; 
  signal ctrl_register_17_2_Q : STD_LOGIC; 
  signal ctrl_register_17_1_Q : STD_LOGIC; 
  signal ctrl_register_17_0_Q : STD_LOGIC; 
  signal ctrl_register_17_15_Q : STD_LOGIC; 
  signal ctrl_register_17_14_Q : STD_LOGIC; 
  signal ctrl_register_17_13_Q : STD_LOGIC; 
  signal ctrl_register_17_12_Q : STD_LOGIC; 
  signal ctrl_register_16_4_Q : STD_LOGIC; 
  signal ctrl_register_16_3_Q : STD_LOGIC; 
  signal ctrl_register_16_2_Q : STD_LOGIC; 
  signal ctrl_register_16_1_Q : STD_LOGIC; 
  signal ctrl_register_16_0_Q : STD_LOGIC; 
  signal ctrl_register_16_15_Q : STD_LOGIC; 
  signal ctrl_register_16_14_Q : STD_LOGIC; 
  signal ctrl_register_16_13_Q : STD_LOGIC; 
  signal ctrl_register_16_12_Q : STD_LOGIC; 
  signal ctrl_register_16_11_Q : STD_LOGIC; 
  signal ctrl_register_16_10_Q : STD_LOGIC; 
  signal ctrl_register_16_9_Q : STD_LOGIC; 
  signal ctrl_register_16_8_Q : STD_LOGIC; 
  signal ctrl_register_16_7_Q : STD_LOGIC; 
  signal ctrl_register_16_6_Q : STD_LOGIC; 
  signal ctrl_register_16_5_Q : STD_LOGIC; 
  signal ctrl_register_15_15_Q : STD_LOGIC; 
  signal ctrl_register_15_14_Q : STD_LOGIC; 
  signal ctrl_register_15_13_Q : STD_LOGIC; 
  signal ctrl_register_15_12_Q : STD_LOGIC; 
  signal ctrl_register_15_11_Q : STD_LOGIC; 
  signal ctrl_register_15_10_Q : STD_LOGIC; 
  signal ctrl_register_15_9_Q : STD_LOGIC; 
  signal ctrl_register_15_8_Q : STD_LOGIC; 
  signal ctrl_register_15_7_Q : STD_LOGIC; 
  signal ctrl_register_15_6_Q : STD_LOGIC; 
  signal ctrl_register_15_5_Q : STD_LOGIC; 
  signal ctrl_register_15_4_Q : STD_LOGIC; 
  signal ctrl_register_15_3_Q : STD_LOGIC; 
  signal ctrl_register_15_2_Q : STD_LOGIC; 
  signal ctrl_register_15_1_Q : STD_LOGIC; 
  signal ctrl_register_15_0_Q : STD_LOGIC; 
  signal ctrl_register_14_15_Q : STD_LOGIC; 
  signal ctrl_register_14_14_Q : STD_LOGIC; 
  signal ctrl_register_14_13_Q : STD_LOGIC; 
  signal ctrl_register_14_12_Q : STD_LOGIC; 
  signal ctrl_register_14_11_Q : STD_LOGIC; 
  signal ctrl_register_14_10_Q : STD_LOGIC; 
  signal ctrl_register_14_9_Q : STD_LOGIC; 
  signal ctrl_register_14_8_Q : STD_LOGIC; 
  signal ctrl_register_14_7_Q : STD_LOGIC; 
  signal ctrl_register_14_6_Q : STD_LOGIC; 
  signal ctrl_register_14_5_Q : STD_LOGIC; 
  signal ctrl_register_14_4_Q : STD_LOGIC; 
  signal ctrl_register_14_3_Q : STD_LOGIC; 
  signal ctrl_register_14_2_Q : STD_LOGIC; 
  signal ctrl_register_14_1_Q : STD_LOGIC; 
  signal ctrl_register_14_0_Q : STD_LOGIC; 
  signal ctrl_register_13_15_Q : STD_LOGIC; 
  signal ctrl_register_13_14_Q : STD_LOGIC; 
  signal ctrl_register_13_13_Q : STD_LOGIC; 
  signal ctrl_register_13_12_Q : STD_LOGIC; 
  signal ctrl_register_13_11_Q : STD_LOGIC; 
  signal ctrl_register_13_10_Q : STD_LOGIC; 
  signal ctrl_register_13_9_Q : STD_LOGIC; 
  signal ctrl_register_13_8_Q : STD_LOGIC; 
  signal ctrl_register_13_7_Q : STD_LOGIC; 
  signal ctrl_register_13_6_Q : STD_LOGIC; 
  signal ctrl_register_13_5_Q : STD_LOGIC; 
  signal ctrl_register_13_4_Q : STD_LOGIC; 
  signal ctrl_register_13_3_Q : STD_LOGIC; 
  signal ctrl_register_13_2_Q : STD_LOGIC; 
  signal ctrl_register_13_1_Q : STD_LOGIC; 
  signal ctrl_register_13_0_Q : STD_LOGIC; 
  signal ctrl_register_12_15_Q : STD_LOGIC; 
  signal ctrl_register_12_14_Q : STD_LOGIC; 
  signal ctrl_register_12_13_Q : STD_LOGIC; 
  signal ctrl_register_12_12_Q : STD_LOGIC; 
  signal ctrl_register_12_11_Q : STD_LOGIC; 
  signal ctrl_register_12_10_Q : STD_LOGIC; 
  signal ctrl_register_12_9_Q : STD_LOGIC; 
  signal ctrl_register_12_8_Q : STD_LOGIC; 
  signal ctrl_register_12_7_Q : STD_LOGIC; 
  signal ctrl_register_12_6_Q : STD_LOGIC; 
  signal ctrl_register_12_5_Q : STD_LOGIC; 
  signal ctrl_register_12_4_Q : STD_LOGIC; 
  signal ctrl_register_12_3_Q : STD_LOGIC; 
  signal ctrl_register_12_2_Q : STD_LOGIC; 
  signal ctrl_register_12_1_Q : STD_LOGIC; 
  signal ctrl_register_12_0_Q : STD_LOGIC; 
  signal ctrl_register_11_15_Q : STD_LOGIC; 
  signal ctrl_register_11_14_Q : STD_LOGIC; 
  signal ctrl_register_11_13_Q : STD_LOGIC; 
  signal ctrl_register_11_12_Q : STD_LOGIC; 
  signal ctrl_register_11_11_Q : STD_LOGIC; 
  signal ctrl_register_11_10_Q : STD_LOGIC; 
  signal ctrl_register_11_9_Q : STD_LOGIC; 
  signal ctrl_register_11_8_Q : STD_LOGIC; 
  signal ctrl_register_11_7_Q : STD_LOGIC; 
  signal ctrl_register_11_6_Q : STD_LOGIC; 
  signal ctrl_register_11_5_Q : STD_LOGIC; 
  signal ctrl_register_11_4_Q : STD_LOGIC; 
  signal ctrl_register_11_3_Q : STD_LOGIC; 
  signal ctrl_register_11_2_Q : STD_LOGIC; 
  signal ctrl_register_11_1_Q : STD_LOGIC; 
  signal ctrl_register_11_0_Q : STD_LOGIC; 
  signal ctrl_register_10_15_Q : STD_LOGIC; 
  signal ctrl_register_10_14_Q : STD_LOGIC; 
  signal ctrl_register_10_13_Q : STD_LOGIC; 
  signal ctrl_register_10_12_Q : STD_LOGIC; 
  signal ctrl_register_10_11_Q : STD_LOGIC; 
  signal ctrl_register_10_10_Q : STD_LOGIC; 
  signal ctrl_register_10_9_Q : STD_LOGIC; 
  signal ctrl_register_10_8_Q : STD_LOGIC; 
  signal ctrl_register_10_7_Q : STD_LOGIC; 
  signal ctrl_register_10_6_Q : STD_LOGIC; 
  signal ctrl_register_10_5_Q : STD_LOGIC; 
  signal ctrl_register_10_4_Q : STD_LOGIC; 
  signal ctrl_register_10_3_Q : STD_LOGIC; 
  signal ctrl_register_10_2_Q : STD_LOGIC; 
  signal ctrl_register_10_1_Q : STD_LOGIC; 
  signal ctrl_register_10_0_Q : STD_LOGIC; 
  signal ctrl_register_9_15_Q : STD_LOGIC; 
  signal ctrl_register_9_14_Q : STD_LOGIC; 
  signal ctrl_register_9_13_Q : STD_LOGIC; 
  signal ctrl_register_9_12_Q : STD_LOGIC; 
  signal ctrl_register_9_11_Q : STD_LOGIC; 
  signal ctrl_register_9_10_Q : STD_LOGIC; 
  signal ctrl_register_9_9_Q : STD_LOGIC; 
  signal ctrl_register_9_8_Q : STD_LOGIC; 
  signal ctrl_register_9_7_Q : STD_LOGIC; 
  signal ctrl_register_9_6_Q : STD_LOGIC; 
  signal ctrl_register_9_5_Q : STD_LOGIC; 
  signal ctrl_register_9_4_Q : STD_LOGIC; 
  signal ctrl_register_9_3_Q : STD_LOGIC; 
  signal ctrl_register_9_2_Q : STD_LOGIC; 
  signal ctrl_register_9_1_Q : STD_LOGIC; 
  signal ctrl_register_9_0_Q : STD_LOGIC; 
  signal ctrl_register_8_15_Q : STD_LOGIC; 
  signal ctrl_register_8_14_Q : STD_LOGIC; 
  signal ctrl_register_8_13_Q : STD_LOGIC; 
  signal ctrl_register_8_12_Q : STD_LOGIC; 
  signal ctrl_register_8_11_Q : STD_LOGIC; 
  signal ctrl_register_8_10_Q : STD_LOGIC; 
  signal ctrl_register_8_9_Q : STD_LOGIC; 
  signal ctrl_register_8_8_Q : STD_LOGIC; 
  signal ctrl_register_8_7_Q : STD_LOGIC; 
  signal ctrl_register_8_6_Q : STD_LOGIC; 
  signal ctrl_register_8_5_Q : STD_LOGIC; 
  signal ctrl_register_8_4_Q : STD_LOGIC; 
  signal ctrl_register_8_3_Q : STD_LOGIC; 
  signal ctrl_register_8_2_Q : STD_LOGIC; 
  signal ctrl_register_8_1_Q : STD_LOGIC; 
  signal ctrl_register_8_0_Q : STD_LOGIC; 
  signal ctrl_register_7_3_Q : STD_LOGIC; 
  signal ctrl_register_7_2_Q : STD_LOGIC; 
  signal ctrl_register_7_1_Q : STD_LOGIC; 
  signal ctrl_register_7_0_Q : STD_LOGIC; 
  signal ctrl_register_7_15_Q : STD_LOGIC; 
  signal ctrl_register_7_14_Q : STD_LOGIC; 
  signal ctrl_register_7_13_Q : STD_LOGIC; 
  signal ctrl_register_7_12_Q : STD_LOGIC; 
  signal ctrl_register_7_11_Q : STD_LOGIC; 
  signal ctrl_register_7_10_Q : STD_LOGIC; 
  signal ctrl_register_7_9_Q : STD_LOGIC; 
  signal ctrl_register_7_8_Q : STD_LOGIC; 
  signal ctrl_register_7_7_Q : STD_LOGIC; 
  signal ctrl_register_7_6_Q : STD_LOGIC; 
  signal ctrl_register_7_5_Q : STD_LOGIC; 
  signal ctrl_register_7_4_Q : STD_LOGIC; 
  signal ctrl_register_6_3_Q : STD_LOGIC; 
  signal ctrl_register_6_2_Q : STD_LOGIC; 
  signal ctrl_register_6_1_Q : STD_LOGIC; 
  signal ctrl_register_6_0_Q : STD_LOGIC; 
  signal ctrl_register_6_15_Q : STD_LOGIC; 
  signal ctrl_register_6_14_Q : STD_LOGIC; 
  signal ctrl_register_6_13_Q : STD_LOGIC; 
  signal ctrl_register_6_12_Q : STD_LOGIC; 
  signal ctrl_register_6_11_Q : STD_LOGIC; 
  signal ctrl_register_6_10_Q : STD_LOGIC; 
  signal ctrl_register_6_9_Q : STD_LOGIC; 
  signal ctrl_register_6_8_Q : STD_LOGIC; 
  signal ctrl_register_6_7_Q : STD_LOGIC; 
  signal ctrl_register_6_6_Q : STD_LOGIC; 
  signal ctrl_register_6_5_Q : STD_LOGIC; 
  signal ctrl_register_6_4_Q : STD_LOGIC; 
  signal ctrl_register_5_15_Q : STD_LOGIC; 
  signal ctrl_register_5_14_Q : STD_LOGIC; 
  signal ctrl_register_5_13_Q : STD_LOGIC; 
  signal ctrl_register_5_12_Q : STD_LOGIC; 
  signal ctrl_register_5_11_Q : STD_LOGIC; 
  signal ctrl_register_5_10_Q : STD_LOGIC; 
  signal ctrl_register_5_9_Q : STD_LOGIC; 
  signal ctrl_register_5_8_Q : STD_LOGIC; 
  signal ctrl_register_5_7_Q : STD_LOGIC; 
  signal ctrl_register_5_6_Q : STD_LOGIC; 
  signal ctrl_register_5_5_Q : STD_LOGIC; 
  signal ctrl_register_5_4_Q : STD_LOGIC; 
  signal ctrl_register_5_3_Q : STD_LOGIC; 
  signal ctrl_register_5_2_Q : STD_LOGIC; 
  signal ctrl_register_5_1_Q : STD_LOGIC; 
  signal ctrl_register_4_15_Q : STD_LOGIC; 
  signal ctrl_register_4_14_Q : STD_LOGIC; 
  signal ctrl_register_4_13_Q : STD_LOGIC; 
  signal ctrl_register_4_12_Q : STD_LOGIC; 
  signal ctrl_register_4_11_Q : STD_LOGIC; 
  signal ctrl_register_4_10_Q : STD_LOGIC; 
  signal ctrl_register_4_9_Q : STD_LOGIC; 
  signal ctrl_register_4_8_Q : STD_LOGIC; 
  signal ctrl_register_4_7_Q : STD_LOGIC; 
  signal ctrl_register_4_6_Q : STD_LOGIC; 
  signal ctrl_register_4_5_Q : STD_LOGIC; 
  signal ctrl_register_4_4_Q : STD_LOGIC; 
  signal ctrl_register_4_3_Q : STD_LOGIC; 
  signal ctrl_register_4_2_Q : STD_LOGIC; 
  signal ctrl_register_4_1_Q : STD_LOGIC; 
  signal ctrl_register_4_0_Q : STD_LOGIC; 
  signal ctrl_register_3_15_Q : STD_LOGIC; 
  signal ctrl_register_3_14_Q : STD_LOGIC; 
  signal ctrl_register_3_13_Q : STD_LOGIC; 
  signal ctrl_register_3_12_Q : STD_LOGIC; 
  signal ctrl_register_3_11_Q : STD_LOGIC; 
  signal ctrl_register_3_10_Q : STD_LOGIC; 
  signal ctrl_register_3_9_Q : STD_LOGIC; 
  signal ctrl_register_3_8_Q : STD_LOGIC; 
  signal ctrl_register_3_7_Q : STD_LOGIC; 
  signal ctrl_register_3_6_Q : STD_LOGIC; 
  signal ctrl_register_3_5_Q : STD_LOGIC; 
  signal ctrl_register_3_4_Q : STD_LOGIC; 
  signal ctrl_register_3_3_Q : STD_LOGIC; 
  signal ctrl_register_3_2_Q : STD_LOGIC; 
  signal ctrl_register_3_1_Q : STD_LOGIC; 
  signal ctrl_register_3_0_Q : STD_LOGIC; 
  signal ctrl_register_2_11_Q : STD_LOGIC; 
  signal ctrl_register_2_10_Q : STD_LOGIC; 
  signal ctrl_register_2_9_Q : STD_LOGIC; 
  signal ctrl_register_2_8_Q : STD_LOGIC; 
  signal ctrl_register_2_7_Q : STD_LOGIC; 
  signal ctrl_register_2_6_Q : STD_LOGIC; 
  signal ctrl_register_2_5_Q : STD_LOGIC; 
  signal ctrl_register_2_4_Q : STD_LOGIC; 
  signal ctrl_register_2_3_Q : STD_LOGIC; 
  signal ctrl_register_2_2_Q : STD_LOGIC; 
  signal ctrl_register_2_1_Q : STD_LOGIC; 
  signal ctrl_register_2_0_Q : STD_LOGIC; 
  signal ctrl_register_2_15_Q : STD_LOGIC; 
  signal ctrl_register_2_14_Q : STD_LOGIC; 
  signal ctrl_register_2_13_Q : STD_LOGIC; 
  signal ctrl_register_2_12_Q : STD_LOGIC; 
  signal ctrl_register_1_6_Q : STD_LOGIC; 
  signal ctrl_register_1_5_Q : STD_LOGIC; 
  signal ctrl_register_1_4_Q : STD_LOGIC; 
  signal ctrl_register_1_3_Q : STD_LOGIC; 
  signal ctrl_register_1_2_Q : STD_LOGIC; 
  signal ctrl_register_1_1_Q : STD_LOGIC; 
  signal ctrl_register_1_0_Q : STD_LOGIC; 
  signal ctrl_register_1_15_Q : STD_LOGIC; 
  signal ctrl_register_1_14_Q : STD_LOGIC; 
  signal ctrl_register_1_13_Q : STD_LOGIC; 
  signal ctrl_register_1_12_Q : STD_LOGIC; 
  signal ctrl_register_1_11_Q : STD_LOGIC; 
  signal ctrl_register_1_10_Q : STD_LOGIC; 
  signal ctrl_register_1_9_Q : STD_LOGIC; 
  signal ctrl_register_1_8_Q : STD_LOGIC; 
  signal ctrl_register_1_7_Q : STD_LOGIC; 
  signal ctrl_register_0_0_Q : STD_LOGIC; 
  signal CALIB_EN_OBUF_3374 : STD_LOGIC; 
  signal ctrl_register_0_15_Q : STD_LOGIC; 
  signal ctrl_register_0_14_Q : STD_LOGIC; 
  signal ctrl_register_0_13_Q : STD_LOGIC; 
  signal ctrl_register_0_12_Q : STD_LOGIC; 
  signal ctrl_register_0_11_Q : STD_LOGIC; 
  signal ctrl_register_0_10_Q : STD_LOGIC; 
  signal ctrl_register_0_9_Q : STD_LOGIC; 
  signal ctrl_register_0_8_Q : STD_LOGIC; 
  signal ctrl_register_0_7_Q : STD_LOGIC; 
  signal ctrl_register_0_6_Q : STD_LOGIC; 
  signal ctrl_register_0_5_Q : STD_LOGIC; 
  signal ctrl_register_0_3_Q : STD_LOGIC; 
  signal ctrl_register_0_2_Q : STD_LOGIC; 
  signal ctrl_register_0_1_Q : STD_LOGIC; 
  signal dc_mas_tx : STD_LOGIC; 
  signal dc_mas_data_out : STD_LOGIC; 
  signal DC_DC_DATA_CLK : STD_LOGIC; 
  signal DC_DC_TX_OBUF_3392 : STD_LOGIC; 
  signal DC_DC_DATA_OUT_OBUF_3393 : STD_LOGIC; 
  signal tx_dac_update : STD_LOGIC; 
  signal mppc_dac_update : STD_LOGIC; 
  signal sys_clk : STD_LOGIC; 
  signal asic_clk : STD_LOGIC; 
  signal aux_clk : STD_LOGIC; 
  signal DATA_IN : STD_LOGIC; 
  signal RX : STD_LOGIC; 
  signal rb_reg_4_X_7_o_wide_mux_15_OUT_15_Q : STD_LOGIC; 
  signal rb_reg_4_X_7_o_wide_mux_15_OUT_14_Q : STD_LOGIC; 
  signal rb_reg_4_X_7_o_wide_mux_15_OUT_13_Q : STD_LOGIC; 
  signal rb_reg_4_X_7_o_wide_mux_15_OUT_12_Q : STD_LOGIC; 
  signal rb_reg_4_X_7_o_wide_mux_15_OUT_11_Q : STD_LOGIC; 
  signal rb_reg_4_X_7_o_wide_mux_15_OUT_10_Q : STD_LOGIC; 
  signal rb_reg_4_X_7_o_wide_mux_15_OUT_9_Q : STD_LOGIC; 
  signal rb_reg_4_X_7_o_wide_mux_15_OUT_8_Q : STD_LOGIC; 
  signal rb_reg_4_X_7_o_wide_mux_15_OUT_7_Q : STD_LOGIC; 
  signal rb_reg_4_X_7_o_wide_mux_15_OUT_6_Q : STD_LOGIC; 
  signal rb_reg_4_X_7_o_wide_mux_15_OUT_5_Q : STD_LOGIC; 
  signal rb_reg_4_X_7_o_wide_mux_15_OUT_4_Q : STD_LOGIC; 
  signal rb_reg_4_X_7_o_wide_mux_15_OUT_3_Q : STD_LOGIC; 
  signal rb_reg_4_X_7_o_wide_mux_15_OUT_2_Q : STD_LOGIC; 
  signal rb_reg_4_X_7_o_wide_mux_15_OUT_1_Q : STD_LOGIC; 
  signal rb_reg_4_X_7_o_wide_mux_15_OUT_0_Q : STD_LOGIC; 
  signal sw_trig : STD_LOGIC; 
  signal dc_mas_tx_INV_2_o : STD_LOGIC; 
  signal dc_mas_data_out_INV_4_o : STD_LOGIC; 
  signal DC_DC_DATA_CLK_INV_52_o : STD_LOGIC; 
  signal DC_DC_CLK_P_OBUF_3427 : STD_LOGIC; 
  signal DC_DC_CLK_N_OBUF_3428 : STD_LOGIC; 
  signal tx_dac_busy : STD_LOGIC; 
  signal SIN_OBUF_3430 : STD_LOGIC; 
  signal SCLK_OBUF_3431 : STD_LOGIC; 
  signal PCLK_OBUF_3432 : STD_LOGIC; 
  signal mppc_dac_busy : STD_LOGIC; 
  signal DAC_SCLK_OBUF_3434 : STD_LOGIC; 
  signal DAC_SDI_OBUF_3435 : STD_LOGIC; 
  signal DAC_LDAC_OBUF_3436 : STD_LOGIC; 
  signal DAC_SYNC_OBUF_3437 : STD_LOGIC; 
  signal sys_clk_INV_50_o : STD_LOGIC; 
  signal ORed_Trig_P_OBUF_3439 : STD_LOGIC; 
  signal internal_wilk_clk : STD_LOGIC; 
  signal asic_clk_INV_48_o : STD_LOGIC; 
  signal GND_7_o_rb_reg_7_equal_14_o : STD_LOGIC; 
  signal GND_7_o_rb_reg_7_equal_15_o : STD_LOGIC; 
  signal timer_31_GND_7_o_add_3_OUT_31_Q : STD_LOGIC; 
  signal timer_31_GND_7_o_add_3_OUT_30_Q : STD_LOGIC; 
  signal timer_31_GND_7_o_add_3_OUT_29_Q : STD_LOGIC; 
  signal timer_31_GND_7_o_add_3_OUT_28_Q : STD_LOGIC; 
  signal timer_31_GND_7_o_add_3_OUT_27_Q : STD_LOGIC; 
  signal timer_31_GND_7_o_add_3_OUT_26_Q : STD_LOGIC; 
  signal timer_31_GND_7_o_add_3_OUT_25_Q : STD_LOGIC; 
  signal timer_31_GND_7_o_add_3_OUT_24_Q : STD_LOGIC; 
  signal timer_31_GND_7_o_add_3_OUT_23_Q : STD_LOGIC; 
  signal timer_31_GND_7_o_add_3_OUT_22_Q : STD_LOGIC; 
  signal timer_31_GND_7_o_add_3_OUT_21_Q : STD_LOGIC; 
  signal timer_31_GND_7_o_add_3_OUT_20_Q : STD_LOGIC; 
  signal timer_31_GND_7_o_add_3_OUT_19_Q : STD_LOGIC; 
  signal timer_31_GND_7_o_add_3_OUT_18_Q : STD_LOGIC; 
  signal timer_31_GND_7_o_add_3_OUT_17_Q : STD_LOGIC; 
  signal timer_31_GND_7_o_add_3_OUT_16_Q : STD_LOGIC; 
  signal timer_31_GND_7_o_add_3_OUT_15_Q : STD_LOGIC; 
  signal timer_31_GND_7_o_add_3_OUT_14_Q : STD_LOGIC; 
  signal timer_31_GND_7_o_add_3_OUT_13_Q : STD_LOGIC; 
  signal timer_31_GND_7_o_add_3_OUT_12_Q : STD_LOGIC; 
  signal timer_31_GND_7_o_add_3_OUT_11_Q : STD_LOGIC; 
  signal timer_31_GND_7_o_add_3_OUT_10_Q : STD_LOGIC; 
  signal timer_31_GND_7_o_add_3_OUT_9_Q : STD_LOGIC; 
  signal timer_31_GND_7_o_add_3_OUT_8_Q : STD_LOGIC; 
  signal timer_31_GND_7_o_add_3_OUT_7_Q : STD_LOGIC; 
  signal timer_31_GND_7_o_add_3_OUT_6_Q : STD_LOGIC; 
  signal timer_31_GND_7_o_add_3_OUT_5_Q : STD_LOGIC; 
  signal timer_31_GND_7_o_add_3_OUT_4_Q : STD_LOGIC; 
  signal timer_31_GND_7_o_add_3_OUT_3_Q : STD_LOGIC; 
  signal timer_31_GND_7_o_add_3_OUT_2_Q : STD_LOGIC; 
  signal timer_31_GND_7_o_add_3_OUT_1_Q : STD_LOGIC; 
  signal timer_31_GND_7_o_add_3_OUT_0_Q : STD_LOGIC; 
  signal timer_31_timer_last_31_sub_8_OUT_31_Q : STD_LOGIC; 
  signal timer_31_timer_last_31_sub_8_OUT_30_Q : STD_LOGIC; 
  signal timer_31_timer_last_31_sub_8_OUT_29_Q : STD_LOGIC; 
  signal timer_31_timer_last_31_sub_8_OUT_28_Q : STD_LOGIC; 
  signal timer_31_timer_last_31_sub_8_OUT_27_Q : STD_LOGIC; 
  signal timer_31_timer_last_31_sub_8_OUT_26_Q : STD_LOGIC; 
  signal timer_31_timer_last_31_sub_8_OUT_25_Q : STD_LOGIC; 
  signal timer_31_timer_last_31_sub_8_OUT_24_Q : STD_LOGIC; 
  signal timer_31_timer_last_31_sub_8_OUT_23_Q : STD_LOGIC; 
  signal timer_31_timer_last_31_sub_8_OUT_22_Q : STD_LOGIC; 
  signal timer_31_timer_last_31_sub_8_OUT_21_Q : STD_LOGIC; 
  signal timer_31_timer_last_31_sub_8_OUT_20_Q : STD_LOGIC; 
  signal timer_31_timer_last_31_sub_8_OUT_19_Q : STD_LOGIC; 
  signal timer_31_timer_last_31_sub_8_OUT_18_Q : STD_LOGIC; 
  signal timer_31_timer_last_31_sub_8_OUT_17_Q : STD_LOGIC; 
  signal timer_31_timer_last_31_sub_8_OUT_16_Q : STD_LOGIC; 
  signal timer_31_timer_last_31_sub_8_OUT_15_Q : STD_LOGIC; 
  signal timer_31_timer_last_31_sub_8_OUT_14_Q : STD_LOGIC; 
  signal timer_31_timer_last_31_sub_8_OUT_13_Q : STD_LOGIC; 
  signal timer_31_timer_last_31_sub_8_OUT_12_Q : STD_LOGIC; 
  signal timer_31_timer_last_31_sub_8_OUT_11_Q : STD_LOGIC; 
  signal timer_31_timer_last_31_sub_8_OUT_10_Q : STD_LOGIC; 
  signal timer_31_timer_last_31_sub_8_OUT_9_Q : STD_LOGIC; 
  signal timer_31_timer_last_31_sub_8_OUT_8_Q : STD_LOGIC; 
  signal timer_31_timer_last_31_sub_8_OUT_7_Q : STD_LOGIC; 
  signal timer_31_timer_last_31_sub_8_OUT_6_Q : STD_LOGIC; 
  signal timer_31_timer_last_31_sub_8_OUT_5_Q : STD_LOGIC; 
  signal timer_31_timer_last_31_sub_8_OUT_4_Q : STD_LOGIC; 
  signal timer_31_timer_last_31_sub_8_OUT_3_Q : STD_LOGIC; 
  signal timer_31_timer_last_31_sub_8_OUT_2_Q : STD_LOGIC; 
  signal timer_31_timer_last_31_sub_8_OUT_1_Q : STD_LOGIC; 
  signal timer_31_timer_last_31_sub_8_OUT_0_Q : STD_LOGIC; 
  signal timer_31_timer_last_pat_31_sub_12_OUT_31_Q : STD_LOGIC; 
  signal timer_31_timer_last_pat_31_sub_12_OUT_30_Q : STD_LOGIC; 
  signal timer_31_timer_last_pat_31_sub_12_OUT_29_Q : STD_LOGIC; 
  signal timer_31_timer_last_pat_31_sub_12_OUT_28_Q : STD_LOGIC; 
  signal timer_31_timer_last_pat_31_sub_12_OUT_27_Q : STD_LOGIC; 
  signal timer_31_timer_last_pat_31_sub_12_OUT_26_Q : STD_LOGIC; 
  signal timer_31_timer_last_pat_31_sub_12_OUT_25_Q : STD_LOGIC; 
  signal timer_31_timer_last_pat_31_sub_12_OUT_24_Q : STD_LOGIC; 
  signal timer_31_timer_last_pat_31_sub_12_OUT_23_Q : STD_LOGIC; 
  signal timer_31_timer_last_pat_31_sub_12_OUT_22_Q : STD_LOGIC; 
  signal timer_31_timer_last_pat_31_sub_12_OUT_21_Q : STD_LOGIC; 
  signal timer_31_timer_last_pat_31_sub_12_OUT_20_Q : STD_LOGIC; 
  signal timer_31_timer_last_pat_31_sub_12_OUT_19_Q : STD_LOGIC; 
  signal timer_31_timer_last_pat_31_sub_12_OUT_18_Q : STD_LOGIC; 
  signal timer_31_timer_last_pat_31_sub_12_OUT_17_Q : STD_LOGIC; 
  signal timer_31_timer_last_pat_31_sub_12_OUT_16_Q : STD_LOGIC; 
  signal timer_31_timer_last_pat_31_sub_12_OUT_15_Q : STD_LOGIC; 
  signal timer_31_timer_last_pat_31_sub_12_OUT_14_Q : STD_LOGIC; 
  signal timer_31_timer_last_pat_31_sub_12_OUT_13_Q : STD_LOGIC; 
  signal timer_31_timer_last_pat_31_sub_12_OUT_12_Q : STD_LOGIC; 
  signal timer_31_timer_last_pat_31_sub_12_OUT_11_Q : STD_LOGIC; 
  signal timer_31_timer_last_pat_31_sub_12_OUT_10_Q : STD_LOGIC; 
  signal timer_31_timer_last_pat_31_sub_12_OUT_9_Q : STD_LOGIC; 
  signal timer_31_timer_last_pat_31_sub_12_OUT_8_Q : STD_LOGIC; 
  signal timer_31_timer_last_pat_31_sub_12_OUT_7_Q : STD_LOGIC; 
  signal timer_31_timer_last_pat_31_sub_12_OUT_6_Q : STD_LOGIC; 
  signal timer_31_timer_last_pat_31_sub_12_OUT_5_Q : STD_LOGIC; 
  signal timer_31_timer_last_pat_31_sub_12_OUT_4_Q : STD_LOGIC; 
  signal timer_31_timer_last_pat_31_sub_12_OUT_3_Q : STD_LOGIC; 
  signal timer_31_timer_last_pat_31_sub_12_OUT_2_Q : STD_LOGIC; 
  signal timer_31_timer_last_pat_31_sub_12_OUT_1_Q : STD_LOGIC; 
  signal timer_31_timer_last_pat_31_sub_12_OUT_0_Q : STD_LOGIC; 
  signal send_pat_0_BUFG_3658 : STD_LOGIC; 
  signal wave_fifo_wr_en_BUFG_3659 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_415_3662 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_1015_3663 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_931_3664 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_930_3665 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_815_3666 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_315_3667 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_414_3668 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_1014_3669 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_929_3670 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_928_3671 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_814_3672 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_314_3673 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_413_3674 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_1013_3675 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_927_3676 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_926_3677 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_813_3678 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_313_3679 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_412_3680 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_1012_3681 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_925_3682 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_924_3683 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_812_3684 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_312_3685 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_411_3686 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_1011_3687 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_923_3688 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_922_3689 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_811_3690 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_311_3691 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_410_3692 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_1010_3693 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_921_3694 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_920_3695 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_810_3696 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_310_3697 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_49_3698 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_109_3699 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_919_3700 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_918_3701 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_89_3702 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_39_3703 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_48_3704 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_108_3705 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_917_3706 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_916_3707 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_88_3708 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_38_3709 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_47_3710 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_107_3711 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_915_3712 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_914_3713 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_87_3714 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_37_3715 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_46_3716 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_106_3717 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_913_3718 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_912_3719 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_86_3720 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_36_3721 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_45_3722 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_105_3723 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_911_3724 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_910_3725 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_85_3726 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_35_3727 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_44_3728 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_104_3729 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_99_3730 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_98_3731 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_84_3732 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_34_3733 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_43_3734 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_103_3735 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_97_3736 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_96_3737 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_83_3738 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_33_3739 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_42_3740 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_102_3741 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_95_3742 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_94_3743 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_82_3744 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_32_3745 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_41_3746 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_101_3747 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_93_3748 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_92_3749 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_81_3750 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_31_3751 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_4_3752 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_10_3753 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_91_3754 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_9_3755 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_8_3756 : STD_LOGIC; 
  signal Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_3_3757 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_lut_0_Q : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_0_Q_3759 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_1_Q_3760 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_2_Q_3761 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_3_Q_3762 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_4_Q_3763 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_5_Q_3764 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_6_Q_3765 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_7_Q_3766 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_8_Q_3767 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_9_Q_3768 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_10_Q_3769 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_11_Q_3770 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_12_Q_3771 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_13_Q_3772 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_14_Q_3773 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_15_Q_3774 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_16_Q_3775 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_17_Q_3776 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_18_Q_3777 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_19_Q_3778 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_20_Q_3779 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_21_Q_3780 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_22_Q_3781 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_23_Q_3782 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_24_Q_3783 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_25_Q_3784 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_26_Q_3785 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_27_Q_3786 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_28_Q_3787 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_29_Q_3788 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_30_Q_3789 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_0_Q_3790 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_0_Q_3791 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_1_Q_3792 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_1_Q_3793 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_2_Q_3794 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_2_Q_3795 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_3_Q_3796 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_3_Q_3797 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_4_Q_3798 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_4_Q_3799 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_5_Q_3800 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_5_Q_3801 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_6_Q_3802 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_6_Q_3803 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_7_Q_3804 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_7_Q_3805 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_8_Q_3806 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_8_Q_3807 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_9_Q_3808 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_9_Q_3809 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_10_Q_3810 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_10_Q_3811 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_11_Q_3812 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_11_Q_3813 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_12_Q_3814 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_12_Q_3815 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_13_Q_3816 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_13_Q_3817 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_14_Q_3818 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_14_Q_3819 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_15_Q_3820 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_15_Q_3821 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_16_Q_3822 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_16_Q_3823 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_17_Q_3824 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_17_Q_3825 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_18_Q_3826 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_18_Q_3827 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_19_Q_3828 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_19_Q_3829 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_20_Q_3830 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_20_Q_3831 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_21_Q_3832 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_21_Q_3833 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_22_Q_3834 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_22_Q_3835 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_23_Q_3836 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_23_Q_3837 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_24_Q_3838 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_24_Q_3839 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_25_Q_3840 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_25_Q_3841 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_26_Q_3842 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_26_Q_3843 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_27_Q_3844 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_27_Q_3845 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_28_Q_3846 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_28_Q_3847 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_29_Q_3848 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_29_Q_3849 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_30_Q_3850 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_30_Q_3851 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_31_Q_3852 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_0_Q_3853 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_0_Q_3854 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_1_Q_3855 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_1_Q_3856 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_2_Q_3857 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_2_Q_3858 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_3_Q_3859 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_3_Q_3860 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_4_Q_3861 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_4_Q_3862 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_5_Q_3863 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_5_Q_3864 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_6_Q_3865 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_6_Q_3866 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_7_Q_3867 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_7_Q_3868 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_8_Q_3869 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_8_Q_3870 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_9_Q_3871 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_9_Q_3872 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_10_Q_3873 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_10_Q_3874 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_11_Q_3875 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_11_Q_3876 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_12_Q_3877 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_12_Q_3878 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_13_Q_3879 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_13_Q_3880 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_14_Q_3881 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_14_Q_3882 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_15_Q_3883 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_15_Q_3884 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_16_Q_3885 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_16_Q_3886 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_17_Q_3887 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_17_Q_3888 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_18_Q_3889 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_18_Q_3890 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_19_Q_3891 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_19_Q_3892 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_20_Q_3893 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_20_Q_3894 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_21_Q_3895 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_21_Q_3896 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_22_Q_3897 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_22_Q_3898 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_23_Q_3899 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_23_Q_3900 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_24_Q_3901 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_24_Q_3902 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_25_Q_3903 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_25_Q_3904 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_26_Q_3905 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_26_Q_3906 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_27_Q_3907 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_27_Q_3908 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_28_Q_3909 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_28_Q_3910 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_29_Q_3911 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_29_Q_3912 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_30_Q_3913 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_30_Q_3914 : STD_LOGIC; 
  signal Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_31_Q_3915 : STD_LOGIC; 
  signal Mcompar_send_pat_0_lut_0_Q_3916 : STD_LOGIC; 
  signal Mcompar_send_pat_0_cy_0_Q_3917 : STD_LOGIC; 
  signal Mcompar_send_pat_0_lut_1_Q_3918 : STD_LOGIC; 
  signal Mcompar_send_pat_0_cy_1_Q_3919 : STD_LOGIC; 
  signal Mcompar_send_pat_0_lut_2_Q_3920 : STD_LOGIC; 
  signal Mcompar_send_pat_0_cy_2_Q_3921 : STD_LOGIC; 
  signal Mcompar_send_pat_0_lut_3_Q_3922 : STD_LOGIC; 
  signal Mcompar_send_pat_0_cy_3_Q_3923 : STD_LOGIC; 
  signal Mcompar_send_pat_0_lut_4_Q_3924 : STD_LOGIC; 
  signal Mcompar_send_pat_0_cy_4_Q_3925 : STD_LOGIC; 
  signal Mcompar_send_pat_0_lut_5_Q_3926 : STD_LOGIC; 
  signal Mcompar_send_rdy_lutdi_3927 : STD_LOGIC; 
  signal Mcompar_send_rdy_lutdi1_3930 : STD_LOGIC; 
  signal Mcompar_send_rdy_lutdi2_3933 : STD_LOGIC; 
  signal GND_7_o_rb_reg_7_equal_14_o_7_1_3944 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_1_rt_3999 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_2_rt_4000 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_3_rt_4001 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_4_rt_4002 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_5_rt_4003 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_6_rt_4004 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_7_rt_4005 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_8_rt_4006 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_9_rt_4007 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_10_rt_4008 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_11_rt_4009 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_12_rt_4010 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_13_rt_4011 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_14_rt_4012 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_15_rt_4013 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_16_rt_4014 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_17_rt_4015 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_18_rt_4016 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_19_rt_4017 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_20_rt_4018 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_21_rt_4019 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_22_rt_4020 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_23_rt_4021 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_24_rt_4022 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_25_rt_4023 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_26_rt_4024 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_27_rt_4025 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_28_rt_4026 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_29_rt_4027 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_cy_30_rt_4028 : STD_LOGIC; 
  signal Madd_timer_31_GND_7_o_add_3_OUT_xor_31_rt_4029 : STD_LOGIC; 
  signal wave_fifo_wr_en : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal NLW_DC_COMM_PARSER_TX_BUSY_UNCONNECTED : STD_LOGIC; 
  signal NLW_DC_COMM_PARSER_wave_fifo_full_UNCONNECTED : STD_LOGIC; 
  signal NLW_TARGETX_TRIGGER_LOGIC_SCROD_TRIG_UNCONNECTED : STD_LOGIC; 
  signal NLW_TARGETX_TRIGGER_LOGIC_TRIG_BITS_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_TARGETX_TRIGGER_LOGIC_TRIG_BITS_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_TARGETX_TRIGGER_LOGIC_TRIG_BITS_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_TARGETX_TRIGGER_LOGIC_TRIG_BITS_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_TARGETX_TRIGGER_LOGIC_TRIG_BITS_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_TARGETX_TRIGGER_LOGIC_TRIGGER_UNCONNECTED : STD_LOGIC; 
  signal trig_count : STD_LOGIC_VECTOR ( 31 downto 1 ); 
  signal timer_pat : STD_LOGIC_VECTOR ( 8 downto 8 ); 
  signal rb_reg : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal tx_trigbits_l : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal timer : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal rb_value : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal timer_last : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal timer_last_pat : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal Mcompar_send_rdy_lut : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal Mcompar_send_rdy_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal send_pat : STD_LOGIC_VECTOR ( 0 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => SAMPLESEL_ANY_OBUF_3058
    );
  XST_VCC : VCC
    port map (
      P => timer_pat(8)
    );
  TX_TRIG16_dff_5_0 : FD
    port map (
      C => sys_clk,
      D => TX_TRIG_0_IBUF_3011,
      Q => tx_trigbits_l(0)
    );
  TX_TRIG16_dff_5_1 : FD
    port map (
      C => sys_clk,
      D => TX_TRIG_1_IBUF_3010,
      Q => tx_trigbits_l(1)
    );
  TX_TRIG16_dff_5_2 : FD
    port map (
      C => sys_clk,
      D => TX_TRIG_2_IBUF_3009,
      Q => tx_trigbits_l(2)
    );
  TX_TRIG16_dff_5_3 : FD
    port map (
      C => sys_clk,
      D => TX_TRIG_3_IBUF_3008,
      Q => tx_trigbits_l(3)
    );
  TX_TRIG16_dff_5_4 : FD
    port map (
      C => sys_clk,
      D => TX_TRIG_4_IBUF_3007,
      Q => tx_trigbits_l(4)
    );
  TX_TRIG16_dff_5_5 : FD
    port map (
      C => sys_clk,
      D => TX_TRIG16_IBUF_3020,
      Q => tx_trigbits_l(5)
    );
  timer_31_dff_4_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => sys_clk,
      D => timer_31_GND_7_o_add_3_OUT_0_Q,
      Q => timer(0)
    );
  timer_31_dff_4_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => sys_clk,
      D => timer_31_GND_7_o_add_3_OUT_1_Q,
      Q => timer(1)
    );
  timer_31_dff_4_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => sys_clk,
      D => timer_31_GND_7_o_add_3_OUT_2_Q,
      Q => timer(2)
    );
  timer_31_dff_4_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => sys_clk,
      D => timer_31_GND_7_o_add_3_OUT_3_Q,
      Q => timer(3)
    );
  timer_31_dff_4_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => sys_clk,
      D => timer_31_GND_7_o_add_3_OUT_4_Q,
      Q => timer(4)
    );
  timer_31_dff_4_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => sys_clk,
      D => timer_31_GND_7_o_add_3_OUT_5_Q,
      Q => timer(5)
    );
  timer_31_dff_4_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => sys_clk,
      D => timer_31_GND_7_o_add_3_OUT_6_Q,
      Q => timer(6)
    );
  timer_31_dff_4_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => sys_clk,
      D => timer_31_GND_7_o_add_3_OUT_7_Q,
      Q => timer(7)
    );
  timer_31_dff_4_8 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => sys_clk,
      D => timer_31_GND_7_o_add_3_OUT_8_Q,
      Q => timer(8)
    );
  timer_31_dff_4_9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => sys_clk,
      D => timer_31_GND_7_o_add_3_OUT_9_Q,
      Q => timer(9)
    );
  timer_31_dff_4_10 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => sys_clk,
      D => timer_31_GND_7_o_add_3_OUT_10_Q,
      Q => timer(10)
    );
  timer_31_dff_4_11 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => sys_clk,
      D => timer_31_GND_7_o_add_3_OUT_11_Q,
      Q => timer(11)
    );
  timer_31_dff_4_12 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => sys_clk,
      D => timer_31_GND_7_o_add_3_OUT_12_Q,
      Q => timer(12)
    );
  timer_31_dff_4_13 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => sys_clk,
      D => timer_31_GND_7_o_add_3_OUT_13_Q,
      Q => timer(13)
    );
  timer_31_dff_4_14 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => sys_clk,
      D => timer_31_GND_7_o_add_3_OUT_14_Q,
      Q => timer(14)
    );
  timer_31_dff_4_15 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => sys_clk,
      D => timer_31_GND_7_o_add_3_OUT_15_Q,
      Q => timer(15)
    );
  timer_31_dff_4_16 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => sys_clk,
      D => timer_31_GND_7_o_add_3_OUT_16_Q,
      Q => timer(16)
    );
  timer_31_dff_4_17 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => sys_clk,
      D => timer_31_GND_7_o_add_3_OUT_17_Q,
      Q => timer(17)
    );
  timer_31_dff_4_18 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => sys_clk,
      D => timer_31_GND_7_o_add_3_OUT_18_Q,
      Q => timer(18)
    );
  timer_31_dff_4_19 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => sys_clk,
      D => timer_31_GND_7_o_add_3_OUT_19_Q,
      Q => timer(19)
    );
  timer_31_dff_4_20 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => sys_clk,
      D => timer_31_GND_7_o_add_3_OUT_20_Q,
      Q => timer(20)
    );
  timer_31_dff_4_21 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => sys_clk,
      D => timer_31_GND_7_o_add_3_OUT_21_Q,
      Q => timer(21)
    );
  timer_31_dff_4_22 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => sys_clk,
      D => timer_31_GND_7_o_add_3_OUT_22_Q,
      Q => timer(22)
    );
  timer_31_dff_4_23 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => sys_clk,
      D => timer_31_GND_7_o_add_3_OUT_23_Q,
      Q => timer(23)
    );
  timer_31_dff_4_24 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => sys_clk,
      D => timer_31_GND_7_o_add_3_OUT_24_Q,
      Q => timer(24)
    );
  timer_31_dff_4_25 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => sys_clk,
      D => timer_31_GND_7_o_add_3_OUT_25_Q,
      Q => timer(25)
    );
  timer_31_dff_4_26 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => sys_clk,
      D => timer_31_GND_7_o_add_3_OUT_26_Q,
      Q => timer(26)
    );
  timer_31_dff_4_27 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => sys_clk,
      D => timer_31_GND_7_o_add_3_OUT_27_Q,
      Q => timer(27)
    );
  timer_31_dff_4_28 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => sys_clk,
      D => timer_31_GND_7_o_add_3_OUT_28_Q,
      Q => timer(28)
    );
  timer_31_dff_4_29 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => sys_clk,
      D => timer_31_GND_7_o_add_3_OUT_29_Q,
      Q => timer(29)
    );
  timer_31_dff_4_30 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => sys_clk,
      D => timer_31_GND_7_o_add_3_OUT_30_Q,
      Q => timer(30)
    );
  timer_31_dff_4_31 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => sys_clk,
      D => timer_31_GND_7_o_add_3_OUT_31_Q,
      Q => timer(31)
    );
  timer_last_pat_31 : LDE_1
    generic map(
      INIT => '1'
    )
    port map (
      D => timer(31),
      G => send_pat_0_BUFG_3658,
      GE => send_pat(0),
      Q => timer_last_pat(31)
    );
  timer_last_31 : LD
    generic map(
      INIT => '1'
    )
    port map (
      D => timer(31),
      G => wave_fifo_wr_en_BUFG_3659,
      Q => timer_last(31)
    );
  timer_last_29 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(29),
      G => wave_fifo_wr_en_BUFG_3659,
      Q => timer_last(29)
    );
  timer_last_30 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(30),
      G => wave_fifo_wr_en_BUFG_3659,
      Q => timer_last(30)
    );
  timer_last_pat_30 : LDE_1
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(30),
      G => send_pat_0_BUFG_3658,
      GE => send_pat(0),
      Q => timer_last_pat(30)
    );
  timer_last_pat_28 : LDE_1
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(28),
      G => send_pat_0_BUFG_3658,
      GE => send_pat(0),
      Q => timer_last_pat(28)
    );
  timer_last_pat_29 : LDE_1
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(29),
      G => send_pat_0_BUFG_3658,
      GE => send_pat(0),
      Q => timer_last_pat(29)
    );
  timer_last_28 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(28),
      G => wave_fifo_wr_en_BUFG_3659,
      Q => timer_last(28)
    );
  timer_last_26 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(26),
      G => wave_fifo_wr_en_BUFG_3659,
      Q => timer_last(26)
    );
  timer_last_27 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(27),
      G => wave_fifo_wr_en_BUFG_3659,
      Q => timer_last(27)
    );
  timer_last_pat_27 : LDE_1
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(27),
      G => send_pat_0_BUFG_3658,
      GE => send_pat(0),
      Q => timer_last_pat(27)
    );
  timer_last_pat_25 : LDE_1
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(25),
      G => send_pat_0_BUFG_3658,
      GE => send_pat(0),
      Q => timer_last_pat(25)
    );
  timer_last_pat_26 : LDE_1
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(26),
      G => send_pat_0_BUFG_3658,
      GE => send_pat(0),
      Q => timer_last_pat(26)
    );
  timer_last_25 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(25),
      G => wave_fifo_wr_en_BUFG_3659,
      Q => timer_last(25)
    );
  timer_last_23 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(23),
      G => wave_fifo_wr_en_BUFG_3659,
      Q => timer_last(23)
    );
  timer_last_24 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(24),
      G => wave_fifo_wr_en_BUFG_3659,
      Q => timer_last(24)
    );
  timer_last_pat_24 : LDE_1
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(24),
      G => send_pat_0_BUFG_3658,
      GE => send_pat(0),
      Q => timer_last_pat(24)
    );
  timer_last_pat_22 : LDE_1
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(22),
      G => send_pat_0_BUFG_3658,
      GE => send_pat(0),
      Q => timer_last_pat(22)
    );
  timer_last_pat_23 : LDE_1
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(23),
      G => send_pat_0_BUFG_3658,
      GE => send_pat(0),
      Q => timer_last_pat(23)
    );
  timer_last_22 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(22),
      G => wave_fifo_wr_en_BUFG_3659,
      Q => timer_last(22)
    );
  timer_last_20 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(20),
      G => wave_fifo_wr_en_BUFG_3659,
      Q => timer_last(20)
    );
  timer_last_21 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(21),
      G => wave_fifo_wr_en_BUFG_3659,
      Q => timer_last(21)
    );
  timer_last_pat_21 : LDE_1
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(21),
      G => send_pat_0_BUFG_3658,
      GE => send_pat(0),
      Q => timer_last_pat(21)
    );
  timer_last_pat_19 : LDE_1
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(19),
      G => send_pat_0_BUFG_3658,
      GE => send_pat(0),
      Q => timer_last_pat(19)
    );
  timer_last_pat_20 : LDE_1
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(20),
      G => send_pat_0_BUFG_3658,
      GE => send_pat(0),
      Q => timer_last_pat(20)
    );
  timer_last_19 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(19),
      G => wave_fifo_wr_en_BUFG_3659,
      Q => timer_last(19)
    );
  timer_last_17 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(17),
      G => wave_fifo_wr_en_BUFG_3659,
      Q => timer_last(17)
    );
  timer_last_18 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(18),
      G => wave_fifo_wr_en_BUFG_3659,
      Q => timer_last(18)
    );
  timer_last_pat_18 : LDE_1
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(18),
      G => send_pat_0_BUFG_3658,
      GE => send_pat(0),
      Q => timer_last_pat(18)
    );
  timer_last_pat_16 : LDE_1
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(16),
      G => send_pat_0_BUFG_3658,
      GE => send_pat(0),
      Q => timer_last_pat(16)
    );
  timer_last_pat_17 : LDE_1
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(17),
      G => send_pat_0_BUFG_3658,
      GE => send_pat(0),
      Q => timer_last_pat(17)
    );
  timer_last_16 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(16),
      G => wave_fifo_wr_en_BUFG_3659,
      Q => timer_last(16)
    );
  timer_last_14 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(14),
      G => wave_fifo_wr_en_BUFG_3659,
      Q => timer_last(14)
    );
  timer_last_15 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(15),
      G => wave_fifo_wr_en_BUFG_3659,
      Q => timer_last(15)
    );
  timer_last_pat_15 : LDE_1
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(15),
      G => send_pat_0_BUFG_3658,
      GE => send_pat(0),
      Q => timer_last_pat(15)
    );
  timer_last_pat_13 : LDE_1
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(13),
      G => send_pat_0_BUFG_3658,
      GE => send_pat(0),
      Q => timer_last_pat(13)
    );
  timer_last_pat_14 : LDE_1
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(14),
      G => send_pat_0_BUFG_3658,
      GE => send_pat(0),
      Q => timer_last_pat(14)
    );
  timer_last_13 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(13),
      G => wave_fifo_wr_en_BUFG_3659,
      Q => timer_last(13)
    );
  timer_last_11 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(11),
      G => wave_fifo_wr_en_BUFG_3659,
      Q => timer_last(11)
    );
  timer_last_12 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(12),
      G => wave_fifo_wr_en_BUFG_3659,
      Q => timer_last(12)
    );
  timer_last_pat_12 : LDE_1
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(12),
      G => send_pat_0_BUFG_3658,
      GE => send_pat(0),
      Q => timer_last_pat(12)
    );
  timer_last_pat_10 : LDE_1
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(10),
      G => send_pat_0_BUFG_3658,
      GE => send_pat(0),
      Q => timer_last_pat(10)
    );
  timer_last_pat_11 : LDE_1
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(11),
      G => send_pat_0_BUFG_3658,
      GE => send_pat(0),
      Q => timer_last_pat(11)
    );
  timer_last_10 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(10),
      G => wave_fifo_wr_en_BUFG_3659,
      Q => timer_last(10)
    );
  timer_last_8 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(8),
      G => wave_fifo_wr_en_BUFG_3659,
      Q => timer_last(8)
    );
  timer_last_9 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(9),
      G => wave_fifo_wr_en_BUFG_3659,
      Q => timer_last(9)
    );
  timer_last_pat_9 : LDE_1
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(9),
      G => send_pat_0_BUFG_3658,
      GE => send_pat(0),
      Q => timer_last_pat(9)
    );
  timer_last_pat_7 : LDE_1
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(7),
      G => send_pat_0_BUFG_3658,
      GE => send_pat(0),
      Q => timer_last_pat(7)
    );
  timer_last_pat_8 : LDE_1
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(8),
      G => send_pat_0_BUFG_3658,
      GE => send_pat(0),
      Q => timer_last_pat(8)
    );
  timer_last_7 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(7),
      G => wave_fifo_wr_en_BUFG_3659,
      Q => timer_last(7)
    );
  timer_last_5 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(5),
      G => wave_fifo_wr_en_BUFG_3659,
      Q => timer_last(5)
    );
  timer_last_6 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(6),
      G => wave_fifo_wr_en_BUFG_3659,
      Q => timer_last(6)
    );
  timer_last_pat_6 : LDE_1
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(6),
      G => send_pat_0_BUFG_3658,
      GE => send_pat(0),
      Q => timer_last_pat(6)
    );
  timer_last_pat_4 : LDE_1
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(4),
      G => send_pat_0_BUFG_3658,
      GE => send_pat(0),
      Q => timer_last_pat(4)
    );
  timer_last_pat_5 : LDE_1
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(5),
      G => send_pat_0_BUFG_3658,
      GE => send_pat(0),
      Q => timer_last_pat(5)
    );
  timer_last_4 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(4),
      G => wave_fifo_wr_en_BUFG_3659,
      Q => timer_last(4)
    );
  timer_last_2 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(2),
      G => wave_fifo_wr_en_BUFG_3659,
      Q => timer_last(2)
    );
  timer_last_3 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(3),
      G => wave_fifo_wr_en_BUFG_3659,
      Q => timer_last(3)
    );
  timer_last_pat_3 : LDE_1
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(3),
      G => send_pat_0_BUFG_3658,
      GE => send_pat(0),
      Q => timer_last_pat(3)
    );
  timer_last_pat_1 : LDE_1
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(1),
      G => send_pat_0_BUFG_3658,
      GE => send_pat(0),
      Q => timer_last_pat(1)
    );
  timer_last_pat_2 : LDE_1
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(2),
      G => send_pat_0_BUFG_3658,
      GE => send_pat(0),
      Q => timer_last_pat(2)
    );
  timer_last_1 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(1),
      G => wave_fifo_wr_en_BUFG_3659,
      Q => timer_last(1)
    );
  timer_last_0 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(0),
      G => wave_fifo_wr_en_BUFG_3659,
      Q => timer_last(0)
    );
  timer_last_pat_0 : LDE_1
    generic map(
      INIT => '0'
    )
    port map (
      D => timer(0),
      G => send_pat_0_BUFG_3658,
      GE => send_pat(0),
      Q => timer_last_pat(0)
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_2_f7_14 : MUXF7
    port map (
      I0 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_415_3662,
      I1 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_315_3667,
      S => rb_reg(4),
      O => rb_reg_4_X_7_o_wide_mux_15_OUT_9_Q
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_415 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(3),
      I1 => rb_reg(2),
      I2 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_931_3664,
      I3 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_1015_3663,
      I4 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_930_3665,
      I5 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_815_3666,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_415_3662
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_1015 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_14_9_Q,
      I3 => ctrl_register_15_9_Q,
      I4 => ctrl_register_13_9_Q,
      I5 => ctrl_register_12_9_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_1015_3663
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_931 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_10_9_Q,
      I3 => ctrl_register_11_9_Q,
      I4 => ctrl_register_9_9_Q,
      I5 => ctrl_register_8_9_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_931_3664
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_930 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_6_9_Q,
      I3 => ctrl_register_7_9_Q,
      I4 => ctrl_register_5_9_Q,
      I5 => ctrl_register_4_9_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_930_3665
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_815 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_2_9_Q,
      I3 => ctrl_register_3_9_Q,
      I4 => ctrl_register_1_9_Q,
      I5 => ctrl_register_0_9_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_815_3666
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_315 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_18_9_Q,
      I3 => ctrl_register_19_9_Q,
      I4 => ctrl_register_17_9_Q,
      I5 => ctrl_register_16_9_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_315_3667
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_2_f7_13 : MUXF7
    port map (
      I0 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_414_3668,
      I1 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_314_3673,
      S => rb_reg(4),
      O => rb_reg_4_X_7_o_wide_mux_15_OUT_8_Q
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_414 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(3),
      I1 => rb_reg(2),
      I2 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_929_3670,
      I3 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_1014_3669,
      I4 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_928_3671,
      I5 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_814_3672,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_414_3668
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_1014 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_14_8_Q,
      I3 => ctrl_register_15_8_Q,
      I4 => ctrl_register_13_8_Q,
      I5 => ctrl_register_12_8_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_1014_3669
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_929 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_10_8_Q,
      I3 => ctrl_register_11_8_Q,
      I4 => ctrl_register_9_8_Q,
      I5 => ctrl_register_8_8_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_929_3670
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_928 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_6_8_Q,
      I3 => ctrl_register_7_8_Q,
      I4 => ctrl_register_5_8_Q,
      I5 => ctrl_register_4_8_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_928_3671
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_814 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_2_8_Q,
      I3 => ctrl_register_3_8_Q,
      I4 => ctrl_register_1_8_Q,
      I5 => ctrl_register_0_8_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_814_3672
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_314 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_18_8_Q,
      I3 => ctrl_register_19_8_Q,
      I4 => ctrl_register_17_8_Q,
      I5 => ctrl_register_16_8_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_314_3673
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_2_f7_12 : MUXF7
    port map (
      I0 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_413_3674,
      I1 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_313_3679,
      S => rb_reg(4),
      O => rb_reg_4_X_7_o_wide_mux_15_OUT_7_Q
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_413 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(3),
      I1 => rb_reg(2),
      I2 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_927_3676,
      I3 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_1013_3675,
      I4 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_926_3677,
      I5 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_813_3678,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_413_3674
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_1013 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_14_7_Q,
      I3 => ctrl_register_15_7_Q,
      I4 => ctrl_register_13_7_Q,
      I5 => ctrl_register_12_7_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_1013_3675
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_927 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_10_7_Q,
      I3 => ctrl_register_11_7_Q,
      I4 => ctrl_register_9_7_Q,
      I5 => ctrl_register_8_7_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_927_3676
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_926 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_6_7_Q,
      I3 => ctrl_register_7_7_Q,
      I4 => ctrl_register_5_7_Q,
      I5 => ctrl_register_4_7_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_926_3677
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_813 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_2_7_Q,
      I3 => ctrl_register_3_7_Q,
      I4 => ctrl_register_1_7_Q,
      I5 => ctrl_register_0_7_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_813_3678
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_313 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_18_7_Q,
      I3 => ctrl_register_19_7_Q,
      I4 => ctrl_register_17_7_Q,
      I5 => ctrl_register_16_7_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_313_3679
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_2_f7_11 : MUXF7
    port map (
      I0 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_412_3680,
      I1 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_312_3685,
      S => rb_reg(4),
      O => rb_reg_4_X_7_o_wide_mux_15_OUT_6_Q
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_412 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(3),
      I1 => rb_reg(2),
      I2 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_925_3682,
      I3 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_1012_3681,
      I4 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_924_3683,
      I5 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_812_3684,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_412_3680
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_1012 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_14_6_Q,
      I3 => ctrl_register_15_6_Q,
      I4 => ctrl_register_13_6_Q,
      I5 => ctrl_register_12_6_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_1012_3681
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_925 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_10_6_Q,
      I3 => ctrl_register_11_6_Q,
      I4 => ctrl_register_9_6_Q,
      I5 => ctrl_register_8_6_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_925_3682
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_924 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_6_6_Q,
      I3 => ctrl_register_7_6_Q,
      I4 => ctrl_register_5_6_Q,
      I5 => ctrl_register_4_6_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_924_3683
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_812 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_2_6_Q,
      I3 => ctrl_register_3_6_Q,
      I4 => ctrl_register_1_6_Q,
      I5 => ctrl_register_0_6_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_812_3684
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_312 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_18_6_Q,
      I3 => ctrl_register_19_6_Q,
      I4 => ctrl_register_17_6_Q,
      I5 => ctrl_register_16_6_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_312_3685
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_2_f7_10 : MUXF7
    port map (
      I0 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_411_3686,
      I1 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_311_3691,
      S => rb_reg(4),
      O => rb_reg_4_X_7_o_wide_mux_15_OUT_5_Q
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_411 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(3),
      I1 => rb_reg(2),
      I2 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_923_3688,
      I3 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_1011_3687,
      I4 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_922_3689,
      I5 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_811_3690,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_411_3686
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_1011 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_14_5_Q,
      I3 => ctrl_register_15_5_Q,
      I4 => ctrl_register_13_5_Q,
      I5 => ctrl_register_12_5_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_1011_3687
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_923 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_10_5_Q,
      I3 => ctrl_register_11_5_Q,
      I4 => ctrl_register_9_5_Q,
      I5 => ctrl_register_8_5_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_923_3688
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_922 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_6_5_Q,
      I3 => ctrl_register_7_5_Q,
      I4 => ctrl_register_5_5_Q,
      I5 => ctrl_register_4_5_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_922_3689
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_811 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_2_5_Q,
      I3 => ctrl_register_3_5_Q,
      I4 => ctrl_register_1_5_Q,
      I5 => ctrl_register_0_5_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_811_3690
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_311 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_18_5_Q,
      I3 => ctrl_register_19_5_Q,
      I4 => ctrl_register_17_5_Q,
      I5 => ctrl_register_16_5_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_311_3691
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_2_f7_9 : MUXF7
    port map (
      I0 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_410_3692,
      I1 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_310_3697,
      S => rb_reg(4),
      O => rb_reg_4_X_7_o_wide_mux_15_OUT_4_Q
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_410 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(3),
      I1 => rb_reg(2),
      I2 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_921_3694,
      I3 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_1010_3693,
      I4 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_920_3695,
      I5 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_810_3696,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_410_3692
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_1010 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_14_4_Q,
      I3 => ctrl_register_15_4_Q,
      I4 => ctrl_register_13_4_Q,
      I5 => ctrl_register_12_4_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_1010_3693
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_921 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_10_4_Q,
      I3 => ctrl_register_11_4_Q,
      I4 => ctrl_register_9_4_Q,
      I5 => ctrl_register_8_4_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_921_3694
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_920 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_6_4_Q,
      I3 => ctrl_register_7_4_Q,
      I4 => ctrl_register_5_4_Q,
      I5 => ctrl_register_4_4_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_920_3695
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_810 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_2_4_Q,
      I3 => ctrl_register_3_4_Q,
      I4 => ctrl_register_1_4_Q,
      I5 => CALIB_EN_OBUF_3374,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_810_3696
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_310 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_18_4_Q,
      I3 => ctrl_register_19_4_Q,
      I4 => ctrl_register_17_4_Q,
      I5 => ctrl_register_16_4_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_310_3697
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_2_f7_8 : MUXF7
    port map (
      I0 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_49_3698,
      I1 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_39_3703,
      S => rb_reg(4),
      O => rb_reg_4_X_7_o_wide_mux_15_OUT_3_Q
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_49 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(3),
      I1 => rb_reg(2),
      I2 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_919_3700,
      I3 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_109_3699,
      I4 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_918_3701,
      I5 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_89_3702,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_49_3698
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_109 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_14_3_Q,
      I3 => ctrl_register_15_3_Q,
      I4 => ctrl_register_13_3_Q,
      I5 => ctrl_register_12_3_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_109_3699
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_919 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_10_3_Q,
      I3 => ctrl_register_11_3_Q,
      I4 => ctrl_register_9_3_Q,
      I5 => ctrl_register_8_3_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_919_3700
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_918 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_6_3_Q,
      I3 => ctrl_register_7_3_Q,
      I4 => ctrl_register_5_3_Q,
      I5 => ctrl_register_4_3_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_918_3701
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_89 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_2_3_Q,
      I3 => ctrl_register_3_3_Q,
      I4 => ctrl_register_1_3_Q,
      I5 => ctrl_register_0_3_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_89_3702
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_39 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_18_3_Q,
      I3 => ctrl_register_19_3_Q,
      I4 => ctrl_register_17_3_Q,
      I5 => ctrl_register_16_3_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_39_3703
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_2_f7_7 : MUXF7
    port map (
      I0 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_48_3704,
      I1 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_38_3709,
      S => rb_reg(4),
      O => rb_reg_4_X_7_o_wide_mux_15_OUT_2_Q
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_48 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(3),
      I1 => rb_reg(2),
      I2 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_917_3706,
      I3 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_108_3705,
      I4 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_916_3707,
      I5 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_88_3708,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_48_3704
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_108 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_14_2_Q,
      I3 => ctrl_register_15_2_Q,
      I4 => ctrl_register_13_2_Q,
      I5 => ctrl_register_12_2_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_108_3705
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_917 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_10_2_Q,
      I3 => ctrl_register_11_2_Q,
      I4 => ctrl_register_9_2_Q,
      I5 => ctrl_register_8_2_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_917_3706
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_916 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_6_2_Q,
      I3 => ctrl_register_7_2_Q,
      I4 => ctrl_register_5_2_Q,
      I5 => ctrl_register_4_2_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_916_3707
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_88 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_2_2_Q,
      I3 => ctrl_register_3_2_Q,
      I4 => ctrl_register_1_2_Q,
      I5 => ctrl_register_0_2_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_88_3708
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_38 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_18_2_Q,
      I3 => ctrl_register_19_2_Q,
      I4 => ctrl_register_17_2_Q,
      I5 => ctrl_register_16_2_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_38_3709
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_2_f7_6 : MUXF7
    port map (
      I0 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_47_3710,
      I1 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_37_3715,
      S => rb_reg(4),
      O => rb_reg_4_X_7_o_wide_mux_15_OUT_1_Q
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_47 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(3),
      I1 => rb_reg(2),
      I2 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_915_3712,
      I3 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_107_3711,
      I4 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_914_3713,
      I5 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_87_3714,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_47_3710
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_107 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_14_1_Q,
      I3 => ctrl_register_15_1_Q,
      I4 => ctrl_register_13_1_Q,
      I5 => ctrl_register_12_1_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_107_3711
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_915 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_10_1_Q,
      I3 => ctrl_register_11_1_Q,
      I4 => ctrl_register_9_1_Q,
      I5 => ctrl_register_8_1_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_915_3712
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_914 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_6_1_Q,
      I3 => ctrl_register_7_1_Q,
      I4 => ctrl_register_5_1_Q,
      I5 => ctrl_register_4_1_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_914_3713
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_87 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_2_1_Q,
      I3 => ctrl_register_3_1_Q,
      I4 => ctrl_register_1_1_Q,
      I5 => ctrl_register_0_1_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_87_3714
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_37 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_18_1_Q,
      I3 => ctrl_register_19_1_Q,
      I4 => ctrl_register_17_1_Q,
      I5 => ctrl_register_16_1_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_37_3715
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_2_f7_5 : MUXF7
    port map (
      I0 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_46_3716,
      I1 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_36_3721,
      S => rb_reg(4),
      O => rb_reg_4_X_7_o_wide_mux_15_OUT_15_Q
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_46 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(3),
      I1 => rb_reg(2),
      I2 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_913_3718,
      I3 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_106_3717,
      I4 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_912_3719,
      I5 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_86_3720,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_46_3716
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_106 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_14_15_Q,
      I3 => ctrl_register_15_15_Q,
      I4 => ctrl_register_13_15_Q,
      I5 => ctrl_register_12_15_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_106_3717
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_913 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_10_15_Q,
      I3 => ctrl_register_11_15_Q,
      I4 => ctrl_register_9_15_Q,
      I5 => ctrl_register_8_15_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_913_3718
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_912 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_6_15_Q,
      I3 => ctrl_register_7_15_Q,
      I4 => ctrl_register_5_15_Q,
      I5 => ctrl_register_4_15_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_912_3719
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_86 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_2_15_Q,
      I3 => ctrl_register_3_15_Q,
      I4 => ctrl_register_1_15_Q,
      I5 => ctrl_register_0_15_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_86_3720
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_36 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_18_15_Q,
      I3 => ctrl_register_19_15_Q,
      I4 => ctrl_register_17_15_Q,
      I5 => ctrl_register_16_15_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_36_3721
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_2_f7_4 : MUXF7
    port map (
      I0 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_45_3722,
      I1 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_35_3727,
      S => rb_reg(4),
      O => rb_reg_4_X_7_o_wide_mux_15_OUT_14_Q
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_45 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(3),
      I1 => rb_reg(2),
      I2 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_911_3724,
      I3 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_105_3723,
      I4 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_910_3725,
      I5 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_85_3726,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_45_3722
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_105 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_14_14_Q,
      I3 => ctrl_register_15_14_Q,
      I4 => ctrl_register_13_14_Q,
      I5 => ctrl_register_12_14_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_105_3723
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_911 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_10_14_Q,
      I3 => ctrl_register_11_14_Q,
      I4 => ctrl_register_9_14_Q,
      I5 => ctrl_register_8_14_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_911_3724
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_910 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_6_14_Q,
      I3 => ctrl_register_7_14_Q,
      I4 => ctrl_register_5_14_Q,
      I5 => ctrl_register_4_14_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_910_3725
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_85 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_2_14_Q,
      I3 => ctrl_register_3_14_Q,
      I4 => ctrl_register_1_14_Q,
      I5 => ctrl_register_0_14_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_85_3726
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_35 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_18_14_Q,
      I3 => ctrl_register_19_14_Q,
      I4 => ctrl_register_17_14_Q,
      I5 => ctrl_register_16_14_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_35_3727
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_2_f7_3 : MUXF7
    port map (
      I0 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_44_3728,
      I1 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_34_3733,
      S => rb_reg(4),
      O => rb_reg_4_X_7_o_wide_mux_15_OUT_13_Q
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_44 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(3),
      I1 => rb_reg(2),
      I2 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_99_3730,
      I3 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_104_3729,
      I4 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_98_3731,
      I5 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_84_3732,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_44_3728
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_104 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_14_13_Q,
      I3 => ctrl_register_15_13_Q,
      I4 => ctrl_register_13_13_Q,
      I5 => ctrl_register_12_13_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_104_3729
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_99 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_10_13_Q,
      I3 => ctrl_register_11_13_Q,
      I4 => ctrl_register_9_13_Q,
      I5 => ctrl_register_8_13_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_99_3730
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_98 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_6_13_Q,
      I3 => ctrl_register_7_13_Q,
      I4 => ctrl_register_5_13_Q,
      I5 => ctrl_register_4_13_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_98_3731
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_84 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_2_13_Q,
      I3 => ctrl_register_3_13_Q,
      I4 => ctrl_register_1_13_Q,
      I5 => ctrl_register_0_13_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_84_3732
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_34 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_18_13_Q,
      I3 => ctrl_register_19_13_Q,
      I4 => ctrl_register_17_13_Q,
      I5 => ctrl_register_16_13_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_34_3733
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_2_f7_2 : MUXF7
    port map (
      I0 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_43_3734,
      I1 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_33_3739,
      S => rb_reg(4),
      O => rb_reg_4_X_7_o_wide_mux_15_OUT_12_Q
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_43 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(3),
      I1 => rb_reg(2),
      I2 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_97_3736,
      I3 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_103_3735,
      I4 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_96_3737,
      I5 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_83_3738,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_43_3734
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_103 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_14_12_Q,
      I3 => ctrl_register_15_12_Q,
      I4 => ctrl_register_13_12_Q,
      I5 => ctrl_register_12_12_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_103_3735
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_97 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_10_12_Q,
      I3 => ctrl_register_11_12_Q,
      I4 => ctrl_register_9_12_Q,
      I5 => ctrl_register_8_12_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_97_3736
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_96 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_6_12_Q,
      I3 => ctrl_register_7_12_Q,
      I4 => ctrl_register_5_12_Q,
      I5 => ctrl_register_4_12_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_96_3737
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_83 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_2_12_Q,
      I3 => ctrl_register_3_12_Q,
      I4 => ctrl_register_1_12_Q,
      I5 => ctrl_register_0_12_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_83_3738
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_33 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_18_12_Q,
      I3 => ctrl_register_19_12_Q,
      I4 => ctrl_register_17_12_Q,
      I5 => ctrl_register_16_12_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_33_3739
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_2_f7_1 : MUXF7
    port map (
      I0 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_42_3740,
      I1 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_32_3745,
      S => rb_reg(4),
      O => rb_reg_4_X_7_o_wide_mux_15_OUT_11_Q
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_42 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(3),
      I1 => rb_reg(2),
      I2 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_95_3742,
      I3 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_102_3741,
      I4 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_94_3743,
      I5 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_82_3744,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_42_3740
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_102 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_14_11_Q,
      I3 => ctrl_register_15_11_Q,
      I4 => ctrl_register_13_11_Q,
      I5 => ctrl_register_12_11_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_102_3741
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_95 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_10_11_Q,
      I3 => ctrl_register_11_11_Q,
      I4 => ctrl_register_9_11_Q,
      I5 => ctrl_register_8_11_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_95_3742
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_94 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_6_11_Q,
      I3 => ctrl_register_7_11_Q,
      I4 => ctrl_register_5_11_Q,
      I5 => ctrl_register_4_11_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_94_3743
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_82 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_2_11_Q,
      I3 => ctrl_register_3_11_Q,
      I4 => ctrl_register_1_11_Q,
      I5 => ctrl_register_0_11_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_82_3744
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_32 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_18_11_Q,
      I3 => ctrl_register_19_11_Q,
      I4 => ctrl_register_17_11_Q,
      I5 => ctrl_register_16_11_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_32_3745
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_2_f7_0 : MUXF7
    port map (
      I0 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_41_3746,
      I1 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_31_3751,
      S => rb_reg(4),
      O => rb_reg_4_X_7_o_wide_mux_15_OUT_10_Q
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_41 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(3),
      I1 => rb_reg(2),
      I2 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_93_3748,
      I3 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_101_3747,
      I4 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_92_3749,
      I5 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_81_3750,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_41_3746
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_101 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_14_10_Q,
      I3 => ctrl_register_15_10_Q,
      I4 => ctrl_register_13_10_Q,
      I5 => ctrl_register_12_10_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_101_3747
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_93 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_10_10_Q,
      I3 => ctrl_register_11_10_Q,
      I4 => ctrl_register_9_10_Q,
      I5 => ctrl_register_8_10_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_93_3748
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_92 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_6_10_Q,
      I3 => ctrl_register_7_10_Q,
      I4 => ctrl_register_5_10_Q,
      I5 => ctrl_register_4_10_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_92_3749
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_81 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_2_10_Q,
      I3 => ctrl_register_3_10_Q,
      I4 => ctrl_register_1_10_Q,
      I5 => ctrl_register_0_10_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_81_3750
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_31 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_18_10_Q,
      I3 => ctrl_register_19_10_Q,
      I4 => ctrl_register_17_10_Q,
      I5 => ctrl_register_16_10_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_31_3751
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_2_f7 : MUXF7
    port map (
      I0 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_4_3752,
      I1 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_3_3757,
      S => rb_reg(4),
      O => rb_reg_4_X_7_o_wide_mux_15_OUT_0_Q
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_4 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(3),
      I1 => rb_reg(2),
      I2 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_91_3754,
      I3 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_10_3753,
      I4 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_9_3755,
      I5 => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_8_3756,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_4_3752
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_10 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_14_0_Q,
      I3 => ctrl_register_15_0_Q,
      I4 => ctrl_register_13_0_Q,
      I5 => ctrl_register_12_0_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_10_3753
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_91 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_10_0_Q,
      I3 => ctrl_register_11_0_Q,
      I4 => ctrl_register_9_0_Q,
      I5 => ctrl_register_8_0_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_91_3754
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_9 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_6_0_Q,
      I3 => ctrl_register_7_0_Q,
      I4 => sw_trig,
      I5 => ctrl_register_4_0_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_9_3755
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_8 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_2_0_Q,
      I3 => ctrl_register_3_0_Q,
      I4 => ctrl_register_1_0_Q,
      I5 => ctrl_register_0_0_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_8_3756
    );
  Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_3 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(0),
      I2 => ctrl_register_18_0_Q,
      I3 => ctrl_register_19_0_Q,
      I4 => ctrl_register_17_0_Q,
      I5 => ctrl_register_16_0_Q,
      O => Mmux_rb_reg_4_X_7_o_wide_mux_15_OUT_3_3757
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_0_Q : MUXCY
    port map (
      CI => SAMPLESEL_ANY_OBUF_3058,
      DI => timer_pat(8),
      S => Madd_timer_31_GND_7_o_add_3_OUT_lut_0_Q,
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_0_Q_3759
    );
  Madd_timer_31_GND_7_o_add_3_OUT_xor_0_Q : XORCY
    port map (
      CI => SAMPLESEL_ANY_OBUF_3058,
      LI => Madd_timer_31_GND_7_o_add_3_OUT_lut_0_Q,
      O => timer_31_GND_7_o_add_3_OUT_0_Q
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_1_Q : MUXCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_0_Q_3759,
      DI => SAMPLESEL_ANY_OBUF_3058,
      S => Madd_timer_31_GND_7_o_add_3_OUT_cy_1_rt_3999,
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_1_Q_3760
    );
  Madd_timer_31_GND_7_o_add_3_OUT_xor_1_Q : XORCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_0_Q_3759,
      LI => Madd_timer_31_GND_7_o_add_3_OUT_cy_1_rt_3999,
      O => timer_31_GND_7_o_add_3_OUT_1_Q
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_2_Q : MUXCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_1_Q_3760,
      DI => SAMPLESEL_ANY_OBUF_3058,
      S => Madd_timer_31_GND_7_o_add_3_OUT_cy_2_rt_4000,
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_2_Q_3761
    );
  Madd_timer_31_GND_7_o_add_3_OUT_xor_2_Q : XORCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_1_Q_3760,
      LI => Madd_timer_31_GND_7_o_add_3_OUT_cy_2_rt_4000,
      O => timer_31_GND_7_o_add_3_OUT_2_Q
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_3_Q : MUXCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_2_Q_3761,
      DI => SAMPLESEL_ANY_OBUF_3058,
      S => Madd_timer_31_GND_7_o_add_3_OUT_cy_3_rt_4001,
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_3_Q_3762
    );
  Madd_timer_31_GND_7_o_add_3_OUT_xor_3_Q : XORCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_2_Q_3761,
      LI => Madd_timer_31_GND_7_o_add_3_OUT_cy_3_rt_4001,
      O => timer_31_GND_7_o_add_3_OUT_3_Q
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_4_Q : MUXCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_3_Q_3762,
      DI => SAMPLESEL_ANY_OBUF_3058,
      S => Madd_timer_31_GND_7_o_add_3_OUT_cy_4_rt_4002,
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_4_Q_3763
    );
  Madd_timer_31_GND_7_o_add_3_OUT_xor_4_Q : XORCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_3_Q_3762,
      LI => Madd_timer_31_GND_7_o_add_3_OUT_cy_4_rt_4002,
      O => timer_31_GND_7_o_add_3_OUT_4_Q
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_5_Q : MUXCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_4_Q_3763,
      DI => SAMPLESEL_ANY_OBUF_3058,
      S => Madd_timer_31_GND_7_o_add_3_OUT_cy_5_rt_4003,
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_5_Q_3764
    );
  Madd_timer_31_GND_7_o_add_3_OUT_xor_5_Q : XORCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_4_Q_3763,
      LI => Madd_timer_31_GND_7_o_add_3_OUT_cy_5_rt_4003,
      O => timer_31_GND_7_o_add_3_OUT_5_Q
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_6_Q : MUXCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_5_Q_3764,
      DI => SAMPLESEL_ANY_OBUF_3058,
      S => Madd_timer_31_GND_7_o_add_3_OUT_cy_6_rt_4004,
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_6_Q_3765
    );
  Madd_timer_31_GND_7_o_add_3_OUT_xor_6_Q : XORCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_5_Q_3764,
      LI => Madd_timer_31_GND_7_o_add_3_OUT_cy_6_rt_4004,
      O => timer_31_GND_7_o_add_3_OUT_6_Q
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_7_Q : MUXCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_6_Q_3765,
      DI => SAMPLESEL_ANY_OBUF_3058,
      S => Madd_timer_31_GND_7_o_add_3_OUT_cy_7_rt_4005,
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_7_Q_3766
    );
  Madd_timer_31_GND_7_o_add_3_OUT_xor_7_Q : XORCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_6_Q_3765,
      LI => Madd_timer_31_GND_7_o_add_3_OUT_cy_7_rt_4005,
      O => timer_31_GND_7_o_add_3_OUT_7_Q
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_8_Q : MUXCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_7_Q_3766,
      DI => SAMPLESEL_ANY_OBUF_3058,
      S => Madd_timer_31_GND_7_o_add_3_OUT_cy_8_rt_4006,
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_8_Q_3767
    );
  Madd_timer_31_GND_7_o_add_3_OUT_xor_8_Q : XORCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_7_Q_3766,
      LI => Madd_timer_31_GND_7_o_add_3_OUT_cy_8_rt_4006,
      O => timer_31_GND_7_o_add_3_OUT_8_Q
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_9_Q : MUXCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_8_Q_3767,
      DI => SAMPLESEL_ANY_OBUF_3058,
      S => Madd_timer_31_GND_7_o_add_3_OUT_cy_9_rt_4007,
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_9_Q_3768
    );
  Madd_timer_31_GND_7_o_add_3_OUT_xor_9_Q : XORCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_8_Q_3767,
      LI => Madd_timer_31_GND_7_o_add_3_OUT_cy_9_rt_4007,
      O => timer_31_GND_7_o_add_3_OUT_9_Q
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_10_Q : MUXCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_9_Q_3768,
      DI => SAMPLESEL_ANY_OBUF_3058,
      S => Madd_timer_31_GND_7_o_add_3_OUT_cy_10_rt_4008,
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_10_Q_3769
    );
  Madd_timer_31_GND_7_o_add_3_OUT_xor_10_Q : XORCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_9_Q_3768,
      LI => Madd_timer_31_GND_7_o_add_3_OUT_cy_10_rt_4008,
      O => timer_31_GND_7_o_add_3_OUT_10_Q
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_11_Q : MUXCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_10_Q_3769,
      DI => SAMPLESEL_ANY_OBUF_3058,
      S => Madd_timer_31_GND_7_o_add_3_OUT_cy_11_rt_4009,
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_11_Q_3770
    );
  Madd_timer_31_GND_7_o_add_3_OUT_xor_11_Q : XORCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_10_Q_3769,
      LI => Madd_timer_31_GND_7_o_add_3_OUT_cy_11_rt_4009,
      O => timer_31_GND_7_o_add_3_OUT_11_Q
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_12_Q : MUXCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_11_Q_3770,
      DI => SAMPLESEL_ANY_OBUF_3058,
      S => Madd_timer_31_GND_7_o_add_3_OUT_cy_12_rt_4010,
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_12_Q_3771
    );
  Madd_timer_31_GND_7_o_add_3_OUT_xor_12_Q : XORCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_11_Q_3770,
      LI => Madd_timer_31_GND_7_o_add_3_OUT_cy_12_rt_4010,
      O => timer_31_GND_7_o_add_3_OUT_12_Q
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_13_Q : MUXCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_12_Q_3771,
      DI => SAMPLESEL_ANY_OBUF_3058,
      S => Madd_timer_31_GND_7_o_add_3_OUT_cy_13_rt_4011,
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_13_Q_3772
    );
  Madd_timer_31_GND_7_o_add_3_OUT_xor_13_Q : XORCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_12_Q_3771,
      LI => Madd_timer_31_GND_7_o_add_3_OUT_cy_13_rt_4011,
      O => timer_31_GND_7_o_add_3_OUT_13_Q
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_14_Q : MUXCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_13_Q_3772,
      DI => SAMPLESEL_ANY_OBUF_3058,
      S => Madd_timer_31_GND_7_o_add_3_OUT_cy_14_rt_4012,
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_14_Q_3773
    );
  Madd_timer_31_GND_7_o_add_3_OUT_xor_14_Q : XORCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_13_Q_3772,
      LI => Madd_timer_31_GND_7_o_add_3_OUT_cy_14_rt_4012,
      O => timer_31_GND_7_o_add_3_OUT_14_Q
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_15_Q : MUXCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_14_Q_3773,
      DI => SAMPLESEL_ANY_OBUF_3058,
      S => Madd_timer_31_GND_7_o_add_3_OUT_cy_15_rt_4013,
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_15_Q_3774
    );
  Madd_timer_31_GND_7_o_add_3_OUT_xor_15_Q : XORCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_14_Q_3773,
      LI => Madd_timer_31_GND_7_o_add_3_OUT_cy_15_rt_4013,
      O => timer_31_GND_7_o_add_3_OUT_15_Q
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_16_Q : MUXCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_15_Q_3774,
      DI => SAMPLESEL_ANY_OBUF_3058,
      S => Madd_timer_31_GND_7_o_add_3_OUT_cy_16_rt_4014,
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_16_Q_3775
    );
  Madd_timer_31_GND_7_o_add_3_OUT_xor_16_Q : XORCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_15_Q_3774,
      LI => Madd_timer_31_GND_7_o_add_3_OUT_cy_16_rt_4014,
      O => timer_31_GND_7_o_add_3_OUT_16_Q
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_17_Q : MUXCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_16_Q_3775,
      DI => SAMPLESEL_ANY_OBUF_3058,
      S => Madd_timer_31_GND_7_o_add_3_OUT_cy_17_rt_4015,
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_17_Q_3776
    );
  Madd_timer_31_GND_7_o_add_3_OUT_xor_17_Q : XORCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_16_Q_3775,
      LI => Madd_timer_31_GND_7_o_add_3_OUT_cy_17_rt_4015,
      O => timer_31_GND_7_o_add_3_OUT_17_Q
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_18_Q : MUXCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_17_Q_3776,
      DI => SAMPLESEL_ANY_OBUF_3058,
      S => Madd_timer_31_GND_7_o_add_3_OUT_cy_18_rt_4016,
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_18_Q_3777
    );
  Madd_timer_31_GND_7_o_add_3_OUT_xor_18_Q : XORCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_17_Q_3776,
      LI => Madd_timer_31_GND_7_o_add_3_OUT_cy_18_rt_4016,
      O => timer_31_GND_7_o_add_3_OUT_18_Q
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_19_Q : MUXCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_18_Q_3777,
      DI => SAMPLESEL_ANY_OBUF_3058,
      S => Madd_timer_31_GND_7_o_add_3_OUT_cy_19_rt_4017,
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_19_Q_3778
    );
  Madd_timer_31_GND_7_o_add_3_OUT_xor_19_Q : XORCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_18_Q_3777,
      LI => Madd_timer_31_GND_7_o_add_3_OUT_cy_19_rt_4017,
      O => timer_31_GND_7_o_add_3_OUT_19_Q
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_20_Q : MUXCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_19_Q_3778,
      DI => SAMPLESEL_ANY_OBUF_3058,
      S => Madd_timer_31_GND_7_o_add_3_OUT_cy_20_rt_4018,
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_20_Q_3779
    );
  Madd_timer_31_GND_7_o_add_3_OUT_xor_20_Q : XORCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_19_Q_3778,
      LI => Madd_timer_31_GND_7_o_add_3_OUT_cy_20_rt_4018,
      O => timer_31_GND_7_o_add_3_OUT_20_Q
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_21_Q : MUXCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_20_Q_3779,
      DI => SAMPLESEL_ANY_OBUF_3058,
      S => Madd_timer_31_GND_7_o_add_3_OUT_cy_21_rt_4019,
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_21_Q_3780
    );
  Madd_timer_31_GND_7_o_add_3_OUT_xor_21_Q : XORCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_20_Q_3779,
      LI => Madd_timer_31_GND_7_o_add_3_OUT_cy_21_rt_4019,
      O => timer_31_GND_7_o_add_3_OUT_21_Q
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_22_Q : MUXCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_21_Q_3780,
      DI => SAMPLESEL_ANY_OBUF_3058,
      S => Madd_timer_31_GND_7_o_add_3_OUT_cy_22_rt_4020,
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_22_Q_3781
    );
  Madd_timer_31_GND_7_o_add_3_OUT_xor_22_Q : XORCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_21_Q_3780,
      LI => Madd_timer_31_GND_7_o_add_3_OUT_cy_22_rt_4020,
      O => timer_31_GND_7_o_add_3_OUT_22_Q
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_23_Q : MUXCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_22_Q_3781,
      DI => SAMPLESEL_ANY_OBUF_3058,
      S => Madd_timer_31_GND_7_o_add_3_OUT_cy_23_rt_4021,
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_23_Q_3782
    );
  Madd_timer_31_GND_7_o_add_3_OUT_xor_23_Q : XORCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_22_Q_3781,
      LI => Madd_timer_31_GND_7_o_add_3_OUT_cy_23_rt_4021,
      O => timer_31_GND_7_o_add_3_OUT_23_Q
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_24_Q : MUXCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_23_Q_3782,
      DI => SAMPLESEL_ANY_OBUF_3058,
      S => Madd_timer_31_GND_7_o_add_3_OUT_cy_24_rt_4022,
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_24_Q_3783
    );
  Madd_timer_31_GND_7_o_add_3_OUT_xor_24_Q : XORCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_23_Q_3782,
      LI => Madd_timer_31_GND_7_o_add_3_OUT_cy_24_rt_4022,
      O => timer_31_GND_7_o_add_3_OUT_24_Q
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_25_Q : MUXCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_24_Q_3783,
      DI => SAMPLESEL_ANY_OBUF_3058,
      S => Madd_timer_31_GND_7_o_add_3_OUT_cy_25_rt_4023,
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_25_Q_3784
    );
  Madd_timer_31_GND_7_o_add_3_OUT_xor_25_Q : XORCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_24_Q_3783,
      LI => Madd_timer_31_GND_7_o_add_3_OUT_cy_25_rt_4023,
      O => timer_31_GND_7_o_add_3_OUT_25_Q
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_26_Q : MUXCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_25_Q_3784,
      DI => SAMPLESEL_ANY_OBUF_3058,
      S => Madd_timer_31_GND_7_o_add_3_OUT_cy_26_rt_4024,
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_26_Q_3785
    );
  Madd_timer_31_GND_7_o_add_3_OUT_xor_26_Q : XORCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_25_Q_3784,
      LI => Madd_timer_31_GND_7_o_add_3_OUT_cy_26_rt_4024,
      O => timer_31_GND_7_o_add_3_OUT_26_Q
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_27_Q : MUXCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_26_Q_3785,
      DI => SAMPLESEL_ANY_OBUF_3058,
      S => Madd_timer_31_GND_7_o_add_3_OUT_cy_27_rt_4025,
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_27_Q_3786
    );
  Madd_timer_31_GND_7_o_add_3_OUT_xor_27_Q : XORCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_26_Q_3785,
      LI => Madd_timer_31_GND_7_o_add_3_OUT_cy_27_rt_4025,
      O => timer_31_GND_7_o_add_3_OUT_27_Q
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_28_Q : MUXCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_27_Q_3786,
      DI => SAMPLESEL_ANY_OBUF_3058,
      S => Madd_timer_31_GND_7_o_add_3_OUT_cy_28_rt_4026,
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_28_Q_3787
    );
  Madd_timer_31_GND_7_o_add_3_OUT_xor_28_Q : XORCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_27_Q_3786,
      LI => Madd_timer_31_GND_7_o_add_3_OUT_cy_28_rt_4026,
      O => timer_31_GND_7_o_add_3_OUT_28_Q
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_29_Q : MUXCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_28_Q_3787,
      DI => SAMPLESEL_ANY_OBUF_3058,
      S => Madd_timer_31_GND_7_o_add_3_OUT_cy_29_rt_4027,
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_29_Q_3788
    );
  Madd_timer_31_GND_7_o_add_3_OUT_xor_29_Q : XORCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_28_Q_3787,
      LI => Madd_timer_31_GND_7_o_add_3_OUT_cy_29_rt_4027,
      O => timer_31_GND_7_o_add_3_OUT_29_Q
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_30_Q : MUXCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_29_Q_3788,
      DI => SAMPLESEL_ANY_OBUF_3058,
      S => Madd_timer_31_GND_7_o_add_3_OUT_cy_30_rt_4028,
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_30_Q_3789
    );
  Madd_timer_31_GND_7_o_add_3_OUT_xor_30_Q : XORCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_29_Q_3788,
      LI => Madd_timer_31_GND_7_o_add_3_OUT_cy_30_rt_4028,
      O => timer_31_GND_7_o_add_3_OUT_30_Q
    );
  Madd_timer_31_GND_7_o_add_3_OUT_xor_31_Q : XORCY
    port map (
      CI => Madd_timer_31_GND_7_o_add_3_OUT_cy_30_Q_3789,
      LI => Madd_timer_31_GND_7_o_add_3_OUT_xor_31_rt_4029,
      O => timer_31_GND_7_o_add_3_OUT_31_Q
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer_last(0),
      I1 => timer(0),
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_0_Q_3790
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_0_Q : MUXCY
    port map (
      CI => timer_pat(8),
      DI => timer(0),
      S => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_0_Q_3790,
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_0_Q_3791
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_xor_0_Q : XORCY
    port map (
      CI => timer_pat(8),
      LI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_0_Q_3790,
      O => timer_31_timer_last_31_sub_8_OUT_0_Q
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer_last(1),
      I1 => timer(1),
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_1_Q_3792
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_1_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_0_Q_3791,
      DI => timer(1),
      S => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_1_Q_3792,
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_1_Q_3793
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_xor_1_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_0_Q_3791,
      LI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_1_Q_3792,
      O => timer_31_timer_last_31_sub_8_OUT_1_Q
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer_last(2),
      I1 => timer(2),
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_2_Q_3794
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_2_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_1_Q_3793,
      DI => timer(2),
      S => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_2_Q_3794,
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_2_Q_3795
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_xor_2_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_1_Q_3793,
      LI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_2_Q_3794,
      O => timer_31_timer_last_31_sub_8_OUT_2_Q
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer_last(3),
      I1 => timer(3),
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_3_Q_3796
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_3_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_2_Q_3795,
      DI => timer(3),
      S => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_3_Q_3796,
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_3_Q_3797
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_xor_3_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_2_Q_3795,
      LI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_3_Q_3796,
      O => timer_31_timer_last_31_sub_8_OUT_3_Q
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer_last(4),
      I1 => timer(4),
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_4_Q_3798
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_4_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_3_Q_3797,
      DI => timer(4),
      S => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_4_Q_3798,
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_4_Q_3799
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_xor_4_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_3_Q_3797,
      LI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_4_Q_3798,
      O => timer_31_timer_last_31_sub_8_OUT_4_Q
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer_last(5),
      I1 => timer(5),
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_5_Q_3800
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_5_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_4_Q_3799,
      DI => timer(5),
      S => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_5_Q_3800,
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_5_Q_3801
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_xor_5_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_4_Q_3799,
      LI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_5_Q_3800,
      O => timer_31_timer_last_31_sub_8_OUT_5_Q
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer_last(6),
      I1 => timer(6),
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_6_Q_3802
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_6_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_5_Q_3801,
      DI => timer(6),
      S => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_6_Q_3802,
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_6_Q_3803
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_xor_6_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_5_Q_3801,
      LI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_6_Q_3802,
      O => timer_31_timer_last_31_sub_8_OUT_6_Q
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer_last(7),
      I1 => timer(7),
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_7_Q_3804
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_7_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_6_Q_3803,
      DI => timer(7),
      S => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_7_Q_3804,
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_7_Q_3805
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_xor_7_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_6_Q_3803,
      LI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_7_Q_3804,
      O => timer_31_timer_last_31_sub_8_OUT_7_Q
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer_last(8),
      I1 => timer(8),
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_8_Q_3806
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_8_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_7_Q_3805,
      DI => timer(8),
      S => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_8_Q_3806,
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_8_Q_3807
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_xor_8_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_7_Q_3805,
      LI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_8_Q_3806,
      O => timer_31_timer_last_31_sub_8_OUT_8_Q
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer_last(9),
      I1 => timer(9),
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_9_Q_3808
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_9_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_8_Q_3807,
      DI => timer(9),
      S => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_9_Q_3808,
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_9_Q_3809
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_xor_9_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_8_Q_3807,
      LI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_9_Q_3808,
      O => timer_31_timer_last_31_sub_8_OUT_9_Q
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_10_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer_last(10),
      I1 => timer(10),
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_10_Q_3810
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_10_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_9_Q_3809,
      DI => timer(10),
      S => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_10_Q_3810,
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_10_Q_3811
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_xor_10_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_9_Q_3809,
      LI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_10_Q_3810,
      O => timer_31_timer_last_31_sub_8_OUT_10_Q
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_11_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer_last(11),
      I1 => timer(11),
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_11_Q_3812
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_11_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_10_Q_3811,
      DI => timer(11),
      S => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_11_Q_3812,
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_11_Q_3813
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_xor_11_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_10_Q_3811,
      LI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_11_Q_3812,
      O => timer_31_timer_last_31_sub_8_OUT_11_Q
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_12_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer_last(12),
      I1 => timer(12),
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_12_Q_3814
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_12_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_11_Q_3813,
      DI => timer(12),
      S => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_12_Q_3814,
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_12_Q_3815
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_xor_12_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_11_Q_3813,
      LI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_12_Q_3814,
      O => timer_31_timer_last_31_sub_8_OUT_12_Q
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_13_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer_last(13),
      I1 => timer(13),
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_13_Q_3816
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_13_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_12_Q_3815,
      DI => timer(13),
      S => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_13_Q_3816,
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_13_Q_3817
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_xor_13_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_12_Q_3815,
      LI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_13_Q_3816,
      O => timer_31_timer_last_31_sub_8_OUT_13_Q
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_14_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer_last(14),
      I1 => timer(14),
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_14_Q_3818
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_14_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_13_Q_3817,
      DI => timer(14),
      S => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_14_Q_3818,
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_14_Q_3819
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_xor_14_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_13_Q_3817,
      LI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_14_Q_3818,
      O => timer_31_timer_last_31_sub_8_OUT_14_Q
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_15_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer_last(15),
      I1 => timer(15),
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_15_Q_3820
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_15_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_14_Q_3819,
      DI => timer(15),
      S => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_15_Q_3820,
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_15_Q_3821
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_xor_15_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_14_Q_3819,
      LI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_15_Q_3820,
      O => timer_31_timer_last_31_sub_8_OUT_15_Q
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_16_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer_last(16),
      I1 => timer(16),
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_16_Q_3822
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_16_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_15_Q_3821,
      DI => timer(16),
      S => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_16_Q_3822,
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_16_Q_3823
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_xor_16_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_15_Q_3821,
      LI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_16_Q_3822,
      O => timer_31_timer_last_31_sub_8_OUT_16_Q
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_17_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer_last(17),
      I1 => timer(17),
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_17_Q_3824
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_17_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_16_Q_3823,
      DI => timer(17),
      S => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_17_Q_3824,
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_17_Q_3825
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_xor_17_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_16_Q_3823,
      LI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_17_Q_3824,
      O => timer_31_timer_last_31_sub_8_OUT_17_Q
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_18_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer_last(18),
      I1 => timer(18),
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_18_Q_3826
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_18_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_17_Q_3825,
      DI => timer(18),
      S => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_18_Q_3826,
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_18_Q_3827
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_xor_18_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_17_Q_3825,
      LI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_18_Q_3826,
      O => timer_31_timer_last_31_sub_8_OUT_18_Q
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_19_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer_last(19),
      I1 => timer(19),
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_19_Q_3828
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_19_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_18_Q_3827,
      DI => timer(19),
      S => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_19_Q_3828,
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_19_Q_3829
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_xor_19_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_18_Q_3827,
      LI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_19_Q_3828,
      O => timer_31_timer_last_31_sub_8_OUT_19_Q
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_20_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer_last(20),
      I1 => timer(20),
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_20_Q_3830
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_20_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_19_Q_3829,
      DI => timer(20),
      S => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_20_Q_3830,
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_20_Q_3831
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_xor_20_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_19_Q_3829,
      LI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_20_Q_3830,
      O => timer_31_timer_last_31_sub_8_OUT_20_Q
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_21_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer_last(21),
      I1 => timer(21),
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_21_Q_3832
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_21_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_20_Q_3831,
      DI => timer(21),
      S => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_21_Q_3832,
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_21_Q_3833
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_xor_21_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_20_Q_3831,
      LI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_21_Q_3832,
      O => timer_31_timer_last_31_sub_8_OUT_21_Q
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_22_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer_last(22),
      I1 => timer(22),
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_22_Q_3834
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_22_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_21_Q_3833,
      DI => timer(22),
      S => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_22_Q_3834,
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_22_Q_3835
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_xor_22_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_21_Q_3833,
      LI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_22_Q_3834,
      O => timer_31_timer_last_31_sub_8_OUT_22_Q
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_23_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer_last(23),
      I1 => timer(23),
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_23_Q_3836
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_23_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_22_Q_3835,
      DI => timer(23),
      S => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_23_Q_3836,
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_23_Q_3837
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_xor_23_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_22_Q_3835,
      LI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_23_Q_3836,
      O => timer_31_timer_last_31_sub_8_OUT_23_Q
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_24_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer_last(24),
      I1 => timer(24),
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_24_Q_3838
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_24_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_23_Q_3837,
      DI => timer(24),
      S => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_24_Q_3838,
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_24_Q_3839
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_xor_24_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_23_Q_3837,
      LI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_24_Q_3838,
      O => timer_31_timer_last_31_sub_8_OUT_24_Q
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_25_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer_last(25),
      I1 => timer(25),
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_25_Q_3840
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_25_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_24_Q_3839,
      DI => timer(25),
      S => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_25_Q_3840,
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_25_Q_3841
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_xor_25_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_24_Q_3839,
      LI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_25_Q_3840,
      O => timer_31_timer_last_31_sub_8_OUT_25_Q
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_26_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer_last(26),
      I1 => timer(26),
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_26_Q_3842
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_26_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_25_Q_3841,
      DI => timer(26),
      S => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_26_Q_3842,
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_26_Q_3843
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_xor_26_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_25_Q_3841,
      LI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_26_Q_3842,
      O => timer_31_timer_last_31_sub_8_OUT_26_Q
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_27_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer_last(27),
      I1 => timer(27),
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_27_Q_3844
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_27_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_26_Q_3843,
      DI => timer(27),
      S => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_27_Q_3844,
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_27_Q_3845
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_xor_27_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_26_Q_3843,
      LI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_27_Q_3844,
      O => timer_31_timer_last_31_sub_8_OUT_27_Q
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_28_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer_last(28),
      I1 => timer(28),
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_28_Q_3846
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_28_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_27_Q_3845,
      DI => timer(28),
      S => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_28_Q_3846,
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_28_Q_3847
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_xor_28_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_27_Q_3845,
      LI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_28_Q_3846,
      O => timer_31_timer_last_31_sub_8_OUT_28_Q
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_29_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer_last(29),
      I1 => timer(29),
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_29_Q_3848
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_29_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_28_Q_3847,
      DI => timer(29),
      S => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_29_Q_3848,
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_29_Q_3849
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_xor_29_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_28_Q_3847,
      LI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_29_Q_3848,
      O => timer_31_timer_last_31_sub_8_OUT_29_Q
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_30_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer_last(30),
      I1 => timer(30),
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_30_Q_3850
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_30_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_29_Q_3849,
      DI => timer(30),
      S => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_30_Q_3850,
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_30_Q_3851
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_xor_30_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_29_Q_3849,
      LI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_30_Q_3850,
      O => timer_31_timer_last_31_sub_8_OUT_30_Q
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_31_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer_last(31),
      I1 => timer(31),
      O => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_31_Q_3852
    );
  Msub_timer_31_timer_last_31_sub_8_OUT_31_0_xor_31_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_cy_30_Q_3851,
      LI => Msub_timer_31_timer_last_31_sub_8_OUT_31_0_lut_31_Q_3852,
      O => timer_31_timer_last_31_sub_8_OUT_31_Q
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer(0),
      I1 => timer_last_pat(0),
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_0_Q_3853
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_0_Q : MUXCY
    port map (
      CI => timer_pat(8),
      DI => timer(0),
      S => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_0_Q_3853,
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_0_Q_3854
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_xor_0_Q : XORCY
    port map (
      CI => timer_pat(8),
      LI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_0_Q_3853,
      O => timer_31_timer_last_pat_31_sub_12_OUT_0_Q
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer(1),
      I1 => timer_last_pat(1),
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_1_Q_3855
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_1_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_0_Q_3854,
      DI => timer(1),
      S => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_1_Q_3855,
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_1_Q_3856
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_xor_1_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_0_Q_3854,
      LI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_1_Q_3855,
      O => timer_31_timer_last_pat_31_sub_12_OUT_1_Q
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer(2),
      I1 => timer_last_pat(2),
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_2_Q_3857
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_2_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_1_Q_3856,
      DI => timer(2),
      S => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_2_Q_3857,
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_2_Q_3858
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_xor_2_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_1_Q_3856,
      LI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_2_Q_3857,
      O => timer_31_timer_last_pat_31_sub_12_OUT_2_Q
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer(3),
      I1 => timer_last_pat(3),
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_3_Q_3859
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_3_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_2_Q_3858,
      DI => timer(3),
      S => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_3_Q_3859,
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_3_Q_3860
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_xor_3_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_2_Q_3858,
      LI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_3_Q_3859,
      O => timer_31_timer_last_pat_31_sub_12_OUT_3_Q
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer(4),
      I1 => timer_last_pat(4),
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_4_Q_3861
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_4_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_3_Q_3860,
      DI => timer(4),
      S => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_4_Q_3861,
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_4_Q_3862
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_xor_4_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_3_Q_3860,
      LI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_4_Q_3861,
      O => timer_31_timer_last_pat_31_sub_12_OUT_4_Q
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer(5),
      I1 => timer_last_pat(5),
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_5_Q_3863
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_5_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_4_Q_3862,
      DI => timer(5),
      S => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_5_Q_3863,
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_5_Q_3864
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_xor_5_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_4_Q_3862,
      LI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_5_Q_3863,
      O => timer_31_timer_last_pat_31_sub_12_OUT_5_Q
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer(6),
      I1 => timer_last_pat(6),
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_6_Q_3865
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_6_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_5_Q_3864,
      DI => timer(6),
      S => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_6_Q_3865,
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_6_Q_3866
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_xor_6_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_5_Q_3864,
      LI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_6_Q_3865,
      O => timer_31_timer_last_pat_31_sub_12_OUT_6_Q
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer(7),
      I1 => timer_last_pat(7),
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_7_Q_3867
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_7_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_6_Q_3866,
      DI => timer(7),
      S => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_7_Q_3867,
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_7_Q_3868
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_xor_7_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_6_Q_3866,
      LI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_7_Q_3867,
      O => timer_31_timer_last_pat_31_sub_12_OUT_7_Q
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer(8),
      I1 => timer_last_pat(8),
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_8_Q_3869
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_8_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_7_Q_3868,
      DI => timer(8),
      S => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_8_Q_3869,
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_8_Q_3870
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_xor_8_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_7_Q_3868,
      LI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_8_Q_3869,
      O => timer_31_timer_last_pat_31_sub_12_OUT_8_Q
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer(9),
      I1 => timer_last_pat(9),
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_9_Q_3871
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_9_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_8_Q_3870,
      DI => timer(9),
      S => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_9_Q_3871,
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_9_Q_3872
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_xor_9_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_8_Q_3870,
      LI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_9_Q_3871,
      O => timer_31_timer_last_pat_31_sub_12_OUT_9_Q
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_10_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer(10),
      I1 => timer_last_pat(10),
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_10_Q_3873
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_10_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_9_Q_3872,
      DI => timer(10),
      S => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_10_Q_3873,
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_10_Q_3874
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_xor_10_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_9_Q_3872,
      LI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_10_Q_3873,
      O => timer_31_timer_last_pat_31_sub_12_OUT_10_Q
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_11_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer(11),
      I1 => timer_last_pat(11),
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_11_Q_3875
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_11_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_10_Q_3874,
      DI => timer(11),
      S => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_11_Q_3875,
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_11_Q_3876
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_xor_11_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_10_Q_3874,
      LI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_11_Q_3875,
      O => timer_31_timer_last_pat_31_sub_12_OUT_11_Q
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_12_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer(12),
      I1 => timer_last_pat(12),
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_12_Q_3877
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_12_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_11_Q_3876,
      DI => timer(12),
      S => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_12_Q_3877,
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_12_Q_3878
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_xor_12_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_11_Q_3876,
      LI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_12_Q_3877,
      O => timer_31_timer_last_pat_31_sub_12_OUT_12_Q
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_13_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer(13),
      I1 => timer_last_pat(13),
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_13_Q_3879
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_13_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_12_Q_3878,
      DI => timer(13),
      S => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_13_Q_3879,
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_13_Q_3880
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_xor_13_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_12_Q_3878,
      LI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_13_Q_3879,
      O => timer_31_timer_last_pat_31_sub_12_OUT_13_Q
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_14_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer(14),
      I1 => timer_last_pat(14),
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_14_Q_3881
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_14_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_13_Q_3880,
      DI => timer(14),
      S => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_14_Q_3881,
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_14_Q_3882
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_xor_14_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_13_Q_3880,
      LI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_14_Q_3881,
      O => timer_31_timer_last_pat_31_sub_12_OUT_14_Q
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_15_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer(15),
      I1 => timer_last_pat(15),
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_15_Q_3883
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_15_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_14_Q_3882,
      DI => timer(15),
      S => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_15_Q_3883,
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_15_Q_3884
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_xor_15_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_14_Q_3882,
      LI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_15_Q_3883,
      O => timer_31_timer_last_pat_31_sub_12_OUT_15_Q
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_16_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer(16),
      I1 => timer_last_pat(16),
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_16_Q_3885
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_16_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_15_Q_3884,
      DI => timer(16),
      S => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_16_Q_3885,
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_16_Q_3886
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_xor_16_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_15_Q_3884,
      LI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_16_Q_3885,
      O => timer_31_timer_last_pat_31_sub_12_OUT_16_Q
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_17_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer(17),
      I1 => timer_last_pat(17),
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_17_Q_3887
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_17_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_16_Q_3886,
      DI => timer(17),
      S => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_17_Q_3887,
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_17_Q_3888
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_xor_17_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_16_Q_3886,
      LI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_17_Q_3887,
      O => timer_31_timer_last_pat_31_sub_12_OUT_17_Q
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_18_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer(18),
      I1 => timer_last_pat(18),
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_18_Q_3889
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_18_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_17_Q_3888,
      DI => timer(18),
      S => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_18_Q_3889,
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_18_Q_3890
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_xor_18_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_17_Q_3888,
      LI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_18_Q_3889,
      O => timer_31_timer_last_pat_31_sub_12_OUT_18_Q
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_19_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer(19),
      I1 => timer_last_pat(19),
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_19_Q_3891
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_19_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_18_Q_3890,
      DI => timer(19),
      S => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_19_Q_3891,
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_19_Q_3892
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_xor_19_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_18_Q_3890,
      LI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_19_Q_3891,
      O => timer_31_timer_last_pat_31_sub_12_OUT_19_Q
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_20_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer(20),
      I1 => timer_last_pat(20),
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_20_Q_3893
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_20_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_19_Q_3892,
      DI => timer(20),
      S => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_20_Q_3893,
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_20_Q_3894
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_xor_20_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_19_Q_3892,
      LI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_20_Q_3893,
      O => timer_31_timer_last_pat_31_sub_12_OUT_20_Q
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_21_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer(21),
      I1 => timer_last_pat(21),
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_21_Q_3895
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_21_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_20_Q_3894,
      DI => timer(21),
      S => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_21_Q_3895,
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_21_Q_3896
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_xor_21_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_20_Q_3894,
      LI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_21_Q_3895,
      O => timer_31_timer_last_pat_31_sub_12_OUT_21_Q
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_22_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer(22),
      I1 => timer_last_pat(22),
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_22_Q_3897
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_22_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_21_Q_3896,
      DI => timer(22),
      S => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_22_Q_3897,
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_22_Q_3898
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_xor_22_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_21_Q_3896,
      LI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_22_Q_3897,
      O => timer_31_timer_last_pat_31_sub_12_OUT_22_Q
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_23_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer(23),
      I1 => timer_last_pat(23),
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_23_Q_3899
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_23_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_22_Q_3898,
      DI => timer(23),
      S => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_23_Q_3899,
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_23_Q_3900
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_xor_23_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_22_Q_3898,
      LI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_23_Q_3899,
      O => timer_31_timer_last_pat_31_sub_12_OUT_23_Q
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_24_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer(24),
      I1 => timer_last_pat(24),
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_24_Q_3901
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_24_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_23_Q_3900,
      DI => timer(24),
      S => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_24_Q_3901,
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_24_Q_3902
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_xor_24_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_23_Q_3900,
      LI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_24_Q_3901,
      O => timer_31_timer_last_pat_31_sub_12_OUT_24_Q
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_25_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer(25),
      I1 => timer_last_pat(25),
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_25_Q_3903
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_25_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_24_Q_3902,
      DI => timer(25),
      S => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_25_Q_3903,
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_25_Q_3904
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_xor_25_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_24_Q_3902,
      LI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_25_Q_3903,
      O => timer_31_timer_last_pat_31_sub_12_OUT_25_Q
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_26_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer(26),
      I1 => timer_last_pat(26),
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_26_Q_3905
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_26_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_25_Q_3904,
      DI => timer(26),
      S => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_26_Q_3905,
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_26_Q_3906
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_xor_26_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_25_Q_3904,
      LI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_26_Q_3905,
      O => timer_31_timer_last_pat_31_sub_12_OUT_26_Q
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_27_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer(27),
      I1 => timer_last_pat(27),
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_27_Q_3907
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_27_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_26_Q_3906,
      DI => timer(27),
      S => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_27_Q_3907,
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_27_Q_3908
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_xor_27_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_26_Q_3906,
      LI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_27_Q_3907,
      O => timer_31_timer_last_pat_31_sub_12_OUT_27_Q
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_28_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer(28),
      I1 => timer_last_pat(28),
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_28_Q_3909
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_28_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_27_Q_3908,
      DI => timer(28),
      S => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_28_Q_3909,
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_28_Q_3910
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_xor_28_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_27_Q_3908,
      LI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_28_Q_3909,
      O => timer_31_timer_last_pat_31_sub_12_OUT_28_Q
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_29_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer(29),
      I1 => timer_last_pat(29),
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_29_Q_3911
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_29_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_28_Q_3910,
      DI => timer(29),
      S => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_29_Q_3911,
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_29_Q_3912
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_xor_29_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_28_Q_3910,
      LI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_29_Q_3911,
      O => timer_31_timer_last_pat_31_sub_12_OUT_29_Q
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_30_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer(30),
      I1 => timer_last_pat(30),
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_30_Q_3913
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_30_Q : MUXCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_29_Q_3912,
      DI => timer(30),
      S => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_30_Q_3913,
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_30_Q_3914
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_xor_30_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_29_Q_3912,
      LI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_30_Q_3913,
      O => timer_31_timer_last_pat_31_sub_12_OUT_30_Q
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_31_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timer(31),
      I1 => timer_last_pat(31),
      O => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_31_Q_3915
    );
  Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_xor_31_Q : XORCY
    port map (
      CI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_cy_30_Q_3914,
      LI => Msub_timer_31_timer_last_pat_31_sub_12_OUT_31_0_lut_31_Q_3915,
      O => timer_31_timer_last_pat_31_sub_12_OUT_31_Q
    );
  Mcompar_send_pat_0_lut_0_Q : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => timer_31_timer_last_pat_31_sub_12_OUT_0_Q,
      I1 => timer_31_timer_last_pat_31_sub_12_OUT_1_Q,
      I2 => timer_31_timer_last_pat_31_sub_12_OUT_2_Q,
      I3 => timer_31_timer_last_pat_31_sub_12_OUT_3_Q,
      I4 => timer_31_timer_last_pat_31_sub_12_OUT_4_Q,
      I5 => timer_31_timer_last_pat_31_sub_12_OUT_5_Q,
      O => Mcompar_send_pat_0_lut_0_Q_3916
    );
  Mcompar_send_pat_0_cy_0_Q : MUXCY
    port map (
      CI => timer_pat(8),
      DI => SAMPLESEL_ANY_OBUF_3058,
      S => Mcompar_send_pat_0_lut_0_Q_3916,
      O => Mcompar_send_pat_0_cy_0_Q_3917
    );
  Mcompar_send_pat_0_lut_1_Q : LUT6
    generic map(
      INIT => X"0000000000020000"
    )
    port map (
      I0 => timer_31_timer_last_pat_31_sub_12_OUT_11_Q,
      I1 => timer_31_timer_last_pat_31_sub_12_OUT_7_Q,
      I2 => timer_31_timer_last_pat_31_sub_12_OUT_8_Q,
      I3 => timer_31_timer_last_pat_31_sub_12_OUT_9_Q,
      I4 => timer_31_timer_last_pat_31_sub_12_OUT_6_Q,
      I5 => timer_31_timer_last_pat_31_sub_12_OUT_10_Q,
      O => Mcompar_send_pat_0_lut_1_Q_3918
    );
  Mcompar_send_pat_0_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_send_pat_0_cy_0_Q_3917,
      DI => SAMPLESEL_ANY_OBUF_3058,
      S => Mcompar_send_pat_0_lut_1_Q_3918,
      O => Mcompar_send_pat_0_cy_1_Q_3919
    );
  Mcompar_send_pat_0_lut_2_Q : LUT6
    generic map(
      INIT => X"0400000000000000"
    )
    port map (
      I0 => timer_31_timer_last_pat_31_sub_12_OUT_15_Q,
      I1 => timer_31_timer_last_pat_31_sub_12_OUT_14_Q,
      I2 => timer_31_timer_last_pat_31_sub_12_OUT_17_Q,
      I3 => timer_31_timer_last_pat_31_sub_12_OUT_12_Q,
      I4 => timer_31_timer_last_pat_31_sub_12_OUT_16_Q,
      I5 => timer_31_timer_last_pat_31_sub_12_OUT_13_Q,
      O => Mcompar_send_pat_0_lut_2_Q_3920
    );
  Mcompar_send_pat_0_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_send_pat_0_cy_1_Q_3919,
      DI => SAMPLESEL_ANY_OBUF_3058,
      S => Mcompar_send_pat_0_lut_2_Q_3920,
      O => Mcompar_send_pat_0_cy_2_Q_3921
    );
  Mcompar_send_pat_0_lut_3_Q : LUT6
    generic map(
      INIT => X"4000000000000000"
    )
    port map (
      I0 => timer_31_timer_last_pat_31_sub_12_OUT_23_Q,
      I1 => timer_31_timer_last_pat_31_sub_12_OUT_19_Q,
      I2 => timer_31_timer_last_pat_31_sub_12_OUT_20_Q,
      I3 => timer_31_timer_last_pat_31_sub_12_OUT_21_Q,
      I4 => timer_31_timer_last_pat_31_sub_12_OUT_22_Q,
      I5 => timer_31_timer_last_pat_31_sub_12_OUT_18_Q,
      O => Mcompar_send_pat_0_lut_3_Q_3922
    );
  Mcompar_send_pat_0_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_send_pat_0_cy_2_Q_3921,
      DI => SAMPLESEL_ANY_OBUF_3058,
      S => Mcompar_send_pat_0_lut_3_Q_3922,
      O => Mcompar_send_pat_0_cy_3_Q_3923
    );
  Mcompar_send_pat_0_lut_4_Q : LUT6
    generic map(
      INIT => X"0000000000010000"
    )
    port map (
      I0 => timer_31_timer_last_pat_31_sub_12_OUT_25_Q,
      I1 => timer_31_timer_last_pat_31_sub_12_OUT_26_Q,
      I2 => timer_31_timer_last_pat_31_sub_12_OUT_27_Q,
      I3 => timer_31_timer_last_pat_31_sub_12_OUT_28_Q,
      I4 => timer_31_timer_last_pat_31_sub_12_OUT_24_Q,
      I5 => timer_31_timer_last_pat_31_sub_12_OUT_29_Q,
      O => Mcompar_send_pat_0_lut_4_Q_3924
    );
  Mcompar_send_pat_0_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_send_pat_0_cy_3_Q_3923,
      DI => SAMPLESEL_ANY_OBUF_3058,
      S => Mcompar_send_pat_0_lut_4_Q_3924,
      O => Mcompar_send_pat_0_cy_4_Q_3925
    );
  Mcompar_send_pat_0_lut_5_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => timer_31_timer_last_pat_31_sub_12_OUT_30_Q,
      I1 => timer_31_timer_last_pat_31_sub_12_OUT_31_Q,
      O => Mcompar_send_pat_0_lut_5_Q_3926
    );
  Mcompar_send_pat_0_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_send_pat_0_cy_4_Q_3925,
      DI => SAMPLESEL_ANY_OBUF_3058,
      S => Mcompar_send_pat_0_lut_5_Q_3926,
      O => send_pat(0)
    );
  Mcompar_send_rdy_lutdi : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => timer_31_timer_last_31_sub_8_OUT_3_Q,
      I1 => timer_31_timer_last_31_sub_8_OUT_4_Q,
      O => Mcompar_send_rdy_lutdi_3927
    );
  Mcompar_send_rdy_lut_0_Q : LUT5
    generic map(
      INIT => X"00000004"
    )
    port map (
      I0 => timer_31_timer_last_31_sub_8_OUT_0_Q,
      I1 => timer_31_timer_last_31_sub_8_OUT_3_Q,
      I2 => timer_31_timer_last_31_sub_8_OUT_1_Q,
      I3 => timer_31_timer_last_31_sub_8_OUT_2_Q,
      I4 => timer_31_timer_last_31_sub_8_OUT_4_Q,
      O => Mcompar_send_rdy_lut(0)
    );
  Mcompar_send_rdy_cy_0_Q : MUXCY
    port map (
      CI => timer_pat(8),
      DI => Mcompar_send_rdy_lutdi_3927,
      S => Mcompar_send_rdy_lut(0),
      O => Mcompar_send_rdy_cy(0)
    );
  Mcompar_send_rdy_lutdi1 : LUT5
    generic map(
      INIT => X"11155555"
    )
    port map (
      I0 => timer_31_timer_last_31_sub_8_OUT_9_Q,
      I1 => timer_31_timer_last_31_sub_8_OUT_7_Q,
      I2 => timer_31_timer_last_31_sub_8_OUT_5_Q,
      I3 => timer_31_timer_last_31_sub_8_OUT_6_Q,
      I4 => timer_31_timer_last_31_sub_8_OUT_8_Q,
      O => Mcompar_send_rdy_lutdi1_3930
    );
  Mcompar_send_rdy_lut_1_Q : LUT5
    generic map(
      INIT => X"00004000"
    )
    port map (
      I0 => timer_31_timer_last_31_sub_8_OUT_6_Q,
      I1 => timer_31_timer_last_31_sub_8_OUT_5_Q,
      I2 => timer_31_timer_last_31_sub_8_OUT_7_Q,
      I3 => timer_31_timer_last_31_sub_8_OUT_8_Q,
      I4 => timer_31_timer_last_31_sub_8_OUT_9_Q,
      O => Mcompar_send_rdy_lut(1)
    );
  Mcompar_send_rdy_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_send_rdy_cy(0),
      DI => Mcompar_send_rdy_lutdi1_3930,
      S => Mcompar_send_rdy_lut(1),
      O => Mcompar_send_rdy_cy(1)
    );
  Mcompar_send_rdy_lutdi2 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => timer_31_timer_last_31_sub_8_OUT_14_Q,
      I1 => timer_31_timer_last_31_sub_8_OUT_13_Q,
      O => Mcompar_send_rdy_lutdi2_3933
    );
  Mcompar_send_rdy_lut_2_Q : LUT5
    generic map(
      INIT => X"00000008"
    )
    port map (
      I0 => timer_31_timer_last_31_sub_8_OUT_14_Q,
      I1 => timer_31_timer_last_31_sub_8_OUT_13_Q,
      I2 => timer_31_timer_last_31_sub_8_OUT_10_Q,
      I3 => timer_31_timer_last_31_sub_8_OUT_11_Q,
      I4 => timer_31_timer_last_31_sub_8_OUT_12_Q,
      O => Mcompar_send_rdy_lut(2)
    );
  Mcompar_send_rdy_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_send_rdy_cy(1),
      DI => Mcompar_send_rdy_lutdi2_3933,
      S => Mcompar_send_rdy_lut(2),
      O => Mcompar_send_rdy_cy(2)
    );
  Mcompar_send_rdy_lut_3_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => timer_31_timer_last_31_sub_8_OUT_15_Q,
      I1 => timer_31_timer_last_31_sub_8_OUT_16_Q,
      I2 => timer_31_timer_last_31_sub_8_OUT_17_Q,
      I3 => timer_31_timer_last_31_sub_8_OUT_18_Q,
      I4 => timer_31_timer_last_31_sub_8_OUT_19_Q,
      O => Mcompar_send_rdy_lut(3)
    );
  Mcompar_send_rdy_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_send_rdy_cy(2),
      DI => SAMPLESEL_ANY_OBUF_3058,
      S => Mcompar_send_rdy_lut(3),
      O => Mcompar_send_rdy_cy(3)
    );
  Mcompar_send_rdy_lut_4_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => timer_31_timer_last_31_sub_8_OUT_20_Q,
      I1 => timer_31_timer_last_31_sub_8_OUT_21_Q,
      I2 => timer_31_timer_last_31_sub_8_OUT_22_Q,
      I3 => timer_31_timer_last_31_sub_8_OUT_23_Q,
      I4 => timer_31_timer_last_31_sub_8_OUT_24_Q,
      O => Mcompar_send_rdy_lut(4)
    );
  Mcompar_send_rdy_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_send_rdy_cy(3),
      DI => SAMPLESEL_ANY_OBUF_3058,
      S => Mcompar_send_rdy_lut(4),
      O => Mcompar_send_rdy_cy(4)
    );
  Mcompar_send_rdy_lut_5_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => timer_31_timer_last_31_sub_8_OUT_25_Q,
      I1 => timer_31_timer_last_31_sub_8_OUT_26_Q,
      I2 => timer_31_timer_last_31_sub_8_OUT_27_Q,
      I3 => timer_31_timer_last_31_sub_8_OUT_28_Q,
      I4 => timer_31_timer_last_31_sub_8_OUT_29_Q,
      O => Mcompar_send_rdy_lut(5)
    );
  Mcompar_send_rdy_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_send_rdy_cy(4),
      DI => SAMPLESEL_ANY_OBUF_3058,
      S => Mcompar_send_rdy_lut(5),
      O => Mcompar_send_rdy_cy(5)
    );
  Mcompar_send_rdy_lut_6_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => timer_31_timer_last_31_sub_8_OUT_30_Q,
      I1 => timer_31_timer_last_31_sub_8_OUT_31_Q,
      O => Mcompar_send_rdy_lut(6)
    );
  Mcompar_send_rdy_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_send_rdy_cy(5),
      DI => timer_31_timer_last_31_sub_8_OUT_31_Q,
      S => Mcompar_send_rdy_lut(6),
      O => Mcompar_send_rdy_cy(6)
    );
  data_sc2dc_ibufds_inst : IBUFDS
    generic map(
      CAPACITANCE => "DONT_CARE",
      DIFF_TERM => FALSE,
      DQS_BIAS => "FALSE",
      IBUF_DELAY_VALUE => "0",
      IBUF_LOW_PWR => TRUE,
      IFD_DELAY_VALUE => "AUTO",
      IOSTANDARD => "LVDS_25"
    )
    port map (
      I => DATA_IN_P,
      IB => DATA_IN_N,
      O => DATA_IN
    );
  en_sc2dc_ibufds_inst : IBUFDS
    generic map(
      CAPACITANCE => "DONT_CARE",
      DIFF_TERM => FALSE,
      DQS_BIAS => "FALSE",
      IBUF_DELAY_VALUE => "0",
      IBUF_LOW_PWR => TRUE,
      IFD_DELAY_VALUE => "AUTO",
      IOSTANDARD => "LVDS_25"
    )
    port map (
      I => RX_P,
      IB => RX_N,
      O => RX
    );
  dc_clk_p : ODDR2
    generic map(
      DDR_ALIGNMENT => "NONE",
      SRTYPE => "SYNC",
      INIT => '0'
    )
    port map (
      D0 => timer_pat(8),
      D1 => SAMPLESEL_ANY_OBUF_3058,
      C0 => DC_DC_DATA_CLK,
      C1 => DC_DC_DATA_CLK_INV_52_o,
      CE => timer_pat(8),
      R => SAMPLESEL_ANY_OBUF_3058,
      S => SAMPLESEL_ANY_OBUF_3058,
      Q => DC_DC_CLK_P_OBUF_3427
    );
  dc_clk_n : ODDR2
    generic map(
      DDR_ALIGNMENT => "NONE",
      SRTYPE => "SYNC",
      INIT => '0'
    )
    port map (
      D0 => timer_pat(8),
      D1 => SAMPLESEL_ANY_OBUF_3058,
      C0 => DC_DC_DATA_CLK_INV_52_o,
      C1 => DC_DC_DATA_CLK,
      CE => timer_pat(8),
      R => SAMPLESEL_ANY_OBUF_3058,
      S => SAMPLESEL_ANY_OBUF_3058,
      Q => DC_DC_CLK_N_OBUF_3428
    );
  ODDR2_inst_sys_clock : ODDR2
    generic map(
      DDR_ALIGNMENT => "NONE",
      SRTYPE => "SYNC",
      INIT => '0'
    )
    port map (
      D0 => timer_pat(8),
      D1 => SAMPLESEL_ANY_OBUF_3058,
      C0 => sys_clk,
      C1 => sys_clk_INV_50_o,
      CE => timer_pat(8),
      R => SAMPLESEL_ANY_OBUF_3058,
      S => SAMPLESEL_ANY_OBUF_3058,
      Q => ORed_Trig_P_OBUF_3439
    );
  wilkson_clk : ODDR2
    generic map(
      DDR_ALIGNMENT => "NONE",
      SRTYPE => "SYNC",
      INIT => '0'
    )
    port map (
      D0 => timer_pat(8),
      D1 => SAMPLESEL_ANY_OBUF_3058,
      C0 => asic_clk,
      C1 => asic_clk_INV_48_o,
      CE => SAMPLESEL_ANY_OBUF_3058,
      R => SAMPLESEL_ANY_OBUF_3058,
      S => SAMPLESEL_ANY_OBUF_3058,
      Q => internal_wilk_clk
    );
  TX_OBUFDS_inst : OBUFDS
    generic map(
      CAPACITANCE => "DONT_CARE",
      IOSTANDARD => "LVDS_25",
      SLEW => "20"
    )
    port map (
      I => dc_mas_tx_INV_2_o,
      O => TX_N,
      OB => TX_P
    );
  DATA_OUT_OBUFDS_inst : OBUFDS
    generic map(
      CAPACITANCE => "DONT_CARE",
      IOSTANDARD => "LVDS_25",
      SLEW => "20"
    )
    port map (
      I => dc_mas_data_out_INV_4_o,
      O => DATA_OUT_N,
      OB => DATA_OUT_P
    );
  wilk_OBUFDS_inst : OBUFDS
    generic map(
      CAPACITANCE => "DONT_CARE",
      IOSTANDARD => "LVDS_25",
      SLEW => "20"
    )
    port map (
      I => internal_wilk_clk,
      O => WL_CLK_P,
      OB => WL_CLK_N
    );
  sst_OBUFDS_inst : OBUFDS
    generic map(
      CAPACITANCE => "DONT_CARE",
      IOSTANDARD => "LVDS_25",
      SLEW => "20"
    )
    port map (
      I => SAMPLESEL_ANY_OBUF_3058,
      O => SSTIN_P,
      OB => SSTIN_N
    );
  TARGETX_TRIGGER_LOGIC : BMD_TRIG_LOGIC
    port map (
      CLK => asic_clk,
      OOPS => ctrl_register_0_0_Q,
      SW_TRIG => sw_trig,
      SCROD_TRIG => NLW_TARGETX_TRIGGER_LOGIC_SCROD_TRIG_UNCONNECTED,
      CNT_START => ctrl_register_19_0_Q,
      RD_BUSY => SAMPLESEL_ANY_OBUF_3058,
      TRIGGER => NLW_TARGETX_TRIGGER_LOGIC_TRIGGER_UNCONNECTED,
      TX_HW_TRIG => TX_HW_TRIG_OBUF_3057,
      DC_DC_TRIG => DC_DC_TRIG,
      SC_DC_TRIG => SC_DC_TRIG,
      TRIG_MODE(3) => ctrl_register_6_3_Q,
      TRIG_MODE(2) => ctrl_register_6_2_Q,
      TRIG_MODE(1) => ctrl_register_6_1_Q,
      TRIG_MODE(0) => ctrl_register_6_0_Q,
      TX_TRIG(4) => TX_TRIG_4_IBUF_3007,
      TX_TRIG(3) => TX_TRIG_3_IBUF_3008,
      TX_TRIG(2) => TX_TRIG_2_IBUF_3009,
      TX_TRIG(1) => TX_TRIG_1_IBUF_3010,
      TX_TRIG(0) => TX_TRIG_0_IBUF_3011,
      DC_MASK(3) => ctrl_register_7_3_Q,
      DC_MASK(2) => ctrl_register_7_2_Q,
      DC_MASK(1) => ctrl_register_7_1_Q,
      DC_MASK(0) => ctrl_register_7_0_Q,
      DC_ADDRESS(3) => DC_ADDRESS_3_IBUF_3012,
      DC_ADDRESS(2) => DC_ADDRESS_2_IBUF_3013,
      DC_ADDRESS(1) => DC_ADDRESS_1_IBUF_3014,
      DC_ADDRESS(0) => DC_ADDRESS_0_IBUF_3015,
      WAIT_COUNT(31) => SAMPLESEL_ANY_OBUF_3058,
      WAIT_COUNT(30) => SAMPLESEL_ANY_OBUF_3058,
      WAIT_COUNT(29) => SAMPLESEL_ANY_OBUF_3058,
      WAIT_COUNT(28) => SAMPLESEL_ANY_OBUF_3058,
      WAIT_COUNT(27) => SAMPLESEL_ANY_OBUF_3058,
      WAIT_COUNT(26) => SAMPLESEL_ANY_OBUF_3058,
      WAIT_COUNT(25) => SAMPLESEL_ANY_OBUF_3058,
      WAIT_COUNT(24) => SAMPLESEL_ANY_OBUF_3058,
      WAIT_COUNT(23) => SAMPLESEL_ANY_OBUF_3058,
      WAIT_COUNT(22) => SAMPLESEL_ANY_OBUF_3058,
      WAIT_COUNT(21) => SAMPLESEL_ANY_OBUF_3058,
      WAIT_COUNT(20) => SAMPLESEL_ANY_OBUF_3058,
      WAIT_COUNT(19) => SAMPLESEL_ANY_OBUF_3058,
      WAIT_COUNT(18) => SAMPLESEL_ANY_OBUF_3058,
      WAIT_COUNT(17) => SAMPLESEL_ANY_OBUF_3058,
      WAIT_COUNT(16) => SAMPLESEL_ANY_OBUF_3058,
      WAIT_COUNT(15) => ctrl_register_8_15_Q,
      WAIT_COUNT(14) => ctrl_register_8_14_Q,
      WAIT_COUNT(13) => ctrl_register_8_13_Q,
      WAIT_COUNT(12) => ctrl_register_8_12_Q,
      WAIT_COUNT(11) => ctrl_register_8_11_Q,
      WAIT_COUNT(10) => ctrl_register_8_10_Q,
      WAIT_COUNT(9) => ctrl_register_8_9_Q,
      WAIT_COUNT(8) => ctrl_register_8_8_Q,
      WAIT_COUNT(7) => ctrl_register_8_7_Q,
      WAIT_COUNT(6) => ctrl_register_8_6_Q,
      WAIT_COUNT(5) => ctrl_register_8_5_Q,
      WAIT_COUNT(4) => ctrl_register_8_4_Q,
      WAIT_COUNT(3) => ctrl_register_8_3_Q,
      WAIT_COUNT(2) => ctrl_register_8_2_Q,
      WAIT_COUNT(1) => ctrl_register_8_1_Q,
      WAIT_COUNT(0) => ctrl_register_8_0_Q,
      MAX_CNT(15) => ctrl_register_18_15_Q,
      MAX_CNT(14) => ctrl_register_18_14_Q,
      MAX_CNT(13) => ctrl_register_18_13_Q,
      MAX_CNT(12) => ctrl_register_18_12_Q,
      MAX_CNT(11) => ctrl_register_18_11_Q,
      MAX_CNT(10) => ctrl_register_18_10_Q,
      MAX_CNT(9) => ctrl_register_18_9_Q,
      MAX_CNT(8) => ctrl_register_18_8_Q,
      MAX_CNT(7) => ctrl_register_18_7_Q,
      MAX_CNT(6) => ctrl_register_18_6_Q,
      MAX_CNT(5) => ctrl_register_18_5_Q,
      MAX_CNT(4) => ctrl_register_18_4_Q,
      MAX_CNT(3) => ctrl_register_18_3_Q,
      MAX_CNT(2) => ctrl_register_18_2_Q,
      MAX_CNT(1) => ctrl_register_18_1_Q,
      MAX_CNT(0) => ctrl_register_18_0_Q,
      TRIG_COUNT(31) => trig_count(31),
      TRIG_COUNT(30) => trig_count(30),
      TRIG_COUNT(29) => trig_count(29),
      TRIG_COUNT(28) => trig_count(28),
      TRIG_COUNT(27) => trig_count(27),
      TRIG_COUNT(26) => trig_count(26),
      TRIG_COUNT(25) => trig_count(25),
      TRIG_COUNT(24) => trig_count(24),
      TRIG_COUNT(23) => trig_count(23),
      TRIG_COUNT(22) => trig_count(22),
      TRIG_COUNT(21) => trig_count(21),
      TRIG_COUNT(20) => trig_count(20),
      TRIG_COUNT(19) => trig_count(19),
      TRIG_COUNT(18) => trig_count(18),
      TRIG_COUNT(17) => trig_count(17),
      TRIG_COUNT(16) => trig_count(16),
      TRIG_COUNT(15) => trig_count(15),
      TRIG_COUNT(14) => trig_count(14),
      TRIG_COUNT(13) => trig_count(13),
      TRIG_COUNT(12) => trig_count(12),
      TRIG_COUNT(11) => trig_count(11),
      TRIG_COUNT(10) => trig_count(10),
      TRIG_COUNT(9) => trig_count(9),
      TRIG_COUNT(8) => trig_count(8),
      TRIG_COUNT(7) => trig_count(7),
      TRIG_COUNT(6) => trig_count(6),
      TRIG_COUNT(5) => trig_count(5),
      TRIG_COUNT(4) => trig_count(4),
      TRIG_COUNT(3) => trig_count(3),
      TRIG_COUNT(2) => trig_count(2),
      TRIG_COUNT(1) => trig_count(1),
      TRIG_COUNT(0) => AUX1_N_OBUF_3056,
      TRIG_BITS(4) => NLW_TARGETX_TRIGGER_LOGIC_TRIG_BITS_4_UNCONNECTED,
      TRIG_BITS(3) => NLW_TARGETX_TRIGGER_LOGIC_TRIG_BITS_3_UNCONNECTED,
      TRIG_BITS(2) => NLW_TARGETX_TRIGGER_LOGIC_TRIG_BITS_2_UNCONNECTED,
      TRIG_BITS(1) => NLW_TARGETX_TRIGGER_LOGIC_TRIG_BITS_1_UNCONNECTED,
      TRIG_BITS(0) => NLW_TARGETX_TRIGGER_LOGIC_TRIG_BITS_0_UNCONNECTED
    );
  DC_COMM_PARSER : DC_COMM_PARSER_DC_COMM_PARSER
    port map (
      CLK => asic_clk,
      SEND => SAMPLESEL_ANY_OBUF_3058,
      TRIGGER => SAMPLESEL_ANY_OBUF_3058,
      OOPS_RESET => ctrl_register_0_0_Q,
      MAS_DC_DATA_CLK => sys_clk,
      MAS_DC_RX => RX,
      MAS_DC_DATA_IN => DATA_IN,
      DC_DC_RX => DC_DC_RX_IBUF_3018,
      DC_DC_DATA_IN => DC_DC_DATA_IN_IBUF_3019,
      READOUT_BUSY => SAMPLESEL_ANY_OBUF_3058,
      ASIC_BUSY => tx_dac_busy,
      DUMP_BUSY => SAMPLESEL_ANY_OBUF_3058,
      MPPC_DAC_BUSY => mppc_dac_busy,
      wave_fifo_clk => sys_clk,
      wave_fifo_wr_en => wave_fifo_wr_en,
      wave_fifo_reset => SAMPLESEL_ANY_OBUF_3058,
      DC_MAS_TX => dc_mas_tx,
      DC_MAS_DATA_OUT => dc_mas_data_out,
      DC_DC_DATA_CLK => DC_DC_DATA_CLK,
      DC_DC_TX => DC_DC_TX_OBUF_3392,
      DC_DC_DATA_OUT => DC_DC_DATA_OUT_OBUF_3393,
      TX_BUSY => NLW_DC_COMM_PARSER_TX_BUSY_UNCONNECTED,
      TX_UPDATE => tx_dac_update,
      DAC_UPDATE => mppc_dac_update,
      wave_fifo_full => NLW_DC_COMM_PARSER_wave_fifo_full_UNCONNECTED,
      DC_ADDR(3) => DC_ADDRESS_3_IBUF_3012,
      DC_ADDR(2) => DC_ADDRESS_2_IBUF_3013,
      DC_ADDR(1) => DC_ADDRESS_1_IBUF_3014,
      DC_ADDR(0) => DC_ADDRESS_0_IBUF_3015,
      RB_REG_VALUE(15) => rb_value(15),
      RB_REG_VALUE(14) => rb_value(14),
      RB_REG_VALUE(13) => rb_value(13),
      RB_REG_VALUE(12) => rb_value(12),
      RB_REG_VALUE(11) => rb_value(11),
      RB_REG_VALUE(10) => rb_value(10),
      RB_REG_VALUE(9) => rb_value(9),
      RB_REG_VALUE(8) => rb_value(8),
      RB_REG_VALUE(7) => rb_value(7),
      RB_REG_VALUE(6) => rb_value(6),
      RB_REG_VALUE(5) => rb_value(5),
      RB_REG_VALUE(4) => rb_value(4),
      RB_REG_VALUE(3) => rb_value(3),
      RB_REG_VALUE(2) => rb_value(2),
      RB_REG_VALUE(1) => rb_value(1),
      RB_REG_VALUE(0) => rb_value(0),
      wave_fifo_data(31) => timer_pat(8),
      wave_fifo_data(30) => timer_pat(8),
      wave_fifo_data(29) => SAMPLESEL_ANY_OBUF_3058,
      wave_fifo_data(28) => SAMPLESEL_ANY_OBUF_3058,
      wave_fifo_data(27) => timer(21),
      wave_fifo_data(26) => timer(20),
      wave_fifo_data(25) => timer(19),
      wave_fifo_data(24) => timer(18),
      wave_fifo_data(23) => timer(17),
      wave_fifo_data(22) => timer(16),
      wave_fifo_data(21) => timer(15),
      wave_fifo_data(20) => timer(14),
      wave_fifo_data(19) => timer(13),
      wave_fifo_data(18) => timer(12),
      wave_fifo_data(17) => timer(11),
      wave_fifo_data(16) => timer(10),
      wave_fifo_data(15) => timer(9),
      wave_fifo_data(14) => timer(8),
      wave_fifo_data(13) => timer(7),
      wave_fifo_data(12) => timer(6),
      wave_fifo_data(11) => timer(5),
      wave_fifo_data(10) => timer(4),
      wave_fifo_data(9) => timer(3),
      wave_fifo_data(8) => timer(2),
      wave_fifo_data(7) => timer(1),
      wave_fifo_data(6) => timer(0),
      wave_fifo_data(5) => tx_trigbits_l(5),
      wave_fifo_data(4) => tx_trigbits_l(4),
      wave_fifo_data(3) => tx_trigbits_l(3),
      wave_fifo_data(2) => tx_trigbits_l(2),
      wave_fifo_data(1) => tx_trigbits_l(1),
      wave_fifo_data(0) => tx_trigbits_l(0),
      RB_REG_NUM(7) => rb_reg(7),
      RB_REG_NUM(6) => rb_reg(6),
      RB_REG_NUM(5) => rb_reg(5),
      RB_REG_NUM(4) => rb_reg(4),
      RB_REG_NUM(3) => rb_reg(3),
      RB_REG_NUM(2) => rb_reg(2),
      RB_REG_NUM(1) => rb_reg(1),
      RB_REG_NUM(0) => rb_reg(0),
      OUTPUT_REGISTERS(19, 15) => ctrl_register_19_15_Q,
      OUTPUT_REGISTERS(19, 14) => ctrl_register_19_14_Q,
      OUTPUT_REGISTERS(19, 13) => ctrl_register_19_13_Q,
      OUTPUT_REGISTERS(19, 12) => ctrl_register_19_12_Q,
      OUTPUT_REGISTERS(19, 11) => ctrl_register_19_11_Q,
      OUTPUT_REGISTERS(19, 10) => ctrl_register_19_10_Q,
      OUTPUT_REGISTERS(19, 9) => ctrl_register_19_9_Q,
      OUTPUT_REGISTERS(19, 8) => ctrl_register_19_8_Q,
      OUTPUT_REGISTERS(19, 7) => ctrl_register_19_7_Q,
      OUTPUT_REGISTERS(19, 6) => ctrl_register_19_6_Q,
      OUTPUT_REGISTERS(19, 5) => ctrl_register_19_5_Q,
      OUTPUT_REGISTERS(19, 4) => ctrl_register_19_4_Q,
      OUTPUT_REGISTERS(19, 3) => ctrl_register_19_3_Q,
      OUTPUT_REGISTERS(19, 2) => ctrl_register_19_2_Q,
      OUTPUT_REGISTERS(19, 1) => ctrl_register_19_1_Q,
      OUTPUT_REGISTERS(19, 0) => ctrl_register_19_0_Q,
      OUTPUT_REGISTERS(18, 15) => ctrl_register_18_15_Q,
      OUTPUT_REGISTERS(18, 14) => ctrl_register_18_14_Q,
      OUTPUT_REGISTERS(18, 13) => ctrl_register_18_13_Q,
      OUTPUT_REGISTERS(18, 12) => ctrl_register_18_12_Q,
      OUTPUT_REGISTERS(18, 11) => ctrl_register_18_11_Q,
      OUTPUT_REGISTERS(18, 10) => ctrl_register_18_10_Q,
      OUTPUT_REGISTERS(18, 9) => ctrl_register_18_9_Q,
      OUTPUT_REGISTERS(18, 8) => ctrl_register_18_8_Q,
      OUTPUT_REGISTERS(18, 7) => ctrl_register_18_7_Q,
      OUTPUT_REGISTERS(18, 6) => ctrl_register_18_6_Q,
      OUTPUT_REGISTERS(18, 5) => ctrl_register_18_5_Q,
      OUTPUT_REGISTERS(18, 4) => ctrl_register_18_4_Q,
      OUTPUT_REGISTERS(18, 3) => ctrl_register_18_3_Q,
      OUTPUT_REGISTERS(18, 2) => ctrl_register_18_2_Q,
      OUTPUT_REGISTERS(18, 1) => ctrl_register_18_1_Q,
      OUTPUT_REGISTERS(18, 0) => ctrl_register_18_0_Q,
      OUTPUT_REGISTERS(17, 15) => ctrl_register_17_15_Q,
      OUTPUT_REGISTERS(17, 14) => ctrl_register_17_14_Q,
      OUTPUT_REGISTERS(17, 13) => ctrl_register_17_13_Q,
      OUTPUT_REGISTERS(17, 12) => ctrl_register_17_12_Q,
      OUTPUT_REGISTERS(17, 11) => ctrl_register_17_11_Q,
      OUTPUT_REGISTERS(17, 10) => ctrl_register_17_10_Q,
      OUTPUT_REGISTERS(17, 9) => ctrl_register_17_9_Q,
      OUTPUT_REGISTERS(17, 8) => ctrl_register_17_8_Q,
      OUTPUT_REGISTERS(17, 7) => ctrl_register_17_7_Q,
      OUTPUT_REGISTERS(17, 6) => ctrl_register_17_6_Q,
      OUTPUT_REGISTERS(17, 5) => ctrl_register_17_5_Q,
      OUTPUT_REGISTERS(17, 4) => ctrl_register_17_4_Q,
      OUTPUT_REGISTERS(17, 3) => ctrl_register_17_3_Q,
      OUTPUT_REGISTERS(17, 2) => ctrl_register_17_2_Q,
      OUTPUT_REGISTERS(17, 1) => ctrl_register_17_1_Q,
      OUTPUT_REGISTERS(17, 0) => ctrl_register_17_0_Q,
      OUTPUT_REGISTERS(16, 15) => ctrl_register_16_15_Q,
      OUTPUT_REGISTERS(16, 14) => ctrl_register_16_14_Q,
      OUTPUT_REGISTERS(16, 13) => ctrl_register_16_13_Q,
      OUTPUT_REGISTERS(16, 12) => ctrl_register_16_12_Q,
      OUTPUT_REGISTERS(16, 11) => ctrl_register_16_11_Q,
      OUTPUT_REGISTERS(16, 10) => ctrl_register_16_10_Q,
      OUTPUT_REGISTERS(16, 9) => ctrl_register_16_9_Q,
      OUTPUT_REGISTERS(16, 8) => ctrl_register_16_8_Q,
      OUTPUT_REGISTERS(16, 7) => ctrl_register_16_7_Q,
      OUTPUT_REGISTERS(16, 6) => ctrl_register_16_6_Q,
      OUTPUT_REGISTERS(16, 5) => ctrl_register_16_5_Q,
      OUTPUT_REGISTERS(16, 4) => ctrl_register_16_4_Q,
      OUTPUT_REGISTERS(16, 3) => ctrl_register_16_3_Q,
      OUTPUT_REGISTERS(16, 2) => ctrl_register_16_2_Q,
      OUTPUT_REGISTERS(16, 1) => ctrl_register_16_1_Q,
      OUTPUT_REGISTERS(16, 0) => ctrl_register_16_0_Q,
      OUTPUT_REGISTERS(15, 15) => ctrl_register_15_15_Q,
      OUTPUT_REGISTERS(15, 14) => ctrl_register_15_14_Q,
      OUTPUT_REGISTERS(15, 13) => ctrl_register_15_13_Q,
      OUTPUT_REGISTERS(15, 12) => ctrl_register_15_12_Q,
      OUTPUT_REGISTERS(15, 11) => ctrl_register_15_11_Q,
      OUTPUT_REGISTERS(15, 10) => ctrl_register_15_10_Q,
      OUTPUT_REGISTERS(15, 9) => ctrl_register_15_9_Q,
      OUTPUT_REGISTERS(15, 8) => ctrl_register_15_8_Q,
      OUTPUT_REGISTERS(15, 7) => ctrl_register_15_7_Q,
      OUTPUT_REGISTERS(15, 6) => ctrl_register_15_6_Q,
      OUTPUT_REGISTERS(15, 5) => ctrl_register_15_5_Q,
      OUTPUT_REGISTERS(15, 4) => ctrl_register_15_4_Q,
      OUTPUT_REGISTERS(15, 3) => ctrl_register_15_3_Q,
      OUTPUT_REGISTERS(15, 2) => ctrl_register_15_2_Q,
      OUTPUT_REGISTERS(15, 1) => ctrl_register_15_1_Q,
      OUTPUT_REGISTERS(15, 0) => ctrl_register_15_0_Q,
      OUTPUT_REGISTERS(14, 15) => ctrl_register_14_15_Q,
      OUTPUT_REGISTERS(14, 14) => ctrl_register_14_14_Q,
      OUTPUT_REGISTERS(14, 13) => ctrl_register_14_13_Q,
      OUTPUT_REGISTERS(14, 12) => ctrl_register_14_12_Q,
      OUTPUT_REGISTERS(14, 11) => ctrl_register_14_11_Q,
      OUTPUT_REGISTERS(14, 10) => ctrl_register_14_10_Q,
      OUTPUT_REGISTERS(14, 9) => ctrl_register_14_9_Q,
      OUTPUT_REGISTERS(14, 8) => ctrl_register_14_8_Q,
      OUTPUT_REGISTERS(14, 7) => ctrl_register_14_7_Q,
      OUTPUT_REGISTERS(14, 6) => ctrl_register_14_6_Q,
      OUTPUT_REGISTERS(14, 5) => ctrl_register_14_5_Q,
      OUTPUT_REGISTERS(14, 4) => ctrl_register_14_4_Q,
      OUTPUT_REGISTERS(14, 3) => ctrl_register_14_3_Q,
      OUTPUT_REGISTERS(14, 2) => ctrl_register_14_2_Q,
      OUTPUT_REGISTERS(14, 1) => ctrl_register_14_1_Q,
      OUTPUT_REGISTERS(14, 0) => ctrl_register_14_0_Q,
      OUTPUT_REGISTERS(13, 15) => ctrl_register_13_15_Q,
      OUTPUT_REGISTERS(13, 14) => ctrl_register_13_14_Q,
      OUTPUT_REGISTERS(13, 13) => ctrl_register_13_13_Q,
      OUTPUT_REGISTERS(13, 12) => ctrl_register_13_12_Q,
      OUTPUT_REGISTERS(13, 11) => ctrl_register_13_11_Q,
      OUTPUT_REGISTERS(13, 10) => ctrl_register_13_10_Q,
      OUTPUT_REGISTERS(13, 9) => ctrl_register_13_9_Q,
      OUTPUT_REGISTERS(13, 8) => ctrl_register_13_8_Q,
      OUTPUT_REGISTERS(13, 7) => ctrl_register_13_7_Q,
      OUTPUT_REGISTERS(13, 6) => ctrl_register_13_6_Q,
      OUTPUT_REGISTERS(13, 5) => ctrl_register_13_5_Q,
      OUTPUT_REGISTERS(13, 4) => ctrl_register_13_4_Q,
      OUTPUT_REGISTERS(13, 3) => ctrl_register_13_3_Q,
      OUTPUT_REGISTERS(13, 2) => ctrl_register_13_2_Q,
      OUTPUT_REGISTERS(13, 1) => ctrl_register_13_1_Q,
      OUTPUT_REGISTERS(13, 0) => ctrl_register_13_0_Q,
      OUTPUT_REGISTERS(12, 15) => ctrl_register_12_15_Q,
      OUTPUT_REGISTERS(12, 14) => ctrl_register_12_14_Q,
      OUTPUT_REGISTERS(12, 13) => ctrl_register_12_13_Q,
      OUTPUT_REGISTERS(12, 12) => ctrl_register_12_12_Q,
      OUTPUT_REGISTERS(12, 11) => ctrl_register_12_11_Q,
      OUTPUT_REGISTERS(12, 10) => ctrl_register_12_10_Q,
      OUTPUT_REGISTERS(12, 9) => ctrl_register_12_9_Q,
      OUTPUT_REGISTERS(12, 8) => ctrl_register_12_8_Q,
      OUTPUT_REGISTERS(12, 7) => ctrl_register_12_7_Q,
      OUTPUT_REGISTERS(12, 6) => ctrl_register_12_6_Q,
      OUTPUT_REGISTERS(12, 5) => ctrl_register_12_5_Q,
      OUTPUT_REGISTERS(12, 4) => ctrl_register_12_4_Q,
      OUTPUT_REGISTERS(12, 3) => ctrl_register_12_3_Q,
      OUTPUT_REGISTERS(12, 2) => ctrl_register_12_2_Q,
      OUTPUT_REGISTERS(12, 1) => ctrl_register_12_1_Q,
      OUTPUT_REGISTERS(12, 0) => ctrl_register_12_0_Q,
      OUTPUT_REGISTERS(11, 15) => ctrl_register_11_15_Q,
      OUTPUT_REGISTERS(11, 14) => ctrl_register_11_14_Q,
      OUTPUT_REGISTERS(11, 13) => ctrl_register_11_13_Q,
      OUTPUT_REGISTERS(11, 12) => ctrl_register_11_12_Q,
      OUTPUT_REGISTERS(11, 11) => ctrl_register_11_11_Q,
      OUTPUT_REGISTERS(11, 10) => ctrl_register_11_10_Q,
      OUTPUT_REGISTERS(11, 9) => ctrl_register_11_9_Q,
      OUTPUT_REGISTERS(11, 8) => ctrl_register_11_8_Q,
      OUTPUT_REGISTERS(11, 7) => ctrl_register_11_7_Q,
      OUTPUT_REGISTERS(11, 6) => ctrl_register_11_6_Q,
      OUTPUT_REGISTERS(11, 5) => ctrl_register_11_5_Q,
      OUTPUT_REGISTERS(11, 4) => ctrl_register_11_4_Q,
      OUTPUT_REGISTERS(11, 3) => ctrl_register_11_3_Q,
      OUTPUT_REGISTERS(11, 2) => ctrl_register_11_2_Q,
      OUTPUT_REGISTERS(11, 1) => ctrl_register_11_1_Q,
      OUTPUT_REGISTERS(11, 0) => ctrl_register_11_0_Q,
      OUTPUT_REGISTERS(10, 15) => ctrl_register_10_15_Q,
      OUTPUT_REGISTERS(10, 14) => ctrl_register_10_14_Q,
      OUTPUT_REGISTERS(10, 13) => ctrl_register_10_13_Q,
      OUTPUT_REGISTERS(10, 12) => ctrl_register_10_12_Q,
      OUTPUT_REGISTERS(10, 11) => ctrl_register_10_11_Q,
      OUTPUT_REGISTERS(10, 10) => ctrl_register_10_10_Q,
      OUTPUT_REGISTERS(10, 9) => ctrl_register_10_9_Q,
      OUTPUT_REGISTERS(10, 8) => ctrl_register_10_8_Q,
      OUTPUT_REGISTERS(10, 7) => ctrl_register_10_7_Q,
      OUTPUT_REGISTERS(10, 6) => ctrl_register_10_6_Q,
      OUTPUT_REGISTERS(10, 5) => ctrl_register_10_5_Q,
      OUTPUT_REGISTERS(10, 4) => ctrl_register_10_4_Q,
      OUTPUT_REGISTERS(10, 3) => ctrl_register_10_3_Q,
      OUTPUT_REGISTERS(10, 2) => ctrl_register_10_2_Q,
      OUTPUT_REGISTERS(10, 1) => ctrl_register_10_1_Q,
      OUTPUT_REGISTERS(10, 0) => ctrl_register_10_0_Q,
      OUTPUT_REGISTERS(9, 15) => ctrl_register_9_15_Q,
      OUTPUT_REGISTERS(9, 14) => ctrl_register_9_14_Q,
      OUTPUT_REGISTERS(9, 13) => ctrl_register_9_13_Q,
      OUTPUT_REGISTERS(9, 12) => ctrl_register_9_12_Q,
      OUTPUT_REGISTERS(9, 11) => ctrl_register_9_11_Q,
      OUTPUT_REGISTERS(9, 10) => ctrl_register_9_10_Q,
      OUTPUT_REGISTERS(9, 9) => ctrl_register_9_9_Q,
      OUTPUT_REGISTERS(9, 8) => ctrl_register_9_8_Q,
      OUTPUT_REGISTERS(9, 7) => ctrl_register_9_7_Q,
      OUTPUT_REGISTERS(9, 6) => ctrl_register_9_6_Q,
      OUTPUT_REGISTERS(9, 5) => ctrl_register_9_5_Q,
      OUTPUT_REGISTERS(9, 4) => ctrl_register_9_4_Q,
      OUTPUT_REGISTERS(9, 3) => ctrl_register_9_3_Q,
      OUTPUT_REGISTERS(9, 2) => ctrl_register_9_2_Q,
      OUTPUT_REGISTERS(9, 1) => ctrl_register_9_1_Q,
      OUTPUT_REGISTERS(9, 0) => ctrl_register_9_0_Q,
      OUTPUT_REGISTERS(8, 15) => ctrl_register_8_15_Q,
      OUTPUT_REGISTERS(8, 14) => ctrl_register_8_14_Q,
      OUTPUT_REGISTERS(8, 13) => ctrl_register_8_13_Q,
      OUTPUT_REGISTERS(8, 12) => ctrl_register_8_12_Q,
      OUTPUT_REGISTERS(8, 11) => ctrl_register_8_11_Q,
      OUTPUT_REGISTERS(8, 10) => ctrl_register_8_10_Q,
      OUTPUT_REGISTERS(8, 9) => ctrl_register_8_9_Q,
      OUTPUT_REGISTERS(8, 8) => ctrl_register_8_8_Q,
      OUTPUT_REGISTERS(8, 7) => ctrl_register_8_7_Q,
      OUTPUT_REGISTERS(8, 6) => ctrl_register_8_6_Q,
      OUTPUT_REGISTERS(8, 5) => ctrl_register_8_5_Q,
      OUTPUT_REGISTERS(8, 4) => ctrl_register_8_4_Q,
      OUTPUT_REGISTERS(8, 3) => ctrl_register_8_3_Q,
      OUTPUT_REGISTERS(8, 2) => ctrl_register_8_2_Q,
      OUTPUT_REGISTERS(8, 1) => ctrl_register_8_1_Q,
      OUTPUT_REGISTERS(8, 0) => ctrl_register_8_0_Q,
      OUTPUT_REGISTERS(7, 15) => ctrl_register_7_15_Q,
      OUTPUT_REGISTERS(7, 14) => ctrl_register_7_14_Q,
      OUTPUT_REGISTERS(7, 13) => ctrl_register_7_13_Q,
      OUTPUT_REGISTERS(7, 12) => ctrl_register_7_12_Q,
      OUTPUT_REGISTERS(7, 11) => ctrl_register_7_11_Q,
      OUTPUT_REGISTERS(7, 10) => ctrl_register_7_10_Q,
      OUTPUT_REGISTERS(7, 9) => ctrl_register_7_9_Q,
      OUTPUT_REGISTERS(7, 8) => ctrl_register_7_8_Q,
      OUTPUT_REGISTERS(7, 7) => ctrl_register_7_7_Q,
      OUTPUT_REGISTERS(7, 6) => ctrl_register_7_6_Q,
      OUTPUT_REGISTERS(7, 5) => ctrl_register_7_5_Q,
      OUTPUT_REGISTERS(7, 4) => ctrl_register_7_4_Q,
      OUTPUT_REGISTERS(7, 3) => ctrl_register_7_3_Q,
      OUTPUT_REGISTERS(7, 2) => ctrl_register_7_2_Q,
      OUTPUT_REGISTERS(7, 1) => ctrl_register_7_1_Q,
      OUTPUT_REGISTERS(7, 0) => ctrl_register_7_0_Q,
      OUTPUT_REGISTERS(6, 15) => ctrl_register_6_15_Q,
      OUTPUT_REGISTERS(6, 14) => ctrl_register_6_14_Q,
      OUTPUT_REGISTERS(6, 13) => ctrl_register_6_13_Q,
      OUTPUT_REGISTERS(6, 12) => ctrl_register_6_12_Q,
      OUTPUT_REGISTERS(6, 11) => ctrl_register_6_11_Q,
      OUTPUT_REGISTERS(6, 10) => ctrl_register_6_10_Q,
      OUTPUT_REGISTERS(6, 9) => ctrl_register_6_9_Q,
      OUTPUT_REGISTERS(6, 8) => ctrl_register_6_8_Q,
      OUTPUT_REGISTERS(6, 7) => ctrl_register_6_7_Q,
      OUTPUT_REGISTERS(6, 6) => ctrl_register_6_6_Q,
      OUTPUT_REGISTERS(6, 5) => ctrl_register_6_5_Q,
      OUTPUT_REGISTERS(6, 4) => ctrl_register_6_4_Q,
      OUTPUT_REGISTERS(6, 3) => ctrl_register_6_3_Q,
      OUTPUT_REGISTERS(6, 2) => ctrl_register_6_2_Q,
      OUTPUT_REGISTERS(6, 1) => ctrl_register_6_1_Q,
      OUTPUT_REGISTERS(6, 0) => ctrl_register_6_0_Q,
      OUTPUT_REGISTERS(5, 15) => ctrl_register_5_15_Q,
      OUTPUT_REGISTERS(5, 14) => ctrl_register_5_14_Q,
      OUTPUT_REGISTERS(5, 13) => ctrl_register_5_13_Q,
      OUTPUT_REGISTERS(5, 12) => ctrl_register_5_12_Q,
      OUTPUT_REGISTERS(5, 11) => ctrl_register_5_11_Q,
      OUTPUT_REGISTERS(5, 10) => ctrl_register_5_10_Q,
      OUTPUT_REGISTERS(5, 9) => ctrl_register_5_9_Q,
      OUTPUT_REGISTERS(5, 8) => ctrl_register_5_8_Q,
      OUTPUT_REGISTERS(5, 7) => ctrl_register_5_7_Q,
      OUTPUT_REGISTERS(5, 6) => ctrl_register_5_6_Q,
      OUTPUT_REGISTERS(5, 5) => ctrl_register_5_5_Q,
      OUTPUT_REGISTERS(5, 4) => ctrl_register_5_4_Q,
      OUTPUT_REGISTERS(5, 3) => ctrl_register_5_3_Q,
      OUTPUT_REGISTERS(5, 2) => ctrl_register_5_2_Q,
      OUTPUT_REGISTERS(5, 1) => ctrl_register_5_1_Q,
      OUTPUT_REGISTERS(5, 0) => sw_trig,
      OUTPUT_REGISTERS(4, 15) => ctrl_register_4_15_Q,
      OUTPUT_REGISTERS(4, 14) => ctrl_register_4_14_Q,
      OUTPUT_REGISTERS(4, 13) => ctrl_register_4_13_Q,
      OUTPUT_REGISTERS(4, 12) => ctrl_register_4_12_Q,
      OUTPUT_REGISTERS(4, 11) => ctrl_register_4_11_Q,
      OUTPUT_REGISTERS(4, 10) => ctrl_register_4_10_Q,
      OUTPUT_REGISTERS(4, 9) => ctrl_register_4_9_Q,
      OUTPUT_REGISTERS(4, 8) => ctrl_register_4_8_Q,
      OUTPUT_REGISTERS(4, 7) => ctrl_register_4_7_Q,
      OUTPUT_REGISTERS(4, 6) => ctrl_register_4_6_Q,
      OUTPUT_REGISTERS(4, 5) => ctrl_register_4_5_Q,
      OUTPUT_REGISTERS(4, 4) => ctrl_register_4_4_Q,
      OUTPUT_REGISTERS(4, 3) => ctrl_register_4_3_Q,
      OUTPUT_REGISTERS(4, 2) => ctrl_register_4_2_Q,
      OUTPUT_REGISTERS(4, 1) => ctrl_register_4_1_Q,
      OUTPUT_REGISTERS(4, 0) => ctrl_register_4_0_Q,
      OUTPUT_REGISTERS(3, 15) => ctrl_register_3_15_Q,
      OUTPUT_REGISTERS(3, 14) => ctrl_register_3_14_Q,
      OUTPUT_REGISTERS(3, 13) => ctrl_register_3_13_Q,
      OUTPUT_REGISTERS(3, 12) => ctrl_register_3_12_Q,
      OUTPUT_REGISTERS(3, 11) => ctrl_register_3_11_Q,
      OUTPUT_REGISTERS(3, 10) => ctrl_register_3_10_Q,
      OUTPUT_REGISTERS(3, 9) => ctrl_register_3_9_Q,
      OUTPUT_REGISTERS(3, 8) => ctrl_register_3_8_Q,
      OUTPUT_REGISTERS(3, 7) => ctrl_register_3_7_Q,
      OUTPUT_REGISTERS(3, 6) => ctrl_register_3_6_Q,
      OUTPUT_REGISTERS(3, 5) => ctrl_register_3_5_Q,
      OUTPUT_REGISTERS(3, 4) => ctrl_register_3_4_Q,
      OUTPUT_REGISTERS(3, 3) => ctrl_register_3_3_Q,
      OUTPUT_REGISTERS(3, 2) => ctrl_register_3_2_Q,
      OUTPUT_REGISTERS(3, 1) => ctrl_register_3_1_Q,
      OUTPUT_REGISTERS(3, 0) => ctrl_register_3_0_Q,
      OUTPUT_REGISTERS(2, 15) => ctrl_register_2_15_Q,
      OUTPUT_REGISTERS(2, 14) => ctrl_register_2_14_Q,
      OUTPUT_REGISTERS(2, 13) => ctrl_register_2_13_Q,
      OUTPUT_REGISTERS(2, 12) => ctrl_register_2_12_Q,
      OUTPUT_REGISTERS(2, 11) => ctrl_register_2_11_Q,
      OUTPUT_REGISTERS(2, 10) => ctrl_register_2_10_Q,
      OUTPUT_REGISTERS(2, 9) => ctrl_register_2_9_Q,
      OUTPUT_REGISTERS(2, 8) => ctrl_register_2_8_Q,
      OUTPUT_REGISTERS(2, 7) => ctrl_register_2_7_Q,
      OUTPUT_REGISTERS(2, 6) => ctrl_register_2_6_Q,
      OUTPUT_REGISTERS(2, 5) => ctrl_register_2_5_Q,
      OUTPUT_REGISTERS(2, 4) => ctrl_register_2_4_Q,
      OUTPUT_REGISTERS(2, 3) => ctrl_register_2_3_Q,
      OUTPUT_REGISTERS(2, 2) => ctrl_register_2_2_Q,
      OUTPUT_REGISTERS(2, 1) => ctrl_register_2_1_Q,
      OUTPUT_REGISTERS(2, 0) => ctrl_register_2_0_Q,
      OUTPUT_REGISTERS(1, 15) => ctrl_register_1_15_Q,
      OUTPUT_REGISTERS(1, 14) => ctrl_register_1_14_Q,
      OUTPUT_REGISTERS(1, 13) => ctrl_register_1_13_Q,
      OUTPUT_REGISTERS(1, 12) => ctrl_register_1_12_Q,
      OUTPUT_REGISTERS(1, 11) => ctrl_register_1_11_Q,
      OUTPUT_REGISTERS(1, 10) => ctrl_register_1_10_Q,
      OUTPUT_REGISTERS(1, 9) => ctrl_register_1_9_Q,
      OUTPUT_REGISTERS(1, 8) => ctrl_register_1_8_Q,
      OUTPUT_REGISTERS(1, 7) => ctrl_register_1_7_Q,
      OUTPUT_REGISTERS(1, 6) => ctrl_register_1_6_Q,
      OUTPUT_REGISTERS(1, 5) => ctrl_register_1_5_Q,
      OUTPUT_REGISTERS(1, 4) => ctrl_register_1_4_Q,
      OUTPUT_REGISTERS(1, 3) => ctrl_register_1_3_Q,
      OUTPUT_REGISTERS(1, 2) => ctrl_register_1_2_Q,
      OUTPUT_REGISTERS(1, 1) => ctrl_register_1_1_Q,
      OUTPUT_REGISTERS(1, 0) => ctrl_register_1_0_Q,
      OUTPUT_REGISTERS(0, 15) => ctrl_register_0_15_Q,
      OUTPUT_REGISTERS(0, 14) => ctrl_register_0_14_Q,
      OUTPUT_REGISTERS(0, 13) => ctrl_register_0_13_Q,
      OUTPUT_REGISTERS(0, 12) => ctrl_register_0_12_Q,
      OUTPUT_REGISTERS(0, 11) => ctrl_register_0_11_Q,
      OUTPUT_REGISTERS(0, 10) => ctrl_register_0_10_Q,
      OUTPUT_REGISTERS(0, 9) => ctrl_register_0_9_Q,
      OUTPUT_REGISTERS(0, 8) => ctrl_register_0_8_Q,
      OUTPUT_REGISTERS(0, 7) => ctrl_register_0_7_Q,
      OUTPUT_REGISTERS(0, 6) => ctrl_register_0_6_Q,
      OUTPUT_REGISTERS(0, 5) => ctrl_register_0_5_Q,
      OUTPUT_REGISTERS(0, 4) => CALIB_EN_OBUF_3374,
      OUTPUT_REGISTERS(0, 3) => ctrl_register_0_3_Q,
      OUTPUT_REGISTERS(0, 2) => ctrl_register_0_2_Q,
      OUTPUT_REGISTERS(0, 1) => ctrl_register_0_1_Q,
      OUTPUT_REGISTERS(0, 0) => ctrl_register_0_0_Q
    );
  CLOCK_FANOUT : BMD_DC_CLK_GEN
    port map (
      CLK_IN1_P => MAS_CLK_N,
      CLK_IN1_N => MAS_CLK_P,
      CLK_OUT1 => sys_clk,
      CLK_OUT2 => asic_clk,
      CLK_OUT3 => aux_clk
    );
  TARGETX_control : TARGETX_DAC_CONTROL
    port map (
      CLK => asic_clk,
      UPDATE => tx_dac_update,
      OOPS_RESET => ctrl_register_0_0_Q,
      busy => tx_dac_busy,
      SIN => SIN_OBUF_3430,
      SCLK => SCLK_OBUF_3431,
      PCLK => PCLK_OBUF_3432,
      LOAD_PERIOD(15) => ctrl_register_3_15_Q,
      LOAD_PERIOD(14) => ctrl_register_3_14_Q,
      LOAD_PERIOD(13) => ctrl_register_3_13_Q,
      LOAD_PERIOD(12) => ctrl_register_3_12_Q,
      LOAD_PERIOD(11) => ctrl_register_3_11_Q,
      LOAD_PERIOD(10) => ctrl_register_3_10_Q,
      LOAD_PERIOD(9) => ctrl_register_3_9_Q,
      LOAD_PERIOD(8) => ctrl_register_3_8_Q,
      LOAD_PERIOD(7) => ctrl_register_3_7_Q,
      LOAD_PERIOD(6) => ctrl_register_3_6_Q,
      LOAD_PERIOD(5) => ctrl_register_3_5_Q,
      LOAD_PERIOD(4) => ctrl_register_3_4_Q,
      LOAD_PERIOD(3) => ctrl_register_3_3_Q,
      LOAD_PERIOD(2) => ctrl_register_3_2_Q,
      LOAD_PERIOD(1) => ctrl_register_3_1_Q,
      LOAD_PERIOD(0) => ctrl_register_3_0_Q,
      LATCH_PERIOD(15) => ctrl_register_4_15_Q,
      LATCH_PERIOD(14) => ctrl_register_4_14_Q,
      LATCH_PERIOD(13) => ctrl_register_4_13_Q,
      LATCH_PERIOD(12) => ctrl_register_4_12_Q,
      LATCH_PERIOD(11) => ctrl_register_4_11_Q,
      LATCH_PERIOD(10) => ctrl_register_4_10_Q,
      LATCH_PERIOD(9) => ctrl_register_4_9_Q,
      LATCH_PERIOD(8) => ctrl_register_4_8_Q,
      LATCH_PERIOD(7) => ctrl_register_4_7_Q,
      LATCH_PERIOD(6) => ctrl_register_4_6_Q,
      LATCH_PERIOD(5) => ctrl_register_4_5_Q,
      LATCH_PERIOD(4) => ctrl_register_4_4_Q,
      LATCH_PERIOD(3) => ctrl_register_4_3_Q,
      LATCH_PERIOD(2) => ctrl_register_4_2_Q,
      LATCH_PERIOD(1) => ctrl_register_4_1_Q,
      LATCH_PERIOD(0) => ctrl_register_4_0_Q,
      REG_DATA(18) => ctrl_register_1_6_Q,
      REG_DATA(17) => ctrl_register_1_5_Q,
      REG_DATA(16) => ctrl_register_1_4_Q,
      REG_DATA(15) => ctrl_register_1_3_Q,
      REG_DATA(14) => ctrl_register_1_2_Q,
      REG_DATA(13) => ctrl_register_1_1_Q,
      REG_DATA(12) => ctrl_register_1_0_Q,
      REG_DATA(11) => ctrl_register_2_11_Q,
      REG_DATA(10) => ctrl_register_2_10_Q,
      REG_DATA(9) => ctrl_register_2_9_Q,
      REG_DATA(8) => ctrl_register_2_8_Q,
      REG_DATA(7) => ctrl_register_2_7_Q,
      REG_DATA(6) => ctrl_register_2_6_Q,
      REG_DATA(5) => ctrl_register_2_5_Q,
      REG_DATA(4) => ctrl_register_2_4_Q,
      REG_DATA(3) => ctrl_register_2_3_Q,
      REG_DATA(2) => ctrl_register_2_2_Q,
      REG_DATA(1) => ctrl_register_2_1_Q,
      REG_DATA(0) => ctrl_register_2_0_Q
    );
  MPPC_DAC : mppc_dac_calb
    port map (
      CLOCK => asic_clk,
      DAC_CLOCK => aux_clk,
      DAC_UPDATE => mppc_dac_update,
      OOPS_RESET => ctrl_register_0_0_Q,
      DAC_BUSY => mppc_dac_busy,
      DAC_SCLK => DAC_SCLK_OBUF_3434,
      DAC_DIN => DAC_SDI_OBUF_3435,
      LDAC => DAC_LDAC_OBUF_3436,
      SYNC => DAC_SYNC_OBUF_3437,
      DAC_ADDR(4) => ctrl_register_16_4_Q,
      DAC_ADDR(3) => ctrl_register_16_3_Q,
      DAC_ADDR(2) => ctrl_register_16_2_Q,
      DAC_ADDR(1) => ctrl_register_16_1_Q,
      DAC_ADDR(0) => ctrl_register_16_0_Q,
      DAC_VALUE(11) => ctrl_register_17_11_Q,
      DAC_VALUE(10) => ctrl_register_17_10_Q,
      DAC_VALUE(9) => ctrl_register_17_9_Q,
      DAC_VALUE(8) => ctrl_register_17_8_Q,
      DAC_VALUE(7) => ctrl_register_17_7_Q,
      DAC_VALUE(6) => ctrl_register_17_6_Q,
      DAC_VALUE(5) => ctrl_register_17_5_Q,
      DAC_VALUE(4) => ctrl_register_17_4_Q,
      DAC_VALUE(3) => ctrl_register_17_3_Q,
      DAC_VALUE(2) => ctrl_register_17_2_Q,
      DAC_VALUE(1) => ctrl_register_17_1_Q,
      DAC_VALUE(0) => ctrl_register_17_0_Q
    );
  GND_7_o_rb_reg_7_equal_14_o_7_11 : LUT5
    generic map(
      INIT => X"00000004"
    )
    port map (
      I0 => rb_reg(1),
      I1 => rb_reg(6),
      I2 => rb_reg(4),
      I3 => rb_reg(3),
      I4 => rb_reg(7),
      O => GND_7_o_rb_reg_7_equal_14_o_7_1_3944
    );
  GND_7_o_rb_reg_7_equal_14_o_7_1 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => rb_reg(0),
      I1 => rb_reg(2),
      I2 => rb_reg(5),
      I3 => GND_7_o_rb_reg_7_equal_14_o_7_1_3944,
      O => GND_7_o_rb_reg_7_equal_14_o
    );
  GND_7_o_rb_reg_7_equal_15_o_7_1 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => rb_reg(0),
      I1 => rb_reg(2),
      I2 => rb_reg(5),
      I3 => GND_7_o_rb_reg_7_equal_14_o_7_1_3944,
      O => GND_7_o_rb_reg_7_equal_15_o
    );
  Mmux_rb_value161 : LUT5
    generic map(
      INIT => X"EFEA4540"
    )
    port map (
      I0 => GND_7_o_rb_reg_7_equal_14_o,
      I1 => trig_count(25),
      I2 => GND_7_o_rb_reg_7_equal_15_o,
      I3 => rb_reg_4_X_7_o_wide_mux_15_OUT_9_Q,
      I4 => trig_count(9),
      O => rb_value(9)
    );
  Mmux_rb_value151 : LUT5
    generic map(
      INIT => X"EFEA4540"
    )
    port map (
      I0 => GND_7_o_rb_reg_7_equal_14_o,
      I1 => trig_count(24),
      I2 => GND_7_o_rb_reg_7_equal_15_o,
      I3 => rb_reg_4_X_7_o_wide_mux_15_OUT_8_Q,
      I4 => trig_count(8),
      O => rb_value(8)
    );
  Mmux_rb_value141 : LUT5
    generic map(
      INIT => X"EFEA4540"
    )
    port map (
      I0 => GND_7_o_rb_reg_7_equal_14_o,
      I1 => trig_count(23),
      I2 => GND_7_o_rb_reg_7_equal_15_o,
      I3 => rb_reg_4_X_7_o_wide_mux_15_OUT_7_Q,
      I4 => trig_count(7),
      O => rb_value(7)
    );
  Mmux_rb_value131 : LUT5
    generic map(
      INIT => X"EFEA4540"
    )
    port map (
      I0 => GND_7_o_rb_reg_7_equal_14_o,
      I1 => trig_count(22),
      I2 => GND_7_o_rb_reg_7_equal_15_o,
      I3 => rb_reg_4_X_7_o_wide_mux_15_OUT_6_Q,
      I4 => trig_count(6),
      O => rb_value(6)
    );
  Mmux_rb_value121 : LUT5
    generic map(
      INIT => X"EFEA4540"
    )
    port map (
      I0 => GND_7_o_rb_reg_7_equal_14_o,
      I1 => trig_count(21),
      I2 => GND_7_o_rb_reg_7_equal_15_o,
      I3 => rb_reg_4_X_7_o_wide_mux_15_OUT_5_Q,
      I4 => trig_count(5),
      O => rb_value(5)
    );
  Mmux_rb_value111 : LUT5
    generic map(
      INIT => X"EFEA4540"
    )
    port map (
      I0 => GND_7_o_rb_reg_7_equal_14_o,
      I1 => trig_count(20),
      I2 => GND_7_o_rb_reg_7_equal_15_o,
      I3 => rb_reg_4_X_7_o_wide_mux_15_OUT_4_Q,
      I4 => trig_count(4),
      O => rb_value(4)
    );
  Mmux_rb_value101 : LUT5
    generic map(
      INIT => X"EFEA4540"
    )
    port map (
      I0 => GND_7_o_rb_reg_7_equal_14_o,
      I1 => trig_count(19),
      I2 => GND_7_o_rb_reg_7_equal_15_o,
      I3 => rb_reg_4_X_7_o_wide_mux_15_OUT_3_Q,
      I4 => trig_count(3),
      O => rb_value(3)
    );
  Mmux_rb_value91 : LUT5
    generic map(
      INIT => X"EFEA4540"
    )
    port map (
      I0 => GND_7_o_rb_reg_7_equal_14_o,
      I1 => trig_count(18),
      I2 => GND_7_o_rb_reg_7_equal_15_o,
      I3 => rb_reg_4_X_7_o_wide_mux_15_OUT_2_Q,
      I4 => trig_count(2),
      O => rb_value(2)
    );
  Mmux_rb_value81 : LUT5
    generic map(
      INIT => X"EFEA4540"
    )
    port map (
      I0 => GND_7_o_rb_reg_7_equal_14_o,
      I1 => trig_count(17),
      I2 => GND_7_o_rb_reg_7_equal_15_o,
      I3 => rb_reg_4_X_7_o_wide_mux_15_OUT_1_Q,
      I4 => trig_count(1),
      O => rb_value(1)
    );
  Mmux_rb_value71 : LUT5
    generic map(
      INIT => X"EFEA4540"
    )
    port map (
      I0 => GND_7_o_rb_reg_7_equal_14_o,
      I1 => trig_count(31),
      I2 => GND_7_o_rb_reg_7_equal_15_o,
      I3 => rb_reg_4_X_7_o_wide_mux_15_OUT_15_Q,
      I4 => trig_count(15),
      O => rb_value(15)
    );
  Mmux_rb_value61 : LUT5
    generic map(
      INIT => X"EFEA4540"
    )
    port map (
      I0 => GND_7_o_rb_reg_7_equal_14_o,
      I1 => trig_count(30),
      I2 => GND_7_o_rb_reg_7_equal_15_o,
      I3 => rb_reg_4_X_7_o_wide_mux_15_OUT_14_Q,
      I4 => trig_count(14),
      O => rb_value(14)
    );
  Mmux_rb_value51 : LUT5
    generic map(
      INIT => X"EFEA4540"
    )
    port map (
      I0 => GND_7_o_rb_reg_7_equal_14_o,
      I1 => trig_count(29),
      I2 => GND_7_o_rb_reg_7_equal_15_o,
      I3 => rb_reg_4_X_7_o_wide_mux_15_OUT_13_Q,
      I4 => trig_count(13),
      O => rb_value(13)
    );
  Mmux_rb_value41 : LUT5
    generic map(
      INIT => X"EFEA4540"
    )
    port map (
      I0 => GND_7_o_rb_reg_7_equal_14_o,
      I1 => trig_count(28),
      I2 => GND_7_o_rb_reg_7_equal_15_o,
      I3 => rb_reg_4_X_7_o_wide_mux_15_OUT_12_Q,
      I4 => trig_count(12),
      O => rb_value(12)
    );
  Mmux_rb_value31 : LUT5
    generic map(
      INIT => X"EFEA4540"
    )
    port map (
      I0 => GND_7_o_rb_reg_7_equal_14_o,
      I1 => trig_count(27),
      I2 => GND_7_o_rb_reg_7_equal_15_o,
      I3 => rb_reg_4_X_7_o_wide_mux_15_OUT_11_Q,
      I4 => trig_count(11),
      O => rb_value(11)
    );
  Mmux_rb_value21 : LUT5
    generic map(
      INIT => X"EFEA4540"
    )
    port map (
      I0 => GND_7_o_rb_reg_7_equal_14_o,
      I1 => trig_count(26),
      I2 => GND_7_o_rb_reg_7_equal_15_o,
      I3 => rb_reg_4_X_7_o_wide_mux_15_OUT_10_Q,
      I4 => trig_count(10),
      O => rb_value(10)
    );
  Mmux_rb_value11 : LUT5
    generic map(
      INIT => X"EFEA4540"
    )
    port map (
      I0 => GND_7_o_rb_reg_7_equal_14_o,
      I1 => trig_count(16),
      I2 => GND_7_o_rb_reg_7_equal_15_o,
      I3 => rb_reg_4_X_7_o_wide_mux_15_OUT_0_Q,
      I4 => AUX1_N_OBUF_3056,
      O => rb_value(0)
    );
  tx_trigbits_l_5_send_rdy_AND_3_o_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => tx_trigbits_l(5),
      I1 => tx_trigbits_l(4),
      O => N5
    );
  tx_trigbits_l_5_send_rdy_AND_3_o : LUT6
    generic map(
      INIT => X"00000000FFFFFFFE"
    )
    port map (
      I0 => tx_trigbits_l(0),
      I1 => tx_trigbits_l(1),
      I2 => tx_trigbits_l(2),
      I3 => tx_trigbits_l(3),
      I4 => N5,
      I5 => Mcompar_send_rdy_cy(6),
      O => wave_fifo_wr_en
    );
  TX_TRIG_4_IBUF : IBUF
    port map (
      I => TX_TRIG(4),
      O => TX_TRIG_4_IBUF_3007
    );
  TX_TRIG_3_IBUF : IBUF
    port map (
      I => TX_TRIG(3),
      O => TX_TRIG_3_IBUF_3008
    );
  TX_TRIG_2_IBUF : IBUF
    port map (
      I => TX_TRIG(2),
      O => TX_TRIG_2_IBUF_3009
    );
  TX_TRIG_1_IBUF : IBUF
    port map (
      I => TX_TRIG(1),
      O => TX_TRIG_1_IBUF_3010
    );
  TX_TRIG_0_IBUF : IBUF
    port map (
      I => TX_TRIG(0),
      O => TX_TRIG_0_IBUF_3011
    );
  DC_ADDRESS_3_IBUF : IBUF
    port map (
      I => DC_ADDRESS(3),
      O => DC_ADDRESS_3_IBUF_3012
    );
  DC_ADDRESS_2_IBUF : IBUF
    port map (
      I => DC_ADDRESS(2),
      O => DC_ADDRESS_2_IBUF_3013
    );
  DC_ADDRESS_1_IBUF : IBUF
    port map (
      I => DC_ADDRESS(1),
      O => DC_ADDRESS_1_IBUF_3014
    );
  DC_ADDRESS_0_IBUF : IBUF
    port map (
      I => DC_ADDRESS(0),
      O => DC_ADDRESS_0_IBUF_3015
    );
  DC_DC_RX_IBUF : IBUF
    port map (
      I => DC_DC_RX,
      O => DC_DC_RX_IBUF_3018
    );
  DC_DC_DATA_IN_IBUF : IBUF
    port map (
      I => DC_DC_DATA_IN,
      O => DC_DC_DATA_IN_IBUF_3019
    );
  TX_TRIG16_IBUF : IBUF
    port map (
      I => TX_TRIG16,
      O => TX_TRIG16_IBUF_3020
    );
  AUX1_N_OBUF : OBUF
    port map (
      I => AUX1_N_OBUF_3056,
      O => AUX1_N
    );
  SAMPLESEL_S_4_OBUF : OBUF
    port map (
      I => SAMPLESEL_ANY_OBUF_3058,
      O => SAMPLESEL_S(4)
    );
  SAMPLESEL_S_3_OBUF : OBUF
    port map (
      I => SAMPLESEL_ANY_OBUF_3058,
      O => SAMPLESEL_S(3)
    );
  SAMPLESEL_S_2_OBUF : OBUF
    port map (
      I => SAMPLESEL_ANY_OBUF_3058,
      O => SAMPLESEL_S(2)
    );
  SAMPLESEL_S_1_OBUF : OBUF
    port map (
      I => SAMPLESEL_ANY_OBUF_3058,
      O => SAMPLESEL_S(1)
    );
  SAMPLESEL_S_0_OBUF : OBUF
    port map (
      I => SAMPLESEL_ANY_OBUF_3058,
      O => SAMPLESEL_S(0)
    );
  RD_COLSEL_S_5_OBUF : OBUF
    port map (
      I => SAMPLESEL_ANY_OBUF_3058,
      O => RD_COLSEL_S(5)
    );
  RD_COLSEL_S_4_OBUF : OBUF
    port map (
      I => SAMPLESEL_ANY_OBUF_3058,
      O => RD_COLSEL_S(4)
    );
  RD_COLSEL_S_3_OBUF : OBUF
    port map (
      I => SAMPLESEL_ANY_OBUF_3058,
      O => RD_COLSEL_S(3)
    );
  RD_COLSEL_S_2_OBUF : OBUF
    port map (
      I => SAMPLESEL_ANY_OBUF_3058,
      O => RD_COLSEL_S(2)
    );
  RD_COLSEL_S_1_OBUF : OBUF
    port map (
      I => SAMPLESEL_ANY_OBUF_3058,
      O => RD_COLSEL_S(1)
    );
  RD_COLSEL_S_0_OBUF : OBUF
    port map (
      I => SAMPLESEL_ANY_OBUF_3058,
      O => RD_COLSEL_S(0)
    );
  RD_ROWSEL_S_2_OBUF : OBUF
    port map (
      I => SAMPLESEL_ANY_OBUF_3058,
      O => RD_ROWSEL_S(2)
    );
  RD_ROWSEL_S_1_OBUF : OBUF
    port map (
      I => SAMPLESEL_ANY_OBUF_3058,
      O => RD_ROWSEL_S(1)
    );
  RD_ROWSEL_S_0_OBUF : OBUF
    port map (
      I => SAMPLESEL_ANY_OBUF_3058,
      O => RD_ROWSEL_S(0)
    );
  DC_DC_TX_OBUF : OBUF
    port map (
      I => DC_DC_TX_OBUF_3392,
      O => DC_DC_TX
    );
  DC_DC_DATA_OUT_OBUF : OBUF
    port map (
      I => DC_DC_DATA_OUT_OBUF_3393,
      O => DC_DC_DATA_OUT
    );
  DC_DC_CLK_P_OBUF : OBUF
    port map (
      I => DC_DC_CLK_P_OBUF_3427,
      O => DC_DC_CLK_P
    );
  DC_DC_CLK_N_OBUF : OBUF
    port map (
      I => DC_DC_CLK_N_OBUF_3428,
      O => DC_DC_CLK_N
    );
  SIN_OBUF : OBUF
    port map (
      I => SIN_OBUF_3430,
      O => SIN
    );
  PCLK_OBUF : OBUF
    port map (
      I => PCLK_OBUF_3432,
      O => PCLK
    );
  SCLK_OBUF : OBUF
    port map (
      I => SCLK_OBUF_3431,
      O => SCLK
    );
  SAMPLESEL_ANY_OBUF : OBUF
    port map (
      I => SAMPLESEL_ANY_OBUF_3058,
      O => SAMPLESEL_ANY
    );
  SR_CLEAR_OBUF : OBUF
    port map (
      I => SAMPLESEL_ANY_OBUF_3058,
      O => SR_CLEAR
    );
  SR_CLK_OBUF : OBUF
    port map (
      I => SAMPLESEL_ANY_OBUF_3058,
      O => SR_CLK
    );
  SR_SEL_OBUF : OBUF
    port map (
      I => SAMPLESEL_ANY_OBUF_3058,
      O => SR_SEL
    );
  REGCLR_OBUF : OBUF
    port map (
      I => SAMPLESEL_ANY_OBUF_3058,
      O => REGCLR
    );
  RD_ENA_OBUF : OBUF
    port map (
      I => timer_pat(8),
      O => RD_ENA
    );
  WR_ADDRCLR_OBUF : OBUF
    port map (
      I => SAMPLESEL_ANY_OBUF_3058,
      O => WR_ADDRCLR
    );
  RAMP_OBUF : OBUF
    port map (
      I => SAMPLESEL_ANY_OBUF_3058,
      O => RAMP
    );
  CLR_OBUF : OBUF
    port map (
      I => SAMPLESEL_ANY_OBUF_3058,
      O => CLR
    );
  WR1_ENA_OBUF : OBUF
    port map (
      I => timer_pat(8),
      O => WR1_ENA
    );
  WR2_ENA_OBUF : OBUF
    port map (
      I => timer_pat(8),
      O => WR2_ENA
    );
  DAC_SCLK_OBUF : OBUF
    port map (
      I => DAC_SCLK_OBUF_3434,
      O => DAC_SCLK
    );
  DAC_SDI_OBUF : OBUF
    port map (
      I => DAC_SDI_OBUF_3435,
      O => DAC_SDI
    );
  DAC_SYNC_OBUF : OBUF
    port map (
      I => DAC_SYNC_OBUF_3437,
      O => DAC_SYNC
    );
  DAC_LDAC_OBUF : OBUF
    port map (
      I => DAC_LDAC_OBUF_3436,
      O => DAC_LDAC
    );
  CALIB_EN_OBUF : OBUF
    port map (
      I => CALIB_EN_OBUF_3374,
      O => CALIB_EN
    );
  TX_HW_TRIG_OBUF : OBUF
    port map (
      I => TX_HW_TRIG_OBUF_3057,
      O => TX_HW_TRIG
    );
  ORed_Trig_N_OBUF : OBUF
    port map (
      I => SAMPLESEL_ANY_OBUF_3058,
      O => ORed_Trig_N
    );
  ORed_Trig_P_OBUF : OBUF
    port map (
      I => ORed_Trig_P_OBUF_3439,
      O => ORed_Trig_P
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => timer(1),
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_1_rt_3999
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => timer(2),
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_2_rt_4000
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => timer(3),
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_3_rt_4001
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => timer(4),
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_4_rt_4002
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => timer(5),
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_5_rt_4003
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => timer(6),
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_6_rt_4004
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => timer(7),
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_7_rt_4005
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => timer(8),
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_8_rt_4006
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => timer(9),
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_9_rt_4007
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => timer(10),
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_10_rt_4008
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => timer(11),
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_11_rt_4009
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => timer(12),
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_12_rt_4010
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => timer(13),
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_13_rt_4011
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => timer(14),
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_14_rt_4012
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => timer(15),
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_15_rt_4013
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => timer(16),
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_16_rt_4014
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => timer(17),
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_17_rt_4015
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => timer(18),
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_18_rt_4016
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => timer(19),
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_19_rt_4017
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => timer(20),
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_20_rt_4018
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => timer(21),
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_21_rt_4019
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => timer(22),
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_22_rt_4020
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => timer(23),
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_23_rt_4021
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => timer(24),
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_24_rt_4022
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => timer(25),
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_25_rt_4023
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => timer(26),
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_26_rt_4024
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => timer(27),
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_27_rt_4025
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => timer(28),
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_28_rt_4026
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => timer(29),
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_29_rt_4027
    );
  Madd_timer_31_GND_7_o_add_3_OUT_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => timer(30),
      O => Madd_timer_31_GND_7_o_add_3_OUT_cy_30_rt_4028
    );
  Madd_timer_31_GND_7_o_add_3_OUT_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => timer(31),
      O => Madd_timer_31_GND_7_o_add_3_OUT_xor_31_rt_4029
    );
  send_pat_0_BUFG : BUFG
    port map (
      O => send_pat_0_BUFG_3658,
      I => send_pat(0)
    );
  wave_fifo_wr_en_BUFG : BUFG
    port map (
      O => wave_fifo_wr_en_BUFG_3659,
      I => wave_fifo_wr_en
    );
  Madd_timer_31_GND_7_o_add_3_OUT_lut_0_INV_0 : INV
    port map (
      I => timer(0),
      O => Madd_timer_31_GND_7_o_add_3_OUT_lut_0_Q
    );
  dc_mas_tx_INV_2_o1_INV_0 : INV
    port map (
      I => dc_mas_tx,
      O => dc_mas_tx_INV_2_o
    );
  dc_mas_data_out_INV_4_o1_INV_0 : INV
    port map (
      I => dc_mas_data_out,
      O => dc_mas_data_out_INV_4_o
    );
  DC_DC_DATA_CLK_INV_52_o1_INV_0 : INV
    port map (
      I => DC_DC_DATA_CLK,
      O => DC_DC_DATA_CLK_INV_52_o
    );
  sys_clk_INV_50_o1_INV_0 : INV
    port map (
      I => sys_clk,
      O => sys_clk_INV_50_o
    );
  asic_clk_INV_48_o1_INV_0 : INV
    port map (
      I => asic_clk,
      O => asic_clk_INV_48_o
    );

end Structure;

-- synthesis translate_on
