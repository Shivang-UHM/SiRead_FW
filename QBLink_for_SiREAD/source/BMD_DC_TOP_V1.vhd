----------------------------------------------------------------------------------
-- Company        : UH Manoa- Department of Physics
-- Engineer       : KHANH LE
-- Create Date    : 10:37:38 02/02/2017 
-- Module Name    : BMD_DC_TOP_V2 - Behavioral 
-- Project Name   : BOREHOLE MUON DETECTOR
-- Target Devices : SPARTAN 6 XC6SLX9-2TQG144
-- Tool versions  : ISE VERSION 14.7
-- Description    : BMD TOP MODULE HANDLES ALL COMMUNICATION TO AND FROM MASTER AND ON BOARD COMPONENETS
-- Revision			: 1 used SPARTAN 6 XC6SLX4-2TQG144 due to size of memory converted to lx9
-- Revision			: 2 using SPARTAN 6 XC6SLX9-2TQG144 
--	Revision			: Added signals for mRICH purposes by Tommy Lam and William Roh
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

entity BMD_DC_TOP_V2 is
	Port(
			-- MASTER TO DC SIGNALS
			MAS_CLK_P          : IN  STD_LOGIC;--125MHz clock form scrod
			MAS_CLK_N          : IN  STD_LOGIC;
			SC_DC_TRIG  	    : INOUT  STD_LOGIC;
--			MAS_DC_RX   	    : IN  STD_LOGIC;
--			MAS_DC_DATA_IN     : IN  STD_LOGIC;
--			DC_MAS_TX   	    : OUT STD_LOGIC;
--			DC_MAS_DATA_OUT    : OUT STD_LOGIC;

			-- DC TO DC SIGNALS
			DC_DC_RX      		 : IN  STD_LOGIC;
			DC_DC_DATA_IN      : IN  STD_LOGIC;
			DC_DC_TX           : OUT STD_LOGIC;
			DC_DC_DATA_OUT     : OUT STD_LOGIC;
			DC_DC_TRIG         : INOUT STD_LOGIC;
			DC_DC_CLK_P        : OUT STD_LOGIC;
			DC_DC_CLK_N        : OUT STD_LOGIC;
			
			-- TX TO DC SIGNALS
			TX_DATA            : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			TX_TRIG            : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
			TX_TRIG16          : IN STD_LOGIC;
			
			-- DC TO TX DAC UPDATE
			SHOUT					 : IN  STD_LOGIC;
			SIN					 : OUT STD_LOGIC;
			PCLK					 : OUT STD_LOGIC;
			SCLK					 : OUT STD_LOGIC;
						
			-- SERIAL READOUT SINGALS
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
			
			-- DC TO TX DIGITIZATION AND SAMPLING SIGNALS
			SSTIN_P				 : OUT STD_LOGIC;
			SSTIN_N            : OUT STD_LOGIC;
		   WL_CLK_P				 : OUT STD_LOGIC;
		   WL_CLK_N				 : OUT STD_LOGIC;
		   WR1_ENA				 : OUT STD_LOGIC;
		   WR2_ENA				 : OUT STD_LOGIC;
			
			-- SRAM SIGNALS (SPI PROTOCOL)
			SRAM_SO            : IN  STD_LOGIC;
			SRAM_SCL           : OUT STD_LOGIC;
			SRAM_SI            : OUT STD_LOGIC;
			SRAM_CS            : OUT STD_LOGIC;
			SRAM_HOLD          : OUT STD_LOGIC;
			
			-- DAC SIGNALS (SPI PROTOCOL)
--			DAC_SDO            : IN  STD_LOGIC;
			DAC_SCLK           : OUT STD_LOGIC;
			DAC_SDI            : OUT STD_LOGIC;
			DAC_SYNC           : OUT STD_LOGIC;
			DAC_LDAC           : OUT STD_LOGIC;
			
			-- TEMPERTURE SIGNALS (I2C PROTOCOL)
			TS_EVENT           : IN  STD_LOGIC;
			TS_SCL             : OUT STD_LOGIC;
			TS_SDA             : OUT STD_LOGIC;
			
			-- ADDRESS 
			DC_ADDRESS         : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
			CALIB_EN           : OUT STD_LOGIC;
			--AUX TEST POINT
			TX_HW_TRIG         : OUT STD_LOGIC;
			SCROD_TRIG         : IN STD_LOGIC;
			
			-- FLASH SIGNALS(USED TO HOLD BIT FILE FOR SELF PROGRAMMING) - will do this later
--			FLASH_DO           : IN  STD_LOGIC; --Uncommented by Tommy  
--			FLASH_CLK          : OUT STD_LOGIC; --Uncommented by Tommy
--			FLASH_DI           : OUT STD_LOGIC; --Uncommented by Tommy
--			FLASH_CS           : OUT STD_LOGIC; --Uncommented by Tommy
--			FLASH_HOLD         : OUT STD_LOGIC;
--			FLASH_WP           : OUT STD_LOGIC;
--			
--			-- JTAG SIGNALS CAN BE USED FOR SERIAL DATA COMM AFTER PROGRAMMING
--			TMS                : OUT STD_LOGIC;
--			TCK					 : OUT STD_LOGIC;
--			TDI                : OUT STD_LOGIC;
--			TDO                : IN STD_LOGIC;



--			--ADDED SIGNALS FOR mRICH (by William Roh and Tommy Lam)
				--IN or OUT was determined by choosing the same configuation as shown in IDL_18_014 Sheet 3 of 6
			MON_Timing			 	: IN STD_LOGIC;
			DATA_IN_N			 	: IN STD_LOGIC;
			DATA_IN_P				: IN STD_LOGIC;
			RX_N						: IN STD_LOGIC;
			RX_P						: IN STD_LOGIC;
			AUX1_N					: INOUT STD_LOGIC;
			AUX1_P					: INOUT STD_LOGIC;
			DATA_OUT_N			 	: OUT STD_LOGIC;
			DATA_OUT_P				: OUT STD_LOGIC;
			TX_N						: OUT STD_LOGIC;
			TX_P						: OUT STD_LOGIC;
			ORed_Trig_N				: OUT STD_LOGIC;
			ORed_Trig_P				: OUT STD_LOGIC;
			MAS_ACK_N				: IN STD_LOGIC;
			MAS_ACK_P				: IN STD_LOGIC
			

			
	);
end BMD_DC_TOP_V2;

architecture Behavioral of BMD_DC_TOP_V2 is --(Nathan) Architecture is actually structural, but the name does not affect implementation. 
--------------------------------------------DECLEARING internal SIGNALS-------------------------------------------- 
--internal clock signals
signal sys_clk       		: std_logic;
signal aux_clk        		: std_logic;
signal asic_clk 				: std_logic;
signal internal_wilk_clk   : std_logic;
signal internal_sstin		: std_logic;
signal DC_DC_DATA_CLK 		: std_logic;

--internal asic to DC communication signals
signal wave_fifo_wr_en     : std_logic;
signal wave_fifo_clk       : std_logic;
signal wave_fifo_din       : std_logic_vector(31 downto 0);
signal wave_fifo_rst		 	: std_logic;
signal wave_fifo_full      : std_logic;
signal ctrl_register  		: GPR;
signal rb_value          	: std_logic_vector(15 downto 0) := (others=>'0');
signal rb_reg 		 			: std_logic_vector(7 downto 0) := (others=>'0');
signal tx_busy				 	: std_logic;
signal oops_reset 		 	: std_logic := '0';
signal ch16_calib_en       : std_logic := '0';

--internal asic dac control signals
signal tx_dac_update       : std_logic := '0';
signal tx_dac_busy         : std_logic := '0';
signal tx_dac_reg_data     : std_logic_vector(18 downto 0) := (others => '0');
signal tx_dac_load_period  : std_logic_vector(15 downto 0) := (others => '0');
signal tx_dac_latch_period : std_logic_vector(15 downto 0) := (others => '0');

--internal targetx trigger signals 
signal trig_mode      		: std_logic_vector(3 downto 0) := x"0";
signal sw_trig 	  			: std_logic := '0';
signal trigger      			: std_logic := '0';
signal trigger_raw  			: std_logic := '0';
signal trigger_raw1 			: std_logic := '0';
signal trigger_raw2 			: std_logic := '0';
signal trigger_bits 			: std_logic_vector(4 downto 0);
signal dc_mask 				: std_logic_vector(3 downto 0);
signal ack_cnt 				: integer;
signal trig_cnt_en         : std_logic := '0';
signal trig_count 			: std_logic_vector(31 downto 0);
signal trig_count_max  		: std_logic_vector(15 downto 0):= x"0010";

--internal readout control signals
signal calc_ped_en 			: std_logic := '0';
signal ped_n_averge			: std_logic_vector(3 downto 0) := x"3";-- 2**3=8 averages for calculating peds
signal ramp_srt     			: std_logic;
signal fixed_win_en 			: std_logic := '0';	
signal fix_win_num  			: std_logic_vector(8 downto 0) := (others => '0');
signal readout_busy 			: std_logic := '0';
signal num_win_offet 		: std_logic_vector(8 downto 0) := (others => '0');
signal offet_direction     : std_logic := '0';
signal num_win2read  		: std_logic_vector(8 downto 0) := (others => '0');
signal send_srt				: std_logic := '0';
signal smp_win_cnt_rst     : std_logic := '0';
signal smp_rst_para 			: std_logic_vector(1 downto 0) := (others => '0');
signal dig_ramp_len 			: std_logic_vector(15 downto 0) := (others => '0');

--internal mppc dac control signals
signal mppc_dac_addr   		: std_logic_vector(4 downto 0) := (others => '0');
signal mppc_dac_value  		: std_logic_vector(11 downto 0):= (others => '0');
signal mppc_dac_update 		: std_logic := '0';
signal mppc_dac_busy   		: std_logic;
signal dc_mas_tx :std_logic;
signal dc_mas_data_out:std_logic;
signal tx_trigbits_l:std_logic_vector(5 downto 0);
signal timer: integer:=0;
signal RX:std_logic;
signal DATA_IN:std_logic;
signal send_rdy:std_logic;
signal timer_last:integer;
signal timer_diff:integer;
signal send_pat_q:std_logic;
signal send_pat:std_logic_vector(1 downto 0);
signal timer_last_pat:integer;
signal timer_pat:integer;

attribute keep : string; -- type was boolean, according to Xilinx constraints guide, type is string.
attribute keep of sw_trig: signal is "TRUE"; --"{TRUE}" according to Xilinx constraints guide
attribute keep of DC_DC_DATA_CLK: signal is "TRUE";
attribute keep of sys_clk: signal is "TRUE";
attribute keep of timer : signal is "TRUE";
attribute keep of tx_trigbits_l: signal is "TRUE";
attribute keep of timer_last: signal is "TRUE";
attribute keep of send_pat_q: signal is "TRUE";
attribute keep of send_pat: signal is "TRUE";
attribute keep of timer_last_pat: signal is "TRUE";
attribute keep of timer_pat: signal is "TRUE";

begin

------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------Clock generation---------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------

--- wire to the top
--TX_P<=dc_mas_tx;
--TX_N<=not dc_mas_tx;
--
--DATA_OUT_P<=dc_mas_data_out;
--DATA_OUT_N<=not dc_mas_data_out;

ORed_Trig_N<='0';
--ORed_Trig_P<='0';


TX_OBUFDS_inst : OBUFDS --(Nathan)instantiation of OBUFDS buffer
generic map (IOSTANDARD => "LVDS_25")
port map (
	O  => TX_N,    
	OB => TX_P,  
	I  => not dc_mas_tx); 


DATA_OUT_OBUFDS_inst : OBUFDS --(Nathan)instantiation of OBUFDS buffer
generic map (IOSTANDARD => "LVDS_25")
port map (
	O  => DATA_OUT_N,    
	OB => DATA_OUT_P,  
	I  => not dc_mas_data_out); 

--TX_P<=dc_mas_tx;
--TX_N<=not dc_mas_tx;
--DATA_OUT_P<=dc_mas_data_out;
--DATA_OUT_N<=not dc_mas_data_out;

en_sc2dc_ibufds_inst: ibufds
generic map (IOSTANDARD => "LVDS_25",
		DIFF_TERM    => FALSE -- Differential Termination is already on board
--		IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
--		IOSTANDARD   => "DEFAULT"
)
	port map (
		O  => RX, -- Buffer output
		I  => RX_P,  -- Diff_p buffer input (connect directly to top-level port)
		IB => RX_N); -- Diff_n buffer input (connect directly to top-level port)

data_sc2dc_ibufds_inst: ibufds
generic map (IOSTANDARD => "LVDS_25",
		DIFF_TERM    => FALSE -- Differential Termination is already on board
--		IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
--		IOSTANDARD   => "DEFAULT"
)
	port map (
		O  => DATA_IN, -- Buffer output
		I  => DATA_IN_P,  -- Diff_p buffer input (connect directly to top-level port)
		IB => DATA_IN_N); -- Diff_n buffer input (connect directly to top-level port)


timer_diff<=25000; -- 25k cycled (~1ms) time to catch its breath between sending upstream trigger packets
timer_pat<=25000000; -- every second send a pattern

timer<=timer+1 when rising_edge(sys_clk) else
		0 when oops_reset='1';

tx_trigbits_l<=TX_TRIG16 & TX_TRIG when rising_edge(sys_clk);

wave_fifo_wr_en<=((tx_trigbits_l(5) or tx_trigbits_l(4) or tx_trigbits_l(3) or tx_trigbits_l(2) or tx_trigbits_l(1) or tx_trigbits_l(0)) and send_rdy) or send_pat_q;
timer_last<=timer when wave_fifo_wr_en='1';

send_rdy<='1' when (timer-timer_last)>timer_diff else
				'0';

send_pat_q<='1' when send_pat="01" else '0'; --edge sensitive
timer_last_pat<=timer when send_pat_q='1';

send_pat<=send_pat(0) & "1" when (timer-timer_last_pat)=timer_pat else 
			send_pat(0) & "0";
 
wave_fifo_din<=x"c" & std_logic_vector(to_unsigned(timer,22)) & tx_trigbits_l when send_pat_q='0' else
				   x"b" & std_logic_vector(to_unsigned(timer,22)) & "000000";
wave_fifo_clk<=sys_clk;


CLOCK_FANOUT : entity work.BMD_DC_CLK_GEN
  port map
   (-- Clock in ports
    CLK_IN1_P => MAS_CLK_N,--25MHz
    CLK_IN1_N => MAS_CLK_P,
    -- Clock out ports
    CLK_OUT1 => sys_clk,--25MHz
    CLK_OUT2 => asic_clk,--62.5MHz
    CLK_OUT3 => aux_clk);--10MHz


--ODDR2 is set up to doubleS input frequency
wilkson_clk : ODDR2
generic map(
	DDR_ALIGNMENT => "NONE", -- Sets output alignment to "NONE", "C0", "C1"
	INIT => '0', -- Sets initial state of the Q output to '0' or '1'
	SRTYPE => "SYNC") -- Specifies "SYNC" or "ASYNC" set/reset
port map (
	Q => internal_wilk_clk, -- 1-bit output data
	C0 => asic_clk, -- 1-bit clock input
	C1 => not asic_clk, -- 1-bit clock input
	CE => ramp_srt, -- 1-bit clock enable input --ramp_srt
	D0 => '1', -- 1-bit data input (associated with C0)
	D1 => '0', -- 1-bit data input (associated with C1)
	R => '0', -- 1-bit reset input
	S => '0'); -- 1-bit set input

ODDR2_inst_sys_clock : ODDR2  
   generic map(
      DDR_ALIGNMENT => "NONE", -- Sets output alignment to "NONE", "C0", "C1" 
      INIT => '0', -- Sets initial state of the Q output to '0' or '1'
      SRTYPE => "SYNC") -- Specifies "SYNC" or "ASYNC" set/reset
   port map (
      Q => ORed_Trig_P, -- 1-bit output data
      C0 => sys_clk, -- 1-bit clock input
      C1 => not sys_clk, -- 1-bit clock input
      CE => '1',  -- 1-bit clock enable input
      D0 => '1',   -- 1-bit data input (associated with C0)
      D1 => '0',   -- 1-bit data input (associated with C1)
      R => '0',    -- 1-bit reset input
      S => '0'     -- 1-bit set input
   );

	 
wilk_OBUFDS_inst : OBUFDS --(Nathan)instantiation of OBUFDS buffer
generic map (IOSTANDARD => "LVDS_25")

port map (
	O  => WL_CLK_P,    
	OB => WL_CLK_N,  
	I  => internal_wilk_clk); 


sst_OBUFDS_inst : OBUFDS --(Nathan)instantiation of OBUFDS buffer
generic map (IOSTANDARD => "LVDS_25")

port map (
	O  => SSTIN_P,    
	OB => SSTIN_N,  
	I  => internal_sstin); 


dc_clk_p : ODDR2
generic map(
	DDR_ALIGNMENT => "NONE", -- Sets output alignment to "NONE", "C0", "C1"
	INIT => '0', -- Sets initial state of the Q output to '0' or '1'
	SRTYPE => "SYNC") -- Specifies "SYNC" or "ASYNC" set/reset
port map (
	Q => DC_DC_CLK_P, -- 1-bit output data
	C0 => DC_DC_DATA_CLK, -- 1-bit clock input
	C1 => not DC_DC_DATA_CLK, -- 1-bit clock input
	CE => '1', -- 1-bit clock enable input
	D0 => '1', -- 1-bit data input (associated with C0)
	D1 => '0', -- 1-bit data input (associated with C1)
	R => '0', -- 1-bit reset input
	S => '0'); -- 1-bit set input

dc_clk_n : ODDR2
generic map(
	DDR_ALIGNMENT => "NONE", -- Sets output alignment to "NONE", "C0", "C1"
	INIT => '0', -- Sets initial state of the Q output to '0' or '1'
	SRTYPE => "SYNC") -- Specifies "SYNC" or "ASYNC" set/reset
port map (
	Q => DC_DC_CLK_N, -- 1-bit output data
	C0 => not DC_DC_DATA_CLK, -- 1-bit clock input
	C1 => DC_DC_DATA_CLK, -- 1-bit clock input
	CE => '1', -- 1-bit clock enable input
	D0 => '1', -- 1-bit data input (associated with C0)
	D1 => '0', -- 1-bit data input (associated with C1)
	R => '0', -- 1-bit reset input
	S => '0'); -- 1-bit set input
	



--SRAM_SCL <= aux_clk;
--TS_SCL   <= aux_clk;

------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------MASTER/Daughter card communication control-------------------------------------
------------------------------------------------------------------------------------------------------------------------------
oops_reset 	  <= ctrl_register(0)(0);--reset all modules to idle
ch16_calib_en <= ctrl_register(0)(4);
CALIB_EN 	  <= ch16_calib_en;

DC_COMM_PARSER: entity work.DC_COMM_PARSER
PORT MAP(
	CLK     			  => asic_clk,  		--62.5MHz
	DC_ADDR 			  => DC_ADDRESS, 		--DC address set by dip switch 
	SEND    			  => send_srt,   		--send data to scrod sognal comes from serial_readout_dump
	TRIGGER 			  => '0',            --signal  to send trigger over comm process
	OOPS_RESET       => oops_reset,     --reset all modules to idle comes from register 0 bit 0
	------master to DC signals----------
	MAS_DC_DATA_CLK  => sys_clk,        --master to dc data clock
	MAS_DC_RX   	  => RX,	   --trigger to receive data from master  
	MAS_DC_DATA_IN   => DATA_IN, --data from master side to DC		
	DC_MAS_TX   	  => dc_mas_tx,		--trigger for master that DC is transmitting data
	DC_MAS_DATA_OUT  => dc_mas_data_out,--data from DC to master side    
	------DC to DC signals--------------
	DC_DC_DATA_CLK   => DC_DC_DATA_CLK,--copy of master to dc data clock for downstream  dc
	DC_DC_RX    	  => DC_DC_RX,      --trigger to receive data from downstream dc  
	DC_DC_DATA_IN    => DC_DC_DATA_IN, --data from downstream  dc to this dc  
	DC_DC_TX    	  => DC_DC_TX,		  --copy of trigger to receive data from master for downstream dc
	DC_DC_DATA_OUT   => DC_DC_DATA_OUT,--copy of data from master to dc for downstream dc
	--output registers for DC drivers--
	RB_REG_VALUE	  => rb_value,      --register value for read back
	RB_REG_NUM       => rb_reg,		  --reagister number for readback
	TX_BUSY          => tx_busy,       --sending module busy signal
	TX_UPDATE        => tx_dac_update, --updatae signal for TARGETX DAC module
	DAC_UPDATE       => mppc_dac_update,--update signal for mppc dac module
	OUTPUT_REGISTERS => ctrl_register,  --control registers for DC
	-----busy signals from drivers-----
	READOUT_BUSY     => readout_busy,  -- busy signal from readoutcontrol
	ASIC_BUSY    	  => tx_dac_busy,   --busy signal from TARGETX_DAC_CONTROL
	DUMP_BUSY 	     => readout_busy,  --busy signal from wave_data_load
	MPPC_DAC_BUSY	  => mppc_dac_busy, --busy signal from mppc dac module
	-----data from pedestal drvier-----  
	wave_fifo_clk    => wave_fifo_clk, --clock rate for transfering data into wave fifo
	wave_fifo_full   => wave_fifo_full,--signals from wave fifo holding data to be sent to master
	wave_fifo_wr_en  => wave_fifo_wr_en, 
	wave_fifo_data   => wave_fifo_din,
	wave_fifo_reset  => wave_fifo_rst);
	
rb_value <= trig_count(15 downto 0)  when to_integer(unsigned(rb_reg))= 69 else
				trig_count(31 downto 16) when to_integer(unsigned(rb_reg))= 96 else
				ctrl_register(to_integer(unsigned(rb_reg)));
	
	
------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------TargetX DAC Control------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------
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
-----------------------------------------------TargetX trigger control--------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------
sw_trig 	 <= ctrl_register(5)(0);--serves as software trigger or cdt send signal
trig_mode <= ctrl_register(6)(3 downto 0);--trig_mode usage:
														--x"0": use software trigger 
														--x"1": use TARGETX hardware trigger
														--x"2": use scrod trigger(wire)
														--x"3": use coincidence hardware trigger(connector)
														--x"F": trigger from anything														
dc_mask     		<= ctrl_register(7)(3 downto 0);--binary bit mask for enabled dc
ack_cnt     		<= to_integer(unsigned(ctrl_register(8)));--number of clock to wait for ack from scord	
trig_count_max  	<= ctrl_register(18);	--number of clock cycles to count trigger scalers
trig_cnt_en 		<= ctrl_register(19)(0);--enable for trigger scaler counting										

--syncing trigger to sstin clock									
trigger_raw1 <= trigger_raw and not readout_busy when rising_edge(internal_sstin);
trigger_raw2 <= trigger_raw and not readout_busy when falling_edge(internal_sstin);
trigger 		 <= trigger_raw1 or trigger_raw2;

TARGETX_TRIGGER_LOGIC : entity work.BMD_TRIG_LOGIC
PORT MAP (
	-----------------INPUTS------------------------------
	CLK 		  => asic_clk,
	OOPS       => oops_reset,		--comes from ctrl register 0 bit 0
	TRIG_MODE  => trig_mode,		--comes from ctrl register 6 bits 3 to 0
	SW_TRIG 	  => sw_trig,			--comes from ctrl register 5 bits 0
	TX_TRIG 	  => TX_TRIG,			--hardware trigger form targetX
	SCROD_TRIG => SCROD_TRIG,		--wired trigger ack from scrod
	DC_MASK    => dc_mask,			--comes from ctrl register 7 bits 3 to 0
	DC_ADDRESS => DC_ADDRESS,		--dc address form dip switch
	WAIT_COUNT => ack_cnt,			--comes from ctrl register 8
	CNT_START  => trig_cnt_en,		--comes from ctrl register 19 bit 0
	MAX_CNT    => trig_count_max,	--comes from ctrl register 18
	RD_BUSY    => readout_busy,	--readout bust from readout module
	----------------OUTPUTS------------------------------
	TRIGGER 	  => trigger_raw,		--trigger output from trigger logic
	TX_HW_TRIG => TX_HW_TRIG,		--wired event trigger to scrod
	TRIG_COUNT => trig_count,		--read back register numbers 19 and 20
	TRIG_BITS  => trigger_bits,	--trigger bits from event
	----------------INOUT SIGNALS------------------------
	DC_DC_TRIG => DC_DC_TRIG,		--inout for trigger between dc
	SC_DC_TRIG => SC_DC_TRIG);		--inout for trigger between scrod and dc

------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------TargetX Readout control--------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------
offet_direction <= ctrl_register(9)(15);          --0: add window offset, 1: minus window offset
num_win_offet   <= ctrl_register(9)(8 downto 0);  --number of windows to offset from time of trigger
num_win2read 	 <= ctrl_register(10)(8 downto 0); --number of windows to readout
fixed_win_en 	 <= ctrl_register(12)(15);         --bit 15: '1'=> use fixed start win and (8 downto 0) is the fixed start win
fix_win_num 	 <= ctrl_register(12)(8 downto 0); --fix window readout 
calc_ped_en     <= ctrl_register(13)(15);         --'1': enables ped calc, '0': regular operation
ped_n_averge	 <= ctrl_register(13)(3 downto 0); --2**NAVG = number of averages for calculating peds(1-7)
smp_win_cnt_rst <= ctrl_register(14)(15);         --resets window number in sampling script
smp_rst_para    <= ctrl_register(14)(1 downto 0); --sets timing for sstin and current window count in targetx
dig_ramp_len    <= ctrl_register(15);				  --sets ramp length when digitizing
--set ped_n_averge to following values:
-- x"0" = averges over 1 readout
-- x"1" = averges over 2 readout
-- x"2" = averges over 4 readout
-- x"3" = averges over 8 readout
-- x"4" = averges over 16 readout
-- x"5" = averges over 32 readout
-- x"6" = averges over 64 readout
-- x"7" = averges over 128 readout
-- else = 0


--TARGETX_readout_control: entity work.TX_ReadoutControl
--PORT MAP(
--		--GENERAL I/O
--		CLK 			=> asic_clk,			--62.5MHz clock
--		DCNUM       => DC_ADDRESS,       --comes dip switch
--		OOPS 			=> oops_reset,       --comes from ctrl register 0 bit 0
--		SCROD_SEND 	=> sw_trig,          --comes from ctrl register 5 bit 0
--		TRIG 			=> trigger,          --depends on trigger mode
--		TRIG_MODE 	=> trig_mode,        --comes from ctrl register 6 bits 3 to 0
--		OFFSET_DIR  => offet_direction,  --comes from ctrl register 9 bit 15
--		WIN_OFFSET  => num_win_offet,    --comes from ctrl register 9 bits 8 to 0
--		WIN2READ    => num_win2read,     --comes from ctrl register 10 bits 8 to 0
--		FIX_WIN_EN	=> fixed_win_en,	   --comes from ctrl register 12 bit 15
--		FIXED_WIN   => fix_win_num,      --comes from ctrl register 12 bit 8 to 0
--		PED_CALC_EN => calc_ped_en,      --comes from ctrl register 13 bit 15
--		NAVG 			=> ped_n_averge,     --comes from ctrl register 13 bits 3 to 0
--		RD_BUSY     => readout_busy,     --internal readout busy signal
--		--I/O TO communication process
--		FIFO_CLK    => wave_fifo_clk,
--		FIFO_RST    => wave_fifo_rst,
--		FIFO_WR_EN  => wave_fifo_wr_en,
--		FIFO_DIN    => wave_fifo_din,
--		FIFO_FULL   => wave_fifo_full,
--		SEND_SRT    => send_srt,
--		TX_BUSY 		=> tx_busy,
--		--I/O TO SAMPLING AND DIGITIZATION PROCESS
--		SMP_RESET   => smp_win_cnt_rst, --comes from ctrl register 14 bit 15
--		CFG         => smp_rst_para,    --comes from ctrl register 14 bits 1 to 0
--		RAMP_LEN    => dig_ramp_len,    --comes from ctrl register 15
--		
--		--I/O TO TX
--		SSTIN 			 => internal_sstin,
--		WR_ADDRCLR  	 => WR_ADDRCLR,
--		CLR      		 => CLR,  
--		RD_EN    		 => RD_ENA, 
--		START_RAMP 	    => ramp_srt,
--		DIG_RD_ROWSEL_S => RD_ROWSEL_S,
--		DIG_RD_COLSEL_S => RD_COLSEL_S,
--		SAMPLESEL 		 => SAMPLESEL_S,
--		SR_CLR          => SR_CLEAR,
--		SR_CLK 			 => SR_CLK,
--		SR_SEL 			 => SR_SEL,
--		SMPLSI_ANY 		 => SAMPLESEL_ANY,
--		DONE            => DONE,
--		TRIG_BITS       => trigger_bits,    
--		TX_DOUT  		 => TX_DATA);

SAMPLESEL_S<="00000";
SR_CLEAR<='0';
SAMPLESEL_ANY<='0';
RD_ROWSEL_S<="000";
RD_COLSEL_S<="000000";
RD_ENA<='0'; --change made by Tommy, was 0 originally
SR_CLK<='0';
SR_SEL<='0';
WR_ADDRCLR<='0';
CLR<='0';

REGCLR   <= '0';
WR1_ENA  <= not readout_busy;
WR2_ENA 	<= not readout_busy;							  
RAMP     <= ramp_srt;
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


------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------Temperature sensor control-----------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------waveform pedestal Sram controls------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------
--need to add SRAM CODE--

------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------Testing Trig Out------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------
--This is maps ack to trig_count to determine the comparetors workinnnnnng
AUX1_N <= trig_count(0);



end Behavioral;

