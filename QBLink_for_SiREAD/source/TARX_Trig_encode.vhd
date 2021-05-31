----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:02:56 06/26/2018 
-- Design Name: 
-- Module Name:    TARX_Trig_encode - Behavioral 
-- Project Name: 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TARX_Trig_encode is
Port ( 	 
	  CLK  					 : IN  STD_LOGIC;
	  TX_TRIG_BITS			 : IN STD_LOGIC_VECTOR(4 downto 0);
	  	
	  DC_ADDR             : IN  STD_LOGIC_VECTOR (3 downto 0);
	  SEND                : IN  STD_LOGIC;
	  TRIGGER             : IN  STD_LOGIC;
	  OOPS_RESET          : IN  STD_LOGIC;
	  ------master to DC signals----------
	  MAS_DC_DATA_CLK     : IN  STD_LOGIC;
	  MAS_DC_RX           : IN  STD_LOGIC;
	  MAS_DC_DATA_IN      : IN  STD_LOGIC;
	  DC_MAS_TX           : OUT STD_LOGIC;
	  DC_MAS_DATA_OUT  	 : OUT STD_LOGIC;
	  ------DC to DC signals--------------
	  DC_DC_DATA_CLK      : OUT STD_LOGIC;
	  DC_DC_RX            : IN  STD_LOGIC;
	  DC_DC_DATA_IN       : IN  STD_LOGIC;
	  DC_DC_TX            : OUT STD_LOGIC;
	  DC_DC_DATA_OUT      : OUT STD_LOGIC;
	  --output registers for DC drivers--
	  RB_REG_VALUE			 : IN  STD_LOGIC_VECTOR (15 downto 0);
	  RB_REG_NUM          : OUT STD_LOGIC_VECTOR (7 downto 0);
	  TX_BUSY             : OUT STD_LOGIC;
	  TX_UPDATE  			 : OUT STD_LOGIC;
	  DAC_UPDATE			 : OUT STD_LOGIC;
	  OUTPUT_REGISTERS    : OUT GPR;
	  -----busy signals from drivers-----
	  READOUT_BUSY        : IN STD_LOGIC;
	  ASIC_BUSY    		 : IN STD_LOGIC;
	  DUMP_BUSY 			 : IN STD_LOGIC;
	  MPPC_DAC_BUSY		 : IN STD_LOGIC;
	  -----data from pedestal drvier-----  
	  wave_fifo_full      : OUT STD_LOGIC;
	  wave_fifo_clk		 : IN  STD_LOGIC;
	  wave_fifo_wr_en   	 : IN  STD_LOGIC;
	  wave_fifo_data 		 : IN  STD_LOGIC_VECTOR (31 downto 0);
	  wave_fifo_reset 	 : IN  STD_LOGIC);

end TARX_Trig_encode;

architecture Behavioral of TARX_Trig_encode is

begin


end Behavioral;

