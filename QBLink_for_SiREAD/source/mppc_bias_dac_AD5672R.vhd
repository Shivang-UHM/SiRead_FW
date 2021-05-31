----------------------------------------------------------------------------------
-- Company        : UH Manoa- Department of Physics
-- Engineer       : Khanh Le 2/8/2017
-- Create Date    : 15:32:50 03/30/2015 
-- Module Name    : mppc_bias_dac_AD5672R - Behavioral 
-- Project Name   : BMD
-- Target Devices : SPARTAN 6 XC6SLX4-2TQG144
-- Tool versions  : ISE 14.7
-- Description    : FW for controlling and writing to MPPC bias DACs
--
-- Dependencies: 
--
-- Revision: 2
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

entity mppc_bias_dac_AD5672R is
    Port ( clk    : in   STD_LOGIC;
           addr   : in   STD_LOGIC_VECTOR (4 downto 0);
           val    : in   STD_LOGIC_VECTOR (11 downto 0);
			  UPDATE : in   STD_LOGIC;
           LDAC   : out  STD_LOGIC;
           busy   : out  STD_LOGIC;
           SCLK   : out  STD_LOGIC;
           SYNC   : out  STD_LOGIC;
           DIN    : out  STD_LOGIC);
end mppc_bias_dac_AD5672R;

architecture Behavioral of mppc_bias_dac_AD5672R is
---internal signals---
signal addr_i   : std_logic_vector(4 downto 0);
signal val_i    : std_logic_vector(11 downto 0);
signal update_i : std_logic;
signal data     : std_logic_vector(47 downto 0) := (others => '0');

constant cmd_daisy_chain : std_logic_vector(23 downto 0) := x"8FFFFF";--"100011111111111111111111"; --daisy chain setup command
constant cmd_no_op       : std_logic_vector(23 downto 0) := x"000000";--"000000000000000000000000"; --no operation command
--constant cmd_reset       : std_logic_vector(23 downto 0) := "011000000000000000000000"; --reset command
constant cmd_write_update: std_logic_vector(3 downto 0)  := x"3";--"0011"; --write and update register command

signal bit_cnt  : integer:=0;
signal wait_cnt : integer:=0;

type state_type is (	st_idle,
							st_setup_data,
							st_set_bitcnt,
							st_dec_bitcnt,
							st_send_bits,
							st_last_bit,
							st_ldac_low);
signal st: state_type := st_idle;


attribute keep: boolean;
attribute keep of data: signal is true;


-------------------------------------------------------------------------------------------------------------------------------------------------------------- 
--------------state machine to program trim dacs and hv dac---------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------- 
begin
update_i <= update;
addr_i   <= addr;
val_i    <= val;

process (clk)
begin

if (rising_edge(clk)) then 
case st is
	when st_idle=>--waiting for update signal
		SCLK   <= '1';
		SYNC   <= '1';
		LDAC   <= '1';
		DIN    <= '0';
		busy   <= '0';
		if (update_i = '1') then 
			busy <= '1';
			st   <= st_setup_data;
		else 
			st   <= st_idle;
		end if;
	
	when st_setup_data=>--configuring data to write to dac	
		SCLK    <= '1';
		SYNC    <= '0';
		LDAC    <= '1';
		DIN     <= '0';
		st      <= st_set_bitcnt;
		if addr_i(4) = '1' then
			bit_cnt           <= 23;
			data(23 downto 0) <= cmd_daisy_chain;
		else 
			bit_cnt <= 47;
			if addr_i(3) = '0' then --input register for DACs 0-7
				data <= cmd_no_op & cmd_write_update &  '0' & addr_i(2 downto 0) & val_i & "0000";
			elsif addr_i(3) = '1' then --input register for DACs 8-15
				data <= cmd_write_update & '0' & addr_i(2 downto 0) & val_i & "0000" & cmd_no_op;
			end if;
		end if;

	when st_set_bitcnt =>--loading first bit to dac
		SCLK    <= '1';
		SYNC    <= '0';
		LDAC    <= '1';
		DIN     <= data(bit_cnt);
		st      <= st_dec_bitcnt;
				
	when st_dec_bitcnt => --loading dac into dac
		if (bit_cnt/=0) then
			SCLK    <= '0';
			SYNC    <= '0';
			LDAC    <= '1';
			bit_cnt <= bit_cnt-1;
			st      <= st_set_bitcnt;
		else
			SCLK    <= '0';
			SYNC    <= '0';
			LDAC    <= '1';
			DIN     <= data(bit_cnt);
			st      <= st_last_bit;
		end if;

	when st_last_bit =>--loading last bit into dac
		SCLK <= '0';
		SYNC <= '1';
		LDAC <= '1';
		st   <= st_ldac_low;
		
	when st_ldac_low =>--giving load dac signal	
		SCLK <= '1';
		SYNC <= '1';
		LDAC <= '0';
		DIN  <= '0';
		st   <= st_idle;

	when others =>
		st <= st_idle;
end case;
end if;
end process;
end Behavioral;










