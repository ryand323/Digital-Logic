
-- VHDL Instantiation Created from source file ALU.vhd -- 12:27:06 04/18/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ALU
	PORT(
		a : IN std_logic_vector(2 downto 0);
		b : IN std_logic_vector(2 downto 0);
		switch : IN std_logic_vector(1 downto 0);          
		y : OUT std_logic_vector(2 downto 0)
		);
	END COMPONENT;

	Inst_ALU: ALU PORT MAP(
		a => ,
		b => ,
		switch => ,
		y => 
	);


