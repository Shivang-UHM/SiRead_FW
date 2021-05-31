----------------------------------------------------------------------------------
-- Company        : UH Manoa- Department of Physics
-- Engineer       : KHANH LE
-- Updated        : 
-- Create Date    : 14:40:31 1/29/2018 
-- Module Name    : BMD_TRIG_LOGIC
-- Project Name   : Borehole Moun Detector(BMD)
-- Target Devices : SPARTAN 6 XC6SLX9-2TQG144
-- Tool versions  : ISE 14.7
-- Description    : Module ands trigger from nect DC and sends trigger to SCROD, once a coincidence trigger  
--						  is detected module will wait for a programmable time for SCROD to send readout signal.
--
-- Dependencies   : 

-- Revision:   
-- Revision 0.01 - File Created 
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

entity BMD_TRIG_LOGIC is
	Port ( 
	-----------------INPUTS------------------------------
		CLK 			: IN STD_LOGIC;
		OOPS        : IN STD_LOGIC;
		TRIG_MODE 	: IN STD_LOGIC_VECTOR (3 downto 0);
		SW_TRIG 		: IN STD_LOGIC;
      TX_TRIG 		: IN STD_LOGIC_VECTOR (4 downto 0);
		SCROD_TRIG  : IN STD_LOGIC;
		DC_MASK     : IN STD_LOGIC_VECTOR (3 downto 0);
		DC_ADDRESS  : IN STD_LOGIC_VECTOR (3 downto 0);
		WAIT_COUNT  : IN integer;
		CNT_START   : IN STD_LOGIC;
		MAX_CNT     : IN STD_LOGIC_VECTOR (15 downto 0);
		RD_BUSY     : IN STD_LOGIC;
		----------------OUTPUTS------------------------------
		TRIGGER 		: OUT STD_LOGIC;
		TX_HW_TRIG  : OUT STD_LOGIC;
		TRIG_COUNT  : OUT STD_LOGIC_VECTOR (31 downto 0);
		TRIG_BITS   : OUT STD_LOGIC_VECTOR (4 downto 0);
		----------------INOUT SIGNALS------------------------
      DC_DC_TRIG  : INOUT STD_LOGIC;
      SC_DC_TRIG  : INOUT STD_LOGIC
);
end BMD_TRIG_LOGIC;

architecture Behavioral of BMD_TRIG_LOGIC is
type trigger_state is (
	idle,
	trig_delay,
	wait_sc_ack,
	rd_start,
	rd_done
	);
signal trig_st : trigger_state := idle;

--trigger decision logic signals
signal sc_dc_ack 		: std_logic := '0';
signal coin_trigger  : std_logic := '0';
signal dc_dc_trigger : std_logic := '0';
signal scrod_ack 		: std_logic := '0';
signal IO_dir 			: std_logic := '0';
signal next_DC_trig  : std_logic := '0';
signal this_DC_trig  : std_logic := '0';
signal EX_trig       : std_logic := '0';
signal trig_wait 		: integer   := 0;
signal t_st      		: integer   := 0;
signal dcnum         : integer   := 0;
signal trig_buf 		: trig_buffer;
signal coin_buf      : std_logic_vector(1 downto 0);
signal sc_ack_buf    : std_logic_vector(1 downto 0);
signal dc_dc_tbuf    : std_logic_vector(1 downto 0);
signal ex_tbuf       : std_logic_vector(1 downto 0);

--trigger scaler counting signals
type trig_state is (idle,
						  srt_count,
						  wait_done);
signal trig_cnt_st   : trig_state := idle;
signal clk_counter   : unsigned(31 downto 0) := (others => '0');
signal pulse_count   : unsigned(31 downto 0) := (others => '0');
signal pulse_to_count: std_logic := '0';
signal start_cnt     : std_logic := '0';

attribute keep : boolean;
attribute keep of t_st: signal is true;
attribute keep of next_DC_trig: signal is true;
attribute keep of this_DC_trig: signal is true;
attribute keep of scrod_ack: signal is true;

begin

-------------------------------------------------------------------------------------------------------------------------------------------
--INOUT buffer and trigger decision logic, process waits for a coincidence trigger from all DC on plane and sends to scrod, when theres----
--a trigger state machine switches IOBUf and waits a settable time for scrod to ack and send readout start---------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------
SC_DC_IOBUF : IOBUF
	generic map (
		DRIVE      => 12,
		IOSTANDARD => "DEFAULT",
		SLEW       => "SLOW")
	port map (
		O  => sc_dc_ack, -- Buffer output
		IO => SC_DC_TRIG, -- Buffer inout port (connect directly to top-level port)
		I  => coin_buf(1), -- Buffer input
		T  => IO_dir -- 3-state enable input, high=input, low=output
	);

DC_DC_IOBUF : IOBUF
	generic map (
		DRIVE      => 12,
		IOSTANDARD => "DEFAULT",
		SLEW       => "SLOW")
	port map (
		O  => dc_dc_trigger, -- Buffer output
		IO => DC_DC_TRIG, -- Buffer inout port (connect directly to top-level port)
		I  => scrod_ack, -- Buffer input
		T  => not IO_dir -- 3-state enable input, high=input, low=output
	);

--setting trigger for readout module
TRIGGER <= SW_TRIG 		when TRIG_MODE = x"0" else --use software trigger
			  ex_tbuf(1) 	when TRIG_MODE = x"1" else --use TARGETX hardware trigger
			  SCROD_TRIG  	when TRIG_MODE = x"2" else --use scrod trigger(wire)
			  scrod_ack		when TRIG_MODE = x"3" else --use coincidence hardware trigger(connector)
			  SW_TRIG or ex_tbuf(1) or SCROD_TRIG or scrod_ack;--trigger from anything

--oring all tx trigger bits together for hardware trigger
--EX_trig <= TX_TRIG(0) or TX_TRIG(1) or TX_TRIG(2) or TX_TRIG(3) or TX_TRIG(4);  --Commeneted because WTF isar.
EX_trig <= TX_TRIG(0) or TX_TRIG(1) or TX_TRIG(2) or TX_TRIG(3);

--checking binary enable mask for this nad next dc and routing trigger
dcnum        <= to_integer(unsigned(DC_ADDRESS));
next_DC_trig <= dc_dc_tbuf(1) when DC_ADDRESS = x"1" or DC_ADDRESS = x"3" else '1';
this_DC_trig <= ex_tbuf(1)    when DC_MASK(dcnum-1) = '1'   else '1';

--output of trigger via wire										 
TX_HW_TRIG <= ex_tbuf(1) when RD_BUSY = '0' and TRIG_MODE = x"2" else
				  '1'        when RD_BUSY = '1' and TRIG_MODE = x"2" else '0';

--output of cioncidance trigger via connector
coin_trigger <= this_DC_trig and next_DC_trig  when trig_st = idle       else
			       '1'      					        when trig_st = trig_delay else '0';

scrod_ack <= sc_ack_buf(1) and sc_ack_buf(0) and sc_dc_ack when IO_dir = '1' else '0';

--TRIG_BITS <= trig_buf(0) when ex_tbuf(1) = '1' and trig_st = idle;
			  
trig_wait_process : process(CLK) begin
if rising_edge(CLK) then
--buffering trigger bits to to send to Pc
	trig_buf(1)  <= trig_buf(0);
	trig_buf(0)  <= TX_TRIG;

	coin_buf(1) <= coin_buf(0);
	coin_buf(0) <= coin_trigger;
	
	sc_ack_buf(1) <= sc_ack_buf(0);
	sc_ack_buf(0) <= sc_dc_ack;
	
	dc_dc_tbuf(1) <= dc_dc_tbuf(0);
	dc_dc_tbuf(0) <= dc_dc_trigger;
	
	ex_tbuf(1) <= ex_tbuf(0);
	ex_tbuf(0) <= EX_trig;
	
	if OOPS = '1' then
		trig_st <= idle;
	else
		case trig_st is
			when idle => --wait for coincidence trig
				t_st      <= 0;
				IO_dir    <= '0';
				trig_wait <= 0;
				trig_st   <= idle;
				if coin_buf(0) = '1' and coin_buf(1) = '1' and TRIG_MODE = x"3" then
					TRIG_BITS <= TX_TRIG;
					trig_st   <= trig_delay;
				end if;
			
			when trig_delay => --hold trigger high for some time
				t_st <= 1;
				if trig_wait < 5 then
					trig_st   <= trig_delay;
					trig_wait <= trig_wait + 1;
				else
					trig_wait <= 0;
					IO_dir    <= '1';
					trig_st   <= wait_sc_ack;
				end if;		
			
			when wait_sc_ack => --waits for scrod to send ack
				t_st   <= 2;
				IO_dir <= '1';
				if scrod_ack = '1' then
					trig_st <= rd_start;
				else
					if trig_wait < WAIT_COUNT then
						trig_st   <= wait_sc_ack;
						trig_wait <= trig_wait + 1;
					else
						trig_wait <= 0;
						IO_dir    <= '0';
						trig_st   <= idle;
					end if;
				end if;
				
			when rd_start => --waits for readout to start
				t_st    <= 3;
				trig_st <= rd_start;
				if RD_BUSY = '1' then
					trig_st <= rd_done;
				end if;
			
			when rd_done => --waits for readout to be complete
				t_st    <= 4;
				trig_st <= rd_done;
				if RD_BUSY = '0' then
					IO_dir  <= '0';
					trig_st <= idle;
				end if;
			
			when others => 
				trig_st <= idle;
				
		end case;
	end if;
end if;
end process;



-------------------------------------------------------------------------------------------------------------------------------------------
--process counts trigger scalers and save to register 19 and 20 for read back--------------------------------------------------------------
--------------------------------------------------------------------------------- ----------------------------------------------------------
	
map_trigger_flip_flop : entity work.edge_to_pulse_converter
	port map(CLOCK        => CLK,
				INPUT_EDGE   => EX_trig,
				OUTPUT_PULSE => pulse_to_count,
				CLOCK_ENABLE => '1');


trig_cnt_process : process(CLK) begin
if rising_edge(CLK) then

	start_cnt <= CNT_START;

	if OOPS = '1' then
		trig_cnt_st  <= idle;
	else
		case trig_cnt_st is 
			when idle => --waits for start count from other process
				TRIG_COUNT   <= std_logic_vector(pulse_count);
				clk_counter  <= (others => '0');
				trig_cnt_st  <= idle;
				if start_cnt = '1' then
					TRIG_COUNT   <= (others => '0');
					pulse_count  <= (others => '0');
					trig_cnt_st  <= srt_count;
				end if;
					
			when srt_count => --starts count for count max clock cycles
				trig_cnt_st  <= srt_count;
				if clk_counter(31 downto 16) /= unsigned(MAX_CNT) then
					clk_counter  <= clk_counter + 1;
					if pulse_to_count = '1' and pulse_count /= x"FFFFFFFF" then
						pulse_count <= pulse_count + 1;
					end if;
				else
					trig_cnt_st  <= wait_done;
				end if;
				
			when wait_done => --waits for other process to finish
				trig_cnt_st  <= wait_done;
				TRIG_COUNT   <= std_logic_vector(pulse_count);
				if start_cnt = '0' then
					trig_cnt_st  <= idle;
				end if;
				
			when others => 
				trig_cnt_st  <= idle;
				
		end case;
	end if;
end if;
end process;

end Behavioral;

