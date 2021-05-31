----------------------------------------------------------------------------------
-- Company        : UH Manoa- Department of Physics
-- Engineer       : Isar Mostafanezhad
-- Updated        : 
-- Create Date    : 14:40:31 10/25/2013 
-- Module Name    : TARGETX_DAC_CONTROL - Behavioral 
-- Project Name   : originaly for KLM but now using for BMD
-- Target Devices : SPARTAN 6 XC6SLX4-2TQG144
-- Tool versions  : ISE 14.7
-- Description    : TargetX DAC control driver
--
-- Dependencies: 
--
-- Revision:   
-- Revision 0.01 - File Created
-- Revision 0.02: -added a 'busy' pin such that calling process can wait until the work is over, 25/09/14- IM  
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

entity TARGETX_DAC_CONTROL is
    generic (constant REGISTER_WIDTH : integer := 19);-- needs to change, change the name of the file to TargetX DAC control this is actually 19 now
	 
    Port ( CLK          : in  STD_LOGIC;
			  LOAD_PERIOD  : in  STD_LOGIC_VECTOR(15 downto 0);
			  LATCH_PERIOD : in  STD_LOGIC_VECTOR(15 downto 0);
			  UPDATE       : in  STD_LOGIC;
			  REG_DATA     : in  STD_LOGIC_VECTOR(18 downto 0);
			  OOPS_RESET	: in  STD_LOGIC;
           
			  busy : out std_logic;
			  SIN  : out  STD_LOGIC;
           SCLK : out  STD_LOGIC;
           PCLK : out  STD_LOGIC);
end TARGETX_DAC_CONTROL;

architecture Behavioral of TARGETX_DAC_CONTROL is

   --STATES
   type state_type is (
			IDLE, 
			LOAD_DAC_LOW_SET0,
			LOAD_DAC_LOW_WAIT0, 
			LOAD_DAC_LOW_MID, 
			LOAD_DAC_LOW_SET1,
			LOAD_DAC_LOW_WAIT1,
			LOAD_DAC_HIGH_SET0,
			LOAD_DAC_HIGH_WAIT0,
			LOAD_DAC_HIGH_MID,
			LOAD_DAC_HIGH_SET1,
			LOAD_DAC_HIGH_WAIT1,
			LATCH_SET0,
			LATCH_WAIT0,
			LATCH_SET1,
			LATCH_WAIT1,
			LATCH_SET2,
			LATCH_WAIT2,
			LATCH_SET3,
			LATCH_WAIT3,
			LATCH_SET4,
			LATCH_WAIT4,
			LATCH_SET5,
			LATCH_WAIT5,
			LATCH_SET6,
			LATCH_WAIT6
			); 
   signal STATE : state_type := IDLE;

   --Internal signals for all outputs of the state-machine
	signal SIN_i  : std_logic := '0';
	signal SCLK_i : std_logic := '0';
	signal PCLK_i : std_logic := '0';
	
	--Nomal variables
	SIGNAL cnt              : integer                       := 0;
	signal ENABLE_COUNTER   : std_logic                     := '0';
	signal INTERNAL_COUNTER	: UNSIGNED(15 downto 0)         := x"0000";
	signal UPDATE_REG       : std_logic_vector(1 downto 0 ) := "00";
	signal UPDATE_START     : std_logic                     := '1';
	
	--constants
	--signal LOAD_PERIOD  	: UNSIGNED(15 downto 0) := x"0080";
	--signal LATCH_PERIOD  	: UNSIGNED(15 downto 0) := x"0140";

begin

   --counter process
	process (CLK) begin
		if (rising_edge(CLK)) then
			if ENABLE_COUNTER = '1' then
				INTERNAL_COUNTER <= INTERNAL_COUNTER + 1;
			else
				INTERNAL_COUNTER <= (others=>'0');
			end if;
		end if;
	end process;
 
	--LATCH OUTGOING SIGNALS
   SYNC_PROC: process (CLK)
   begin-- good practice to send internals to outputs not change outputs directly and define a sync process to spit them out
      if (CLK'event and CLK = '1') then
			SIN  <= SIN_i;
			SCLK <= SCLK_i;
			PCLK <= PCLK_i;
      end if;
   end process;
	
	--Edge detector for key internal signals
	process (CLK) begin
		if (falling_edge(CLK)) then	
			UPDATE_REG(1) <= UPDATE_REG(0);
			UPDATE_REG(0) <= UPDATE;
		end if;
	end process;
	UPDATE_START <= '1' when (UPDATE_REG = "01") else '0';
 
   --process to load DACs to ASIC
	DAC_REGISTER_UPDATE_TARGETX : PROCESS(CLK)
	BEGIN
		------------------------------------------------------------
		IF RISING_EDGE(CLK) THEN
			CASE STATE IS
				--------------------------------
				WHEN IDLE => --waits for UPDATE_START = '1'
				   SIN_i  <= '0';
					SCLK_i <= '0';
					PCLK_i <= '0';
					cnt 	 <= 0;
					busy   <='0';
					ENABLE_COUNTER <= '0';
					if UPDATE_START = '1' then
						STATE <= LOAD_DAC_LOW_SET0;
					else
						STATE <= IDLE;
					end if;
				--------------------------------
				
				WHEN LOAD_DAC_LOW_SET0 =>--sets busy to '1'
					SCLK_i <= '0';
					ENABLE_COUNTER <= '0';
					STATE <= LOAD_DAC_LOW_WAIT0;
					busy  <= '1';
				
				WHEN LOAD_DAC_LOW_WAIT0 =>--enables counter and waits for INTERNAL_COUNTER > LOAD_PERIOD
					SCLK_i <= '0';
					ENABLE_COUNTER <= '1';
					STATE <= LOAD_DAC_LOW_WAIT0;
					if INTERNAL_COUNTER > UNSIGNED(LOAD_PERIOD) then
						ENABLE_COUNTER <= '0';
						state <= LOAD_DAC_LOW_MID;
					end if;
				
				WHEN LOAD_DAC_LOW_MID =>--if shift REG_DATA(18 - cnt) bit out to SIN on targetx 
					SCLK_i <= '0';
					ENABLE_COUNTER <= '0';
					if cnt < REGISTER_WIDTH then
						STATE <= LOAD_DAC_LOW_SET1;
						SIN_i <= REG_DATA(18 - cnt);	--SLB is sent first as "cnt" increasing.
					else
						STATE <= LATCH_SET0; --DONE LOADING REGISTER
						cnt <= 0;
					end if;
					
				WHEN LOAD_DAC_LOW_SET1 =>--waits one clk cycle
					SCLK_i <= '0';
					ENABLE_COUNTER <= '0';
					STATE <= LOAD_DAC_LOW_WAIT1;
					
				WHEN LOAD_DAC_LOW_WAIT1 =>--enables counter and waits for INTERNAL_COUNTER > LOAD_PERIOD
					SCLK_i <= '0';
					ENABLE_COUNTER <= '1';
					STATE <= LOAD_DAC_LOW_WAIT1;
					if INTERNAL_COUNTER > UNSIGNED(LOAD_PERIOD) then
						ENABLE_COUNTER <= '0';
						STATE <= LOAD_DAC_HIGH_SET0;
					end if;
					
				WHEN LOAD_DAC_HIGH_SET0 =>--sets SCLK '1' 
					SCLK_i <= '1';
					ENABLE_COUNTER <= '0';
					STATE <= LOAD_DAC_HIGH_WAIT0;
					
				WHEN LOAD_DAC_HIGH_WAIT0 =>--enables counter and waits for INTERNAL_COUNTER > LOAD_PERIOD
					SCLK_i <= '1';
					ENABLE_COUNTER <= '1';
					STATE <= LOAD_DAC_HIGH_WAIT0;
					if INTERNAL_COUNTER > UNSIGNED(LOAD_PERIOD) then
						ENABLE_COUNTER <= '0';
						state <= LOAD_DAC_HIGH_MID;
					end if;	
					
				WHEN LOAD_DAC_HIGH_MID =>--increments cnt to shift next bit out
					SCLK_i <= '1';
					ENABLE_COUNTER <= '0';
					STATE <= LOAD_DAC_HIGH_SET1;
					cnt <= cnt + 1;
				
				WHEN LOAD_DAC_HIGH_SET1 =>--waits one clk cycle
					SCLK_i <= '1';
					ENABLE_COUNTER <= '0';
					STATE <= LOAD_DAC_HIGH_WAIT1;
				
				WHEN LOAD_DAC_HIGH_WAIT1 =>--enables counter and waits for INTERNAL_COUNTER > LOAD_PERIOD
					SCLK_i <= '1';
					ENABLE_COUNTER <= '1';
					STATE <= LOAD_DAC_HIGH_WAIT1;
					if INTERNAL_COUNTER > UNSIGNED(LOAD_PERIOD) then
						ENABLE_COUNTER <= '0';
						STATE <= LOAD_DAC_LOW_SET0;
					end if;	
					
				WHEN LATCH_SET0 =>--sets SCLK to '0'
				   SIN_i <= '0';
					SCLK_i <= '0';
					PCLK_i <= '0';
					ENABLE_COUNTER <= '0';
					STATE <= LATCH_WAIT0;
					
				WHEN LATCH_WAIT0 =>--enables counter and waits for INTERNAL_COUNTER > LATCH_PERIOD
				   SIN_i <= '0';
					SCLK_i <= '0';
					PCLK_i <= '0';
					ENABLE_COUNTER <= '1';
					STATE <= LATCH_WAIT0;
					if INTERNAL_COUNTER > UNSIGNED(LATCH_PERIOD) then
						ENABLE_COUNTER <= '0';
						STATE <= LATCH_SET1;
					end if;
				
				WHEN LATCH_SET1 =>--sets PCLK to '1' 
				   SIN_i <= '0';
					SCLK_i <= '0';
					PCLK_i <= '1';
					ENABLE_COUNTER <= '0';
					STATE <= LATCH_WAIT1;		
					
				WHEN LATCH_WAIT1 =>--enables counter and waits for INTERNAL_COUNTER > LATCH_PERIOD
				   SIN_i <= '0';
					SCLK_i <= '0';
					PCLK_i <= '1';
					ENABLE_COUNTER <= '1';
					STATE <= LATCH_WAIT1;
					if INTERNAL_COUNTER > UNSIGNED(LATCH_PERIOD) then
						ENABLE_COUNTER <= '0';
						STATE <= LATCH_SET2;
					end if;
					
				WHEN LATCH_SET2 =>--sets PCLK to '0' to latch SIN into targetx
				   SIN_i <= '0';
					SCLK_i <= '0';
					PCLK_i <= '0';
					ENABLE_COUNTER <= '0';
					STATE <= LATCH_WAIT2;
					
				WHEN LATCH_WAIT2 =>--enables counter and waits for INTERNAL_COUNTER > LATCH_PERIOD
				   SIN_i <= '0';
					SCLK_i <= '0';
					PCLK_i <= '0';
					ENABLE_COUNTER <= '1';
					STATE <= LATCH_WAIT2;
					if INTERNAL_COUNTER > UNSIGNED(LATCH_PERIOD) then
						ENABLE_COUNTER <= '0';
						STATE <= LATCH_SET3;
					end if;
				
				WHEN LATCH_SET3 =>--sets SIN to '1'
				   SIN_i <= '1';
					SCLK_i <= '0';
					PCLK_i <= '0';
					ENABLE_COUNTER <= '0';
					STATE <= LATCH_WAIT3;
				
				WHEN LATCH_WAIT3 =>--enables counter and waits for INTERNAL_COUNTER > LATCH_PERIOD
				   SIN_i <= '1';
					SCLK_i <= '0';
					PCLK_i <= '0';
					ENABLE_COUNTER <= '1';
					STATE <= LATCH_WAIT3;
					if INTERNAL_COUNTER > UNSIGNED(LATCH_PERIOD) then
						ENABLE_COUNTER <= '0';
						STATE <= LATCH_SET4;
					end if;
				
				WHEN LATCH_SET4 =>--sets SIN and PCLK to '1'
				   SIN_i <= '1';
					SCLK_i <= '0';
					PCLK_i <= '1';
					ENABLE_COUNTER <= '0';
					STATE <= LATCH_WAIT4;
				
				WHEN LATCH_WAIT4 =>--enables counter and waits for INTERNAL_COUNTER > LATCH_PERIOD
				   SIN_i <= '1';
					SCLK_i <= '0';
					PCLK_i <= '1';
					ENABLE_COUNTER <= '1';
					STATE <= LATCH_WAIT4;
					if INTERNAL_COUNTER > UNSIGNED(LATCH_PERIOD) then
						ENABLE_COUNTER <= '0';
						STATE <= LATCH_SET5;
					end if;
				
				WHEN LATCH_SET5 =>--sets SIN = '1' and PCLK = '1'
				   SIN_i <= '1';
					SCLK_i <= '0';
					PCLK_i <= '0';
					ENABLE_COUNTER <= '0';
					STATE <= LATCH_WAIT5;
					
			   WHEN LATCH_WAIT5 =>--enables counter and waits for INTERNAL_COUNTER > LATCH_PERIOD
				   SIN_i <= '1';
					SCLK_i <= '0';
					PCLK_i <= '0';
					ENABLE_COUNTER <= '1';
					STATE <= LATCH_WAIT5;
					if INTERNAL_COUNTER > UNSIGNED(LATCH_PERIOD) then
						ENABLE_COUNTER <= '0';
						STATE <= LATCH_SET6;
					end if;
				
				WHEN LATCH_SET6 =>--sets SIN = '0'
				   SIN_i <= '0';
					SCLK_i <= '0';
					PCLK_i <= '0';
					ENABLE_COUNTER <= '0';
					STATE <= LATCH_WAIT6;
				
				WHEN LATCH_WAIT6 =>--enables counter and waits for INTERNAL_COUNTER > LATCH_PERIOD
				   SIN_i <= '0';
					SCLK_i <= '0';
					PCLK_i <= '0';
					ENABLE_COUNTER <= '1';
					STATE <= LATCH_WAIT6;
					if INTERNAL_COUNTER > UNSIGNED(LATCH_PERIOD) then
						ENABLE_COUNTER <= '0';
						STATE <= IDLE;--goes back to idle for next bit to shift to targetx
					end if;
					
				--------------------------------
				WHEN OTHERS =>
					STATE <= IDLE;
			END CASE;
			------------------------------------------------------------
		END IF;
		------------------------------------------------------------
	END PROCESS DAC_REGISTER_UPDATE_TARGETX;

end Behavioral;

