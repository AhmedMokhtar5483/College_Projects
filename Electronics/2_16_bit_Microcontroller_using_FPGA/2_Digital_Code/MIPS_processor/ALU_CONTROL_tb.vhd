
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY ALU_CONTROL_tb IS
END ALU_CONTROL_tb;
 
ARCHITECTURE behavior OF ALU_CONTROL_tb IS 
 
   
    

   --Inputs
   signal tb_ALU_op : std_logic_vector(2 downto 0) := (others => '0');
   signal tb_in_Function : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal tb_ALU_input : std_logic_vector(3 downto 0);
   
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   u1_test: entity work.ALU_controller(behavioral)
			PORT MAP (
          ALU_op => tb_ALU_op,
          in_Function => tb_in_Function,
          ALU_input => tb_ALU_input
        );
 

   -- Stimulus process
   stim_proc: process
   begin
	 tb_ALU_op <= "000" ; --lw,sw,addi
	 tb_in_Function <= "XXX" ;
	 wait for 20 ns ; 
	 tb_ALU_op <= "001" ; --beq , bnq
	 tb_in_Function <= "XXX" ;
	 wait for 20 ns ;
	 tb_ALU_op <= "010" ;-- R-type
	 tb_in_Function <= "000" ; --add
	 wait for 20 ns ;
	 tb_ALU_op <= "010" ;
	 tb_in_Function <= "001" ; --sub
	 wait for 20 ns ;
	 tb_ALU_op <= "010" ;
	 tb_in_Function <= "010" ; --and
	 wait for 20 ns ;
	 tb_ALU_op <= "010" ;
	 tb_in_Function <= "011" ; --or 
	 wait for 20 ns ;
	 tb_ALU_op <= "010" ;
	 tb_in_Function <= "100" ;--xor
	 wait for 20 ns ;
	 tb_ALU_op <= "010" ;
	 tb_in_Function <= "101" ; --nor
	 wait for 20 ns ;
	 tb_ALU_op <= "010" ;
	 tb_in_Function <= "110" ;--sll
	 wait for 20 ns ;
	 tb_ALU_op <= "010" ;
	 tb_in_Function <= "111" ;--srl
	 wait for 20 ns ;
	 tb_ALU_op <= "011" ;--andi
	 tb_in_Function <= "XXX" ;
	 wait for 20 ns ;
	 tb_ALU_op <= "100" ;
	 tb_in_Function <= "XXX" ;--ori
	 wait for 20 ns ;	 
	 tb_ALU_op <= "101" ;--pass
	 tb_in_Function <= "XXX" ;
	 wait for 20 ns ;
	 wait;
   end process;

END;
