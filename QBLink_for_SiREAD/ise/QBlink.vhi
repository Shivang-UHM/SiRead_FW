
-- VHDL Instantiation Created from source file QBlink.vhd -- 15:18:48 10/01/2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT QBlink
	PORT(
		sstClk : IN std_logic;
		rst : IN std_logic;
		rawSerialIn : IN std_logic;
		localWordIn : IN std_logic_vector(31 downto 0);
		localWordInValid : IN std_logic;
		localWordOutReq : IN std_logic;          
		rawSerialOut : OUT std_logic;
		localWordOut : OUT std_logic_vector(31 downto 0);
		localWordOutValid : OUT std_logic;
		trgLinkSynced : OUT std_logic;
		serialClkLocked : OUT std_logic
		);
	END COMPONENT;

	Inst_QBlink: QBlink PORT MAP(
		sstClk => ,
		rst => ,
		rawSerialOut => ,
		rawSerialIn => ,
		localWordIn => ,
		localWordInValid => ,
		localWordOut => ,
		localWordOutValid => ,
		localWordOutReq => ,
		trgLinkSynced => ,
		serialClkLocked => 
	);


