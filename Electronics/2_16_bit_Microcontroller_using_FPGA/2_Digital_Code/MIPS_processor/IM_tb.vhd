LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY IM_tb IS
END IM_tb;
 
ARCHITECTURE behavior OF IM_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT instruction_memory
    PORT(
         memory_address_pc : IN  std_logic_vector(15 downto 0);
         instruction : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal tb_memory_address_pc : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal tb_instruction : std_logic_vector(15 downto 0);

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   u_IM_test: entity work.instruction_memory(behavioral) PORT MAP ( 
          memory_address_pc => tb_memory_address_pc,
          instruction => tb_instruction
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;	
   for i in 0 to 15 loop 
	    tb_memory_address_pc <= std_logic_vector(to_unsigned(2*i,16));
       wait for 100 ns;	
   end loop ;
      wait;
   end process;

END;
