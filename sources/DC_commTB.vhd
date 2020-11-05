--------------------------------------------------------------------------------
-- Company: University of Hawaii Instrumentation Development Lab
-- Engineer: Nathan Park
--
-- Create Date:   16:54:47 05/20/2019
-- Design Name:   
-- Module Name:   C:/Users/Kevin/Desktop/HMB/EIC-Beamtest-FW/SCROD_A5_RJ45/SCROD_Rev1/DC_commTB.vhd
-- Project Name:  HMB_SCROD
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DC_Comm
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

--Version 1: (inactive)
--This Testbench simulates the following functionalities:
-- 1. SCROD can communicate to one of the DCs (verified)
-- 2. SCROD can broadbast to all DCs (verified)
-- 3. SCROD can detect a global event (verified)
-- Testbench consists of DC_Comm module and 4 QBLink training partners that act 
-- as modules on the DC
-- DOES NOT TEST:
--  1. single to differential buffering on the SCROD/DC
--  2. SCRODQB_Top wrapper or any wrappers on the DC. 

--Version 2: (active)
--  This testbench more fully simulates the communication between the SCROD 
--  and mRICH DC. Includes buffers and wrappers.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use work.all;
use work.Eth1000BaseXPkg.all;
use work.GigabitEthPkg.all;
use work.BMD_definitions.all; --need to include BMD_definitions in addition to work.all
use work.UtilityPkg.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY DC_commTB IS
END DC_commTB;
 
ARCHITECTURE behavior OF DC_commTB IS 

   --Inputs
   signal DATA_CLK : std_logic := '0';
   signal RX : std_logic_vector(3 downto 0);
   signal DC_CMD : std_logic_vector(31 downto 0);
   signal CMD_VALID : std_logic_vector(3 downto 0) := (others => '0');
   signal RESP_REQ : std_logic_vector(3 downto 0) := (others => '0');
   signal QB_RST : std_logic_vector(3 downto 0) := (others => '1');
   signal TrigLogicRst : std_logic := '0';

 	--Outputs
   signal TX : std_logic_vector(3 downto 0);
   signal DC_RESPONSE : std_logic_vector(31 downto 0);
   signal RESP_VALID : std_logic_vector(3 downto 0);
   signal SERIAL_CLK_LCK : std_logic_vector(3 downto 0);
   signal TRIG_LINK_SYNC : std_logic_vector(3 downto 0);
   signal Event_Trig : std_logic;
		-- Clock period definitions
   constant DATA_CLK_period : time := 40 ns;
	
--------Version 1 signals--------------------------------------------
	--dc QBlink signals 
	signal rd_req : slv(3 downto 0) := (others =>'0');
	signal SCROD_data : Word32Array(3 downto 0) := (others => (others => '0'));
	signal SCROD_data_valid : slv(3 downto 0) := "0000";
	signal DC_DATA : slv(31 downto 0) := (others => '0');
	signal DC_data_valid : slv(3 downto 0) := "0000";
   signal trgLinkSync1 : slv( 3 downto 0);
	signal serialClkLck1 : slv(3 downto 0);

 
	--test scenario constants
	constant TS_arb: slv(23 downto 0) := x"003876";
	constant trigBits_arb : slv(4 downto 0) := "01011";
	constant TrigEvent : slv(2 downto 0) := "111";

--------Version 2 signals--------------------------------------------
	signal dc_sync : sl := '0';
	signal global_event : slv(3 downto 0) := (others =>'0');
	--DC IO Buffer Signals
	signal RX_DC_P : slv(3 downto 0) := (others => '0');
	signal RX_DC_N : slv(3 downto 0) := (others => '0');
	signal TX_DC_P : slv(3 downto 0) := (others => '0');
	signal TX_DC_N : slv(3 downto 0) := (others => '0');
	signal DC_CLK_P : slv(3 downto 0) := (others => '0');
	signal DC_CLK_N : slv(3 downto 0) := (others => '0');
	signal GLOBAL_EVENT_P : slv(3 downto 0) := (others => '0');
	signal GLOBAL_EVENT_N : slv(3 downto 0) := (others => '0');
	signal SYNC_P : slv(3 downto 0) := (others => '0');
	signal SYNC_N : slv(3 downto 0) := (others => '0');
	--mRICH DC Top signals
	--Inputs
   signal CLK_N : slv(3 downto 0) := (others => '0');
   signal CLK_P : slv(3 downto 0) := (others => '0');
   signal SHOUT : slv(3 downto 0) := (others => '0');
   signal SR_DATA_OUT_A : slv(3 downto 0) := (others => '0');
   signal SR_DATA_OUT_B : slv(3 downto 0) := (others => '0');
   signal TRGOUT : slv(3 downto 0) := (others => '0');
   signal TRGOUT4 : slv(3 downto 0) := (others => '0');
   signal EXT_TRIG_IN : slv(3 downto 0) := (others => '0');
   signal RF : std_logic_vector(15 downto 0) := (others => '0');
   signal DAC : std_logic_vector(15 downto 0) := (others => '0');
   signal FAST_TRG_FROM_SCROD_p : std_logic;
   signal FAST_TRG_FROM_SCROD_n : std_logic;

	--BiDirs
   signal SCL : std_logic;
   signal SDA : std_logic;

 	--Outputs
   signal SST_B_P : slv(3 downto 0);
   signal SST_B_N : slv(3 downto 0);
   signal SST_A_P : slv(3 downto 0);
   signal SST_A_N : slv(3 downto 0);
   signal WILK_A_P : slv(3 downto 0);
   signal WILK_A_N : slv(3 downto 0);
   signal WILK_B_P : slv(3 downto 0);
   signal WILK_B_N : slv(3 downto 0);
   signal REG_CLR : slv(3 downto 0);
   signal nRAMP : slv(3 downto 0);
   signal WILKCLR : slv(3 downto 0);
   signal SAMP_SEL_ANY : slv(3 downto 0);
   signal RD_EN : slv(3 downto 0);
   signal WR_ADDR_INCR_ENA1 : slv(3 downto 0);
   signal WR_ADDR_INCR_ENA2 : slv(3 downto 0);
   signal WR_ADDR_CLR1 : slv(3 downto 0);
   signal WR_ADDR_CLR2 : slv(3 downto 0);
   signal WR_ENA1 : slv(3 downto 0);
   signal WR_ENA2 : slv(3 downto 0);
   signal SIN : slv(3 downto 0);
   signal SCLK : slv(3 downto 0);
   signal SR_CLK : slv(3 downto 0);
   signal SR_CLR : slv(3 downto 0);
   signal SR_LOAD : slv(3 downto 0);
   signal PCLK_A : slv(3 downto 0);
   signal PCLK_B : slv(3 downto 0);
   signal RD_CH_SAMP_WIND_SEL_A : std_logic_vector(7 downto 0);
   signal RD_CH_SAMP_WIND_SEL_B : std_logic_vector(7 downto 0);
   signal FAST_TRG_TO_SCROD_p : slv(3 downto 0);
   signal FAST_TRG_TO_SCROD_n : slv(3 downto 0);
   signal FAST_CLK : slv(3 downto 0);
   signal SLOW_CLK : slv(3 downto 0);
	
	--QBreset signals
	signal dcm_locked : sl := '0';
	signal been_reset : sl := '0';
	signal dc_reset : slv(3 downto 0) := (others => '0'); 
	constant Num_DCs : INTEGER := 3;
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   SCROD_DC_Comm: entity work.DC_Comm 
		generic map(num_DC =>3)
		PORT MAP (
          DATA_CLK => DATA_CLK,
          RX => RX,
          TX => TX,
          DC_CMD => DC_CMD,
          CMD_VALID => CMD_VALID,
          RESP_REQ => RESP_REQ,
          DC_RESPONSE => DC_RESPONSE,
          RESP_VALID => RESP_VALID,
          QB_RST => QB_RST,
          TrigLogicRst => TrigLogicRst,
          SERIAL_CLK_LCK => SERIAL_CLK_LCK,
          TRIG_LINK_SYNC => TRIG_LINK_SYNC,
          Event_Trig => Event_Trig
        );
---------Version 2 setup-----------------------------------------------------	 	
	 DC_IO_BUFF : entity work.IO_Buffers
		generic map (num_DC => 3)
		PORT MAP(
			RX_P => RX_DC_P,
			RX_N => RX_DC_N,
			TX => TX,
			GLOB_EVNT => global_event,
			SYNC => dc_sync,
			TX_P => TX_DC_P,
			TX_N => TX_DC_N,
			DC_CLK_P => DC_CLK_P,
			DC_CLK_N => DC_CLK_N,
			DATA_CLK => DATA_CLK,
			GLOB_EVNT_P => GLOBAL_EVENT_P,
			GLOB_EVNT_N => GLOBAL_EVENT_N,
			RX => RX,
			SYNC_P => OPEN,
			SYNC_N => OPEN
		); 
	--mRICH DCs
	gen_mRICH_DC : FOR I in 3 downto 0 GENERATE
		mRICH_DC: entity work.SiREAD_termite_NEXYS_top PORT MAP (
			 resetQB => dc_reset(I),
          CLK_N => '1',
          CLK_P => '0',
          SYNC_p => DC_CLK_N(I),
          SYNC_n => DC_CLK_P(I),
          SST_B_P => SST_B_P(I),
          SST_B_N => SST_B_N(I),
          SST_A_P => SST_A_P(I),
          SST_A_N => SST_A_N(I),
          WILK_A_P => WILK_A_P(I),
          WILK_A_N => WILK_A_N(I),
          WILK_B_P => WILK_B_P(I),
          WILK_B_N => WILK_B_N(I),
          REG_CLR => REG_CLR(I),
          nRAMP => nRAMP(I),
          WILKCLR => WILKCLR(I),
          SAMP_SEL_ANY => SAMP_SEL_ANY(I),
          RD_EN => RD_EN(I),
          WR_ADDR_INCR_ENA1 => WR_ADDR_INCR_ENA1(I),
          WR_ADDR_INCR_ENA2 => WR_ADDR_INCR_ENA2(I),
          WR_ADDR_CLR1 => WR_ADDR_CLR1(I),
          WR_ADDR_CLR2 => WR_ADDR_CLR2(I),
          WR_ENA1 => WR_ENA1(I),
          WR_ENA2 => WR_ENA2(I),
          SHOUT => SHOUT(I),
          SIN => SIN(I),
          SCLK => SCLK(I),
          SR_CLK => SR_CLK(I),
          SR_CLR => SR_CLR(I),
          SR_LOAD => SR_LOAD(I),
          PCLK_A => PCLK_A(I),
          PCLK_B => PCLK_B(I),
          SR_DATA_OUT_A => SR_DATA_OUT_A(I),
          SR_DATA_OUT_B => SR_DATA_OUT_B(I),
          RD_CH_SAMP_WIND_SEL_A => open,
          RD_CH_SAMP_WIND_SEL_B => open,
          TRGOUT => TRGOUT(I),
          TRGOUT4 => TRGOUT4(I),
          EXT_TRIG_IN => EXT_TRIG_IN(I),
          RF => RF,
          DAC => DAC,
          SCL => SCL,
          SDA => SDA,
          RX_N => RX_DC_N(I),
          RX_P => RX_DC_P(I),
          TX_N => TX_DC_N(I),
          TX_P => TX_DC_P(I),
          FAST_TRG_FROM_SCROD_p => FAST_TRG_FROM_SCROD_p,
          FAST_TRG_FROM_SCROD_n => FAST_TRG_FROM_SCROD_n,
          FAST_TRG_TO_SCROD_p => FAST_TRG_TO_SCROD_p(I),
          FAST_TRG_TO_SCROD_n => FAST_TRG_TO_SCROD_n(I),
          FAST_CLK => FAST_CLK(I),
          SLOW_CLK => SLOW_CLK(I)
        );
 END GENERATE gen_mRICH_DC;
 
--  QBRst_process: process(DATA_CLK, TRIG_LINK_SYNC) 
--  variable counter : integer range 0 to 20 :=0;
--  begin
--   FOR I in 0 to 4 LOOP
--		If TRIG_LINK_SYNC(I) = '0' and counter < 26 then
--			If rising_edge(DATA_CLK) then
--				counter := counter + 1;
--			end if;
--		elsif TRIG_LINK_SYNC(I) = '0' and counter = 26 then
--			counter := 0;
--			QB_Rst(I) <= not QB_Rst(I);
--		else
--			QB_rst(I) <= '0';
--			counter := 0;
--		end if;
--	end loop;
--end process;

--QBRst_process1: process(DATA_CLK, TRIG_LINK_SYNC(0)) 
--variable counter : integer range 0 to 20 :=0;
--	begin
--		If TRIG_LINK_SYNC(0) = '0' and counter < 26 then
--			If rising_edge(DATA_CLK) then
--				counter := counter + 1;
--			end if;
--		elsif TRIG_LINK_SYNC(0) = '0' and counter = 26 then
--			counter := 0;
--			QB_Rst(0) <= not QB_Rst(0);
--		else
--			QB_rst(0) <= '0';
--			counter := 0;
--		end if;
--end process;

QBRst_process : process(DATA_CLK, dcm_locked, been_reset, QB_Rst)
variable counter : integer range 0 to 26 := 0;
begin
	IF been_reset = '0' AND dcm_locked = '1' THEN 
		QB_Rst <= (others => '1');
	   DC_RESET <= (others => '1');
	END IF;
	IF rising_edge(DATA_CLK) THEN 
		IF QB_Rst(0) = '1' AND dcm_locked = '1' THEN
			IF counter = 3 THEN
				DC_RESET <= (others => '0');
			ELSIF counter = 26 THEN
				QB_Rst <= (others => '0');
				counter := 0;
				been_reset <= '1';
			ELSE 
				counter := counter + 1;
			END IF;
		END IF;
	END IF; 
END PROCESS;

  --Clock Process
  scrod_clk_proc: process
	begin
		DATA_CLK <= '0';
		wait for DATA_CLK_period/2;
		DATA_CLK <= '1';
		wait for DATA_CLK_period/2;
	end process;

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		--QB_RST <= (others=>'1');
		dcm_locked <= '0';
      wait for 100 ns;	
		dcm_locked <= '1';
--		QB_RST <= (others => '0');
      wait for DATA_CLK_period*10;
		--Version 1 stimulus
--		QB_RST <= (others=>'0');
--      wait until TRIG_LINK_SYNC = "XXX1";
--		DC_CMD <= x"DEADBEEF"; --command to DC1 Begin
--		CMD_VALID <= "0001";
--		RESP_REQ <= (others => '0');
--		rd_req <= "0001";
--		wait until SCROD_data(0) = x"DEADBEEF";
--		DC_DATA <= SCROD_data(0);
--		DC_DATA_Valid <= "0001";
--		RESP_REQ <= "0001";
--		wait until DC_RESPONSE = x"DEADBEEF"; -- Broadcast to all DCs Begin
--		DC_CMD <= x"DEADBEEF";
--		CMD_Valid <= "1111";
--		rd_req <= "1111";
--		wait until SCROD_data_valid = "1111"; 
--		wait until SCROD_data(3) = x"deadbeef";
--		DC_DATA <= SCROD_data(3);
--		DC_DATA_Valid <= "1111";
--		RESP_REQ <= "1111";
--		wait until DC_RESPONSE = x"DEADBEEF"; --Trigger global event begin
--		DC_DATA <= TS_arb & TrigEvent & trigBits_arb;
--		DC_DATA_Valid <= "1111";
--		RESP_REQ <= "1111";
      wait;
   end process;

END;
--Gen_QBLink : FOR I in 3 downto 0 GENERATE 
--DC_QBLink : entity work.QBLink                                                     
--PORT MAP( 
--			 sstClk => DATA_CLK,
--			 rst => QB_RST(I),
--			 rawSerialOut => RX(I),
--			 rawSerialIn => TX(I),
--			 localWordIn => DC_DATA, 
--			 localWordInValid => DC_DATA_VALID(I),
--			 localWordOut => SCROD_data(I),
--			 localWordOutValid => SCROD_data_Valid(I),
--			 localWordOutReq => rd_req(I),
--			 trgLinkSynced => trgLinkSync1(I),
--			 serialClkLocked => serialClkLck1(I)
--			 );
--end GENERATE Gen_QBLink;