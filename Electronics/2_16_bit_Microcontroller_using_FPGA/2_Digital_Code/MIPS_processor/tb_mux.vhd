
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_mux IS
END tb_mux;
 
ARCHITECTURE behavior OF tb_mux IS 
constant N : integer :=32 ;
 --Inputs
   signal tb_mux_in0 : std_logic_vector(N-1 downto 0) := (others => '0');
   signal tb_mux_in1 : std_logic_vector(N-1 downto 0) := (others => '0');
   signal tb_mux_control : std_logic := '0';

 	--Outputs
   signal tb_mux_out : std_logic_vector(N-1 downto 0);
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
	
   u1_test : entity work.MUX(Behavioral) 
	Generic map ( N => 32 )
	PORT MAP (
          mux_in0 => tb_mux_in0,
          mux_in1 => tb_mux_in1,
          mux_control => tb_mux_control,
          mux_out => tb_mux_out
        );

   -- Stimulus process
   stim_proc: process
   begin		
      tb_mux_in0 <= x"AAAA5555" ;
		tb_mux_in1 <= x"5555AAAA" ;
		tb_mux_control <= '0' ;
		wait for 100 ns ;
		tb_mux_control <= '1' ;
		wait for 100 ns ;
		tb_mux_control <= '0' ;
		wait for 100 ns ;
      wait;
   end process;

END;
