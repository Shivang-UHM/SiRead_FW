library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use work.UtilityPkg.all;
library UNISIM;
use UNISIM.VComponents.all;
entity HodoDC_Interface is
   Port (
      -- SST base clock in
        RJ45_CLK_P        :  in sl;
        RJ45_CLK_N        :  in sl;
      -- Serial link - trigger primitives from SCROD to CAJIPCI
        RJ45_ACK_P        : out sl;
        RJ45_ACK_N        : out sl;
      -- Serial link - trigger link from CAJIPCI to SCROD
        RJ45_TRG_P        :  in sl;
        RJ45_TRG_N        :  in sl;
      -- Handshaking for trigger veto release
        RJ45_RSV_P        : out sl;
        RJ45_RSV_N        : out sl;
      -- SST clock out to clock generator
      SST_CLK_RAW       : out sl;
      -- SST clock from clock generator
      sstClk            : in  sl;
      -- Async reset signal (synced in module)
      rst               : in  sl;
      -- Local trigger bits in
      asicTriggerBits   : in  slv(127 downto 0);
      -- Trigger type out
      trgType           : out slv(7 downto 0);
      trgValid          : out sl;
      -- Sampling status (for veto release)
      currentlySampling : in sl;
      -- Status bits out
      trgLinkSynced     : out sl;
      serialClkLocked   : out sl
   );
end HodoDC_Interface;
architecture Behavioral of HodoDC_Interface is
   signal sstX5Clk       : sl;
   signal sstRst         : sl;
   signal sstX5Rst       : sl;
   signal linkAligned    : sl;
   signal txData10b      : slv(9 downto 0);
   signal rxData10b      : slv(9 downto 0);
   signal txSerialData   : sl;
   signal rxSerialData   : sl;
   signal nTrigBits      : slv(7 downto 0);
   signal nTrigBitsValid : sl;
begin
   -- Outputs to ports
   trgLinkSynced <= linkAligned;
   U_ACK_OBUFDS : OBUFDS port map ( I => txSerialData, O => RJ45_ACK_P, OB => RJ45_ACK_N );
   U_RSV_OBUFDS : OBUFDS port map ( I => currentlySampling, O => RJ45_RSV_P, OB => RJ45_RSV_N );
   -- Inputs from ports
   U_CLK_IBUFDS : IBUFDS port map ( I => RJ45_CLK_P, IB => RJ45_CLK_N, O => SST_CLK_RAW );
   U_TRG_IBUFDS : IBUFDS port map ( I => RJ45_TRG_P, IB => RJ45_TRG_N, O => rxSerialData );
   -- DCM to generate the 5x serial clock for the DDR links
   U_ClockGenByteLink : entity work.clockgen_bytelink
      port map (
         -- Clock in ports
         SST_CLK_IN    => sstClk,
         -- Clock out ports
         SSTx5_CLK_OUT => sstX5Clk,
         -- Status and control signals
         RESET         => rst,
         LOCKED        => serialClkLocked
      );
   -- Create two resets, one on SSTx5, the other on SST
   U_SstReset : entity work.SyncBit
      generic map (
         INIT_STATE_G => '1'
      )
      port map (
         clk      => sstClk,
         rst      => rst,
         asyncBit => '0',
         syncBit  => sstRst
      );
   U_SstX5Reset : entity work.SyncBit
      generic map (
         INIT_STATE_G => '1'
      )
      port map (
         clk      => sstX5Clk,
         rst      => rst,
         asyncBit => '0',
         syncBit  => sstX5Rst
      );
   -- Transmit interface (serial part)
   U_SerialInterfaceOut : entity work.S6SerialInterfaceOut
      port map (
         -- Parallel clock and reset
         sstClk    => sstClk,
         sstRst    => sstRst,
         -- Parallel data in
         data10bIn => txData10b,
         -- Serial clock
         sstX5Clk  => sstX5Clk,
         sstX5Rst  => sstX5Rst,
         -- Serial data out
         dataOut   => txSerialData
      );
   -- Receive interface (serial part)
   U_SerialInterfaceIn : entity work.S6SerialInterfaceIn
      port map (
         -- Parallel clock and reset
         sstClk    => sstClk,
         sstRst    => sstRst,
         -- Aligned indicator
         aligned   => linkAligned,
         -- Parallel data out
         dataOut   => rxData10b,
         -- Serial clock in
         sstX5Clk  => sstX5Clk,
         sstX5Rst  => sstX5Rst,
         -- Serial data in
         dataIn    => rxSerialData
      );
   -- Main link logic (parallel part)
   U_ByteLink : entity work.ByteLink
      generic map (
         ALIGN_CYCLES_G => 100
      )
      port map (
         -- User clock and reset
         clk           => sstClk,
         rst           => sstRst,
         -- Incoming encoded data
         rxData10b     => rxData10b,
         -- Received true data
         rxData8b      => trgType,
         rxData8bValid => trgValid,
         -- Align signal
         aligned       => linkAligned,
         -- Outgoing true data
         txData8b      => nTrigBits,
         txData8bValid => nTrigBitsValid,
         -- Transmitted encoded data
         txData10b     => txData10b
      );
end Behavioral;