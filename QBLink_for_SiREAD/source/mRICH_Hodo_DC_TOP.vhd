----------------------------------------------------------------------------------
-- Company        : UH Manoa- Department of Physics
-- Engineer       : GSV, inherited from KHANH LE
-- Modified Date  : 10:37:38 09/19/2018 
-- Module Name    : mRICH_Hodo_DC_TOP - Behavioral 
-- Project Name   : mRICH Hodoscope
-- Target Devices : SPARTAN 6 XC6SLX4-2TQG144
-- Tool versions  : ISE VERSION 14.7
-- Description    : mRICH Hodoscope Daughtercard TOP MODULE 
----------------------------------------------------------------------------------
library IEEE;
library UNISIM;
Library UNIMACRO;

use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use UNISIM.VComponents.all;
use UNIMACRO.vcomponents.all;
use work.all;
use work.BMD_definitions.all;
use work.UtilityPkg.all;

entity mRICH_Hodo_DC_TOP is
	Port(
			-- SCROD TO DC SIGNALS
			SYSCLK_P          : IN  STD_LOGIC; --25MHz clock from SCROD
			SYSCLK_N          : IN  STD_LOGIC;
			RX_P					: IN  STD_LOGIC; -- Data (Byte link) from SCROD
			RX_N					: IN  STD_LOGIC;			
			SYNC_P				: IN	STD_LOGIC; -- Sync Timestamps between DC
			SYNC_N				: IN 	STD_LOGIC;
			-- DC TO SCROD SIGNALS
			TX_P					: OUT  STD_LOGIC; -- Data (Byte link) to SCROD (trigger)
			TX_N					: OUT  STD_LOGIC;			
			
			-- TX TO DC SIGNALS -- Actually used
			TX_DATA            : IN STD_LOGIC_VECTOR(15 DOWNTO 0); -- ignored
			TX_TRIG            : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
			
			-- DC TO TX Serial Programming Interface
			SHOUT					 : IN  STD_LOGIC;
			SIN					 : OUT STD_LOGIC;
			PCLK					 : OUT STD_LOGIC;
			SCLK					 : OUT STD_LOGIC;
						
			-- TX READOUT SIGNALS -- to be tied static
			SAMPLESEL_ANY      : OUT STD_LOGIC;
			SAMPLESEL_S			 : OUT STD_LOGIC_VECTOR(4 downto 0);
			SR_CLEAR				 : OUT STD_LOGIC;
			SR_CLK             : OUT STD_LOGIC;
			SR_SEL				 : OUT STD_LOGIC;
			RD_COLSEL_S			 : OUT STD_LOGIC_VECTOR(5 downto 0);
			REGCLR				 : OUT STD_LOGIC;
			RD_ENA				 : OUT STD_LOGIC;
			RD_ROWSEL_S			 : OUT STD_LOGIC_VECTOR(2 downto 0);
			WR_ADDRCLR			 : OUT STD_LOGIC;
			RAMP					 : OUT STD_LOGIC;
			CLR					 : OUT STD_LOGIC;
			DONE					 : IN  STD_LOGIC;
			
			-- DC TO TX DIGITIZATION AND SAMPLING SIGNALS  -- to be tied static
			SSTIN_P				 : OUT STD_LOGIC;
			SSTIN_N            : OUT STD_LOGIC;
		   WL_CLK_P				 : OUT STD_LOGIC;
		   WL_CLK_N				 : OUT STD_LOGIC;
		   WR1_ENA				 : OUT STD_LOGIC;
		   WR2_ENA				 : OUT STD_LOGIC;
			
			-- DAC SIGNALS (SPI PROTOCOL)
--			DAC_SDO            : IN  STD_LOGIC;
			DAC_SCLK           : OUT STD_LOGIC;
			DAC_SDI            : OUT STD_LOGIC;
			DAC_SYNC           : OUT STD_LOGIC;
			DAC_LDAC           : OUT STD_LOGIC;
			
			-- FLASH SIGNALS(USED TO HOLD BIT FILE FOR SELF PROGRAMMING) 
			FLASH_DO           : IN  STD_LOGIC;   
			FLASH_CLK          : OUT STD_LOGIC; 
			FLASH_DI           : OUT STD_LOGIC; 
			FLASH_CS           : OUT STD_LOGIC 
--			FLASH_HOLD         : OUT STD_LOGIC;
--			FLASH_WP           : OUT STD_LOGIC;
			
	);
end mRICH_Hodo_DC_TOP;

architecture Behavioral of mRICH_Hodo_DC_TOP is 

--------------------------------------------DECLARING internal SIGNALS-------------------------------------------- 
--internal clock signals
signal sys_clk       		: std_logic;
signal aux_clk        		: std_logic;
signal asic_clk 				: std_logic;
signal internal_wilk_clk   : std_logic;
signal internal_sstin		: std_logic;

--internal SCROD <--> DC communication signals
signal wordIn		         : std_logic_vector(31 downto 0);
signal wordInValid		 	: std_logic;
signal wordOut		         : std_logic_vector(31 downto 0);
signal wordOutValid		 	: std_logic;

--internal TX to DC communication signals
signal ctrl_register  		: GPR;
signal rb_value          	: std_logic_vector(15 downto 0) := (others=>'0');
signal oops_reset 		 	: std_logic := '0';

--internal TX DAC control signals
signal tx_dac_update       : std_logic := '0';
signal tx_dac_busy         : std_logic := '0';
signal tx_dac_reg_data     : std_logic_vector(18 downto 0) := (others => '0');
signal tx_dac_load_period  : std_logic_vector(15 downto 0) := (others => '0');
signal tx_dac_latch_period : std_logic_vector(15 downto 0) := (others => '0');

--internal MPPC DAC control signals
signal mppc_dac_addr   		: std_logic_vector(4 downto 0) := (others => '0');
signal mppc_dac_value  		: std_logic_vector(11 downto 0):= (others => '0');
signal mppc_dac_update 		: std_logic := '0';
signal mppc_dac_busy   		: std_logic;
signal dc_mas_tx :std_logic;
signal dc_mas_data_out:std_logic;

signal RX:std_logic;
signal DATA_IN:std_logic;
signal send_rdy:std_logic;

-- Aux signals first
signal rawSerialOut : sl;
signal rawSerialIn  : sl;

signal wordOutEna    	: sl := '0';

signal trgLinkSynced   	: sl;
signal serialClkLocked  : sl;

signal RAW_SYNC : sl; 

-- Bogus signals for now
signal txSerialData : sl := '0';

attribute keep : string; -- type was boolean, according to Xilinx constraints guide, type is string.
attribute keep of sys_clk: signal is "TRUE";

begin


-------------------------------------------------------------------------------------------
-----------------------------------------------Differential Sigs---------------------------
-------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------
-----------------------------------------------Clock generation----------------------------
-------------------------------------------------------------------------------------------

--U_ACK_OBUFDS : OBUFDS port map ( I => txSerialData, O => RJ45_ACK_P, OB => RJ45_ACK_N );
   -- Inputs from ports
U_SYNC_IBUFDS : IBUFDS port map ( I => SYNC_P, IB => SYNC_N, O => RAW_SYNC );

--U_TRG_IBUFDS : IBUFDS port map ( I => RJ45_TRG_P, IB => RJ45_TRG_N, O => rxSerialData );

TX_OBUFDS_inst : OBUFDS --(Nathan)instantiation of OBUFDS buffer
generic map (IOSTANDARD => "LVDS_25")
port map (
	O  => TX_N,    
	OB => TX_P,  
	I  => rawSerialOut); 

--DATA_OUT_OBUFDS_inst : OBUFDS --(Nathan)instantiation of OBUFDS buffer
--generic map (IOSTANDARD => "LVDS_25")
--port map (
--	O  => DATA_OUT_N,    
--	OB => DATA_OUT_P,  
--	I  => not dc_mas_data_out); 
--
RX_IBUFDS_inst: ibufds
generic map (IOSTANDARD => "LVDS_25",
		DIFF_TERM    => FALSE -- Differential Termination is already on board
--		IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
--		IOSTANDARD   => "DEFAULT"
)
	port map (
		O  => rawSerialIn, -- Buffer output
		I  => RX_N,  -- Diff_p buffer input (connect directly to top-level port)
		IB => RX_P); -- Diff_n buffer input (connect directly to top-level port)

--data_sc2dc_ibufds_inst: ibufds
--generic map (IOSTANDARD => "LVDS_25",
--		DIFF_TERM    => FALSE -- Differential Termination is already on board
----		IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
----		IOSTANDARD   => "DEFAULT"
--)
--	port map (
--		O  => DATA_IN, -- Buffer output
--		I  => DATA_IN_P,  -- Diff_p buffer input (connect directly to top-level port)
--		IB => DATA_IN_N); -- Diff_n buffer input (connect directly to top-level port)


------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------Clock generation---------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------

CLOCK_FANOUT : entity work.BMD_DC_CLK_GEN
  port map
   (-- Clock in ports
    CLK_IN1_P => SYSCLK_P,--25MHz
    CLK_IN1_N => SYSCLK_N,
    -- Clock out ports
    CLK_OUT1 => sys_clk,--16MHz
    CLK_OUT2 => asic_clk,--62.5MHz
    CLK_OUT3 => aux_clk);--10MHz

--ODDR2_inst_sys_clock : ODDR2  
--   generic map(
--      DDR_ALIGNMENT => "NONE", -- Sets output alignment to "NONE", "C0", "C1" 
--      INIT => '0', -- Sets initial state of the Q output to '0' or '1'
--      SRTYPE => "SYNC") -- Specifies "SYNC" or "ASYNC" set/reset
--   port map (
--      Q => rawSerialOut, -- 1-bit output data
--      C0 => sys_clk, -- 1-bit clock input
--      C1 => not sys_clk, -- 1-bit clock input
--      CE => '1',  -- 1-bit clock enable input
--      D0 => '1',   -- 1-bit data input (associated with C0)
--      D1 => '0',   -- 1-bit data input (associated with C1)
--      R => '0',    -- 1-bit reset input
--      S => '0'     -- 1-bit set input
--   );
	 
wilk_OBUFDS_inst : OBUFDS --(Nathan)instantiation of OBUFDS buffer
generic map (IOSTANDARD => "LVDS_25")
port map (
	O  => WL_CLK_P,    
	OB => WL_CLK_N,  
	I  => internal_wilk_clk); 

internal_wilk_clk <= '0'; -- shut it down for now

sst_OBUFDS_inst : OBUFDS --(Nathan)instantiation of OBUFDS buffer
generic map (IOSTANDARD => "LVDS_25")

port map (
	O  => SSTIN_P,    
	OB => SSTIN_N,  
	I  => internal_sstin); 

internal_sstin <= '0'; -- shut it down for now

------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------MASTER/Daughter card communication control-------------------------------------
------------------------------------------------------------------------------------------------------------------------------
	
U_DC_QBlink : entity work.QBlink 
PORT MAP(
	---- Clocks and Reset --------------
	sstClk 				=> asic_clk,
	rst 	   			=> oops_reset, 	
	---- Serial Connections --------------
	rawSerialIn     	=> rawSerialIn, 
	rawSerialOut		=>	rawSerialOut,	
	--------- Local Bus Connections ----------------------
	localWordIn 		=> wordIn,
	localWordInValid 	=> wordInValid,	
	localWordOut 		=> wordOut,  	
	localWordOutValid => wordOutValid,
	localWordOutReq   => wordOutEna,	
	--------- Link Status Bits ----------------------------
	trgLinkSynced 		=> trgLinkSynced, 					  
	serialClkLocked 	=> serialClkLocked
);				  	

	
------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------TargetX DAC Control------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------
-- NEED to change Command Interpreter Output
tx_dac_reg_data     <= ctrl_register(1)(6 downto 0) & ctrl_register(2)(11 downto 0);
tx_dac_load_period  <= ctrl_register(3);
tx_dac_latch_period <= ctrl_register(4);

TARGETX_control: entity work.TARGETX_DAC_CONTROL 
PORT MAP(
	--------------INPUTS-----------------------------
	CLK 				=> asic_clk,
	OOPS_RESET     => oops_reset,         --reset all modules to idle comes from register 5 bit 12
	LOAD_PERIOD 	=> tx_dac_load_period, --comes from ctrl register 3
	LATCH_PERIOD 	=> tx_dac_latch_period,--comes from ctrl register 4
	UPDATE 			=> tx_dac_update,      --comes from DC_COMM_PARSER
	REG_DATA 		=> tx_dac_reg_data,    --comes from ctrl register 1 bit 6-0 and 2 bit 11-0
	--------------OUTPUTS----------------------------
	busy				=>	tx_dac_busy,    	  --goes to DC_COMM_PARSER
	SIN 				=> SIN, 					  --hardware signals to targetx
	SCLK 				=> SCLK,					  --hardware signals to targetx
	PCLK 				=> PCLK);				  --hardware signals to targetx

									

------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------TargetX Readout control--------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------

-- Set all Sampling, Digitization and Readout control signals to static for mRICH Hodo

WR_ADDRCLR<='0';
CLR<='0';
RD_ENA<='0'; 					  
RAMP     <= '0'; 
RD_ROWSEL_S<="000";
RD_COLSEL_S<="000000";
SAMPLESEL_S<="00000";
SR_CLEAR<='0';
SR_CLK<='0';
SR_SEL<='0';
SAMPLESEL_ANY<='0';
-- DONE is input -- n.c.
REGCLR   <= '0';
WR1_ENA  <= '0';
WR2_ENA 	<= '0';	

----------------------------------------------------------------------------------------------------------------------------
---------------------------------------------MPPC DAC control---------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
mppc_dac_addr       <= ctrl_register(16)(4 downto 0);
mppc_dac_value      <= ctrl_register(17)(11 downto 0); 

--DAC write command: dc num(x"1") & "C" & MPPC CH num(x"00") & DAC value(x"0000") 

--DAC values are 12 bits so DAC has 4095 increments
--to get dac value fallow equation below then convert to hex number
--MPPC trim DAC: DAC value = desired voltage/.0006105
--HV DAC       : DAC value = desired voltage/.02442

--MPPC channel to DAC address mapping
--MPPC 1 = DAC 1   --MPPC 5 = DAC 2   --MPPC 9  = DAC F   --MPPC 13 = DAC C     
--MPPC 2 = DAC 0	 --MPPC 6 = DAC 3   --MPPC 10 = DAC E   --MPPC 14 = DAC D
--MPPC 3 = DAC 7	 --MPPC 7 = DAC 4   --MPPC 11 = DAC 8   --MPPC 15 = DAC B
--MPPC 4 = DAC 6	 --MPPC 8 = DAC 5   --MPPC 12 = DAC 9   --HV      = DAC A

--to do calb for trim dacs set MPPC CH num(4) = '1' followed by MPPC CH num to calb  

MPPC_DAC : entity work.mppc_dac_calb
Port Map(
	----------CLOCK-----------------
	CLOCK        => asic_clk,  		 	--62.5MHz 
	DAC_CLOCK	 => aux_clk,    			--10MHz
	----------DAC PARAMETERS--------
	DAC_ADDR     => mppc_dac_addr,   	--comes from ctrl register 16 bit 4 to 0
	DAC_VALUE    => mppc_dac_value,  	--comes from ctrl register 17 bit 11 to 0
	DAC_UPDATE   => mppc_dac_update, 	--comes from DC_COMM_PARSER
	DAC_BUSY		 => mppc_dac_busy,   	--goes to DC_COMM_PARSER
	OOPS_RESET   => oops_reset,         --reset all modules to idle comes from register 5 bit 0	
	----------HW INTERFACE----------
	DAC_SCLK	    => DAC_SCLK,  			--hardware signals to DACs
	DAC_DIN		 => DAC_SDI,				--hardware signals to DACs
	LDAC         => DAC_LDAC,				--hardware signals to DACs
	SYNC         => DAC_SYNC);				--hardware signals to DACs

end Behavioral;

