
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY tb_MIPS IS
END tb_MIPS;
 
ARCHITECTURE behavior OF tb_MIPS IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MIPS_design
    PORT(
         reset : IN  std_logic;
         clock : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal reset : std_logic := '0';
   signal clock : std_logic := '0';

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MIPS_design PORT MAP (
          reset => reset,
          clock => clock
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
