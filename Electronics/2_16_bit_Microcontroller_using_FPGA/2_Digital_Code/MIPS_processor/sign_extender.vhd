
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity sign_extender is
    Port ( se_in : in  STD_LOGIC_VECTOR (5 downto 0);
           se_out : out  STD_LOGIC_VECTOR (15 downto 0));
end sign_extender;
architecture Behavioral of sign_extender is
begin
se_out <= "0000000000" & se_in when se_in(5)='0' else
			 "1111111111" & se_in ;


end Behavioral;

