
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity jump_block is
    Port ( target  : in  STD_LOGIC_VECTOR (11 downto 0);
           PC_seg : in  STD_LOGIC_VECTOR (2 downto 0);
           PC_jump : out  STD_LOGIC_VECTOR (15 downto 0));
end jump_block;

architecture Behavioral of jump_block is
signal target1 : STD_LOGIC_VECTOR (15 downto 0);
begin
target1 <= PC_seg & target & '0' ;
PC_jump <= target1 ;  
end Behavioral;

