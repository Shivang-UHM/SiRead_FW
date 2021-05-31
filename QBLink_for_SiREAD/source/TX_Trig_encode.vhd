----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:02:56 10/08/2018 
-- Design Name: 
-- Module Name:    TX_Trig_encode - Behavioral 
-- Project Name:   mRICH Hodoscope
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
use work.UtilityPkg.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TX_Trig_encode is
Port ( 	 
	  CLK  					 : IN  sl;
	  RESET					 : IN  sl;
	  TX_TRIG_BITS			 : IN  slv(4 downto 0);
	  	
	  REQ_REG             : IN  slv(3 downto 0);
	  REQ_VALID           : IN  sl;

	  ------master to DC signals----------
	  wordOut		       : OUT slv(31 downto 0);
	  wordOutValid		    : OUT sl
	);

end TX_Trig_encode;

architecture Behavioral of TX_Trig_encode is

signal pipeClock	 : sl;
signal pipeDly		 : slv(3 downto 0); -- wait to capture
signal scalerReset : sl;
signal trigScaler  : Word32Array(15 downto 0); -- 16 is multi
signal reqReg		 : slv(3 downto 0);
signal reqReq		 : sl;
signal reqPending	 : sl := '0';

begin

pipeClock <= CLK;
scalerReset <= RESET;
reqReq <= REQ_VALID;

if (rising_edge(pipeClock)) then
   if(scalerReset = '1') then
	   trigScaler := (others => '0'); -- clear all scalers
	end if;
	if(pipeDly = "0000" & reqReq = '1' & reqPending = '0')
	if(
      trigScaler(reqReg);
		
end if;

end Behavioral;

