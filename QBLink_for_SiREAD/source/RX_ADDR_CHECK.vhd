----------------------------------------------------------------------------------
-- Company        : UH Manoa- Department of Physics
-- Engineer       : GSV, inherited from KHANH LE, modified by Dawei (8/1/18)
-- Create Date    : 10:37:38 03/02/2017 
-- Module Name    : RX_ADDR_CHECKER 
-- Project Name   : mRICH Hodoscope
-- Target Devices : SPARTAN 6 XC6SLX4-2TQG144
-- Tool versions  : ISE VERSION 14.7
-- Description    : Module shifts in data from controller and checks addr, if addr is correct loads data into fifo for parsing.
--                  data format: 32 bits word ( DC ADDR[4] & cmd type[4] & cmd register number[8] & cmd data[16])
-- Revision: 1
-- Revision 0.01 - File Created
----------------------------------------------------------------------------------
 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.BMD_definitions.all;

entity RX_ADDR_CHECKER is
Port(
	-------INPUTS------------
	CLK        : IN STD_LOGIC;
	DATA_CLK   : IN STD_LOGIC;
	DATA_IN 	  : IN STD_LOGIC;
	UPDATE     : IN STD_LOGIC;
	DC_ADDR    : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	TX_BUSY    : IN STD_LOGIC;
	DAC_BUSY   : IN STD_LOGIC;
	SENDER_BUSY  : IN STD_LOGIC;
	READOUT_BUSY : IN STD_LOGIC;
	OOPS_RESET	 : IN STD_LOGIC;
	-------OUTPUTS-----------
	TX_UPDATE  : OUT STD_LOGIC;
	DAC_UPDATE : OUT STD_LOGIC;
	RB_EN      : OUT STD_LOGIC;
	RB_REG_NUM : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	OUTPUT_REG : OUT GPR);
end RX_ADDR_CHECKER;

architecture Behavioral of RX_ADDR_CHECKER is
--------------------------parser internal signals------  --------------------
type reg_st is (	idle, 
						check_fifo_empty, 
						fifo_rd_en, 
						fifo_read, 
						fifo_rd_reset, 
						reg_prog, 
						trig_wait,
						trig_wait1,
						tx_dac_update, 
						trim_dac_update, 
						tx_dac_reset, 
						trim_dac_reset,
						trig_reset,
						wait_readout_done,
						wait_state);
signal reg_state     : reg_st := idle;
signal cmd_type      : std_logic_vector(3 downto 0)  := (others => '0');
signal cmd_reg_num   : std_logic_vector(7 downto 0)  := (others => '0');
signal cmd_data      : std_logic_vector(15 downto 0) := (others => '0');
signal wait_count    : integer := 0;

--------------------------fifo internal signals--------------------------
signal rx_reset        : std_logic := '1';
signal fifo_dout_w1r8  : std_logic_vector(7 downto 0) := (others => '0');
signal fifo_empty_w1r8 : std_logic;
signal fifo_wr_en_w1_r8: std_logic;

signal fifo_dout_w8r32 : std_logic_vector(31 downto 0) := (others => '0');
signal rd_en_w8r32     : std_logic;
signal fifo_empty_w8r32: std_logic;
signal wr_en_w8r32     : std_logic_vector(2 downto 0);

signal internal_data     : std_logic_vector(31 downto 0) := (others => '0');
signal bit_count         : integer := 32;



-----------state machine reset internal signals--------------------------
signal rx_st_rst		 : std_logic;
signal rx_st          : integer := 0;
signal reset_count    : integer := 0;


attribute keep: boolean;
attribute keep of rx_st: signal is true;
--attribute keep of rx_st_rst: signal is true;

--------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------beginning Behavioral of RX_ADDR_CHECKER----------------------------------------
--------------------------------------------------------------------------------------------------------------------------------
begin
	 

MAS_DC_RX_FIFO_W8R32 : entity work.CMD_FIFO_w8r32
  PORT MAP (
	 rst    => rx_reset,
    wr_clk => CLK,
    rd_clk => CLK,
    din    => fifo_dout_w1r8, 
    wr_en  => wr_en_w8r32(2),    
    rd_en  => rd_en_w8r32,           
    dout   => fifo_dout_w8r32,            
    full   => open,   
    empty  => fifo_empty_w8r32); 

--rx_reset <= '1' when internal_data = DC_ADDR & x"ABCDABC" or internal_data = x"FABCDABC" or rx_st_rst = '1' else '0';
rx_reset <= '1' when internal_data(27 downto 0) = x"ABCDABC" or rx_st_rst = '1' else '0';


fifo_reset: process(DATA_CLK) begin--shifting in bits to internal signal to check for reset command for fifos
if falling_edge(DATA_CLK) then--shifts on rising edge MSB first
	if UPDATE = '1' then		
		internal_data(31 downto 1) <= internal_data(30 downto 0); 
		internal_data(0) <= DATA_IN;
		
		if bit_count /= 0 then
			bit_count <= bit_count - 1;
			fifo_wr_en_w1_r8 <= '1';
		else
			bit_count <= 32;
			fifo_wr_en_w1_r8 <= '0';
		end if;
	else
		fifo_wr_en_w1_r8 <= '0';
		bit_count        <= 32;
		internal_data    <= (others => '0');
	end if;	
end if;
end process;


rx_st_rst <= '0' when rx_st < 2 else
				 '1' when reset_count = 1073741824 else rx_st_rst;

reset_count <= reset_count + 1 when rx_st > 2 and reset_count < 1073741824 and rising_edge(CLK) else 
					0               when rx_st < 2 else reset_count;
	
prog_output_register : process(CLK,rx_st_rst) begin --process takes in commands from fifo and parses command into output registers
if rx_st_rst = '1' then
	OUTPUT_REG(0)(0) <= '1';
	reg_state        <= idle;
else
	if rising_edge(CLK) then
		--sets delay for write from MAS_DC_RX_FIFO_W1R8 to MAS_DC_RX_FIFO_W8R32
		wr_en_w8r32(2) <= wr_en_w8r32(1);
		wr_en_w8r32(1) <= wr_en_w8r32(0);
		wr_en_w8r32(0) <= not fifo_empty_w1r8;
		
		case reg_state is
			when idle => -- sets initial conditions
				rx_st         <= 0;
				wait_count    <= 0;
				rd_en_w8r32   <= '0';
				TX_UPDATE     <= '0';
				DAC_UPDATE    <= '0';
				OUTPUT_REG(0)(0) <= '0';
				OUTPUT_REG(5)(0) <= '0';
				reg_state     <= idle;
				if fifo_empty_w8r32 = '0' then
					reg_state <= check_fifo_empty;
				end if;
					
			when check_fifo_empty => --checks to see if fifo is empty else waits here
				rx_st       <= 1;
				rd_en_w8r32 <= '0';
--comment out for testing Dawei
				RB_EN 		<= '1';
				if fifo_empty_w8r32 = '0' then 
					reg_state <= fifo_rd_en;
				else
					reg_state <= idle;
				end if;
			
			when fifo_rd_en => --enables fifo read 
				rx_st       <= 2;
				rd_en_w8r32 <= '1';
				reg_state <= fifo_rd_reset;
							
			when fifo_rd_reset => --resets fifo read signal
				rx_st       <= 3;
				rd_en_w8r32 <= '0';
				reg_state <= fifo_read;
				
			when fifo_read => --loads fifo data into internal signal if address is correct
				rx_st       <= 4;
				--if fifo_dout_w8r32(31 downto 28) = DC_ADDR  or fifo_dout_w8r32(31 downto 28) = x"F" then
					cmd_type    <= fifo_dout_w8r32(27 downto 24);
					cmd_reg_num <= fifo_dout_w8r32(23 downto 16);
					cmd_data    <= fifo_dout_w8r32(15 downto 0); 
					reg_state   <= reg_prog;
				--else
--					reg_state   <= check_fifo_empty;
--				end if;
				
			when reg_prog => --parses out command from pc to output registers
				rx_st       <= 5;
				if cmd_type = x"E"  then --wait command
					reg_state <= wait_state;	
					
				elsif cmd_type = x"B" then --TX DAC command   
					TX_UPDATE     <= '0'; -- reseting update signal
					OUTPUT_REG(1) <= x"00" & cmd_reg_num; --TX data registers
					OUTPUT_REG(2) <= cmd_data;
					reg_state     <= tx_dac_update;			
					
				elsif cmd_type = x"F" then --program output register command
					OUTPUT_REG(to_integer(unsigned(cmd_reg_num))) <= cmd_data;
					reg_state <= check_fifo_empty;
					
				elsif cmd_type = x"C" then --MPPC trim DAC command
					OUTPUT_REG(16) <= x"00" & cmd_reg_num;--dac addr 
					OUTPUT_REG(17) <= cmd_data;--dac value 
					DAC_UPDATE     <= '0';--dac update 
					reg_state <= trim_dac_update;
					
				elsif cmd_type = x"D" then --read back output register to master
					RB_REG_NUM <= cmd_reg_num;
					RB_EN      <= '1';
					if SENDER_BUSY = '1' then
						reg_state <= check_fifo_empty;
					else
						reg_state <= reg_prog;
					end if;
										
				elsif cmd_type = x"A" then --software trigger from scrod for ped calc
					OUTPUT_REG(5) <= x"0001";
					reg_state     <= trig_reset;
				
				else
					reg_state <= check_fifo_empty;

				end if;
							
			when trig_wait => --waits one clock cycle
				reg_state <= trig_wait1;

			when trig_wait1 => --waits one clock cycle
				reg_state <= trig_reset;
				
			when tx_dac_update => --gives update signal to TX DAC control and waits for busy from driver
				rx_st     <= 6;
				TX_UPDATE <= '1';
				reg_state <= tx_dac_update;
				if TX_BUSY = '1' then		 
					reg_state <= tx_dac_reset;
				end if;
			
			when trim_dac_update => --gives update signal to trim DAC control and waits for busy from driver
				rx_st      <= 7;
				DAC_UPDATE <= '1';
				reg_state  <= trim_dac_update;
				if DAC_BUSY = '1' then		 
					reg_state <= trim_dac_reset;
				end if;
							
			when tx_dac_reset => --resets update signals then goes back to check fifo
				rx_st       <= 8;
				TX_UPDATE   <= '0';
				reg_state   <= tx_dac_reset;
				if TX_BUSY = '0' then
					reg_state <= check_fifo_empty;
				end if;
				
			when trim_dac_reset => --resets update signals then goes back to check fifo
				rx_st       <= 9;
				DAC_UPDATE  <= '0';
				reg_state   <= trim_dac_reset;
				if DAC_BUSY = '0' then 
					reg_state <= check_fifo_empty;
				end if;

			when trig_reset =>--waiting for readout control to start readout before reseting trigger
				rx_st       <= 10;
				reg_state   <= trig_reset;
				if READOUT_BUSY = '1' then
					OUTPUT_REG(5) <= x"0000";
					reg_state     <= wait_readout_done;
				end if;

			when wait_readout_done =>--waiting for readout to be complete before going back for next command
				rx_st     <= 11;
				reg_state <= wait_readout_done;
				if READOUT_BUSY = '0' then 
					reg_state <= check_fifo_empty;
				end if;
				
			when wait_state => --waits for count then returns to get new command
				rx_st       <= 12;
				if wait_count < to_integer(unsigned(cmd_data)) then
					wait_count <= wait_count + 1;
					reg_state  <= wait_state;
				else
					wait_count <= 0;
					reg_state  <= check_fifo_empty;
				end if;
			
			when others =>
				reg_state <= idle;
--add next line for testing Dawei
				RB_EN 	<= '1';
				
		end case;
	end if;
end if;
end process;

end Behavioral;

