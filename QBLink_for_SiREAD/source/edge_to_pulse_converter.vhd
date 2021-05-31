----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity edge_to_pulse_converter is
	Port ( 
		INPUT_EDGE   : in  STD_LOGIC;
		OUTPUT_PULSE : out STD_LOGIC;
		CLOCK        : in  STD_LOGIC;
		CLOCK_ENABLE : in  STD_LOGIC
	);
end edge_to_pulse_converter;

architecture Behavioral of edge_to_pulse_converter is
	signal output0 : std_logic := '0';
	signal output1 : std_logic := '0';
	signal output2 : std_logic := '0';
	signal reset_output0 : std_logic := '0';
begin
	process(reset_output0, INPUT_EDGE) begin
		if (reset_output0 = '1') then
			output0 <= '0';
		elsif (rising_edge(INPUT_EDGE)) then
			output0 <= '1';
		end if;
	end process;
	
	process(CLOCK) begin
		if (rising_edge(CLOCK)) then
			if (CLOCK_ENABLE = '1') then
				output1 <= output0;
				output2 <= output1;
			end if;
		end if;
	end process;

	reset_output0 <= output2;
	
	process(output1, output2) begin
		if(output1 = '1' and output2 = '0') then
			OUTPUT_PULSE <= '1';
		else
			OUTPUT_PULSE <= '0';
		end if;
	end process;
	
end Behavioral;

