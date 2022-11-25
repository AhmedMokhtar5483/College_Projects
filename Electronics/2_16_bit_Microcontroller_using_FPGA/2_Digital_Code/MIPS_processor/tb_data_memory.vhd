
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.NUMERIC_std.all ;
 
ENTITY tb_data_memory IS
END tb_data_memory;
 
ARCHITECTURE behavior OF tb_data_memory IS 
 
   
   --Inputs
   signal tb_address : std_logic_vector(15 downto 0) := X"0000";
   signal tb_writedata : std_logic_vector(15 downto 0) := (others => '0');
   signal tb_memwrite : std_logic := '0';
   signal tb_memread : std_logic := '0';
	signal tb_reset : std_logic := '0';
	signal tb_clock : std_logic  ;  
	

 	--Outputs
   signal tb_readdata : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   u1_test: entity work.data_memory(behavioral) PORT MAP (
          address => tb_address,
          writedata => tb_writedata,
          memwrite => tb_memwrite,
          memread => tb_memread,
          readdata => tb_readdata ,
			 clock => tb_clock ,
			 reset => tb_reset 
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		wait for 10 ns ;
       tb_reset <= '0';
		 tb_address <= X"0000";
		 tb_writedata <= X"0254";
		 tb_memwrite <= '0' ;
		 tb_clock <='0' ;
		 wait for 10 ns ;
		 tb_memwrite <= '1' ;
		 tb_clock <='1' ;
		 wait for 10 ns ;
		 tb_memwrite<= '0' ;
		 tb_clock <='0' ;
		 wait for 10 ns ;
		 ----------------------
		 tb_address <= X"0002";
		 tb_writedata <= X"7526";
		 tb_memwrite <= '0' ;
		 tb_clock <='0' ;
		 wait for 10 ns ;
		 tb_memwrite <= '1' ;
		 tb_clock <='1' ;
		 wait for 10 ns ;
		 tb_memwrite<= '0' ;
		 tb_clock <='0' ;
		 wait for 10 ns ;
		 ----------------------
		 tb_address <= X"0004";
		 tb_writedata <= X"6592";
		tb_memwrite <= '0' ;
		 tb_clock <='0' ;
		 wait for 10 ns ;
		 tb_memwrite <= '1' ;
		 tb_clock <='1' ;
		 wait for 10 ns ;
		 tb_memwrite<= '0' ;
		 tb_clock <='0' ;
		 wait for 10 ns ;
		 --------------------
		 tb_address <= X"0000";
		 tb_memread <= '0' ;
		 tb_clock <='0' ;
		 wait for 10 ns ;
		tb_memread <= '1' ;
		 tb_clock <='1' ;
		 wait for 10 ns ;
		 tb_memread <= '0' ;
		 tb_clock <='0' ;
		 wait for 10 ns ;
		 ----------------------
	    tb_address <= X"0002";
		 tb_memread <= '0' ;
		 tb_clock <='0' ;
		 wait for 10 ns ;
		tb_memread <= '1' ;
		 tb_clock <='1' ;
		 wait for 10 ns ;
		 tb_memread <= '0' ;
		 tb_clock <='0' ;
		 wait for 10 ns ;
		 ----------------------
		 tb_address <= X"0004";
		 tb_memread <= '0' ;
		 tb_clock <='0' ;
		 wait for 10 ns ;
		tb_memread <= '1' ;
		 tb_clock <='1' ;
		 wait for 10 ns ;
		 tb_memread <= '0' ;
		 tb_clock <='0' ;
		 wait for 10 ns ;
		 ----------------------
		 tb_reset <= '1';
      -- insert stimulus here 
--		tb_address <= x"00400000" or std_logic_vector(to_unsigned(4*5,32));
--		tb_writedata <=X"12345678" ;
--		tb_memwrite <= '0' ;
--		 wait for 10 ns ;
--		 tb_memwrite <= '1' ;
--		 wait for 10 ns ;
--		 tb_memwrite<= '0' ;
--		 wait for 10 ns ;
--		 tb_memread <= '0' ;
--		 wait for 10 ns ;
--		 tb_memread <= '1' ;
--		 wait for 10 ns ;
--		 tb_memread <= '0' ;
--		 wait for 10 ns ;
--		

      wait;
   end process;

END;
