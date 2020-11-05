---------------------------------------------------------------------------------
-- Title         : Command Interpreter
-- Project       : General Purpose Core
---------------------------------------------------------------------------------
-- File          : CommandInterpreter.vhd
-- Author        : Kurtis Nishimura, updated by Nathan Park (park.nathan@gmail.com)
---------------------------------------------------------------------------------
-- Description:
-- Packet parser for old Belle II format.
-- See: http://www.phys.hawaii.edu/~kurtisn/doku.php?id=itop:documentation:data_format
---------------------------------------------------------------------------------

library ieee;
    use ieee.std_logic_1164.all;
    use IEEE.NUMERIC_STD.ALL;

    use work.all;
    use work.UtilityPkg.all;
    use work.Eth1000BaseXPkg.all;
    use work.GigabitEthPkg.all;
    use work.BMD_definitions.all; --need to include BMD_definitions in addition to work.all
    LIBRARY ieee;


entity CI_test is
    generic (
        REG_ADDR_BITS_G : integer := 16;
        REG_DATA_BITS_G : integer := 16;
        TIMEOUT_G       : integer := 125000;
        GATE_DELAY_G    : time := 1 ns;
		num_DC          : integer := 3
    );
    port (
        -- User clock and reset
        clk      : in  std_logic;
		dataNotC_l_k	   : in  sl;
        usrRst      : in  sl;
        -- Incoming data from PC
        rxData      : in  slv(31 downto 0);
        rxDataValid : in  sl;
        rxDataLast  : in  sl;
        rxDataReady : out sl;
        -- Outgoing response to PC
        txData      : out slv(31 downto 0);
        txDataValid : out sl;
        txDataLast  : out sl;
        txDataReady : in  sl;
		--DC Comm signals
		serialClkLck : out slv(num_DC downto 0);
		trigLinkSync : out slv(num_DC downto 0);
		DC_CMD 		 : out slv(31 downto 0) := (others => '0');
		QB_WrEn      : out slv(num_DC downto 0);
		QB_RdEn      : out slv(num_DC downto 0);
		DC_RESP		 : out slv(31 downto 0);
		DC_RESP_VALID: out slv(num_DC downto 0);
		EVNT_FLAG    : out sl;
        -- Register interfaces
        regAddr     : out slv(REG_ADDR_BITS_G-1 downto 0);
        regWrData   : out slv(REG_DATA_BITS_G-1 downto 0);
        regRdData   : out slv(REG_DATA_BITS_G-1 downto 0);
        regReq      : out sl;
        regOp       : out sl;
        regAck      : out sl;
		--debug ports
		ldQBLink 	: out sl;
		cmd_int_state : out slv(4 downto 0);
        
        RX_DC_P             : in slv(num_DC downto 0);  --SERIAL INPUT FROM DC
        RX_DC_N             : in slv(num_DC  downto 0);  --SERIAL INPUT FROM DC
        DC_CLK_P             : out slv(num_DC downto 0);  --25MHz clock to DC (fact check)--> {confirmed}
        DC_CLK_N            : out slv(num_DC downto 0); 
        TX_DC_N         : out slv(num_DC downto 0);  --Serial output to DC
        TX_DC_P             : out slv(num_DC downto 0);--Serial output to DC 
        SYNC_P             : out slv(num_DC downto 0); -- when '0' DC listens only, '1' DC reads back command
        SYNC_N             : out slv(num_DC downto 0);
        --            DC_RESET        : OUT slv(1 DOWNTO 0);        -- Commented by Shivang on Oct 8, 2020
        --Trigger to PMT SCRODs (mRICH)
        GLOBAL_EVENT_P    : out slv(3 downto 0);
        GLOBAL_EVENT_N    : out slv(3 downto 0)
    );
end entity;

-- Define architecture
architecture rtl of CI_test is

    signal i_regAddr     :  slv(REG_ADDR_BITS_G-1 downto 0) := (others =>'0');
    signal i_regWrData   :  slv(REG_DATA_BITS_G-1 downto 0) := (others =>'0');
    signal i_regRdData   :  slv(REG_DATA_BITS_G-1 downto 0) := (others =>'0');
    signal i_regReq      :  sl := '0';
    signal i_regOp       :  sl := '0';
    signal i_regAck      :  sl := '0';

    signal CtrlRegister : GPR := (others => (others => '0'));

---QBLink signals----
	signal DC_data : slv(31 downto 0);
	signal dc_dataValid : slv(num_DC downto 0); -- QBLink output: readout valid flag 
	signal tx_dc		 : slv(num_DC downto 0); --transmitted serial data bit 
	signal rx_dc		 : slv(num_DC downto 0); --recieved serial data bit
	signal evntFlag :sl :='0';
	signal global_event :slv(3 downto 0);
    signal i_dc_cmd         : slv(31 downto 0); --DC register command, input data to QBLink write-operation input FIFO
    
    signal QBstart_wr : slv(num_DC downto 0); --internal flag to start transmission 
    signal QBstart_rd : slv(num_DC downto 0); --internal flag to prepare for readback
    signal reset : sl; -- reset SCROD processes
    signal i_trigLinkSynced : slv(num_DC downto 0); --QBLink status flag: trigger link synced between SCROD and DC 
    signal serialClkLocked : slv(num_DC downto 0); --QBlink status flag: SCROD and DC data clocks are synced (established before trigger link)
    
    signal QBrst    : slv(num_DC downto 0) := (others =>'0'); --QBLink reset 
    signal sync : sl := '0'; -- synchronize timestamp counters on all DCs
begin

regAddr     <= i_regAddr    ;
regWrData   <= i_regWrData  ;
regRdData   <= i_regRdData  ;
regReq      <= i_regReq     ;
regOp       <= i_regOp      ;
regAck      <= i_regAck     ;
dut : entity work.CommandInterpreter_really_this_one generic map(
        REG_ADDR_BITS_G => REG_ADDR_BITS_G,
        REG_DATA_BITS_G => REG_DATA_BITS_G,
        TIMEOUT_G       => TIMEOUT_G,       
        GATE_DELAY_G  => GATE_DELAY_G,
		num_DC          =>num_DC          
    )  port map (
        -- User clock and reset
        clk     => clk,
		dataNotC_l_k => dataNotC_l_k,
        usrRst => usrRst,
        -- Incoming data from PC
        rxData     => rxData,
        rxDataValid => rxDataValid,
        rxDataLast=> rxDataLast,
        rxDataReady=>rxDataReady,
        -- Outgoing response to PC
        txData        => txData,
        txDataValid   => txDataValid,
        txDataLast     =>txDataLast ,
        txDataReady   => txDataReady,
		--DC Comm signals
		serialClkLck => serialClkLocked,
		trigLinkSync => i_trigLinkSynced,
		DC_CMD 		 => i_dc_cmd,
		QB_WrEn      => QBstart_wr,
		QB_RdEn      => QBstart_rd,
		DC_RESP		 => DC_data,
		DC_RESP_VALID => dc_dataValid,
		EVNT_FLAG     =>evntFlag,
        -- Register interfaces
        regAddr     => i_regAddr,
        regWrData   => i_regWrData,
        regRdData   => i_regRdData,
        regReq      => i_regReq,
        regOp      => i_regOp,
        regAck     => i_regAck,
		--debug ports
		ldQBLink 	=> ldQBLink,
		cmd_int_state => cmd_int_state
    );

 QB_WrEn <= QBstart_wr;
 dc_cmd <= i_dc_cmd;
 QB_RdEn <=  QBstart_rd;
DC_RESP <= DC_data;
 DC_RESP_VALID <= dc_dataValid;
  EVNT_FLAG <= evntFlag;
  trigLinkSync <= i_trigLinkSynced;
   serialClkLck <= serialClkLocked;

    SCROD_Ctrl_Reg: process(clk) is 
    
    begin
        if rising_edge(clk) then
           if usrRst = '1' then
            i_regAck    <= '0';
            i_regRdData <= (others => '0');
           elsif i_regReq = '1' then
            i_regAck <= i_regReq;
                  if i_regOp = '1' then
                      CtrlRegister(to_integer(unsigned(i_regAddr))) <= i_regWrData;
                  else 
                        i_regRdData <= CtrlRegister(to_integer(unsigned(i_regAddr)));
                   end if;
           else
           i_regAck <= '0';
           end if;
        end if;
     end process; 

-----------------------------------------------------------------
----------------I/O Buffers--------------------------------------
-----------------------------------------------------------------	

     DC_IO_BUFF : entity work.IO_Buffers
     generic map (num_DC => num_DC)
     PORT MAP(
         RX_P => RX_DC_P,
         RX_N => RX_DC_N,
         TX => tx_dc,
         GLOB_EVNT => global_event,
         SYNC => sync,   
         TX_P => TX_DC_P,
         TX_N => TX_DC_N,
         DC_CLK_P => DC_CLK_P,
         DC_CLK_N => DC_CLK_N,
          DATA_CLK => dataNotC_l_k,
         GLOB_EVNT_P => GLOBAL_EVENT_P,
         GLOB_EVNT_N => GLOBAL_EVENT_N,
         RX => rx_dc,
         SYNC_P => SYNC_P,
         SYNC_N => SYNC_N
         );

-----------------------------------------------------------------------------
------------------DC Interface: featuring QBLink-----------------------------
--------------------------------- -------------------------------------------
     DC_communication : entity work.DC_Comm
     generic map(num_DC => 3)
     port map (
         DATA_CLK => dataNotC_l_k,
         RX => rx_dc,
         TX => tx_dc,
         DC_CMD => i_dc_cmd,
         CMD_VALID => QBstart_wr,
         RESP_REQ => QBstart_rd,
         DC_RESPONSE => DC_data,
         RESP_VALID => dc_dataValid, 
         TrigLogicRst => reset, 
         QB_RST => QBrst,
         SERIAL_CLK_LCK => serialClkLocked,
         TRIG_LINK_SYNC => i_trigLinkSynced,
         EVENT_TRIG => evntFlag
         );

global_event <= (others => evntFlag);

     DC_reset_process : process(dataNotC_l_k) --unused for now 10/01
         ----variable counter : integer range 0 to 2 := 0;
     begin 
         if rising_edge(dataNotC_l_k) then
             sync <= CtrlRegister(2)(8);
             QBrst <= CtrlRegister(2)(NUM_DC downto 0);
         end if;
     end process;




end rtl;
