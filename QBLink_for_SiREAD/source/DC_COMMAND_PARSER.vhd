------------------------------------------------------------------------------
-- Company        : UH Manoa- Department of Physics
-- Engineer       : GSV, inherited from Khanh le
-- Updated        : 
-- Create Date    : 10:53:30 08/19/2015 
-- Design Name    : mRICH Hodo readout
-- Module Name    : DC_COMMAND_PARSER.vhd     (Command Parser - Behavioral) 
-- Project Name   : mRICH Hodoscope
-- Target Devices : SPARTAN 6 XC6SLX4-2TQG144
-- Tool versions  : ISE 14.7
-- Description    : Module takes in 32-bit words and  
-- Revision: 
------------------------------------------------------------------------------
library IEEE;
library UNISIM;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use UNISIM.VComponents.all;
use work.BMD_definitions.all;

entity DC_COMM_PARSER is
Port ( 	 
	  CLK  					 : IN  STD_LOGIC;
	  SEND                : IN  STD_LOGIC;
	  TRIGGER             : IN  STD_LOGIC;
	  OOPS_RESET          : IN  STD_LOGIC;
	  --DCtoSCROD Interface Signals--
	  rxFromSCROD  		 : IN  STD_LOGIC_VECTOR (31 downto 0);	 
	  rxFromSCRODvalid    : IN  STD_LOGIC;	  

	  -----busy signals from drivers-----
	  OUTPUT_REGISTERS    : OUT GPR;

	  -----TARGETX Signals-----  
	  wave_fifo_full      : OUT STD_LOGIC;
	  wave_fifo_clk		 : IN  STD_LOGIC;
	  wave_fifo_wr_en   	 : IN  STD_LOGIC;

	  wave_fifo_reset 	 : IN  STD_LOGIC);
end DC_COMM_PARSER;

architecture Behavioral of DC_COMM_PARSER is
------------------RX internal signals---------------------------------
signal internal_setup_d   : std_logic := '0';
signal internal_data_clk  : std_logic := '0';
signal internal_data_in   : std_logic := '0';
signal internal_rx        : std_logic := '0';
signal internal_rb_reg_en : std_logic := '0';
signal internal_rb_reg_num: std_logic_vector(7 downto 0)  := (others => '0');
------------------TX internal signals---------------------------------- 
signal internal_tx        : std_logic := '0';
signal internal_data_out  : std_logic := '0';
signal internal_xfer_busy : std_logic := '0';
signal internal_tx_busy   : std_logic := '0';
signal internal_dc_rx     : std_logic := '0';
signal internal_dc_din    : std_logic := '0';

signal internal_dc_dc_tx  : std_logic := '0';
signal internal_dc_dc_dout: std_logic := '0';
 

--attribute keep: boolean;
--attribute keep of internal_data_clk: signal is true;

--------------------------------beginning Behavioral of DC_COMM_PARSER------------------------------------------
begin

--rx_syncing_process : process(CLK) begin
--if rising_edge(CLK) then
--	syncing incoming signals to fpga clk
	internal_data_clk <= MAS_DC_DATA_CLK;
	internal_data_in  <= MAS_DC_DATA_IN;
	internal_rx       <= MAS_DC_RX;
	
	internal_dc_rx    <= DC_DC_RX;
	internal_dc_din   <= DC_DC_DATA_IN;
	
--end if;
--end process;
		
DC_DC_DATA_CLK  <= internal_data_clk;

tx_syncing_process : process(internal_data_clk) begin

if falling_edge(internal_data_clk) then
	--syncing incoming data from master with data clock
	internal_dc_dc_tx   <= internal_rx;
	internal_dc_dc_dout <= internal_data_in;	
end if;

if rising_edge(internal_data_clk) then
	if internal_tx_busy = '1' then
		--sending dc data to master
		DC_MAS_TX       <= internal_tx;
		DC_MAS_DATA_OUT <= internal_data_out;
		
		--sending transmission line is busy signal
		DC_DC_TX        <= '0'; 
		DC_DC_DATA_OUT  <= '1';
	else
		--sending down stream dc data to master
		DC_MAS_TX       <= internal_dc_rx;   
		DC_MAS_DATA_OUT <= internal_dc_din;  
		
		--sending master data to down stream dc
		DC_DC_TX        <= internal_dc_dc_tx; 
		DC_DC_DATA_OUT  <= internal_dc_dc_dout;
		
	end if;
end if;
end process;

TX_BUSY    <= internal_tx_busy;
RB_REG_NUM <= internal_rb_reg_num;


--when dc is transmitting set dc_dc_tx = '0' and dc_dc_data_out = '1' to let downstream dc know that transmission line is busy
internal_xfer_busy <= '1' when internal_data_in = '1' and internal_rx = '0' else '0';
--							 '1' when MAS_DC_RX = '1' else '0';

end Behavioral;

