--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:08:13 10/06/2020
-- Design Name:   
-- Module Name:   /home/ise/xilinx/github/HMB-FW/EIC-Beamtest-FW/SCROD_A5_RJ45/SCROD_Rev1/OneShotTB.vhd
-- Project Name:  HMB_SCROD
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: OneShot_ckt
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY OneShotTB IS
END OneShotTB;
 
ARCHITECTURE behavior OF OneShotTB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT OneShot_ckt
    PORT(
         clk : IN  std_logic;
  --       rst : IN  std_logic;
         trigger : IN  std_logic;
  --       done : IN  std_logic;
         pulse : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
  -- signal rst : std_logic := '0';
   signal trigger : std_logic := '0';
  -- signal done : std_logic := '0';

 	--Outputs
   signal pulse : std_logic;

   -- Clock period definitions
   constant clk_period : time := 40 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: OneShot_ckt PORT MAP (
          clk => clk,
      --    rst => rst,
          trigger => trigger,
      --    done => done,
          pulse => pulse
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		trigger <= '1';

      wait for clk_period*10;
		trigger <= '0';
		
		wait for clk_period*10;
		trigger <= '1';
		wait for clk_period*2;
		trigger <= '0';
		wait for clk_period*30;
		trigger <= '1';
		wait for clk_period*2;
	--	done <='1';
		trigger <= '0';
		wait for clk_period;
--		done <= '0';
		wait for clk_period*2;
		trigger <='1';
		wait for clk_period*15;
		trigger <= '0';
		wait for clk_period*15;
		trigger <= '1';
--		wait for clk_period*50;
		
----	rst <= '1';
--	wait for clk_period*2;
--		wait for clk_period*2;
--		trigger <= '0';
--		wait for clk_period*1;
--		 trigger <= '1';
--		 wait for clk_period*5;
--	rst <='0';
--	wait for clk_period*2;
--		trigger <= '0';
--		wait for clk_period*1;
--		 trigger <= '1';

      -- insert stimulus here 

      wait;
   end process;

END;
