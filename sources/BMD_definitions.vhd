----------------------------------------------------------------------------------
-- Company			: IDLAB
-- Engineer			: Isar Mostafanezhad
-- Updated     	: Khanh Le 4/31/2017
-- Create Date 	: 13:06:51 10/16/2014 
-- Module Name 	: BMD_definitions 
-- Project Name	: originally for IDL_KLM_MB RevA, modified for BOREHOLE MUON DETECTOR
-- Target Devices	: Spartan 6 XC6SLX150T-3FGG676
-- Tool versions	: 14.7
-- Description		: Module holds definitions need for firmware

-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.ALL;

package BMD_definitions is

constant N_GPR : integer := 20;--127;
type GPR is array(N_GPR-1 downto 0) of std_logic_vector(15 downto 0);


constant NRAMCH : integer := 4;
type AddrArray is array (NRAMCH-1 downto 0) of std_logic_vector(21 downto 0);
type DataArray is array (NRAMCH-1 downto 0) of std_logic_vector(7 downto 0);
type QArray    is array (NRAMCH+2  downto 0) of integer;

type trig_buffer is array (1 downto 0) of std_logic_vector(4 downto 0);

------------------declearations for WaveformPedsubDSP---------------------------------------------
constant NCHPerTX : integer :=  16;
constant NSamplesPerWin : integer :=  32;  
constant NWin : integer :=  4; -- number of waveform windows to be peroccessed in the FPGA

type WaveWideTempArray is array (NCHPerTX-1 downto 0) of std_logic_vector(19 downto 0);
type WaveTempArray is array (NCHPerTX-1 downto 0) of std_logic_vector(11 downto 0);
type WaveUnsignedTempArray is array (NCHPerTX-1 downto 0) of unsigned(11 downto 0);

------------------declearations for trigger modules---------------------------------------------
--constant TDC_NUM_CHAN             : integer   := 1;
--constant TRIGGER_SCALER_BIT_WIDTH : integer := 32;--16;
--type tb_vec_type is array (1 to TDC_NUM_CHAN) of std_logic_vector(5 downto 1);


end BMD_definitions;

package body BMD_definitions is
 
end BMD_definitions;
