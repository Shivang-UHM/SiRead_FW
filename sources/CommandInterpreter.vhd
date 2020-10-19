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
        usrClk      : in  sl;
		dataClk	   : in  sl;
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
		serialClkLck : in slv(num_DC downto 0);
		trigLinkSync : in slv(num_DC downto 0);
		DC_CMD 		 : out slv(31 downto 0) := (others => '0');
		QB_WrEn      : out slv(num_DC downto 0);
		QB_RdEn      : out slv(num_DC downto 0);
		DC_RESP		 : in slv(31 downto 0);
		DC_RESP_VALID: in slv(num_DC downto 0);
		EVNT_FLAG    : in sl;
        -- Register interfaces
        regAddr     : out slv(REG_ADDR_BITS_G-1 downto 0);
        regWrData   : out slv(REG_DATA_BITS_G-1 downto 0);
        regRdData   : in  slv(REG_DATA_BITS_G-1 downto 0);
        regReq      : out sl;
        regOp       : out sl;
        regAck      : in  sl;
		--debug ports
		ldQBLink 	: out sl;
		cmd_int_state : out slv(4 downto 0)
    );
end CommandInterpreter;

-- Define architecture
architecture rtl of CommandInterpreter is

    type StateType     is (IDLE_S,PACKET_SIZE_S,PACKET_TYPE_S,
                           COMMAND_TARGET_S,COMMAND_ID_S,COMMAND_TYPE_S,
                           COMMAND_DATA_S,COMMAND_CHECKSUM_S,
                           PING_S,READ_S,WRITE_S,
                           READ_RESPONSE_S,WRITE_RESPONSE_S,PING_RESPONSE_S,
                           ERR_RESPONSE_S,
                           CHECK_MORE_S,PACKET_CHECKSUM_S,DUMP_S, SENDTRIG_S);


    type RegType is record
        state       : StateType;
        regAddr     : slv(REG_ADDR_BITS_G-1 downto 0);
        regWrData   : slv(REG_DATA_BITS_G-1 downto 0);
        regRdData   : slv(REG_DATA_BITS_G-1 downto 0);
        regReq      : sl;
        regOp       : sl;
        sendResp    : sl;
        rxDataReady : sl;
        txData      : slv(31 downto 0);
        txDataValid : sl;
        txDataLast  : sl;
        wordsLeft   : slv(31 downto 0);
        wordOutCnt  : slv(7 downto 0);
        checksum    : slv(31 downto 0);
		deviceID 	: slv(31 downto 0);
		commandType : slv(31 downto 0);
        command     : slv(31 downto 0);
        commandId   : slv(23 downto 0);
        noResponse  : sl;
        errFlags    : slv(31 downto 0);
        timeoutCnt  : slv(31 downto 0);
    end record RegType;


	constant REG_INIT_C : RegType := (
        state       => IDLE_S,
        regAddr     => (others => '0'),
        regWrData   => (others => '0'),
        regRdData   => (others => '0'),
        regReq      => '0',
        regOp       => '0',
        sendResp    => '0',
        rxDataReady => '0',
        txData      => (others => '0'),
        txDataValid => '0',
        txDataLast  => '0',
        wordsLeft   => (others => '0'),
        wordOutCnt  => (others => '0'),
        checksum    => (others => '0'),
		deviceID    => (others => '0'),
		commandType => (others => '0'),
        command     => (others => '0'),
        commandId   => (others => '0'),
        noResponse  => '0',
        errFlags    => (others => '0'),
        timeoutCnt  => (others => '0')
    );

    signal r   : RegType := REG_INIT_C;
	signal t   : RegType := REG_INIT_C;
    signal rin : RegType;
	signal tin : RegType;
	signal loadQB : sl := '0';
	signal QB_loadReg : Word32Array(1 downto 0);
	signal DC_cmdRespReq : slv(num_DC downto 0);
	signal start_load : sl := '0';
    -- ISE attributes to keep signals for debugging
    -- attribute keep : string;
    -- attribute keep of r : signal is "true";
    -- attribute keep of crcOut : signal is "true";

    -- Vivado attributes to keep signals for debugging
    -- attribute dont_touch : string;
    -- attribute dont_touch of r : signal is "true";
    -- attribute dont_touch of crcOut : signal is "true";

    constant WORD_HEADER_C    : slv(31 downto 0) := x"00BE11E2";
    constant WORD_COMMAND_C   : slv(31 downto 0) := x"646F6974";
    constant WORD_PING_C      : slv(31 downto 0) := x"70696E67";
    constant WORD_READ_C      : slv(31 downto 0) := x"72656164";
    constant WORD_WRITE_C     : slv(31 downto 0) := x"72697465";
    constant WORD_ACK_C       : slv(31 downto 0) := x"6F6B6179";
    constant WORD_ERR_C       : slv(31 downto 0) := x"7768613f";

    constant ERR_BIT_SIZE_C    : slv(31 downto 0) := x"00000001";
    constant ERR_BIT_TYPE_C    : slv(31 downto 0) := x"00000002";
    constant ERR_BIT_DEST_C    : slv(31 downto 0) := x"00000004";
    constant ERR_BIT_COMM_TY_C : slv(31 downto 0) := x"00000008";
    constant ERR_BIT_COMM_CS_C : slv(31 downto 0) := x"00000010";
    constant ERR_BIT_CS_C      : slv(31 downto 0) := x"00000020";
    constant ERR_BIT_TIMEOUT_C : slv(31 downto 0) := x"00000040";
	constant QBLINK_FAILURE_C  : slv(31 downto 0) := x"00000500"; --link not up yet error

	constant wordDC				: slv(23 downto 0) := x"0000DC"; --command target is one or more DC
	constant broadcastDC       : slv(7 downto 0)  := x"0A"; --command target is all DCs
    signal wordScrodRevC      : slv(31 downto 0)  := (others=> '0');

	signal stateNum : slv(4 downto 0);
	signal dc_id : integer;
	-- added signal to monitor wordsleft 15 oct 2020: Shivang
--	signal wordsleft_i  : std_logic_vector(31 downto 0) := (others=> '0');
	
    -- attribute keep : string;
    -- attribute keep of stateNum : signal is "true";

	attribute mark_debug : string;
    attribute mark_debug of loadQB : signal is "true";
	attribute mark_debug of stateNum : signal is "true";
--	attribute mark_debug of wordsleft_i : signal is "true";

begin
	cmd_int_state <= stateNum;
	ldQBLink <= loadQB;
--	wordsleft_i <= r.wordsLeft;
	
    stateNum <= "00000" when r.state = IDLE_S else             -- 0 x00
                "00001" when r.state = PACKET_SIZE_S else      -- 1 x01
                "00010" when r.state = PACKET_TYPE_S else      -- 2 x02
                "00011" when r.state = COMMAND_TARGET_S else   -- 3 x03
                "00100" when r.state = COMMAND_ID_S else       -- 4 x04
                "00101" when r.state = COMMAND_TYPE_S else     -- 5 x05
                "00110" when r.state = COMMAND_DATA_S else     -- 6 x06
                "00111" when r.state = COMMAND_CHECKSUM_S else -- 7 x07
                "01000" when r.state = PING_S else             -- 8 x08
                "01001" when r.state = READ_S else             -- 9 x09
                "01010" when r.state = WRITE_S else            -- 10 x0A
                "01011" when r.state = READ_RESPONSE_S else    -- 11 x0B
                "01100" when r.state = WRITE_RESPONSE_S else   -- 12 x0C
                "01101" when r.state = PING_RESPONSE_S else    -- 13 x0D
                "01110" when r.state = ERR_RESPONSE_S else     -- 14 x0E
                "01111" when r.state = CHECK_MORE_S else       -- 15 x0F
                "10000" when r.state = PACKET_CHECKSUM_S else  -- 16 x10
                "10001" when r.state = DUMP_S else             -- 17 x11
                "10010" when r.state = IDLE_S else             -- 18 x12
                "11111";                                       -- 19 x1F


    wordScrodRevC(31 downto 0) <= x"0000A500";

    SCRODRegComb : process(r,usrRst,rxData,rxDataValid,rxDataLast,
                           txDataReady,regRdData,regAck,wordScrodRevC,EVNT_FLAG) is
        variable v : RegType;
    begin
        v := r;

        -- Resets for pulsed outputs
        v.regReq      := '0';
        v.txDataValid := '0';
        v.txDataLast  := '0';
        rxDataReady   <= '0';

        -- State machine
        case(r.state) is
            when IDLE_S =>
                v.errFlags := (others => '0');
                v.checksum := (others => '0');
				DC_cmdRespReq <= (others => '1'); --default enable listening to DCs
                if rxDataValid = '1' then
                    rxDataReady <= '1';
                    -- Possible errors:
                    -- This is last, stay here
                    if rxDataLast = '1' then
                        v.state := IDLE_S;
                        -- Header doesn't match format
                    elsif rxData /= WORD_HEADER_C then		-- Shivang: Commented on Oct 12, 2020 to probe the issue of no response from CI to the PC commands
                        v.state := DUMP_S;
                        -- Otherwise, move on
                    else
                        v.state := PACKET_SIZE_S;
                    end if;
                end if;
            when PACKET_SIZE_S =>
                if rxDataValid = '1' then
                    rxDataReady <= '1';
                    v.wordsLeft := rxData;
                    -- Possible errors:
                    -- This is last, go back to IDLE
                    if rxDataLast = '1' or rxData > 300 then
                        v.errFlags := r.errFlags + ERR_BIT_SIZE_C;
                        v.state    := ERR_RESPONSE_S;
                        -- Otherwise, move on
                    else
                        v.state := PACKET_TYPE_S;
                    end if;
                end if;
            when PACKET_TYPE_S =>
                if rxDataValid = '1' then
                    rxDataReady <= '1';
                    v.wordsLeft := r.wordsLeft - 1;
                    -- Possible errors:
                    -- This is last, go back to IDLE
                    if rxDataLast = '1' then
                        v.errFlags := r.errFlags + ERR_BIT_SIZE_C;
                        v.state := ERR_RESPONSE_S;
                        -- Packet type isn't understood
                    elsif rxData /= WORD_COMMAND_C then
                        v.errFlags := r.errFlags + ERR_BIT_TYPE_C;
                        v.state    := ERR_RESPONSE_S;
                        -- Otherwise, move on
                    else
                        v.state := COMMAND_TARGET_S;
                    end if;
                end if;
            when COMMAND_TARGET_S =>
                v.deviceID := rxData;
                if rxDataValid = '1' then
                    rxDataReady <= '1';
                    v.wordsLeft := r.wordsLeft - 1;
                    -- Possible errors:
                    -- This is last, go back to IDLE
                    if rxDataLast = '1' then
                        v.errFlags := r.errFlags + ERR_BIT_SIZE_C;
                        v.state    := ERR_RESPONSE_S;

                        -- Target doesn't match this SCROD or broadcast or DC
                    elsif rxData /= wordScrodRevC and
                    rxData(31 downto 8) /= wordDC then --target must be SCROD, DC. leaving out all dev broadcast(rxData /= x"00000000" )
                        v.errFlags := r.errFlags + ERR_BIT_DEST_C; --else error.
                        v.state    := ERR_RESPONSE_S;
                        -- Otherwise, move on
                    else
						if rxData = wordScrodRevC  then
							loadQB <= '0';
						elsif (rxData(31 downto 8) = wordDC) and (rxData(7 downto 0) /= broadcastDC) then
							dc_id <= conv_integer(unsigned(rxData(7 downto 0)));
							loadQB <= '1';
						else --unused case, disallow broadcast
							dc_id <= conv_integer(unsigned(broadcastDC)); --if broadcasting, set dc_id to "broadcast"
							loadQB <= '1';
						end if;
                        v.state := COMMAND_ID_S;
                    end if;
                end if;
            when COMMAND_ID_S =>
                v.wordOutCnt  := (others => '0');
                v.timeoutCnt  := (others => '0');
                if rxDataValid = '1' then
                    rxDataReady   <= '1';
                    -- Checksum calculation starts here
                    v.checksum   := rxData;
                    v.wordsLeft  := r.wordsLeft - 1;
                    v.commandId  := rxData(23 downto 0);
                    v.noResponse := rxData(31);
                    -- Possible errors:
                    -- This is last, go back to IDLE
                    if rxDataLast = '1' then
                        v.errFlags := r.errFlags + ERR_BIT_SIZE_C;
                        v.state    := ERR_RESPONSE_S;
                        -- Otherwise, move on
                    else
                        v.state := COMMAND_TYPE_S;
                    end if;
                end if;
            when COMMAND_TYPE_S =>
                if rxDataValid = '1' then
                    rxDataReady <= '1';
                    v.checksum  := r.checksum + rxData;
                    v.commandType   := rxData;
                    v.wordsLeft := r.wordsLeft - 1;
                    -- Possible errors:
                    -- This is last, go back to IDLE
                    if rxDataLast = '1' then
                        v.errFlags := r.errFlags + ERR_BIT_SIZE_C;
                        v.state    := ERR_RESPONSE_S;
                        -- Move on for recognized commands
                    elsif rxData = WORD_PING_C then
                        v.state := COMMAND_CHECKSUM_S;
                    elsif rxData = WORD_READ_C or rxData = WORD_WRITE_C then
                        v.state := COMMAND_DATA_S;
                        -- Unrecognized command, dump
                    else
                        v.errFlags := r.errFlags + ERR_BIT_COMM_TY_C;
                        v.state    := ERR_RESPONSE_S;
                    end if;
                end if;
            when COMMAND_DATA_S =>
                if rxDataValid = '1' then
                    rxDataReady <= '1';
					v.command   := rxData;
                    v.checksum  := r.checksum + rxData;
                    v.regAddr   := rxData(15 downto 0);
                    v.regWrData := rxData(31 downto 16);
                   -- v.wordsLeft := r.wordsLeft - 1;      -- commented on 10/18/20 Shivang (to stop wordsleft decrement in the event of Rd/Wr.
                    -- Possible errors:
                    -- This is last, go back to IDLE
                    if rxDataLast = '1' then
                        v.errFlags := r.errFlags + ERR_BIT_SIZE_C;
                        v.state    := ERR_RESPONSE_S;
                        -- Move on for recognized commands
                    else
                        v.state := COMMAND_CHECKSUM_S;
                    end if;
                end if;
            when COMMAND_CHECKSUM_S =>
                if rxDataValid = '1' then
                    rxDataReady <= '1';
                    v.wordsLeft := r.wordsLeft - 1;
                    -- Possible errors:
                    -- This is last, go back to IDLE
                    if rxDataLast = '1' then
                        v.errFlags := r.errFlags + ERR_BIT_SIZE_C;
                        v.state    := ERR_RESPONSE_S;
                        -- Bad checksum
                    elsif r.checksum /= rxData then
                        v.errFlags := r.errFlags + ERR_BIT_COMM_CS_C;
                        v.state    := ERR_RESPONSE_S;
                        -- Command accepted, move to execute state
                    elsif r.commandType = WORD_PING_C then
                        v.state := PING_S;
                    elsif r.commandType = WORD_WRITE_C then
                        v.state := WRITE_S;
                    elsif r.commandType = WORD_READ_C then
                        v.state := READ_S;
                        -- Unrecognized command
                    else
                        v.errFlags := r.errFlags + ERR_BIT_COMM_TY_C;
                        v.state    := ERR_RESPONSE_S;
                    end if;
                end if;
            when PING_S =>
                if r.noResponse = '1' then
                    v.state := CHECK_MORE_S;
                else
					if loadQB = '1' then
						if dc_id = broadcastDC then
							if serialClkLck = "1111" and trigLinkSync = "1111" then --check if QBLink is up (hardcoded)
								v.checksum := (others => '0');
								v.state    := PING_RESPONSE_S;
							else
								v.errFlags := r.errFlags + QBLINK_FAILURE_C;
								v.state := ERR_RESPONSE_S;
							end if;
						else
							if serialClkLck(num_dc - 1) = '1' and trigLinkSync(num_dc -1) = '1' then --check if QBLink is up (hardcoded)
								v.checksum := (others => '0');
								v.state    := PING_RESPONSE_S;
							else
								v.errFlags := r.errFlags + QBLINK_FAILURE_C;
								v.state := ERR_RESPONSE_S;
                            end if;
                        end if;
                    else
						v.checksum := (others => '0');
						v.state    := PING_RESPONSE_S;
					end if;
                end if;

            when READ_S =>
			  	v.timeoutCnt := r.timeoutCnt + 1;
                if loadQB = '1' then -- if reading DC, listen to QBLink
                    if dc_id /= broadcastDC then --IF not broadcasting to all DCs
                        DC_cmdRespReq(dc_id) <= '1';
                        if DC_RESP_VALID(dc_id-1) = '1' then --wait for DC to send register data
                            --do not use v.regRdData to collect readback data
                            if r.noResponse = '1' then --if noResponse setting on, skip response to PC
                                v.state := CHECK_MORE_S;
                            else --if noResponse setting off, send Register data in response to PC
                                v.checksum := (others => '0');
                                v.state    := READ_RESPONSE_S;
                            end if;
                        elsif r.timeoutCnt = TIMEOUT_G then -- if QBLink does output a word before timeout, send error to PC
                            v.errFlags := r.errFlags + ERR_BIT_TIMEOUT_C;
                            v.state    := ERR_RESPONSE_S;
                        end if;
                    elsif dc_id = broadcastdc then
                        if DC_RESP_VALID = (DC_RESP_VALID'range => '1') then --wait for DC to send register data
                            --do not use v.regRdData to collect readback data
                            if r.noResponse = '1' then --if noResponse setting on, skip response to PC
                                v.state := CHECK_MORE_S;
                            else --if noResponse setting off, send Register data in response to PC
                                v.checksum := (others => '0');
                                v.state    := READ_RESPONSE_S;
                            end if;
                        elsif r.timeoutCnt = TIMEOUT_G then -- if QBLink does output a word before timeout, send error to PC
                            v.errFlags := r.errFlags + ERR_BIT_TIMEOUT_C;
                            v.state    := ERR_RESPONSE_S;
                        end if;
                    end if; --end all cases for DC reading
                    ----------------------------------------------------
                else  --if reading SCROD register:
					v.regOp      := '0'; -- set Registers to read mode
					v.regReq     := '1'; --request operation
					if (regAck = '1') then
						v.regRdData := regRdData;
						v.regReq    := '0';
						if r.noResponse = '1' then
							v.state := CHECK_MORE_S;
						else
							v.checksum := (others => '0');
							v.state    := READ_RESPONSE_S;
						end if;
					elsif r.timeoutCnt = TIMEOUT_G then -- if SCROD register has not acknowledged before timeout, send error to PC
						v.errFlags := r.errFlags + ERR_BIT_TIMEOUT_C;
						v.state    := ERR_RESPONSE_S;
					end if;
                end if;

            when WRITE_S => --TEMP allow cmd interpreter to write to both SCROD and DC registers simulataneously to test dual functionality
                v.timeoutCnt := r.timeoutCnt + 1;
				if (loadQB = '1') and (dc_id /= broadcastDC) then --if writing to DC: wait for them to repeat correct address
					DC_cmdRespReq(dc_id-1) <= '1';
					if DC_RESP(15 downto 0) = r.regAddr then --write operation is successful if DC repeats address, even if simultaneous SCROD register operation fails.
						if r.noResponse = '1' then --skip response to PC if noResponse setting is on
							v.state := CHECK_MORE_S;
						else
							v.checksum := (others => '0');
							v.state    := WRITE_RESPONSE_S;
						end if;
					elsif r.timeoutCnt = TIMEOUT_G then --if the DC does not repeat register before timeout, error is raised (even if SCROD register is written successfully).
						v.errFlags := r.errFlags + ERR_BIT_TIMEOUT_C;
						v.state    := ERR_RESPONSE_S;
					end if;

				elsif (loadQB = '1') and (dc_id = broadcastDC) then
					DC_cmdRespReq(num_DC downto 0) <= (others => '1');
					if (DC_RESP(15 downto 0) = r.regAddr) then
						if r.noResponse = '1' then --skip response to PC if noResponse setting is on
							v.state := CHECK_MORE_S;
						else
							v.checksum := (others => '0');
							v.state    := WRITE_RESPONSE_S;
						end if;
					elsif r.timeoutCnt = TIMEOUT_G then --if the DC does not repeat register before timeout, error is raised (even if SCROD register is written successfully).
						v.errFlags := r.errFlags + ERR_BIT_TIMEOUT_C;
						v.state    := ERR_RESPONSE_S;
                    end if;
                    -----------------------------
				else
					v.regOp      := '1'; --enable write to SCROD Register
					v.regReq     := '1'; --start writing
					if (regAck = '1') then --if not reading DC, make sure SCROD register write was successful.
                        v.regReq    := '0';
						if r.noResponse = '1' then
							v.state := CHECK_MORE_S;
						else
							v.checksum := (others => '0');
							v.state    := WRITE_RESPONSE_S;
						end if;
					elsif r.timeoutCnt = TIMEOUT_G then
						v.errFlags := r.errFlags + ERR_BIT_TIMEOUT_C;
						v.state    := ERR_RESPONSE_S;
					end if;
                end if;

            when READ_RESPONSE_S =>
				DC_cmdRespReq <= (others =>'0');
                if regAck = '0' and r.regReq = '0' then
                    v.txDataValid := '1';
					if (loadQB = '0')  then
                        case conv_integer(r.wordOutCnt) is
                            when 0 => v.txData := WORD_HEADER_C;
                            when 1 => v.txData := x"00000006";
                            when 2 => v.txData := WORD_ACK_C;
                            when 3 => v.txData := r.deviceID;
                            when 4 => v.txData := x"00" & r.commandId;
                            when 5 => v.txData := WORD_READ_C;
                            when 6 => v.txData := r.regRdData & r.regAddr;
                            when 7 => v.txData     := r.checksum;
                            v.txDataLast := '1';
                            v.state      := CHECK_MORE_S;
                        when others => v.txData := (others => '1');
                        end case;


					elsif	(dc_id /= broadcastDC) and (loadQB = '1') then
						case conv_integer(r.wordOutCnt) is
                            when 0 => v.txData := WORD_HEADER_C;
                            when 1 => v.txData := x"00000006";
                            when 2 => v.txData := WORD_ACK_C;
                            when 3 => v.txData := r.deviceID;
                            when 4 => v.txData := x"00" & r.commandId;
                            when 5 => v.txData := WORD_READ_C;
                            when 6 => v.txData := DC_RESP;
                            when 7 => v.txData     := r.checksum;
                            v.txDataLast := '1';
                            v.state      := CHECK_MORE_S;
                        when others => v.txData := (others => '1');
                        end case;
                    end if;
                    if txDataReady = '1' then
                        v.checksum   := r.checksum + v.txData;
                        v.wordOutCnt := r.wordOutCnt + 1;
                    end if;
				end if;

            when WRITE_RESPONSE_S =>
				DC_cmdRespReq <= (others=>'0');
                if regAck = '0' and r.regReq = '0' then
                    v.txDataValid := '1';
                    case conv_integer(r.wordOutCnt) is
                        when 0 => v.txData := WORD_HEADER_C;
                        when 1 => v.txData := x"00000006";
                        when 2 => v.txData := WORD_ACK_C;
                        when 3 => v.txData := r.deviceID;
                        when 4 => v.txData := x"00" & r.commandId;
                        when 5 => v.txData := WORD_WRITE_C;
                        when 6 => v.txData := r.regWrData & r.regAddr; --for all cases, just repeat what you wrote.
                        when 7 => v.txData     := v.checksum;
                        v.txDataLast := '1';
                        v.state      := CHECK_MORE_S;
                    when others => v.txData := (others => '1');
                    end case;
                    if txDataReady = '1' then
                        v.checksum   := r.checksum + v.txData;
                        v.wordOutCnt := r.wordOutCnt + 1;
                    end if;
                end if;
            when PING_RESPONSE_S =>
                v.txDataValid := '1';
                case conv_integer(r.wordOutCnt) is
                    when 0 => v.txData := WORD_HEADER_C;
                    when 1 => v.txData := x"00000005";
                    when 2 => v.txData := WORD_ACK_C;
                    when 3 => v.txData := r.deviceID;
                    when 4 => v.txData := x"00" & r.commandId;
                    when 5 => v.txData := WORD_PING_C;
                    when 6 => v.txData     := v.checksum;
                    v.txDataLast := '1';
                    v.state      := CHECK_MORE_S;
                when others => v.txData := (others => '1');
                end case;
                if txDataReady = '1' then
                    v.checksum   := r.checksum + v.txData;
                    v.wordOutCnt := r.wordOutCnt + 1;
                end if;
            when ERR_RESPONSE_S =>
                if txDataReady = '1' then
                    v.checksum   := r.checksum + r.txData;
                    v.wordOutCnt := r.wordOutCnt + 1;
                end if;
                v.txDataValid := '1';
                case conv_integer(r.wordOutCnt) is
                    when 0 => v.txData := WORD_HEADER_C;
                    when 1 => v.txData := x"00000005";
                    when 2 => v.txData := WORD_ERR_C;
                    when 3 => v.txData := wordScrodRevC;            -- Why not make it to r.deviceID ??
                    when 4 => v.txData := x"00" & r.commandId;
                    when 5 => v.txData := r.errFlags;
                    when 6 => v.txData     := r.checksum;
                    v.txDataLast := '1';
                    v.state      := DUMP_S;
                when others => v.txData := (others => '1');
                end case;
            when CHECK_MORE_S =>
				loadQB <= '0';
                if r.wordsLeft /= 1 then      --and r.wordsLeft /= 0 then   --Added and condition on 15th Oct(Shivang)
                    v.state := COMMAND_ID_S;
                else
                    v.state := PACKET_CHECKSUM_S;
                end if;
            when PACKET_CHECKSUM_S =>
                -- Not checking this for now...
                v.state := DUMP_S;
            when DUMP_S =>
                rxDataReady <= '1';
                if rxDataLast = '1' then
                    v.state := IDLE_S;
                end if;
            when others =>
                v.state := IDLE_S;
				DC_cmdRespReq <= (others => '1');
        end case;

        -- Reset logic
        if (usrRst = '1') then
            v := REG_INIT_C;
        end if;
		--Event Handling
		if EVNT_FLAG = '1' then
			v := REG_INIT_C;
			QB_RdEn <= (others => '0');
		else
			QB_RdEn <= DC_cmdRespReq;
		end if;
        -- Register interfaces
        regAddr     <= r.regAddr;
        regWrData   <= r.regWrData;
        regReq      <= r.regReq;
        regOp       <= r.regOp;
        DC_CMD      <= QB_loadReg(1);
        -- Assignment of combinatorial variable to signal
        rin <= v;

    end process;

    seq : process (usrClk) is
    begin
        if (rising_edge(usrClk)) then
            r <= rin after GATE_DELAY_G;
			t <= tin after GATE_DELAY_G;
			if EVNT_FLAG = '0' then
				if r.state = COMMAND_DATA_S and loadQB = '1' then
					QB_loadReg(0) <= r.commandType;
					start_load <= '1';
				elsif r.state = COMMAND_CHECKSUM_S and loadQB = '1' then
					QB_loadReg(0) <= r.command;
					start_load <= '1';
				elsif r.state = CHECK_MORE_S or r.state = ERR_RESPONSE_S then
					start_load <= '0';
				end if;

			else
				start_load <= '0';
			end if;
		end if;
    end process;

	gtp_MUX : process(EVNT_FLAG,t,r) is
	begin
		if EVNT_FLAG = '0' then
            -- Outputs to ports
			txData      <= r.txData;
			txDataValid <= r.txDataValid;
			txDataLast  <= r.txDataLast;

		else
			txData      <= t.txData;
			txDataValid <= t.txDataValid;
			txDataLast  <= t.txDataLast;
		end if;
	end process;

	SendTrigger : process(EVNT_FLAG, t) is

        variable g : RegType := REG_INIT_C;
    begin
        g := t;

        -- Resets for pulsed outputs
        g.txDataValid := '0';
		case(t.state) is
			when IDLE_S =>
                g.checksum := (others => '0');
                g.wordOutCnt := (others => '0');
                if EVNT_FLAG = '1' then
                    g.state := SENDTRIG_s;
                else
                    g.state := IDLE_S;
                end if;

			when SENDTRIG_S =>
				g.txDataValid := '1';
				if conv_integer(unsigned(g.wordOutCnt)) <= num_DC then
                    g.wordOutCnt := t.wordOutCnt + 1;
					g.txDataValid := '1';
					g.txData := DC_RESP;
					g.state := SENDTRIG_S;
					if conv_integer(unsigned(g.wordOutCnt)) = num_DC then
						g.txdatalast := '1';
					else
						g.txdatalast := '0';
					end if;

				elsif conv_integer(unsigned(g.wordOutCnt)) > num_DC then
					g.wordOutCnt := (others => '0');
					g.txDataValid := '0';
					g.txData := (others => '0');
					g.state := IDLE_S;
				end if;

			when others =>
				g.state := IDLE_S;
        end case;
        tin <= g;
    end process;

	QBload_reg : process (dataClk, start_load) is
	begin
        if(rising_edge(dataClk)) then
            if start_load = '1' then
                if dc_id = 10 then
                    QB_WrEn <= (others =>'1');
                else
                    QB_WrEn(dc_id) <= '1';
                end if;
                QB_loadReg(1) <= QB_loadReg(0);
            else
                QB_WrEn <= (others =>'0');
            end if;
        end if;
    end process;

end rtl;
