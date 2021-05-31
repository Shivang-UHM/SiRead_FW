library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use work.UtilityPkg.all;
library UNISIM;
use UNISIM.VComponents.all;
entity QBlink is
   Port (
      -- master clock
      sstClk              : in  sl;
      -- Async reset signal (synced in module)
      rst                 : in  sl;
			
      -- Serial link - outgoing
      rawSerialOut        : out sl;
      -- Serial link - incoming
      rawSerialIn         : in  sl;

      -- Word-wise data in
      localWordIn         : in  slv(31 downto 0);
		localWordInValid    : in  sl;
      -- Word-wise data out
      localWordOut        : out slv(31 downto 0);
      localWordOutValid   : out sl;
      localWordOutReq     : in sl;  -- Word Read Enable
		
      -- Status bits out
      trgLinkSynced     : out sl;
      serialClkLocked   : out sl :='0';
		
		--
		sync  : in sl := '0'
		);
end QBlink;

architecture Behavioral of QBlink is
   signal sstX5Clk       : sl;
   signal sstRst         : sl;
   signal sstX5Rst       : sl;
   signal linkAligned    : sl;
   signal txData10b      : slv(9 downto 0);
   signal rxData10b      : slv(9 downto 0);
   signal txSerialData   : sl;
   signal rxSerialData   : sl;
   signal rx_fifo_empty  : sl;	
-- Received Bytewise	
   signal localByteOut       : slv(7 downto 0);
   signal localByteOutValid  : sl;
-- Transmitted Bytewise	
   signal localByteIn        : slv(7 downto 0);
   signal localByteInValid   : sl;
	signal tx_fifo_empty	     : sl;
	
	signal i_sync : sl :='0';
	
begin

	-- Input from ports
	rxSerialData <= rawSerialIn;
   -- Outputs to ports
	rawSerialOut <= txSerialData;
   trgLinkSynced <= linkAligned;
	
	i_sync <= sync;

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
   U_SstReset : entity work.SyncBit_QBL
      generic map (
         INIT_STATE_G => '1'
      )
      port map (
         clk      => sstClk,
         rst      => rst,
         asyncBit => i_sync,
         syncBit  => sstRst
      );
   U_SstX5Reset : entity work.SyncBit_QBL
      generic map (
         INIT_STATE_G => '1'
      )
      port map (
         clk      => sstX5Clk,
         rst      => rst,
         asyncBit => i_sync, --   '0',
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
         rxData8b      => localByteOut,
         rxData8bValid => localByteOutValid,
         -- Align signal
         aligned       => linkAligned,
         -- Outgoing true data
         txData8b      => localByteIn,
         txData8bValid => localByteInValid,
         -- Transmitted encoded data
         txData10b     => txData10b
      );

-- FIFO Transmitted Word and convert to bytes

-- logic to load byte to transfer
localByteInValid <= NOT tx_fifo_empty;
				
QBlink_TX_FIFO_W32R8 : entity work.QBLtxFIFO
  PORT MAP (
    rst => sstRst,
    wr_clk => sstClk,
    rd_clk => sstClk,
    din => localWordIn,
    wr_en => localWordInValid,
    rd_en => localByteInValid,
    dout => localByteIn,
    full => open,
    overflow => open,
    empty => tx_fifo_empty
  );		

		
-- FIFO Received bytes and convert to 32-bit word

-- logic to indicate received word available
localWordOutValid <= NOT rx_fifo_empty;

QBlink_RX_FIFO_W8R32 : entity work.CMD_FIFO_w8r32
  PORT MAP (
	 rst    => sstRst,
    wr_clk => sstClk,
    rd_clk => sstClk,
    din    => localByteOut, 
    wr_en  => localByteOutValid,    
    rd_en  => localWordOutReq,           
    dout   => localWordOut,            
    full   => open,   
    empty  => rx_fifo_empty); 
	 
end Behavioral;