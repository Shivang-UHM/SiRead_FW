--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:13:00 07/03/2018
-- Design Name:   
-- Module Name:   C:/Users/isar/Dropbox/Nalu/Startup/Projects/EIC-Beamtest-FW/mRICH_hodo_DC_V1/mRICH_hodo_DC_V1/source/tb_hodo_top1.vhd
-- Project Name:  hodo_dc_v1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: BMD_DC_TOP_V2
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_hodo_top1 IS
END tb_hodo_top1;
 
ARCHITECTURE behavior OF tb_hodo_top1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT BMD_DC_TOP_V2
    PORT(
         MAS_CLK_P : IN  std_logic;
         MAS_CLK_N : IN  std_logic;
         SC_DC_TRIG : INOUT  std_logic;
         DC_DC_RX : IN  std_logic;
         DC_DC_DATA_IN : IN  std_logic;
         DC_DC_TX : OUT  std_logic;
         DC_DC_DATA_OUT : OUT  std_logic;
         DC_DC_TRIG : INOUT  std_logic;
         DC_DC_CLK_P : OUT  std_logic;
         DC_DC_CLK_N : OUT  std_logic;
         TX_DATA : IN  std_logic_vector(15 downto 0);
         TX_TRIG : IN  std_logic_vector(4 downto 0);
         TX_TRIG16 : IN  std_logic;
         SHOUT : IN  std_logic;
         SIN : OUT  std_logic;
         PCLK : OUT  std_logic;
         SCLK : OUT  std_logic;
         SAMPLESEL_ANY : OUT  std_logic;
         SAMPLESEL_S : OUT  std_logic_vector(4 downto 0);
         SR_CLEAR : OUT  std_logic;
         SR_CLK : OUT  std_logic;
         SR_SEL : OUT  std_logic;
         RD_COLSEL_S : OUT  std_logic_vector(5 downto 0);
         REGCLR : OUT  std_logic;
         RD_ENA : OUT  std_logic;
         RD_ROWSEL_S : OUT  std_logic_vector(2 downto 0);
         WR_ADDRCLR : OUT  std_logic;
         RAMP : OUT  std_logic;
         CLR : OUT  std_logic;
         DONE : IN  std_logic;
         SSTIN_P : OUT  std_logic;
         SSTIN_N : OUT  std_logic;
         WL_CLK_P : OUT  std_logic;
         WL_CLK_N : OUT  std_logic;
         WR1_ENA : OUT  std_logic;
         WR2_ENA : OUT  std_logic;
         SRAM_SO : IN  std_logic;
         SRAM_SCL : OUT  std_logic;
         SRAM_SI : OUT  std_logic;
         SRAM_CS : OUT  std_logic;
         SRAM_HOLD : OUT  std_logic;
         DAC_SCLK : OUT  std_logic;
         DAC_SDI : OUT  std_logic;
         DAC_SYNC : OUT  std_logic;
         DAC_LDAC : OUT  std_logic;
         TS_EVENT : IN  std_logic;
         TS_SCL : OUT  std_logic;
         TS_SDA : OUT  std_logic;
         DC_ADDRESS : IN  std_logic_vector(3 downto 0);
         CALIB_EN : OUT  std_logic;
         TX_HW_TRIG : OUT  std_logic;
         SCROD_TRIG : IN  std_logic;
         MON_Timing : IN  std_logic;
         DATA_IN_N : IN  std_logic;
         DATA_IN_P : IN  std_logic;
         RX_N : IN  std_logic;
         RX_P : IN  std_logic;
         AUX1_N : INOUT  std_logic;
         AUX1_P : INOUT  std_logic;
         DATA_OUT_N : OUT  std_logic;
         DATA_OUT_P : OUT  std_logic;
         TX_N : OUT  std_logic;
         TX_P : OUT  std_logic;
         ORed_Trig_N : OUT  std_logic;
         ORed_Trig_P : OUT  std_logic;
         MAS_ACK_N : IN  std_logic;
         MAS_ACK_P : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal MAS_CLK_P : std_logic := '0';
   signal MAS_CLK_N : std_logic := '0';
   signal DC_DC_RX : std_logic := '0';
   signal DC_DC_DATA_IN : std_logic := '0';
   signal TX_DATA : std_logic_vector(15 downto 0) := (others => '0');
   signal TX_TRIG : std_logic_vector(4 downto 0) := (others => '0');
   signal TX_TRIG16 : std_logic := '0';
   signal SHOUT : std_logic := '0';
   signal DONE : std_logic := '0';
   signal SRAM_SO : std_logic := '0';
   signal TS_EVENT : std_logic := '0';
   signal DC_ADDRESS : std_logic_vector(3 downto 0) := (others => '0');
   signal SCROD_TRIG : std_logic := '0';
   signal MON_Timing : std_logic := '0';
   signal DATA_IN_N : std_logic := '0';
   signal DATA_IN_P : std_logic := '0';
   signal RX_N : std_logic := '0';
   signal RX_P : std_logic := '0';
   signal MAS_ACK_N : std_logic := '0';
   signal MAS_ACK_P : std_logic := '0';

	--BiDirs
   signal SC_DC_TRIG : std_logic;
   signal DC_DC_TRIG : std_logic;
   signal AUX1_N : std_logic;
   signal AUX1_P : std_logic;

 	--Outputs
   signal DC_DC_TX : std_logic;
   signal DC_DC_DATA_OUT : std_logic;
   signal DC_DC_CLK_P : std_logic;
   signal DC_DC_CLK_N : std_logic;
   signal SIN : std_logic;
   signal PCLK : std_logic;
   signal SCLK : std_logic;
   signal SAMPLESEL_ANY : std_logic;
   signal SAMPLESEL_S : std_logic_vector(4 downto 0);
   signal SR_CLEAR : std_logic;
   signal SR_CLK : std_logic;
   signal SR_SEL : std_logic;
   signal RD_COLSEL_S : std_logic_vector(5 downto 0);
   signal REGCLR : std_logic;
   signal RD_ENA : std_logic;
   signal RD_ROWSEL_S : std_logic_vector(2 downto 0);
   signal WR_ADDRCLR : std_logic;
   signal RAMP : std_logic;
   signal CLR : std_logic;
   signal SSTIN_P : std_logic;
   signal SSTIN_N : std_logic;
   signal WL_CLK_P : std_logic;
   signal WL_CLK_N : std_logic;
   signal WR1_ENA : std_logic;
   signal WR2_ENA : std_logic;
   signal SRAM_SCL : std_logic;
   signal SRAM_SI : std_logic;
   signal SRAM_CS : std_logic;
   signal SRAM_HOLD : std_logic;
   signal DAC_SCLK : std_logic;
   signal DAC_SDI : std_logic;
   signal DAC_SYNC : std_logic;
   signal DAC_LDAC : std_logic;
   signal TS_SCL : std_logic;
   signal TS_SDA : std_logic;
   signal CALIB_EN : std_logic;
   signal TX_HW_TRIG : std_logic;
   signal DATA_OUT_N : std_logic;
   signal DATA_OUT_P : std_logic;
   signal TX_N : std_logic;
   signal TX_P : std_logic;
   signal ORed_Trig_N : std_logic;
   signal ORed_Trig_P : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 40 ns;
   constant SCLK_period : time := 10 ns;
   constant SR_CLK_period : time := 10 ns;
   constant DAC_SCLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BMD_DC_TOP_V2 PORT MAP (
          MAS_CLK_P => MAS_CLK_P,
          MAS_CLK_N => MAS_CLK_N,
          SC_DC_TRIG => SC_DC_TRIG,
          DC_DC_RX => DC_DC_RX,
          DC_DC_DATA_IN => DC_DC_DATA_IN,
          DC_DC_TX => DC_DC_TX,
          DC_DC_DATA_OUT => DC_DC_DATA_OUT,
          DC_DC_TRIG => DC_DC_TRIG,
          DC_DC_CLK_P => DC_DC_CLK_P,
          DC_DC_CLK_N => DC_DC_CLK_N,
          TX_DATA => TX_DATA,
          TX_TRIG => TX_TRIG,
          TX_TRIG16 => TX_TRIG16,
          SHOUT => SHOUT,
          SIN => SIN,
          PCLK => PCLK,
          SCLK => SCLK,
          SAMPLESEL_ANY => SAMPLESEL_ANY,
          SAMPLESEL_S => SAMPLESEL_S,
          SR_CLEAR => SR_CLEAR,
          SR_CLK => SR_CLK,
          SR_SEL => SR_SEL,
          RD_COLSEL_S => RD_COLSEL_S,
          REGCLR => REGCLR,
          RD_ENA => RD_ENA,
          RD_ROWSEL_S => RD_ROWSEL_S,
          WR_ADDRCLR => WR_ADDRCLR,
          RAMP => RAMP,
          CLR => CLR,
          DONE => DONE,
          SSTIN_P => SSTIN_P,
          SSTIN_N => SSTIN_N,
          WL_CLK_P => WL_CLK_P,
          WL_CLK_N => WL_CLK_N,
          WR1_ENA => WR1_ENA,
          WR2_ENA => WR2_ENA,
          SRAM_SO => SRAM_SO,
          SRAM_SCL => SRAM_SCL,
          SRAM_SI => SRAM_SI,
          SRAM_CS => SRAM_CS,
          SRAM_HOLD => SRAM_HOLD,
          DAC_SCLK => DAC_SCLK,
          DAC_SDI => DAC_SDI,
          DAC_SYNC => DAC_SYNC,
          DAC_LDAC => DAC_LDAC,
          TS_EVENT => TS_EVENT,
          TS_SCL => TS_SCL,
          TS_SDA => TS_SDA,
          DC_ADDRESS => DC_ADDRESS,
          CALIB_EN => CALIB_EN,
          TX_HW_TRIG => TX_HW_TRIG,
          SCROD_TRIG => SCROD_TRIG,
          MON_Timing => MON_Timing,
          DATA_IN_N => DATA_IN_N,
          DATA_IN_P => DATA_IN_P,
          RX_N => RX_N,
          RX_P => RX_P,
          AUX1_N => AUX1_N,
          AUX1_P => AUX1_P,
          DATA_OUT_N => DATA_OUT_N,
          DATA_OUT_P => DATA_OUT_P,
          TX_N => TX_N,
          TX_P => TX_P,
          ORed_Trig_N => ORed_Trig_N,
          ORed_Trig_P => ORed_Trig_P,
          MAS_ACK_N => MAS_ACK_N,
          MAS_ACK_P => MAS_ACK_P
        );

   -- Clock process definitions
   PCLK_process :process
   begin
		MAS_CLK_P <= '0';
		MAS_CLK_N <= '1';
		wait for CLK_period/2;
		MAS_CLK_P <= '1';
		MAS_CLK_N <= '0';
		wait for CLK_period/2;
   end process;
 
--   SCLK_process :process
--   begin
--		SCLK <= '0';
--		wait for SCLK_period/2;
--		SCLK <= '1';
--		wait for SCLK_period/2;
--   end process;
-- 
--   SR_CLK_process :process
--   begin
--		SR_CLK <= '0';
--		wait for SR_CLK_period/2;
--		SR_CLK <= '1';
--		wait for SR_CLK_period/2;
--   end process;
-- 
--   DAC_SCLK_process :process
--   begin
--		DAC_SCLK <= '0';
--		wait for DAC_SCLK_period/2;
--		DAC_SCLK <= '1';
--		wait for DAC_SCLK_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
