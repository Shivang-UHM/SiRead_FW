library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use work.UtilityPkg.all;
library UNISIM;
use UNISIM.VComponents.all;
entity Check_QBlink is
   Port (
      -- master clock
      sstClk              : in  sl;
      -- Async reset signal (synced in module)
      rst                 : in  sl;
			
      -- Serial link - outgoing
      rawSerialOut        : out sl;
      -- Serial link - incoming
      rawSerialIn         : out  sl;

      -- Word-wise data in
      WordIn         : in  slv(31 downto 0);
		WordInEna      : in  sl;
      -- Word-wise data out
      WordOut          : out slv(31 downto 0);
      WordOutValid     : out sl;
      WordOutReq       : in sl;
		
      -- Status bits out
      trgLinkSynced1     : out sl;
      serialClkLocked1   : out sl;
      trgLinkSynced2     : out sl;
      serialClkLocked2   : out sl		
   );
end Check_QBlink;

architecture Behavioral of Check_QBlink is
   signal left2right     : sl;  -- SCROD to DC TX
   signal right2left     : sl;  -- SCROD from DC RX

-- loopback data bus
   signal DCword         : slv(31 downto 0);
   signal DCwordEna      : sl;
	
begin

rawSerialOut <= left2right; -- SCROD-centric
rawSerialIn <= right2left;  

   -- Instantiate SCROD QBlink
	SCROD_QBlink : entity work.QBlink PORT MAP(
		sstClk => sstClk,
		rst => rst,
		rawSerialOut => left2right,
		rawSerialIn => right2left,
		localWordIn => WordIn,
		localWordInValid => WordInEna,
		localWordOut => WordOut,
		localWordOutValid => WordOutValid,
		localWordOutReq => WordOutReq,
		trgLinkSynced => trgLinkSynced1,
		serialClkLocked => serialClkLocked1
	);


   -- Instantiate DC QBlink
	DC_QBlink : entity work.QBlink PORT MAP(
		sstClk => sstClk,
		rst => rst,
		rawSerialOut => right2left,
		rawSerialIn => left2right,
		localWordIn => DCword,
		localWordInValid => DCwordEna,
		localWordOut => DCword,
		localWordOutValid => DCwordEna,
		localWordOutReq => DCwordEna,
		trgLinkSynced => trgLinkSynced2,
		serialClkLocked => serialClkLocked2
	);
	
end Behavioral;