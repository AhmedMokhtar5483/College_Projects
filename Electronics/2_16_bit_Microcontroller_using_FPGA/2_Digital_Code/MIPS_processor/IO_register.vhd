
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity IO_register is
    Port ( input : in  STD_LOGIC_VECTOR (15 downto 0);
           clock  : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           enable : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (15 downto 0));
end IO_register;

architecture Behavioral of IO_register is
begin
process(clock, reset ,enable) 
begin
if(reset = '1' ) then
output <= (others => '0') ;
elsif(enable = '1' ) then 
		if (rising_edge (clock )) then 
		output<= input ;
		else 
		output <= X"0000" ;
		end if ;
end if ;
end process;
end Behavioral;
