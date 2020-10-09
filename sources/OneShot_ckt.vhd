----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:08:46 10/06/2020 
-- Design Name: 
-- Module Name:    OneShot_ckt - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity OneShot_ckt is
port (
        clk: in  std_logic;
        rst: in  std_logic;
        trigger : in STD_LOGIC;
        done    : in STD_LOGIC;
        pulse   : out STD_LOGIC

    );
end entity;

architecture rtl of OneShot_ckt is
	 constant p_width : integer := 26;
    type state_t is (idle, delay);
    signal pr_state, nxt_state : state_t := idle;
    signal pr_count, nxt_count : UNSIGNED(7 downto 0);
	 signal i_trigger	: std_logic;

begin
	i_trigger <= trigger;
    process(clk, rst)
    begin
        if rst = '1' then
            pr_state <= idle;
            pr_count <= (others => '0');
        elsif rising_edge(clk) then
            pr_state <= nxt_state;
            pr_count <= nxt_count;
        end if;
    end process;    

    --

    process(clk, pr_state, i_trigger, done, pr_count)
    begin
        pulse <= '0';
        nxt_count <= pr_count;
        case pr_state is
            when idle =>
                if (i_trigger'event and i_trigger = '1') then
                    nxt_state <= delay;
                else
                    nxt_state <= idle;
                end if;
                nxt_count <= (others=>'0');
            when delay =>
                if (done = '1') then
                    nxt_state <= idle;
                else
                    if (pr_count = p_width-1) then
                        nxt_state <= idle;
                    else
                        nxt_state <= delay;
                        nxt_count <= pr_count + 1;
                    end if;
                end if;
                pulse <= '1';
        end case;
    end process;
end architecture;

--architecture rtl of OneShot_ckt is
--
--begin
--    process 
--        constant p_width : Time := 26 us;
--    begin
--        pulse <= '0';
--        wait until Clk = '1' and Clk'Event; 
--        if trigger = '1' then
--            pulse <= '1';
--            wait for p_width;
--            pulse <= '0';
--        end if;
--    end process;
--end architecture;
