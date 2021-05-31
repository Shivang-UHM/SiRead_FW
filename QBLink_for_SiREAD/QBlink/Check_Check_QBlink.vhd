--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:49:18 10/01/2018
-- Design Name:   
-- Module Name:   C:/FW/Hodo_v2/mRICH_hodo_DC/hodo_dc_v1/Check_Check_QBlink.vhd
-- Project Name:  hodo_dc_v1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Check_QBlink
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
 
ENTITY Check_Check_QBlink IS
END Check_Check_QBlink;
 
ARCHITECTURE behavior OF Check_Check_QBlink IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Check_QBlink
    PORT(
         sstClk : IN  std_logic;
         rst : IN  std_logic;
         rawSerialOut : OUT  std_logic;
         rawSerialIn : OUT  std_logic;
         WordIn : IN  std_logic_vector(31 downto 0);
         WordInEna : IN  std_logic;
         WordOut : OUT  std_logic_vector(31 downto 0);
         WordOutValid : OUT  std_logic;
         WordOutReq : IN  std_logic;
         trgLinkSynced1 : OUT  std_logic;
         serialClkLocked1 : OUT  std_logic;
         trgLinkSynced2 : OUT  std_logic;
         serialClkLocked2 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal sstClk : std_logic := '0';
   signal rst : std_logic := '0';
   signal WordIn : std_logic_vector(31 downto 0) := (others => '0');
   signal WordInEna : std_logic := '0';
   signal WordOutReq : std_logic := '0';

 	--Outputs
   signal rawSerialOut : std_logic;
   signal rawSerialIn : std_logic;
   signal WordOut : std_logic_vector(31 downto 0);
   signal WordOutValid : std_logic;
   signal trgLinkSynced1 : std_logic;
   signal serialClkLocked1 : std_logic;
   signal trgLinkSynced2 : std_logic;
   signal serialClkLocked2 : std_logic;

   -- Clock period definitions
   constant sstClk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Check_QBlink PORT MAP (
          sstClk => sstClk,
          rst => rst,
          rawSerialOut => rawSerialOut,
          rawSerialIn => rawSerialIn,
          WordIn => WordIn,
          WordInEna => WordInEna,
          WordOut => WordOut,
          WordOutValid => WordOutValid,
          WordOutReq => WordOutReq,
          trgLinkSynced1 => trgLinkSynced1,
          serialClkLocked1 => serialClkLocked1,
          trgLinkSynced2 => trgLinkSynced2,
          serialClkLocked2 => serialClkLocked2
        );

	WordOutReq <= WordOutValid;
   -- Clock process definitions
   sstClk_process :process
   begin
		sstClk <= '0';
		wait for sstClk_period/2;
		sstClk <= '1';
		wait for sstClk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		rst <= '1';
      wait for 100 ns;	
		rst <= '0';
--      wait for sstClk_period*10;

      -- insert stimulus here 
      wait for 12000 ns;
		WordIn <= x"DEADBEEF";
		WordInEna <= '1';
		wait for 20 ns;
		WordInEna <= '0';
		wait for 2000 ns;
		WordIn <= x"01234567";
		WordInEna <= '1';
		wait for 20 ns;
		WordInEna <= '0';		
		wait for 2000 ns;
		WordIn <= x"00000000";
		WordInEna <= '1';
		wait for 20 ns;
		WordInEna <= '0';			

      wait;
   end process;

END;
