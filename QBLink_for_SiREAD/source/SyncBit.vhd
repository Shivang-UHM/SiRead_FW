---------------------------------------------------------------------------------
-- Title         : 1-bit synchronizer
-- Project       : General Purpose Core
---------------------------------------------------------------------------------
-- File          : SyncBit.vhd
-- Author        : Kurtis Nishimura
---------------------------------------------------------------------------------
-- Description:
-- Simple one-bit synchronizer.
---------------------------------------------------------------------------------

LIBRARY ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
--use ieee.std_logic_unsigned.all;
use work.UtilityPkg.all;
library unisim;
use unisim.vcomponents.all;


entity SyncBit_QBL is 
   generic (
      SYNC_STAGES_G  : integer := 2;
      CLK_POL_G      : sl := '1';
      RST_POL_G      : sl := '1';
      INIT_STATE_G   : sl := '0';
      GATE_DELAY_G   : time := 1 ns
   );
   port ( 
      -- Clock and reset
      clk         : in  sl;
      rst         : in  sl := '0';
      -- Incoming bit, asynchronous
      asyncBit    : in  sl;
      -- Outgoing bit, synced to clk
      syncBit     : out sl
   ); 
end SyncBit_QBL;

-- Define architecture
architecture structural of SyncBit_QBL is

   -- Internal Signals
   signal data_sync1  : std_logic;
   signal syncBitPipe : std_logic_vector(SYNC_STAGES_G-2 downto 0);

   -- These attributes will stop Vivado translating the desired flip-flops into an
   -- SRL based shift register.
   attribute ASYNC_REG                                  : string;
--   attribute ASYNC_REG of "G_RisingEdgeClock.cdc_reg1"  : label is "TRUE";
--   attribute ASYNC_REG of "G_RisingEdgeClock.cdc_reg2"  : label is "TRUE";
--   attribute ASYNC_REG of "G_FallingEdgeClock.cdc_reg1" : label is "TRUE";
--   attribute ASYNC_REG of "G_FallingEdgeClock.cdc_reg2" : label is "TRUE";
 
   -- These attributes will stop timing errors being reported on the target flip-flop during back annotated SDF simulation.
   -- Unfortunately this does not seem to fix timing errors in implementation.
   -- To do this, modify the UCF to add something like:
   -- 
   attribute MSGON                                  : string;
--   attribute MSGON of "G_RisingEdgeClock.cdc_reg1"  : label is "FALSE";
--   attribute MSGON of "G_RisingEdgeClock.cdc_reg2"  : label is "FALSE";
--   attribute MSGON of "G_FallingEdgeClock.cdc_reg1" : label is "FALSE";
--   attribute MSGON of "G_FallingEdgeClock.cdc_reg2" : label is "FALSE";
 
   -- These attributes will stop XST translating the desired flip-flops into an
   -- SRL based shift register.
   attribute shreg_extract                                  : string;
--   attribute shreg_extract of "G_RisingEdgeClock.cdc_reg1"  : label is "no";
--   attribute shreg_extract of "G_RisingEdgeClock.cdc_reg2"  : label is "no";
--   attribute shreg_extract of "G_FallingEdgeClock.cdc_reg1" : label is "no";
--   attribute shreg_extract of "G_FallingEdgeClock.cdc_reg2" : label is "no";

begin

   G_RisingEdgeClock : if CLK_POL_G = '1' generate
      cdc_reg1 : FDRE
      generic map (
        INIT => to_bit(INIT_STATE_G)
      )
      port map (
        C    => clk,
        CE   => '1',
        R    => rst,
        D    => asyncBit,
        Q    => data_sync1
      );

      cdc_reg2 : FDRE
      generic map (
        INIT => to_bit(INIT_STATE_G)
      )
      port map (
        C    => clk,
        CE   => '1',
        R    => rst,
        D    => data_sync1,
        Q    => syncBitPipe(0)
      );
   end generate;
   
   G_FallingEdgeClock : if CLK_POL_G = '0' generate
      cdc_reg1 : FDCE_1
      generic map (
        INIT => to_bit(INIT_STATE_G)
      )
      port map (
        C    => clk,
        CE   => '1',
        CLR  => rst,
        D    => asyncBit,
        Q    => data_sync1
      );

      cdc_reg2 : FDCE_1
      generic map (
        INIT => to_bit(INIT_STATE_G)
      )
      port map (
        C    => clk,
        CE   => '1',
        CLR  => rst,
        D    => data_sync1,
        Q    => syncBitPipe(0)
      );   
   end generate;

   G_SyncPipe : if SYNC_STAGES_G > 2 generate
      process(clk) begin
         if rising_edge(clk) then
            if rst = '1' then
               syncBitPipe(syncBitPipe'left downto 1) <= (others => INIT_STATE_G);
            else
               for i in syncBitPipe'left downto 1 loop
                  syncBitPipe(i) <= syncBitPipe(i-1);
               end loop;
            end if;
         end if;
      end process;
   end generate;

   syncBit <= syncBitPipe(syncBitPipe'left);

end structural;

