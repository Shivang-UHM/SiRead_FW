library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use work.UtilityPkg.all;
library UNISIM;
use UNISIM.VComponents.all;
entity DCtoSCROD_Interface is
   Port (
      -- SST clock from clock generator -- master clock
      sstClk            : in  sl;
      -- Async reset signal (synced in module)
      rst                 : in  sl;
			
      -- Serial link - trigger hits from DC to SCROD (TX DC, RX SCROD)
      rawSerialOut        : out sl;
      -- Serial link - commands from SCROD to DC (TX SCROD, RX DC)
      rawSerialIn         : in  sl;

      -- Word-wise data in
      localWordIn         : in  slv(31 downto 0);
		localWordInValid    : in  sl;
      -- Word-wise data out
      localWordOut        : out slv(31 downto 0);
      localWordOutValid   : out sl;
		
      -- Status bits out
      trgLinkSynced     : out sl;
      serialClkLocked   : out sl
   );
end DCtoSCROD_Interface;

architecture Behavioral of DCtoSCROD_Interface is
   signal sstX5Clk       : sl;
   signal sstRst         : sl;
   signal sstX5Rst       : sl;
   signal linkAligned    : sl;
   signal txData10b      : slv(9 downto 0);
   signal rxData10b      : slv(9 downto 0);
   signal txSerialData   : sl;
   signal rxSerialData   : sl;
   signal rxData8b       : slv(7 downto 0);
   signal rxData8bValid  : sl;
   signal txData8b       : slv(7 downto 0);
   signal txData8bValid  : sl;	

begin


end Behavioral;