----------------------------------------------------------------------------------
-- Company        : UH Manoa- Department of Physics
-- Engineer       : KHANH LE
-- Updated        : 
-- Create Date    : 14:40:31 12/19/2017 
-- Module Name    : TX_ReadoutControl
-- Project Name   : Borehole Moun Detector(BMD)
-- Target Devices : SPARTAN 6 XC6SLX9-2TQG144
-- Tool versions  : ISE 14.7
-- Description    : Module reads out 4 windows from TargetX at a time and sends data to fifo, Module can also do 
--						  pedestal calculation.
--
-- Dependencies   : 1) To readout more then 4 windows at a time increase BRAM size and change address bits 
--						  2) Pedestal doesn't provide good pedestal data so currently ped calc is done on PC
--						  3) Code needs to be added to save pedestal data to SRAM
--						  4) Code needs to be added to do pedestal subtraction 
--
-- Revision:   
-- Revision 0.01 - File Created 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

Library work;
use work.all;
use work.BMD_definitions.all;


entity TX_ReadoutControl is
	PORT(
		--GENERAL I/O
		CLK 			: IN STD_LOGIC;
		DCNUM       : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		OOPS 			: IN STD_LOGIC;
		SCROD_SEND 	: IN STD_LOGIC;
		TRIG 			: IN STD_LOGIC;
		TRIG_MODE 	: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		OFFSET_DIR  : IN STD_LOGIC;
		WIN_OFFSET  : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		WIN2READ    : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		FIX_WIN_EN	: IN STD_LOGIC;	
		FIXED_WIN   : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		PED_CALC_EN : IN STD_LOGIC;
		NAVG 			: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		RD_BUSY     : OUT STD_LOGIC;
		RD_STATE    : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		--I/O TO communication process
		FIFO_CLK    : OUT STD_LOGIC;
		FIFO_RST    : OUT STD_LOGIC;
		FIFO_WR_EN  : OUT STD_LOGIC;
		FIFO_DIN    : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		FIFO_FULL   : IN STD_LOGIC;
		SEND_SRT    : OUT STD_LOGIC;
		TX_BUSY 		: IN STD_LOGIC;
		--I/O TO SAMPLING AND DIGITIZATION PROCESS
		SMP_RESET   : IN STD_LOGIC;
		CFG         : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		RAMP_LEN    : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		
		--I/O TO TX
		SSTIN 			 : OUT STD_LOGIC;
		WR_ADDRCLR  	 : OUT STD_LOGIC;
		CLR      		 : OUT STD_LOGIC;  
		RD_EN    		 : OUT STD_LOGIC; 
		START_RAMP 	    : OUT STD_LOGIC;
		DIG_RD_ROWSEL_S : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
		DIG_RD_COLSEL_S : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		SAMPLESEL 		 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
		SR_CLR          : OUT STD_LOGIC;
		SR_CLK 			 : OUT STD_LOGIC;
		SR_SEL 			 : OUT STD_LOGIC;
		SMPLSI_ANY 		 : OUT STD_LOGIC;
		DONE            : IN STD_LOGIC;
		TRIG_BITS       : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		TX_DOUT  		 : IN STD_LOGIC_VECTOR(15 DOWNTO 0)
);
end TX_ReadoutControl;

architecture Behavioral of TX_ReadoutControl is

--internal signals for readout pocess
type readout_state is(
	idle,			--waits for trigger
	setup_readout,	--sets window address to readout
	event_rd_wait, --waits for targetx to move from trigger window
	readout_reset,	--reset all readout signals
	start_dig,		--starts digitization and waits for digitization to start
	wait_digi_done, --waits for digitization to finish
	start_readout,	--waits for data from digitization to be available
	smplsi_any_hi,  --pulls smplsi_any high
	sr_sel_hi,		--pulls sr_sel high and waits for # clock cycles
	sr_clk_hi,		--pulls sr_clk high and sr_sel low and waits for # clock cycles
	sr_clk_lo,		--pulls sr_clk low and sr_sel low and waits for # clock cycles	
	data_wait,		--wait for data to be at pin
	load_1st_bit,	--readout 1st bit of 1st sample of 1st window
	bit_inc,		   --increment bit number
	sr_clk_hi1,		--pulls sr_clk high and waits for # clock cycles for next bit, loads bram if on last bit			
	sr_clk_lo1,		--pulls sr_clk low and waits for # clock cycles for next bit
	check_smp,		--checks if all samples are readout and increment sample number
	check_win,		-- checks if all windows are readout and increments window number
	check_navg,		--checks if averging is complete
	wait_send_sig,	--waits for master take data
	check_TX,		--checks if TX sender is busy
	reset_fifo,		--resets fifo
	reaset_wait,	--waits a few clock cycles for reset  to settle
	header1,			--loading start condition header for scrod into fifo
	header2,			--loading dc number and window count into fifo
	header3,			--loading event number into fifo	
	header4,			--loading start win and trigger bits into fifo	
	start_xfer,		--starts data transfer to SCROD
	load_bram_add,	--loads BRAM address
	BRAM_wait,		--waits for data to be output from BRAM 
	BRAM_read,		--read data from BRAM and incerement sample count
	load_bram_add1,--loads BRAM address
	BRAM_wait1,		--waits for data to be output from BRAM 
	BRAM_read1,		--waits for data to be output from BRAM		
	footer,        --loads footer into fifo
	rd_done			--done with readout 
);
signal readout_st 	: readout_state := idle;
signal rd_st 			: integer := 0;
signal event_num 		: unsigned(23 downto 0) := (others=>'0');
signal cur_win 		: unsigned(8 downto 0)  := (others=>'0');
signal win_srt 		: unsigned(8 downto 0)  := (others=>'0');
signal win_count 		: unsigned(8 downto 0)  := (others=>'0');
signal smp_num 		: unsigned(4 downto 0)  := (others=>'0');
signal smp_count 		: unsigned(10 downto 0)  := (others=>'0');
signal bit_count 		: integer := 0;
signal wait_count 	: integer := 0;
signal navgcnt 		: integer := 0;
signal ncnt 			: integer := 0;
signal bit_shift     : integer := 0;
signal bram_adda 		: std_logic_vector(10 downto 0);
signal bram_dina 	   : std_logic_vector(19 downto 0);
signal bram_douta 	: std_logic_vector(19 downto 0);
signal bram_addb 		: std_logic_vector(10 downto 0);
signal bram_dout 		: std_logic_vector(11 downto 0);
signal bram_doutb 		: std_logic_vector(19 downto 0);
signal xfer_add 			: std_logic_vector(6 downto 0);
signal bram2temp_add 	: std_logic_vector(6 downto 0);
signal temp2bram_add 	: std_logic_vector(6 downto 0);
signal xfer_bram2temp 	: std_logic;
signal xfer_temp2bram 	: std_logic;
signal pedarray_tmp		: WaveWideTempArray;
signal pedarray_tmp2 	: WaveWideTempArray;
signal dmx_wav				: WaveWideTempArray := (x"00000",x"00000",x"00000",x"00000",x"00000",x"00000",x"00000",x"00000",x"00000",x"00000",x"00000",x"00000",x"00000",x"00000",x"00000",x"00000");
constant add_time       : integer := 6;
constant load_time      : integer := 6;




type temp2bram_state is(
	wait_start,	--waits for readout process to give start
	BRAM_load,  --loads BRAM address
	addr_inc    --increment address
);  
signal temp2bram_st  	: temp2bram_state := wait_start;
signal tmp2bram_busy 	: std_logic := '0';
signal tmp2bram_ctr  	: std_logic_vector(3 downto 0) := x"0";
signal bram_we 			: std_logic_vector(0 downto 0) := (others => '0');

type bram2tmp_state is(
	wait_start,	--waits for readout process to give start and sets first address
	read_BRAM,  --reads data form BRAM and increments address
	load_addr	--loads address into BRAM
);
signal bram2temp_st 	: bram2tmp_state := wait_start;
signal bram2tmp_busy : std_logic := '0';
signal bram2tmp_ctr  : std_logic_vector(3 downto 0) := x"0";

--internal signal for sampling process
type smp_states is(
	resetting, --Initial State, however sstin_out is always running 
	sampling   --main counter is ++ and wr_ena is active
);
signal smp_st	     : smp_states := resetting;
signal clk_cntr     : std_logic_vector(1 downto 0) := (others => '0');
signal smp_win_cnt  : unsigned(8 downto 0) := "000000000";--current write address

--internal signals for digitization process
type dig_states is(
	Idle,	        --waits for start signal from readout process
	WaitAddress,  --wait for address to settle on ASIC
	clr_wait,     --waits 5 clock cycle for clear to settle
	WConvert,	  --set read enable high, and start ramp
	CheckDone 	  --waits for readout to finish
);
signal dig_st	  : dig_states := Idle;
signal ramp_cnt  : integer := 0;
signal dig_busy  : std_logic;
signal dig_start : std_logic;

attribute keep: boolean;
attribute keep of rd_st : signal is true;
--attribute keep of bram_we : signal is true;


begin
---------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------IPCORE COMPONENTS---------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------

srout_bram : entity work.srout_bram_blkmem
PORT MAP (
	clka 	=> CLK,
	wea 	=> bram_we,
	addra => bram_adda,
	dina 	=> bram_dina,
	douta => bram_douta,
	clkb 	=> CLK,
	web 	=> "0",--read only
	addrb => bram_addb,
	dinb 	=> x"00000",
	doutb => bram_doutb);
	
bit_shift <= to_integer(unsigned(NAVG));
bram_dout <= bram_doutb((11+bit_shift) downto (0+bit_shift)) when PED_CALC_EN = '1' else 
				 std_logic_vector(unsigned(bram_doutb(11 downto 0)));
FIFO_CLK  <= CLK;
---------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------sampling process------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------
sampling_process: process(CLK) begin
--Theory of operation for TargetX (IM:9/5/2014): 
--clk period is 16 ns. clk/2 length is 8 ns
-- sstin_out is always present with a 64 ns period:
-- clk: 					10101010 10101010		each bit is 8 ns
-- sstin_out:			11110000 11110000
-- main counter++:	01000100 01000100	  (as per TX simulations)
-- main counter++:	00100010 00100010	  (as per this implementation)
--when start is asseted, main counter is reset and sampling starts by enabling wr1_ena and wr_2 ena. 
--main counter is increased on everyother falling edge of the input clock
if rising_edge(CLK) then
	clk_cntr <= std_logic_vector(unsigned(clk_cntr) + 1);
	SSTIN    <= clk_cntr(1); 
	
	if SMP_RESET = '1' then --resets all windows and counts
		WR_ADDRCLR   <= '1';
		smp_win_cnt  <= (others => '0');
		smp_st       <= resetting;
	else
		Case smp_st is
			When resetting => --holds wr_addrclr high until cfg(1 downto 0) = clk_cntr 
				WR_ADDRCLR   <= '1';
				smp_win_cnt  <= (others => '0');
				if clk_cntr = CFG then 
					WR_ADDRCLR <= '0';
					smp_win_cnt<= (others => '0');
					smp_st <= sampling;
				else
					smp_st <= resetting;
				end if;

			When sampling => --starts targetx sampling, stays in this state until reset goes high
				WR_ADDRCLR  <= '0';
				smp_st      <= sampling;
				if (clk_cntr = "01" or clk_cntr = "11") then --increments sampling windows every other count
					smp_win_cnt <= smp_win_cnt + 1;
				else
					smp_win_cnt <= smp_win_cnt;
				end if;

			When Others =>
				smp_win_cnt <= (Others => '0');
				smp_st      <= resetting;
		
		end case;				
	end if;
end if;
end process;



---------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------Digitizing process----------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------
Digi_process:process(CLK) begin
if rising_edge(CLK) then	
	if OOPS = '1' then
		dig_st <= Idle;
	else
		Case dig_st is
			When Idle =>--waits for start signal from readout process
				CLR        <= '0';
				RD_EN      <= '0';
				START_RAMP <= '0';
				ramp_cnt   <= 0;
				dig_busy   <= '0';
				dig_st     <= Idle;
				if dig_start = '1' then  
					CLR      <= '1';
					dig_busy <= '1';
					dig_st   <= WaitAddress;	
				end if;

			When WaitAddress =>  --wait for address to settle on ASIC
				CLR    <= '1';
				if ramp_cnt < 60 then 
					ramp_cnt <= ramp_cnt + 1;
					dig_st   <= WaitAddress;
				else
					ramp_cnt  <= 0;
					dig_st    <= clr_wait;
				end if;	

			when clr_wait => --waits for sampling to move to next set of 4 windows from trigger window before digitizing
				CLR        <= '0';
				RD_EN      <= '1'; 	
				if ramp_cnt < 120 then 
					ramp_cnt <= ramp_cnt + 1;
					dig_st   <= clr_wait;
				else
					ramp_cnt   <= 0;
					dig_st     <= WConvert;
				end if;
				
			When WConvert =>  --set read enable high, and start ramp
				CLR        <= '0';
				RD_EN      <= '1';
				START_RAMP <= '1';
				dig_st     <= WConvert;
				if ramp_cnt > to_integer(unsigned(RAMP_LEN)) then 
					ramp_cnt <= 0;
					dig_st 	<= CheckDone;
				else
					ramp_cnt <= ramp_cnt + 1;
					dig_st   <= WConvert;
				end if;

			When CheckDone =>  --waits for readout to finish
				CLR        <= '0';
				RD_EN      <= '1';
				START_RAMP <= '0';
				dig_busy   <= '0';
				if(dig_start = '0') then 
					dig_st  <= Idle;
				else
					dig_st  <= CheckDone;
				end if;

			When Others =>
				CLR        <= '1';
				dig_st     <= Idle;
			  
		end Case;
	end if;
end if;
end process;


---------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------Readout process-------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------
ncnt <= 1   when NAVG=x"0" else
		  2   when NAVG=x"1" else
		  4   when NAVG=x"2" else
		  8   when NAVG=x"3" else
		  16  when NAVG=x"4" else
		  32  when NAVG=x"5" else
		  64  when NAVG=x"6" else
		  128 when NAVG=x"7" else
		  0 ;
		
Readout_process: process(CLK) begin
if rising_edge(CLK) then
	
	DIG_RD_ROWSEL_S(2 downto 0) <= std_logic_vector(cur_win(2 downto 0));
	DIG_RD_COLSEL_S(5 downto 0) <= std_logic_vector(cur_win(8 downto 3));
	SAMPLESEL                   <= std_logic_vector(smp_num);
	RD_STATE 						 <= std_logic_vector(to_unsigned(rd_st,16));
	
	if OOPS = '1' then
		readout_st <= idle;
		event_num  <= (others => '0');
	else
		case readout_st is
			when idle => --waits for trigger
				rd_st 		<= 0;
				RD_BUSY     <= '0';
				dig_start   <= '0';
				SR_CLR      <= '1';
				SR_CLK      <= '0';
				SR_SEL      <= '0';
				SMPLSI_ANY  <= '0';
				cur_win     <= (others => '0');
				win_srt     <= (others => '0');
				win_count   <= (others => '0');
				smp_num     <= (others => '0');
				bit_count   <= 0;
				wait_count  <= 0;
				navgcnt     <= 0;
				FIFO_RST    <= '0';
				FIFO_WR_EN  <= '0';
				FIFO_DIN    <= (others => '0');
				SEND_SRT    <= '0';
				smp_count   <= (others => '0');
				bram_addb   <= (others => '0');
				readout_st  <= idle;
				if TRIG = '1' then
					RD_BUSY    <= '1';
					event_num  <= event_num + 1;
					readout_st <= setup_readout;
				end if;
			
			when setup_readout => --sets window address to readout
				rd_st <= 1;
				if FIX_WIN_EN = '0' then
					if OFFSET_DIR = '1' then
						win_srt <= smp_win_cnt - unsigned(WIN_OFFSET);
					else
						win_srt <= smp_win_cnt + unsigned(WIN_OFFSET);
					end if;
					readout_st <= event_rd_wait;
				else
					if OFFSET_DIR = '1' then
						win_srt <= unsigned(FIXED_WIN) - unsigned(WIN_OFFSET);
					else
						win_srt <= unsigned(FIXED_WIN) + unsigned(WIN_OFFSET);
					end if;
					readout_st <= readout_reset;
				end if;
				
			when event_rd_wait => --waits for targetx to move from trigger window
				rd_st 	    <= 2;
				SR_CLR       <= '1';
				readout_st <= event_rd_wait;
				if wait_count < 500 then
						wait_count <= wait_count + 1;
				else
					wait_count <= 0;
					readout_st <= readout_reset;
				end if;
				
			when readout_reset => --reset all readout signals
				rd_st 	    <= 3;
				dig_start   <= '0';
				SR_CLR      <= '1';
				SR_CLK      <= '0';
				SR_SEL      <= '0';
				SMPLSI_ANY  <= '0';
				cur_win     <= win_srt + win_count;
				smp_num     <= (others => '0');
				bit_count   <= 0;
				readout_st  <= start_dig;
				if wait_count < 20 then
					wait_count <= wait_count + 1;
					readout_st <= readout_reset;
				else
					dig_start  <= '1';
					wait_count <= 0;
					readout_st <= start_dig;
				end if;
				
			when start_dig => --starts digitization and waits for digitization to start
				rd_st     <= 4;
				dig_start <= '1'; --leave digitization on for entire readout
				if dig_busy <= '1' then
					readout_st <= wait_digi_done;
				else
					readout_st <= start_dig;
				end if;
								
			when wait_digi_done => --waits for digitization to finish
				rd_st <= 5;
				if dig_busy = '0' then
					readout_st <= start_readout;
				else
					readout_st <= wait_digi_done;
				end if;
				
			when start_readout => --waits for data from digitization to be available
				rd_st      <= 6;
				xfer_add   <= std_logic_vector(win_count(1 downto 0)) & std_logic_vector(smp_num);
				SR_CLR     <= '0';
				if wait_count < add_time then
					wait_count <= wait_count + 1;
					readout_st <= start_readout;
				else
					wait_count <= 0;
					readout_st <= smplsi_any_hi;
				end if;
			
			when smplsi_any_hi => --pulls smplsi_any high 
				rd_st      <= 7;
				SMPLSI_ANY <= '1'; -- smplsi_any is held high for entire readout
				if wait_count < add_time then
					wait_count <= wait_count + 1;
					readout_st <= smplsi_any_hi;
				else
					wait_count <= 0;
					readout_st <= sr_sel_hi;
				end if;
			
			when sr_sel_hi => --pulls sr_sel high and waits for # clock cycles
				rd_st  <= 8;
				SR_SEL <= '1';
				if wait_count < load_time then
					wait_count <= wait_count + 1;
					readout_st <= sr_sel_hi;
				else
					SR_CLK     <= '1';
					wait_count <= 0;
					readout_st <= sr_clk_hi;
				end if;

			when sr_clk_hi => --pulls sr_clk high and sr_sel low and waits for # clock cycles
				rd_st  	   <= 9;
				SR_SEL 	   <= '1';
				SR_CLK     <= '1';
				SMPLSI_ANY <= '1';
				if wait_count < load_time then
					wait_count <= wait_count + 1;
					readout_st <= sr_clk_hi;
				else	
					SR_SEL     <= '0';
					SR_CLK     <= '0';
					wait_count <= 0;
					readout_st <= sr_clk_lo;
				end if;
				
			when sr_clk_lo => --pulls sr_clk low and sr_sel low and waits for # clock cycles
				rd_st  <= 10;
				SR_SEL <= '0';
				SR_CLK <= '0';
				if wait_count < load_time then
					wait_count <= wait_count + 1;
					readout_st <= sr_clk_lo;
				else	
					wait_count <= 0;
					readout_st <= data_wait;
				end if;	
					
			when data_wait => --wait for data to be at pin
				rd_st      <= 11;
				SR_SEL 	  <= '0';
				SR_CLK     <= '0';
				SMPLSI_ANY <= '1';
				readout_st <= load_1st_bit;
				
			when load_1st_bit => --readout 1st bit of 1st sample of 1st window
				rd_st       <= 12;
				dmx_wav(0 ) <= x"00" & dmx_wav(0 )(10 downto 0) & TX_DOUT(0 );
				dmx_wav(1 ) <= x"00" & dmx_wav(1 )(10 downto 0) & TX_DOUT(1 );
				dmx_wav(2 ) <= x"00" & dmx_wav(2 )(10 downto 0) & TX_DOUT(2 );
				dmx_wav(3 ) <= x"00" & dmx_wav(3 )(10 downto 0) & TX_DOUT(3 );
				dmx_wav(4 ) <= x"00" & dmx_wav(4 )(10 downto 0) & TX_DOUT(4 );
				dmx_wav(5 ) <= x"00" & dmx_wav(5 )(10 downto 0) & TX_DOUT(5 );
				dmx_wav(6 ) <= x"00" & dmx_wav(6 )(10 downto 0) & TX_DOUT(6 );
				dmx_wav(7 ) <= x"00" & dmx_wav(7 )(10 downto 0) & TX_DOUT(7 );
				dmx_wav(8 ) <= x"00" & dmx_wav(8 )(10 downto 0) & TX_DOUT(8 );
				dmx_wav(9 ) <= x"00" & dmx_wav(9 )(10 downto 0) & TX_DOUT(9 );
				dmx_wav(10) <= x"00" & dmx_wav(10)(10 downto 0) & TX_DOUT(10);
				dmx_wav(11) <= x"00" & dmx_wav(11)(10 downto 0) & TX_DOUT(11);
				dmx_wav(12) <= x"00" & dmx_wav(12)(10 downto 0) & TX_DOUT(12);
				dmx_wav(13) <= x"00" & dmx_wav(13)(10 downto 0) & TX_DOUT(13);
				dmx_wav(14) <= x"00" & dmx_wav(14)(10 downto 0) & TX_DOUT(14);
				dmx_wav(15) <= x"00" & dmx_wav(15)(10 downto 0) & TX_DOUT(15);
				readout_st  <= bit_inc;
				
			when bit_inc => --increment bit number
				rd_st      <= 13;
				bit_count  <= bit_count + 1;
				if bit_count = 4 and PED_CALC_EN = '1' then
					bram2temp_add  <= xfer_add;
					xfer_bram2temp <= '1';
				end if;
				readout_st <= sr_clk_hi1;
				
			when sr_clk_hi1 => --pulls sr_clk high and waits for # clock cycles for next bit, loads bram if on last bit
				rd_st <= 14;
				xfer_bram2temp <= '0';
				if bit_count < 12 then
					SR_CLK <= '1';
					if wait_count < load_time then
						wait_count <= wait_count + 1;
						readout_st <= sr_clk_hi1;
					else	
						wait_count <= 0;
						readout_st <= sr_clk_lo1;
					end if;	
				else
					SR_CLK         <= '0';
					xfer_temp2bram <= '1';
					temp2bram_add  <= xfer_add;
					readout_st 	   <= check_smp;
					if navgcnt = 0 then
						pedarray_tmp2((0 )) <= std_logic_vector(unsigned(dmx_wav(0 )));--if n avege is zero then load 1st set of data into BRAM
						pedarray_tmp2((1 )) <= std_logic_vector(unsigned(dmx_wav(1 )));
						pedarray_tmp2((2 )) <= std_logic_vector(unsigned(dmx_wav(2 )));
						pedarray_tmp2((3 )) <= std_logic_vector(unsigned(dmx_wav(3 )));
						pedarray_tmp2((4 )) <= std_logic_vector(unsigned(dmx_wav(4 )));
						pedarray_tmp2((5 )) <= std_logic_vector(unsigned(dmx_wav(5 )));
						pedarray_tmp2((6 )) <= std_logic_vector(unsigned(dmx_wav(6 )));
						pedarray_tmp2((7 )) <= std_logic_vector(unsigned(dmx_wav(7 )));
						pedarray_tmp2((8 )) <= std_logic_vector(unsigned(dmx_wav(8 )));
						pedarray_tmp2((9 )) <= std_logic_vector(unsigned(dmx_wav(9 )));
						pedarray_tmp2((10)) <= std_logic_vector(unsigned(dmx_wav(10)));
						pedarray_tmp2((11)) <= std_logic_vector(unsigned(dmx_wav(11)));
						pedarray_tmp2((12)) <= std_logic_vector(unsigned(dmx_wav(12)));
						pedarray_tmp2((13)) <= std_logic_vector(unsigned(dmx_wav(13)));
						pedarray_tmp2((14)) <= std_logic_vector(unsigned(dmx_wav(14)));
						pedarray_tmp2((15)) <= std_logic_vector(unsigned(dmx_wav(15)));	
					else --if n averge isn't zero then add data to last readout,pedarray_tmp is last readout comes from bram
						pedarray_tmp2((0 )) <= std_logic_vector(unsigned(dmx_wav(0  )) + unsigned(pedarray_tmp(0 )));  
						pedarray_tmp2((1 )) <= std_logic_vector(unsigned(dmx_wav(1  )) + unsigned(pedarray_tmp(1 )));
						pedarray_tmp2((2 )) <= std_logic_vector(unsigned(dmx_wav(2  )) + unsigned(pedarray_tmp(2 )));
						pedarray_tmp2((3 )) <= std_logic_vector(unsigned(dmx_wav(3  )) + unsigned(pedarray_tmp(3 )));
						pedarray_tmp2((4 )) <= std_logic_vector(unsigned(dmx_wav(4  )) + unsigned(pedarray_tmp(4 )));
						pedarray_tmp2((5 )) <= std_logic_vector(unsigned(dmx_wav(5  )) + unsigned(pedarray_tmp(5 )));
						pedarray_tmp2((6 )) <= std_logic_vector(unsigned(dmx_wav(6  )) + unsigned(pedarray_tmp(6 )));
						pedarray_tmp2((7 )) <= std_logic_vector(unsigned(dmx_wav(7  )) + unsigned(pedarray_tmp(7 )));
						pedarray_tmp2((8 )) <= std_logic_vector(unsigned(dmx_wav(8  )) + unsigned(pedarray_tmp(8 )));
						pedarray_tmp2((9 )) <= std_logic_vector(unsigned(dmx_wav(9  )) + unsigned(pedarray_tmp(9 )));
						pedarray_tmp2((10)) <= std_logic_vector(unsigned(dmx_wav(10 )) + unsigned(pedarray_tmp(10)));
						pedarray_tmp2((11)) <= std_logic_vector(unsigned(dmx_wav(11 )) + unsigned(pedarray_tmp(11)));
						pedarray_tmp2((12)) <= std_logic_vector(unsigned(dmx_wav(12 )) + unsigned(pedarray_tmp(12)));
						pedarray_tmp2((13)) <= std_logic_vector(unsigned(dmx_wav(13 )) + unsigned(pedarray_tmp(13)));
						pedarray_tmp2((14)) <= std_logic_vector(unsigned(dmx_wav(14 )) + unsigned(pedarray_tmp(14)));
						pedarray_tmp2((15)) <= std_logic_vector(unsigned(dmx_wav(15 )) + unsigned(pedarray_tmp(15)));						
					end if;
				end if;
							
			when sr_clk_lo1 => --pulls sr_clk low and waits for # clock cycles for next bit
				rd_st  <= 15;
				SR_CLK <= '0';
				if wait_count < load_time then
					wait_count <= wait_count + 1;
					readout_st <= sr_clk_lo1;
				else	
					wait_count <= 0;
					readout_st <= data_wait;
				end if;	
				
			when check_smp => --checks if all samples are readout and increment sample number
				rd_st      		<= 16;
				bit_count  		<= 0;
				SR_SEL 	  		<= '0';
				SR_CLK     		<= '0';
				SMPLSI_ANY     <= '0';
				xfer_temp2bram <= '0';
				if smp_num < "11111" then
					smp_num    <= smp_num + 1;
					readout_st <= start_readout;
				else
					smp_num    <= (others => '0');
					readout_st <= check_win;
				end if;
				
			when check_win => -- checks if all windows are readout and increments window number
				rd_st <= 17;
				if win_count < unsigned(WIN2READ) then
					win_count  <= win_count + 1;
					readout_st <= readout_reset;
				else
					win_count  <= (others => '0');
					readout_st <= check_navg;
				end if;
				
			when check_navg => --checks if averging is complete
				rd_st <= 18;
				if PED_CALC_EN = '1' then
					if navgcnt < ncnt-1 then
						navgcnt    <= navgcnt + 1;
						readout_st <= event_rd_wait;
					else
						navgcnt <= 0;
						readout_st <= check_TX;
					end if;
				else
					if TRIG_MODE = x"0" then
						readout_st <= check_TX;
					else
						readout_st <= wait_send_sig;
					end if;
				end if;
				
			when wait_send_sig => --waits for master take data
				rd_st <= 19;
				if SCROD_SEND = '1' then
					wait_count <= 0;
					readout_st <= check_TX;
				else
					if wait_count < 900000000 then
						wait_count <= wait_count + 1;
						readout_st <= wait_send_sig;
					else	
						wait_count <= 0;
						readout_st <= idle;
					end if;	
				end if;
				
			when check_TX => --checks if TX sender is busy
				rd_st <= 20;
				if TX_BUSY = '1' then
					readout_st <= check_TX;
				else
					FIFO_RST   <= '1';
					readout_st <= reset_fifo;
				end if;
				
			when reset_fifo => --resets fifo
				rd_st      <= 21;
				FIFO_WR_EN <= '0';
				FIFO_RST   <= '0';
				smp_count  <= (others => '0');
				bram_addb  <= (others => '0');
				readout_st <= reaset_wait;
				
			when reaset_wait => --waits a few clock cycles for reset  to settle
				rd_st      <= 22;
				FIFO_RST   <= '0';
				if wait_count < 3 then
					wait_count <= wait_count + 1;
					readout_st <= reaset_wait;
				else
					wait_count <= 0;
					FIFO_DIN   <= x"77617665";
					readout_st <= header1;
				end if;
				
			when header1 => --loading start condition header for scrod into fifo
				rd_st      <= 23;
				FIFO_WR_EN <= '1';
				FIFO_DIN   <= x"77617665";--"wave" in ASCII
				readout_st <= header2;
				
			when header2 => --loading dc number and window count into fifo
				rd_st      <= 24;
				FIFO_DIN   <= x"FE" & DCNUM & x"00" & "000" & std_logic_vector(smp_win_cnt);
				readout_st <= header3;
				
			when header3 => --loading event number into fifo	
				rd_st      <= 25;
				FIFO_DIN   <= x"CF" & std_logic_vector(event_num);--packet_no;
				readout_st <= header4;
			
			when header4 => --loading start win  and trigger bits into fifo	
				rd_st      <= 26;
				FIFO_DIN   <= x"D00" & "000" & std_logic_vector(win_srt) & "000" & TRIG_BITS;
				readout_st <= start_xfer;
			
			when start_xfer => --starts data transfer to SCROD
				rd_st      <= 27;
				SEND_SRT   <= '1';
				FIFO_WR_EN <= '0';
				readout_st <= start_xfer;
				if TX_BUSY = '1' then
					SEND_SRT   <= '0';
					readout_st <= load_bram_add;
				end if;
				
			when load_bram_add => --loads BRAM address
				rd_st      <= 28;
				FIFO_WR_EN <= '0';
				bram_addb  <= std_logic_vector(smp_count);
				readout_st <= BRAM_wait;
				if FIFO_FULL = '1' then
					readout_st <= load_bram_add;
				end if;

			when BRAM_wait => --waits for data to be output from BRAM 
				rd_st      <= 29;
				bram_addb  <= std_logic_vector(smp_count);
				readout_st <= BRAM_read;
			
			when BRAM_read => --read data from BRAM and incerement sample count
				rd_st      <= 30;
				FIFO_DIN   <= x"BD" & bram_dout & x"000";
				smp_count  <= smp_count + 1;
				readout_st <= load_bram_add1;
			
			when load_bram_add1 => --loads BRAM address
				rd_st      <= 31;
				bram_addb  <= std_logic_vector(smp_count);
				readout_st <= BRAM_wait1;

			when BRAM_wait1 => --waits for data to be output from BRAM 
				rd_st      <= 32;
				bram_addb  <= std_logic_vector(smp_count);
				readout_st <= BRAM_read1;
				
			when BRAM_read1 => --waits for data to be output from BRAM
				rd_st      <= 33;
				FIFO_DIN(11 downto 0) <= bram_dout;
				FIFO_WR_EN <= '1';
				if to_integer(smp_count) > NSamplesPerWin*NWIN*NCHPerTX-2 then	--all samples for all channels readout reset (2048 = NSamplesPerWin*NWWIN*NCHPerTX) 
					readout_st <= footer;
				else 	
					smp_count  <= smp_count + 1;
					readout_st <= load_bram_add;--not done go back to readout next sample
				end if;				
								
			when footer => --loads footer
				rd_st      <= 34;
				FIFO_DIN   <= (others => '0');
				FIFO_WR_EN <= '0';
				if FIFO_FULL = '1' then
					readout_st <= footer;
				else
					FIFO_WR_EN <= '1';
					readout_st <= rd_done;
				end if;
			
			when rd_done => --done with readout
				rd_st <= 35;
				if tmp2bram_busy = '1' or bram2tmp_busy = '1' then
					readout_st <= rd_done;
				else
					readout_st <= idle;
				end if;
			
			when others =>
				readout_st <= idle;
				
		end case;
	end if;
end if;
end process;

---------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------BRAM write process----------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------
--possible change address format to win samp ch

TEMP2BRAM_process:process(CLK) begin
if falling_edge(CLK) then
	if OOPS = '1' then
		temp2bram_st <= wait_start;
	else
		case temp2bram_st is
			when wait_start => --waits for readout process to give start
				tmp2bram_busy  <= '0';
				tmp2bram_ctr   <= x"F";
				bram_we        <= "0";
				temp2bram_st   <= wait_start;
				if xfer_temp2bram = '1' then
					tmp2bram_busy <= '1';
					bram_we       <= "1";
					bram_adda     <= tmp2bram_ctr & temp2bram_add;--addres structure: ch & win & sample
					bram_dina     <= pedarray_tmp2(to_integer(unsigned(tmp2bram_ctr)));
					temp2bram_st  <= BRAM_load;
				end if;
				
			when BRAM_load => --loads BRAM address
				bram_adda     <= tmp2bram_ctr & temp2bram_add;--addres structure: ch & win & sample
				bram_dina     <= pedarray_tmp2(to_integer(unsigned(tmp2bram_ctr)));
				temp2bram_st  <= addr_inc;
			
			when addr_inc => --increment address
				if tmp2bram_ctr /= x"0" then
					tmp2bram_ctr  <= std_logic_vector(to_unsigned(to_integer(unsigned(tmp2bram_ctr))-1,4));
					temp2bram_st  <= BRAM_load;
				else
					temp2bram_st  <= wait_start;
				end if;				
			
			when others =>
				temp2bram_st  <= wait_start;
				
		end case;
	end if;

---------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------BRAM read process-----------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------
	if OOPS = '1' then
		bram2temp_st <= wait_start;
	else
		case bram2temp_st is
			when wait_start => --waits for readout process to give start and sets first address
				bram2tmp_busy <= '0';
				bram2tmp_ctr  <= x"F";
				bram2temp_st  <= wait_start;
				if xfer_bram2temp = '1' then
					bram2tmp_busy <= '1';
					bram_adda     <= bram2tmp_ctr & bram2temp_add;
					bram2temp_st  <= load_addr;
				end if;	
				
			when load_addr=> --loads address into BRAM
				bram_adda     <= bram2tmp_ctr & bram2temp_add;
				bram2temp_st  <= read_BRAM;	
				
			when read_BRAM => --reads data form BRAM and increments address
				pedarray_tmp(to_integer(unsigned(bram2tmp_ctr))) <= bram_douta;
				if bram2tmp_ctr /= x"0" then
					bram2tmp_ctr  <= std_logic_vector(to_unsigned(to_integer(unsigned(bram2tmp_ctr))-1,4));
					bram2temp_st  <= load_addr;
				else
					bram2temp_st  <= wait_start;
				end if;
				
			when others =>
				bram2temp_st  <= wait_start;

		end case;
	end if;
end if;
end process;

end Behavioral;

