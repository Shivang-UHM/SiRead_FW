----------------------------------------------------------------------------------
-- Company        : UH Manoa- Department of Physics
-- Engineer       : KHANH LE
-- Create Date    : 10:37:38 03/02/2017 
-- Module Name    : TX 
-- Project Name   : BOREHOLE MUON DETECTOR
-- Target Devices : SPARTAN 6 XC6SLX4-2TQG144
-- Tool versions  : ISE VERSION 14.7
-- Description    : Module sends data from targetX back to master, 
--						  if DC down the chain is sending DC_DC_TX will be HIGH and is passed up
--                  if DC up the chain is sending DC_DC_RX = 0 and DC_DC_DATA_IN = 1 and will be passed down
-- Revision: 1
-- Revision 0.01 - File Created
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TX_DATA_SENDER is
Port(
	---------------INPUTS-----------------------
	CLK     		 		   : IN STD_LOGIC;
	DATA_CLK             : IN STD_LOGIC;
	DC_DC_RX 			 	: IN STD_LOGIC;
	DC_ADDR              : IN STD_LOGIC_VECTOR(3 downto 0);
	XFER_BUSY            : IN STD_LOGIC;--DC up the chain is sending, wait till done before starting xfer
	DUMP_BUSY     	 	   : IN STD_LOGIC;
	TRIGGER              : IN STD_LOGIC;
	RB_REG_VALUE			: IN STD_LOGIC_VECTOR (15 downto 0);
	RB_REG_NUM      		: IN STD_LOGIC_VECTOR (7 downto 0);
	RB_EN					   : IN STD_LOGIC;
	SEND                 : IN STD_LOGIC;
	wave_fifo_clk        : IN STD_LOGIC;
	wave_fifo_wr_en 	 	: IN STD_LOGIC;
	wave_fifo_data  	 	: IN STD_LOGIC_VECTOR (31 downto 0);
	wave_fifo_reset 	 	: IN STD_LOGIC;
	OOPS_RESET				: IN STD_LOGIC;
	--------------OUTPUTS-----------------------
	wave_fifo_full       : OUT STD_LOGIC;
	TX_SENDER_BUSY       : OUT STD_LOGIC;
	DATA_OUT 				: OUT STD_LOGIC;
	TX       				: OUT STD_LOGIC);
end TX_DATA_SENDER;

architecture Behavioral of TX_DATA_SENDER is
----internal fifo signals-----------------------------
signal wave_fifo_rd_en : std_logic;
signal wave_fifo_dout  : std_logic_vector(31 downto 0);
signal wave_fifo_empty : std_logic;

----internal state machine signal----------------------

signal bit_count     : integer := 31;
signal wait_count    : integer := 10;
signal trig_hold     : std_logic_vector(1 downto 0);
signal internal_fifo_data : std_logic_vector(31 downto 0);

type state is (idle, 
					fifo_reset, 
					send_trig, 
					check_busy, 
					check_empty, 
					load_data, 
					send_data, 
					done, 
					wait_st);
signal tx_state : state := idle;

signal tx_st : integer := 0;
attribute keep: boolean;
attribute keep of tx_st: signal is true;
--attribute keep of internal_data_out: signal is true;
--attribute keep of internal_send: signal is true;


--------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------beginning Behavioral of TX_ADDR_CHECKER----------------------------------------
--------------------------------------------------------------------------------------------------------------------------------

begin 

waveform_fifo : entity work.waveform_fifo_wr32_rd32
  PORT MAP (
    rst    => wave_fifo_reset,
    wr_clk => wave_fifo_clk,
    rd_clk => DATA_CLK,
    din    => wave_fifo_data,
    wr_en  => wave_fifo_wr_en,
    rd_en  => wave_fifo_rd_en,
    dout   => wave_fifo_dout,
    full   => open,
	 almost_full => wave_fifo_full,
    empty  => wave_fifo_empty);


dc_mas_data_send : process(DATA_CLK) begin
if falling_edge(DATA_CLK) then

if OOPS_RESET = '1' then
	tx_state <= idle;
else

	case tx_state is
		when idle =>--waits for wavepedsub module to load wave fifo and checks if other dc is sending data
			tx_st 				 <= 0;	
			wave_fifo_rd_en    <= '0';
			bit_count          <= 31;
			wait_count         <= 10;
			trig_hold          <= "00";
			TX_SENDER_BUSY     <= '0';
			TX                 <= '0';
			DATA_OUT  			 <= '0';
			internal_fifo_data <= (others => '0');
			tx_state 			 <= idle;
			if SEND = '1' then--send signal readout module
				trig_hold <= "00";
				tx_state  <= check_busy;
			elsif TRIGGER = '1' then--trigger from tx
				trig_hold <= "11";
				tx_state  <= check_busy;
			elsif RB_EN = '1' then--register readback signal from pc
				trig_hold <= "01";
				tx_state  <= check_busy;			
			end if;
			
		when check_busy =>--checks if transmission lines are busy if busy waits here till not busy
			tx_st <= 1;
			if XFER_BUSY = '0' and DC_DC_RX = '0' then
				if wait_count /= 0 then--waits for 10 clock cycles to make sure not busy
					wait_count <= wait_count - 1;
					tx_state   <= check_busy;
				else
					wait_count <= 10;
					tx_state   <= fifo_reset;
				end if;
			else
				wait_count <= 10;
				tx_state   <= check_busy;
			end if;
			
		when fifo_reset =>--send fifo reset signal to scrod
			tx_st 				 <= 2;
			TX_SENDER_BUSY     <= '1';
			internal_fifo_data <= DC_ADDR & x"ABABABA";
			tx_state 			 <= send_data;
			
		when send_trig =>--send trigger/reg value to scrod
			tx_st <= 3;
			if trig_hold = "11" then--trigger
				internal_fifo_data <= DC_ADDR & x"00000CD";
				DATA_OUT 			 <= internal_fifo_data(bit_count);
				trig_hold 			 <= "10";
				tx_state  			 <= send_data;
			elsif trig_hold = "01" then--register value
				internal_fifo_data <= DC_ADDR & x"0" & RB_REG_NUM & RB_REG_VALUE;
				DATA_OUT 			 <= internal_fifo_data(bit_count);
				trig_hold 			 <= "10";
				tx_state  			 <= send_data;
			else 
				tx_state  <= idle;
			end if; 
			
		when check_empty =>--checks wave fifo is empty 
			tx_st 	 <= 4;
			bit_count <= 31;
			if wave_fifo_empty = '1' and DUMP_BUSY = '1' then 
					tx_state   <= check_empty;
			elsif wave_fifo_empty = '1' and DUMP_BUSY = '0' then 
					tx_state   <= idle;
			else
				wave_fifo_rd_en <= '1';
				tx_state        <= load_data;		
			end if;

		when load_data =>--resets fifo read and sets first bit to be shifted out
			tx_st 				 <= 5;
			wave_fifo_rd_en    <= '0';
			TX_SENDER_BUSY     <= '1';
			internal_fifo_data <= wave_fifo_dout;
			DATA_OUT 			 <= internal_fifo_data(bit_count);
			tx_state 			 <= send_data;
			
		when send_data =>--sending data from fifo to master
			tx_st 	<= 6;
			TX       <= '1';
			DATA_OUT <= internal_fifo_data(bit_count);
			if bit_count /= 0 then
				bit_count <= bit_count - 1;
				tx_state  <= send_data;
			else
				tx_state <= done;
			end if;
		
		when done =>--done sending fifo data go back to check if fifo is empty
			tx_st 	 <= 7;
			bit_count <= 31;
			TX 		 <= '0';
			DATA_OUT  <= '0';
			tx_state  <= wait_st;
			
		when wait_st =>
			tx_st <= 8;
			if trig_hold <= "00" then
				tx_state <= check_empty;
			elsif trig_hold = "11" or trig_hold = "01" then
				tx_state <= send_trig;
			else
				tx_state <= idle;
			end if;
						
		when others =>
			bit_count  <= 31;
			wait_count <= 10;
			TX 		  <= '0';
			DATA_OUT   <= '0';
			trig_hold  <= "00";
			internal_fifo_data <= (others => '0');
			tx_state   <= idle;
			
	end case;
end if;
end if;
end process;
end Behavioral;

