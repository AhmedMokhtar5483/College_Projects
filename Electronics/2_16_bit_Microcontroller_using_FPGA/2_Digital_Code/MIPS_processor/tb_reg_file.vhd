LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY tb_reg_file IS
END tb_reg_file;
 
ARCHITECTURE behavior OF tb_reg_file IS 
 
   
   --Inputs
   signal tb_readregister1 : std_logic_vector(2 downto 0) := (others => '0');
   signal tb_readregister2 : std_logic_vector(2 downto 0) := (others => '0');
   signal tb_writeregister1 : std_logic_vector(2 downto 0) := (others => '0');
   signal tb_writedata : std_logic_vector(15 downto 0) := (others => '0');
   signal tb_regwrite : std_logic := '0';
   signal tb_clock : std_logic := '0';
	signal tb_reset : std_logic := '0';
 	--Outputs
   signal tb_readData1 : std_logic_vector(15 downto 0);
   signal tb_readData2 : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clock_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: entity work.reg_file (behavioral) 
	PORT MAP (
          readregister1 => tb_readregister1,
          readregister2 => tb_readregister2,
          writeregister1 => tb_writeregister1,
          writedata => tb_writedata,
          regwrite => tb_regwrite,
          clock => tb_clock,
          readData1 => tb_readData1,
			 reset => tb_reset ,
          readData2 => tb_readData2
        );

   -- Clock process definitions
   clock_process :process
   begin
		tb_clock <= '0';
		wait for clock_period/2;
		tb_clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
       tb_readregister1 <= "000" ; 
		 wait  for 100 ns ; 
       tb_readregister2 <= "001" ; 
		 wait  for 100 ns ;
		 tb_reset <= '1'; 
      wait;
   end process;

END;
