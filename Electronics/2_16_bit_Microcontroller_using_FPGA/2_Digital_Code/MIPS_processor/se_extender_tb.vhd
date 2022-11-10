
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY se_extender_tb IS
END se_extender_tb;
 
ARCHITECTURE behavior OF se_extender_tb IS 
   
   --Inputs
   signal tb_se_in : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal tb_se_out : std_logic_vector(31 downto 0);
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   u2_test: entity work.sign_extender(Behavioral) 
	PORT MAP (
          se_in => tb_se_in,
          se_out => tb_se_out
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		tb_se_in <= X"A093" ;
		wait for 100 ns ;
		tb_se_in <= X"6093" ;
		wait for 100 ns ;
      wait;
   end process;

END;
