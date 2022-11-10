
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX is
generic( n : integer := 16);
    Port ( mux_in0 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           mux_in1 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           mux_control : in  STD_LOGIC;
           mux_out : out  STD_LOGIC_VECTOR (n-1 downto 0));
end MUX;

architecture Behavioral of MUX is

begin
mux_out <= mux_in0 when ( mux_control='0' ) else
			  mux_in1;

end Behavioral;

