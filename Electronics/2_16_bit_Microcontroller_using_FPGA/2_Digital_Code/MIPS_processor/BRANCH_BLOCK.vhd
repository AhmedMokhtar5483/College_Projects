
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity BRANCH_BLOCK is
    Port ( offset  : in  STD_LOGIC_VECTOR (15 downto 0);
           PC : in  STD_LOGIC_VECTOR (15 downto 0);
           PC_branch : out  STD_LOGIC_VECTOR (15 downto 0)
			   );
end BRANCH_BLOCK;

architecture Behavioral of BRANCH_BLOCK is
signal offset1: STD_LOGIC_VECTOR (15 downto 0);
begin 
offset1 <= STD_LOGIC_VECTOR((unsigned(offset) and x"7FFF") sll 1) ;
PC_branch <= STD_LOGIC_VECTOR(unsigned(PC) + unsigned(offset1)) ;  
end Behavioral;

