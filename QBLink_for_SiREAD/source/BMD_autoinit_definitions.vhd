--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package BMD_autoinit_definitions is


constant bmd_autoinit_len: integer := 228;
 
type bmd_autoinit is array (bmd_autoinit_len-1 downto 0) of std_logic_vector(27 downto 0);
constant bmd_init_autoinit : bmd_autoinit:=(
--programming targetx dac register
x"E000100",x"B0005AA",x"B0205AA",x"B0405AA",x"B0605AA",x"B0805AA",x"B0A05AA",x"B0C05AA",
x"B0E05AA",x"B1005AA",x"B1205AA",x"B1405AA",x"B1605AA",x"B1805AA",x"B1A05AA",x"B1C05AA",
x"B1E05AA",x"B0103D9",x"B0303D9",x"B0503D9",x"B0703D9",x"B0903D9",x"B00B3D9",x"B0D03D9",
x"B0F03D9",x"B1103D9",x"B1303D9",x"B1503D9",x"B1703D9",x"B1903D9",x"B1B03D9",x"B1D03D9",
x"B1F03D9",x"B300514",x"B310000",x"B320A5A",x"B33044C",x"B3405DC",x"B350426",x"B3604B9",
x"B370000",x"B380480",x"B390000",x"B3A08BB",x"B3B0000",x"B3D04A6",x"B3E044C",x"B3F044C",
x"B40008F",x"B4100A3",x"B42000D",x"B430021",x"B440014",x"B450028",x"B460021",x"B470035",
x"B480038",x"B49000C",x"B4A0028",x"B4B003A",x"B4C02E1",x"B4D0C28",x"B4E0480",x"B4F0AAA",
--programming target function
x"F320000",x"E000100",x"F3303FF",x"E000100",x"F340000",x"E000100",x"F350000",x"E000100",
x"F360000",x"E000100",x"F370001",x"E000100",x"F370000",x"E000100",x"F390004",x"E000100",
x"F3A0000",x"E000100",x"F3D0F00",x"E000100",x"F260000",x"E000100",x"F260800",x"E000100",
x"F260000",x"E000100",x"F0B8001",x"E000100",x"F0A0000",x"E000100",x"F0A0001",x"E000100",
x"F0A0000",x"E000100",x"F260000",x"E000100",x"F264000",x"E000100",x"F26C000",x"E000100",
x"F264000",x"E000100",x"F270000",x"E000100",x"F2AFE00",x"E000100",x"F290200",x"E000100",
x"F298200",x"E00FFFF",x"F290200",x"E00FFFF",x"E00FFFF",x"E00FFFF",x"E00FFFF",x"E00FFFF",
x"E00FFFF",x"E00FFFF",x"E00FFFF",x"E00FFFF",x"F320000",x"E000100",x"F3303FF",x"E000100",
x"F340000",x"E000100",x"F350000",x"E000100",x"F360000",x"E000100",x"F370001",x"E000100",
x"F370000",x"E000100",x"F390004",x"E000100",x"F3A0000",x"E000100",x"F3D0F00",x"E000100",
x"F260000",x"E000100",x"F260800",x"E000100",x"F260000",x"E000100",x"F0B8001",x"E000100",
x"F0A0000",x"E000100",x"F0A0001",x"E000100",x"F0A0000",x"E000100",x"F260000",x"E000100",
x"F264000",x"E000100",x"F26C000",x"E000100",x"F264000",x"E000100",x"F270000",x"E000100",
x"F2AFE00",x"E000100",x"F2901FF",x"E000100",x"F2981FF",x"E00FFFF",x"F2901FF",x"E00FFFF",
x"E00FFFF",x"E00FFFF",x"E00FFFF",x"E00FFFF",x"E00FFFF",x"E00FFFF",x"E00FFFF",x"E00FFFF",
x"F320000",x"E000100",x"F3303FF",x"E000100",x"F340000",x"E000100",x"F350000",x"E000100",
x"F360003",x"E000100",x"F370001",x"E000100",x"F370000",x"E000100",x"F390004",x"E000100",
x"F3A0000",x"E000100",x"F3D0F00",x"E000100",x"F260000",x"E000100",x"F260800",x"E000100",
x"F260000",x"E000100",x"F261080",x"E000100",x"F270000",x"E000100",x"F0B8001",x"E000100",
x"F0A0000",x"E000100",x"F0A0001",x"E000100",x"F0A0000",x"E000100",x"F27C3FF",x"E000100",
--disabling calabriation and reseting send signal
x"F000000",x"E000100",x"F040000",x"E000100");

end BMD_autoinit_definitions;

package body BMD_autoinit_definitions is

 
end BMD_autoinit_definitions;
