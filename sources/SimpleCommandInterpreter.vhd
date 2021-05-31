---------------------------------------------------------------------------------
-- Title         : Simple Command Interpreter
-- Project       : General Purpose Core
---------------------------------------------------------------------------------
-- File          : CommandInterpreter.vhd
-- Author        : Kurtis Nishimura, updated by Nathan Park (park.nathan@gmail.com)
--                  Made super simple by Ben Rotter (ben@naluscientific.com)
---------------------------------------------------------------------------------
-- Description:
-- Packet parser for old Belle II format.
-- See: http://www.phys.hawaii.edu/~kurtisn/doku.php?id=itop:documentation:data_format
---------------------------------------------------------------------------------

library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_arith.all;
    use ieee.std_logic_unsigned.all;
    use work.all;
    use work.UtilityPkg.all;
    use work.Eth1000BaseXPkg.all;
    use work.GigabitEthPkg.all;
    use work.BMD_definitions.all; --need to include BMD_definitions in addition to work.all

entity CommandInterpreter is
    generic (
        REG_ADDR_BITS_G : integer := 16;
        REG_DATA_BITS_G : integer := 16;
        TIMEOUT_G       : integer := 125000;
        GATE_DELAY_G    : time := 1 ns;
		num_DC          : integer := 3
    );
    port (
        -- User clock and reset
        usrClk      : in  std_logic; --ethernet clock (125MHz)
		dataClk	    : in  std_logic; --qb_link clock
        usrRst      : in  std_logic;

        -- ETHERNET
        -- Incoming data from PC
        rxData      : in  std_logic_vector(31 downto 0);
        rxDataValid : in  std_logic;
        rxDataLast  : in  std_logic;
        rxDataReady : inout std_logic;
        -- Outgoing response to PC
        txData      : out std_logic_vector(31 downto 0);
        txDataValid : out std_logic;
        txDataLast  : out std_logic;
        txDataReady : in  std_logic;

        -- QBLINK
		--DC Comm signals
		serialClkLck : in std_logic_vector(num_DC downto 0);
		trigLinkSync : in std_logic_vector(num_DC downto 0);
		DC_CMD 		 : out std_logic_vector(31 downto 0) := (others => '0');
		QB_WrEn      : out std_logic_vector(num_DC downto 0);
		QB_RdEn      : inout std_logic_vector(num_DC downto 0);
		DC_RESP		 : in std_logic_vector(31 downto 0);
		DC_RESP_VALID: in std_logic_vector(num_DC downto 0);
		EVNT_FLAG    : in std_logic;

        -- registers i'm not gonna use
        -- Register interfaces
        regAddr     : out std_logic_vector(REG_ADDR_BITS_G-1 downto 0);
        regWrData   : out std_logic_vector(REG_DATA_BITS_G-1 downto 0);
        regRdData   : in  std_logic_vector(REG_DATA_BITS_G-1 downto 0);
        regReq      : out std_logic;
        regOp       : out std_logic;
        regAck      : in  std_logic;


		--debug ports (probably not needed)
		ldQBLink 	: out std_logic;
		cmd_int_state : out std_logic_vector(4 downto 0)
    );

end CommandInterpreter;

-- Define architecture
architecture rtl of CommandInterpreter is

    type eth_read_state_t is (
        check_empty,
        load_words,
        write_to_qb
    );
    signal eth_read_state : eth_read_state_t := check_empty;

    signal eth_ack  : std_logic := '0'; --set by qblink
    signal eth_send : std_logic := '0'; --set by ethernet
    signal eth_in   : std_logic_vector(31 downto 0) := (others => '0');


    type dc_read_state_t is (
        check_empty,
        load_words,
		  load_words_0,
        write_to_eth
    );
    signal dc_read_state : dc_read_state_t := check_empty;

    signal dc_ack  : std_logic := '0'; --set by qblink
    signal dc_send : std_logic := '0'; --set by ethernet
    signal dc_in  : std_logic_vector(31 downto 0) := (others => '0');

    signal iack : std_logic :='0';

	attribute mark_debug : string;
    attribute mark_debug of dc_send : signal is "true";
    attribute mark_debug of dc_ack : signal is "true";
    attribute mark_debug of dc_in : signal is "true";

    attribute mark_debug of eth_ack : signal is "true";
    attribute mark_debug of eth_send : signal is "true";
--    attribute mark_debug of eth_cmd_in : signal is "true";
	 attribute mark_debug of eth_in : signal is "true";




begin  --BEGIN


    -- FROM ETHERNET TO SCROD, FORWARD TO DAUGHTERCARD
   --ethrx parser (from ethernet)
   u_ethrx_parser : process(usrClk) begin
    if rising_edge(usrClk) then

--        iack <= ACK; --move to this clock domain
--        idig_busy <= DIG_BUSY;
                 
        if usrRst = '1' then    --RESET
            eth_read_state <= check_empty;
            eth_send <= '0';
            eth_in <= (others => '0');
            rxDataReady <= '0';
        else         
                 


        case eth_read_state is
        
            when check_empty =>
                eth_send <= '0';

                if rxDataValid = '0' then --if the ethernet has nothing to say
                    eth_read_state <= check_empty;            
                    rxDataReady <= '0';
                    
                else 
                    eth_read_state <= load_words;                    
                    rxDataReady <= '1';       
                end if;


            
            when load_words =>
                if rxDataReady = '1' then --ensure you got the word loaded
                    rxDataReady <= '0';
                else
                    eth_in <= rxData;
                    eth_read_state <= write_to_qb;
                end if;
                
            when write_to_qb =>
                eth_send <= '1';
                if eth_ack = '1' then
                    eth_send <= '0';
                    eth_read_state <= check_empty;
                end if;

        end case;
    end if; --end rst

  end if; --end rising edge
end process;


    --clock crossing
    u_dcsend : process(dataClk) begin
        if rising_edge(dataClk) then
            if eth_send = '1' then
                
                if eth_ack = '0' then
                    eth_ack <= '1';
						  DC_CMD <= eth_in;
                    QB_WREN <= (others => '1');
                else
                    QB_WREN <= (others => '0');
                end if;

            else
                eth_ack <= '0';
					 QB_WREN <= (others => '0');
            end if;

        end if;
    end process;


-- FROM DAUGHTERCARD TO SCROD, FORWARD TO ETHERNET
   --ethrx parser (from ethernet)
   u_dc_parser : process(dataClk) begin
    if rising_edge(dataClk) then

        if usrRst = '1' then
            dc_read_state <= check_empty;
            dc_send <= '0';
            dc_in <= (others => '0');
--            txDataValid <= '0';
        else         
                 


        case dc_read_state is
        
            when check_empty =>
                dc_send <= '0';

                if DC_RESP_VALID = B"0000" then --if the dcernet has nothing to say
                    dc_read_state <= check_empty;
                    QB_RDEN <= (others => '0');
                    
                else 
                    dc_read_state <= load_words_0;                    
                    QB_RDEN <= "0001";       
                end if;

				when load_words_0 =>
					dc_read_state <= load_words;
            
            when load_words =>
                if QB_RDEN = b"0001" then --ensure you got the word loaded
                    QB_RDEN <= (others => '0');
						  dc_in <= DC_RESP(15 downto 0) & DC_RESP(31 downto 16);
                else
                    dc_read_state <= write_to_eth;
                end if;
                
            when write_to_eth =>
                dc_send <= '1';
                if dc_ack = '1' then
                    dc_send <= '0';
                    dc_read_state <= check_empty;
                end if;

        end case;
    end if; --end rst

  end if; --end rising edge
end process;

--clock crossing
u_ethsend : process(usrClk) begin
    if rising_edge(usrClk) then
        if dc_send = '1' then
            
            if dc_ack = '0' then
					 dc_ack <= '1';
                txData <= dc_in;
                txDataValid <= '1';
                if (dc_in(15 downto 0) = x"FACE") or (dc_in(31 downto 16) = x"FACE") then
                    txDataLast <= '1';
					 end if;
            else
                txDataValid <= '0';
                txDataLast <= '0';
            end if;

        else
            dc_ack <= '0';
            txDataValid <= '0';
            txDataLast <= '0';
        end if;

    end if;
end process;
--    --clock crossing
--    u_send : process(usrClk) begin
--        if rising_edge(usrClk) then
--            if dc_send = '1' then
--                dc_ack <= '1';
--                if dc_ack = '0' then
--                    txData <= dc_in;
--                    txDataValid <= '1';
--                else
--                    txDataValid <= '0';
--                end if;
--
--            else
--                dc_ack <= '0';
--            end if;
--
--        end if;
--    end process;

end rtl;