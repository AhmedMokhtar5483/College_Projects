library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity general_register is
    Port (
			input  : in  STD_LOGIC_VECTOR (15 downto 0);
         clock  : in  STD_LOGIC;
         reset   : in  STD_LOGIC;
         output  : out  STD_LOGIC_VECTOR (15 downto 0));
end general_register;

architecture Behavioral of general_register is
signal output_sig : STD_LOGIC_VECTOR (15 downto 0);
begin
process( clock , reset ) 
begin
if( reset = '1' ) then
output_sig <= (others => '0') ; 
elsif (rising_edge (clock )) then 
output_sig<= input ;
end if ;
end process;
output <= output_sig ;
end Behavioral;

