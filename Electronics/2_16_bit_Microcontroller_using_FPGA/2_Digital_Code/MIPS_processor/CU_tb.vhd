
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY CU_tb IS
END CU_tb;
 
ARCHITECTURE behavior OF CU_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MIPS_control_unit
    PORT(
         reset : IN  std_logic;
         op_code : IN  std_logic_vector(3 downto 0);
         regdst : OUT  std_logic;
         jump : OUT  std_logic;
         branch : OUT  std_logic;
         branchBNQ : OUT  std_logic;
         memread : OUT  std_logic;
         memtoreg : OUT  std_logic;
         aluop : OUT  std_logic_vector(2 downto 0);
         memwrite : OUT  std_logic;
         alusrc : OUT  std_logic;
         regwrite : OUT  std_logic;
         J_link : OUT  std_logic;
         J_R : OUT  std_logic;
         halt : OUT  std_logic;
         output_enable : OUT  std_logic;
         input_enable : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal reset : std_logic := '0';
   signal op_code : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal regdst : std_logic;
   signal jump : std_logic;
   signal branch : std_logic;
   signal branchBNQ : std_logic;
   signal memread : std_logic;
   signal memtoreg : std_logic;
   signal aluop : std_logic_vector(2 downto 0);
   signal memwrite : std_logic;
   signal alusrc : std_logic;
   signal regwrite : std_logic;
   signal J_link : std_logic;
   signal J_R : std_logic;
   signal halt : std_logic;
   signal output_enable : std_logic;
   signal input_enable : std_logic;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   CU_test:  entity work.MIPS_control_unit (behavioral)
			 PORT MAP (
          reset => reset,
          op_code => op_code,
          regdst => regdst,
          jump => jump,
          branch => branch,
          branchBNQ => branchBNQ,
          memread => memread,
          memtoreg => memtoreg,
          aluop => aluop,
          memwrite => memwrite,
          alusrc => alusrc,
          regwrite => regwrite,
          J_link => J_link,
          J_R => J_R,
          halt => halt,
          output_enable => output_enable,
          input_enable => input_enable
        );

  

   -- Stimulus process
   stim_proc: process
   begin		
      wait for 100 ns;	
      op_code <= X"C";
		wait for 50 ns ;
		op_code <= X"6";
		wait for 50 ns ;
		op_code <= X"0";
		wait for 50 ns ;
		op_code <= X"3";
		wait for 50 ns ;
		op_code <= X"4";
		wait for 50 ns ;
		op_code <= X"E";
		wait for 50 ns ;
		op_code <= X"A";
		wait for 50 ns ;
		reset <= '1' ;

      wait;
   end process;

END;
