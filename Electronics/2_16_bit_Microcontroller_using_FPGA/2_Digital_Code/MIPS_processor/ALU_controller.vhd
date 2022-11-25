library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;
entity ALU_controller is
    Port ( ALU_op : in  STD_LOGIC_VECTOR (2 downto 0);
           in_Function : in  STD_LOGIC_VECTOR (2 downto 0);
           ALU_input : out  STD_LOGIC_VECTOR (3 downto 0));
end ALU_controller;

architecture Behavioral of ALU_controller is
signal alu_signal : STD_LOGIC_VECTOR (3 downto 0) ;
begin
process (ALU_op ,in_Function)
begin 
if ( ALU_op = "000" ) then 
  alu_signal <= "0000" ; --addi , lw , sw
elsif ( ALU_op = "001" ) then 
  alu_signal <= "0001" ;  -- beq , bnq
elsif ( ALU_op = "010" ) then 
					if ( in_Function ="000" ) then
						alu_signal <= "0000" ;  --add
					elsif ( in_Function ="001" ) then
						alu_signal <= "0001" ;   --sub
					elsif ( in_Function ="010" ) then
						alu_signal <= "0010" ;    --AND
					elsif ( in_Function ="011" ) then
						alu_signal <= "0011" ;    --OR
					elsif ( in_Function ="100" ) then
						alu_signal <= "0100" ;    --XOR
					elsif ( in_Function ="101" ) then
						alu_signal <= "0101" ;    --NOR
					elsif ( in_Function ="110" ) then
						alu_signal <= "0110" ;    --Sll
					elsif ( in_Function ="111" ) then
						alu_signal <= "0111" ;  --srl
					else alu_signal <= "0000";
					end if;
elsif ( ALU_op = "011" ) then 
		alu_signal <= "0010" ; --AND I
elsif ( ALU_op = "100" ) then
		alu_signal <= "0011" ;  --OR I
elsif ( ALU_op = "101" ) then
		alu_signal <= "1000" ;  --pass
else alu_signal <= "1111"; 
end if ; 
end process ;  
ALU_input  <= alu_signal ;
end Behavioral;

