library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use work.UtilityPkg.all;
library UNISIM;
use UNISIM.VComponents.all;

entity S6SerialInterfaceIn is
   Generic (
      GATE_DELAY_G   : time    := 1 ns;
      BITSLIP_WAIT_G : integer := 25*8
   );
   Port ( 
      -- Parallel clock and reset
      sstClk    : in  sl;
      sstRst    : in  sl := '0';
      -- Aligned indicator
      aligned   : in  sl;
      -- Parallel data out
      dataOut   : out slv(9 downto 0);
      -- Serial clock in
      sstX5Clk  : in  sl;
      sstX5Rst  : in  sl := '0';
      -- Serial data in
      dataIn    : in  sl
   );
end S6SerialInterfaceIn;

architecture Behavioral of S6SerialInterfaceIn is

   type StateType is (RESET_S, READ_WORD_S, BITSLIP_S);
   
   type RegType is record
      state     : StateType;
      dataWord  : slv(9 downto 0);
      dataWrite : sl;
      bitCount  : slv(3 downto 0);
      slipCount : slv(15 downto 0);
      flip      : sl;
   end record RegType;
   
   constant REG_INIT_C : RegType := (
      state     => RESET_S,
      dataWord  => (others => '0'),
      dataWrite => '0',
      bitCount  => (others => '0'),
      slipCount => (others => '0'),
      flip      => '0'
   );

   signal r   : RegType := REG_INIT_C;
   signal rin : RegType;

   signal serialDataInRising  : sl;
   signal serialDataInFalling : sl;

   signal risingWord      : slv(4 downto 0);
   signal fallingWord     : slv(4 downto 0);
   signal dataWord        : slv(9 downto 0);
   signal dataWordFlipped : slv(9 downto 0);

   signal fifoEmpty : sl;
   signal fifoFull  : sl;
	
--	signal BUSY	: sl := '0';
--	signal Data2IDDR	: sl;

begin
---- IODELAY2: Input and Output Fixed or Variable Delay Element
---- Spartan-6
---- Xilinx HDL Libraries Guide, version 11.2
--	IODELAY2_inst : IODELAY2
--	generic map(
--	COUNTER_WRAPAROUND => "WRAPAROUND", -- Sets behavior when tap count exceeds max or min, depending on
--													-- whether tap setting is being incremented or decremented.
--	DATA_RATE => "SDR",
--	DELAY_SRC => "IDATAIN", 	-- ODATAIN indicates delay source is the ODATAIN pin from the OSERDES or OLOGIC.
--										-- IDATAIN indicates the delay source is from the IDATAIN pin; one of the dedicated IOB (P/N) Pads. 
--										-- IO means that the signal source switches between IDATAIN and ODATAIN depending on the sense of the T (tristate) input.
----	IDELAY2_VALUE => 0, 			-- Delay tap value for IDELAY Mode. Only used when IDELAY_MODE is set to PCI.
----	IDELAY_MODE => "NORMAL", 	-- Delay Mode setting - PCI is for handling PCI/Extended Mode.
--										-- Affects Input delays only.
--	IDELAY_TYPE => "VARIABLE_FROM_ZERO", -- Delay Type. VARIABLE refers to the customer calibrated delay mode.
--										-- DEFAULT will utilize physical chip settings for best approximation
--										-- of zero hold time programming. VARIABLE_FROM_ZERO and
--										-- VARIABLE_FROM_HALF_MAX refer to the reset behavior.
--										-- DIFF_PHASE_DETECTOR is a special mode where the master and slave
--										-- IODELAY2s are cascaded for video application support.
--	IDELAY_VALUE => 0, 			-- Delay tap value for IDELAY Mode.
----	ODELAY_VALUE => 0, 			-- Delay tap value for ODELAY Mode. 
--	SERDES_MODE => "NONE",
--	SIM_TAPDELAY_VALUE => 75
--	)
--	port map (
--	BUSY => BUSY,
--	DATAOUT => Data2IDDR, 			-- 1-bit Delayed data signal to DDLY of ILOGIC2 or ISERDES2 sites.
----	DATAOUT2 => DATAOUT2, 	-- 1-bit Delayed data signal to DDLY2 of ILOGIC2 or ISERDES2 sites.
----	DOUT => DOUT, 				-- 1-bit Delayed data signal to IOB.
----	TOUT => TOUT, 				-- 1-bit Delayed Tristate signal to IOB.
--	CAL => '1', 				-- 1-bit Enter the IODELAY calibration sequence. This will last between 8 and 16
--									-- GCLK cycles. Drives RDY HIGH when complete. Shared with DRP pin ADD(add).
--	CE => '1', 					-- 1-bit Enable the Increment/Decrement signal.
----	CLK => sstClk, 				-- 1-bit CLK0 from INT connects to "Master" and CLK1 from INT connects to "Slave"
--	IDATAIN => dataIn, 		-- 1-bit Data signal from IOB.
--	INC => '1', 				-- 1-bit Increment / Decrement signal. Used for setting tap or delay length.
--						-- IOCLK0 - IOCLK1: 1-bit (each) Optionally Invertible IO clock network input.
--	IOCLK0 => sstClk,
--	IOCLK1 => '0',
--	ODATAIN => '0', 		-- 1-bit Data input signal from OLOGIC or OSERDES.
--	RST => sstRst, 				-- 1-bit Reset the IODELAY2 to either zero or 1/2 of total period. RST_VALUE
--									-- attribute controls this choice.
--	T => '0' 						-- 1-bit Tristate input signal from OLOGIC or OSERDES.
--);
---- End of IODELAY2_inst instantiation

   -- IDDR2 to grab the serial data
   IDDR2_inst : IDDR2
      generic map(
         DDR_ALIGNMENT => "C0",  -- Sets output alignment to "NONE", "C0", "C1"
         INIT_Q0       => '0',   -- Sets initial state of the Q0 output to '0' or '1'
         INIT_Q1       => '0',   -- Sets initial state of the Q1 output to '0' or '1'
         SRTYPE        => "SYNC" -- Specifies "SYNC" or "ASYNC" set/reset
      )
      port map (
         Q0 => serialDataInRising,  -- 1-bit output captured with C0 clock
         Q1 => serialDataInFalling, -- 1-bit output captured with C1 clock
         C0 => sstX5Clk,            -- 1-bit clock input
         C1 => not(sstX5Clk),       -- 1-bit clock input
         CE => '1',                 -- 1-bit clock enable input
         D  => dataIn,              -- 1-bit data input
         R  => '0',                 -- 1-bit reset input
         S  => '0'                  -- 1-bit set input
      );

   -- Shift register for the rising and falling words
   process(sstX5Clk) begin
      if rising_edge(sstX5Clk) then
         if sstX5Rst = '1' then
            risingWord <= (others => '0');
            fallingWord <= (others => '0');
         else
            risingWord(0)  <= serialDataInRising;
            fallingWord(0) <= serialDataInFalling;
            for i in 1 to risingWord'left loop
               risingWord(i)  <= risingWord(i-1);
               fallingWord(i) <= fallingWord(i-1);
            end loop;
         end if;
      end if;
   end process;
   -- Create data word and flipped data word
   process(sstX5Clk) begin
      if rising_edge(sstX5Clk) then
         for i in 0 to risingWord'left loop
            dataWord(i*2)          <= risingWord(i);
            dataWord(i*2+1)        <= fallingWord(i);
            dataWordFlipped(i*2)   <= fallingWord(i);
            dataWordFlipped(i*2+1) <= risingWord(i);
         end loop;
      end if;
   end process;

   -- State machine to grab 10 bits and write them into a FIFO
   -- Master state machine (combinatorial)   
   comb : process(r, serialDataInRising, serialDataInFalling,
                  aligned, dataWord,dataWordFlipped, sstX5Rst) is
      variable v : RegType;
   begin
      v := r;

      -- Resets for pulsed outputs
      v.dataWrite := '0';
      
      -- State machine 
      case(r.state) is 
         when RESET_S =>
            v.bitCount := (others => '0');
            v.flip     := '0';
            v.state    := READ_WORD_S;
         when READ_WORD_S =>
            v.bitCount := r.bitCount + 2;
--            if r.flip = '0' then
--               v.dataWord(conv_integer(r.bitCount))   := serialDataInRising;
--               v.dataWord(conv_integer(r.bitCount+1)) := serialDataInFalling;
--            else
--               v.dataWord(conv_integer(r.bitCount+1)) := serialDataInRising;
--               v.dataWord(conv_integer(r.bitCount))   := serialDataInFalling;
--            end if;
            if r.bitCount = 8 then
               v.bitCount  := (others => '0');
               v.dataWrite := '1';
               if r.flip = '0' then
                  v.dataWord := dataWord;
               else
                  v.dataWord := dataWordFlipped;
               end if;
               if aligned = '0' then
                  if r.slipCount < BITSLIP_WAIT_G then
                     v.slipCount := r.slipCount + 1;
                  else
                     v.slipCount := (others => '0');
                     if r.flip = '0' then
                        v.flip := '1';
                     else
                        v.flip      := '0';
                        v.state := BITSLIP_S;
                     end if;
                  end if;
               end if;
            end if;
         when BITSLIP_S =>
            v.bitCount := (others => '0');
            v.state    := READ_WORD_S;
         when others =>
            v.state    := RESET_S;
      end case;

      -- Reset logic
      if (sstX5Rst = '1') then
         v := REG_INIT_C;
      end if;

      -- Assignment of combinatorial variable to signal
      rin <= v;

   end process;

   -- Master state machine (sequential)
   seq : process (sstX5Clk) is
   begin
      if (rising_edge(sstX5Clk)) then
         r <= rin after GATE_DELAY_G;
      end if;
   end process seq;
   
   
   -- Read FIFO out to the top level
   U_SerializationFifo : entity work.SerializationFifo
      PORT MAP (
         rst    => sstRst,
         wr_clk => sstX5Clk,
         rd_clk => sstClk,
         din    => r.dataWord,
         wr_en  => r.dataWrite,
         rd_en  => not(fifoEmpty),
         dout   => dataOut,
         full   => fifoFull,
         empty  => fifoEmpty,
         valid  => open
      );   

end Behavioral;

