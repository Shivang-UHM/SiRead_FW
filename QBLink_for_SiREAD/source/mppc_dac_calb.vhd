----------------------------------------------------------------------------------
-- Company       : UH Manoa- Department of Physics
-- Engineer      : Khanh Le
-- updated       : 
-- Create Date   : 15:32:50 03/30/2015 
-- Module Name   : mppc_dac_wrapper_AD5672R - Behavioral 
-- Project Name  : BMD
-- Target Devices: SPARTAN 6 XC6SLX4-2TQG144
-- Tool versions : ISE 14.7
-- Description   : FW for configuring MPPC DACs and HV to preset value
--
-- Dependencies: 
--
-- Revision: 1
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.BMD_definitions.all;

entity mppc_dac_calb is
  Port ( CLOCK       : in   STD_LOGIC;
			DAC_CLOCK   : in   STD_LOGIC;
		   DAC_ADDR    : in   STD_LOGIC_VECTOR(4 downto 0);
		   DAC_VALUE   : in   STD_LOGIC_VECTOR(11 downto 0);
		   DAC_UPDATE  : in   STD_LOGIC;
			OOPS_RESET	: in   STD_LOGIC;
			
		   DAC_BUSY    : out  STD_LOGIC;
         DAC_SCLK    : out  STD_LOGIC;
         DAC_DIN     : out  STD_LOGIC;
         LDAC        : out  STD_LOGIC;
         SYNC        : out  STD_LOGIC);

end mppc_dac_calb;

architecture Behavioral of mppc_dac_calb is

type dac_state is (setup_wait,
						 dac_write, 
						 dac_clear, 
						 write_done, 
						 idle,
						 wait_done);
signal state : dac_state := setup_wait; 
signal internal_addr    : std_logic_vector(4 downto 0) := (others => '0');
signal internal_value   : std_logic_vector(11 downto 0) := (others => '0');
signal internal_update  : std_logic := '0';
signal internal_busy    : std_logic := '0';
signal internal_sclk    : std_logic := '0';
signal internal_din     : std_logic := '0';
signal config_done      : std_logic := '0';
signal wait_count       : integer := 0;
signal dac_st           : integer := 0;


--attribute keep: boolean;
--attribute keep of count_start: signal is true;
--attribute keep of count_done: signal is true;
--attribute keep of dac_st: signal is true;


begin
--------------------------------------------------------------------------------------------------------------------
--declaring components for module-----------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------

MPPC_DAC : entity work.mppc_bias_dac_AD5672R
	Port Map (clk     => DAC_CLOCK,
				 addr    => internal_addr,
				 val     => internal_value,
				 UPDATE  => internal_update,
				 LDAC    => LDAC,
				 busy    => internal_busy,
				 SCLK    => DAC_SCLK,
				 SYNC    => SYNC,
				 DIN     => DAC_DIN);
				
--------------------------------------------------------------------------------------------------------------------
--sate machine configures trim dacs into daisy chain mode and waite for command from pc-----------------------------
--------------------------------------------------------------------------------------------------------------------		
		
DAC_PROCESS : process(DAC_CLOCK) begin
				
if rising_edge(DAC_CLOCK) then

if OOPS_RESET = '1' then
	state <= setup_wait;
else
case state is 
	when setup_wait => -- waiting for FPGA to settle after start up
		dac_st <= 1;
		DAC_BUSY 		   <= '1';
		internal_update   <= '0';
		if wait_count < 100 then
			wait_count <= wait_count + 1;
		else
			wait_count      <= 0;
			config_done     <= '0';
			internal_addr   <= "10001";
			internal_value  <= (others => '0');
			state 			 <= dac_write;
		end if;
		
	when dac_write => -- gives dac driver command to operate in daisy chain mode
		dac_st <= 2;
		if config_done = '0' then
			internal_addr   <=  "10001";
		else
			internal_addr   <=  "10000";
		end if;
		
		if internal_busy = '0' then
			internal_update <= '1';
			state           <= dac_clear;
		else
			internal_update <= '0';
			state 			 <= dac_write;
		end if;
			
	when dac_clear => -- resets update signal 
		dac_st <= 3;
		if internal_busy = '1'  then
			internal_update <= '0'; 
			if config_done = '0' then
				config_done <= '1';
				state <= dac_write;
			else
				state <= idle;
			end if;
		else 
			state <= dac_clear;
		end if;
				
	when idle => -- if setup is done then waits for input from outside
		dac_st 				<= 4;
		internal_addr     <= '0' & DAC_ADDR(3 downto 0);
		internal_value    <= DAC_VALUE;
		internal_update   <= DAC_UPDATE;
		DAC_BUSY          <= '0';
		state             <= idle;
		if internal_busy = '1' then
			state <= wait_done;
		end if;
		
	when wait_done => --waits for DAC to be programmed
		dac_st   			<= 5;
		DAC_BUSY 			<= '1';
		internal_update   <= DAC_UPDATE;
		state    			<= wait_done;
		if internal_busy = '0' then
			state <= idle;
		end if;
		
		
	when others =>
		state <= idle;
		
end case;

end if;
end if;
end process;

end Behavioral;

