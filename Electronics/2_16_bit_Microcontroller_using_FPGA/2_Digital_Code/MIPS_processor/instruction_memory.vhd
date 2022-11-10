library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_std.all ; 

entity instruction_memory is
port (
memory_address_pc : in std_logic_vector ( 15 downto 0 );
instruction : out std_logic_vector ( 15 downto 0 )
); 
end instruction_memory;

architecture Behavioral of instruction_memory is
type inst_mem is array ( 0 to 2**16-1 ) of std_logic_vector( 15 downto 0 ) ;
--signal IM: inst_mem :=((others=> (others=>'0')));
 constant IM: inst_mem :=(
		x"4001",
		x"7000",
		x"8000",
   "1000000110000000",
   "0010110010001011",
   "1100010000000011",
   "0001000111000000",
   "1110110110000001",
   "1100000001111011",
   "0000111111000000",
   "1010101011110101",
   "0101010101000101",
   "1010101010101010",
   "1010101110100010",
   "0101010011110011",
   "0000000000000000",
   "1001000001111000",
   "0000101011000100",
   "0001010101110100",
	"1010101011110101",
   "0101011111100101",
   "1010101010101010",
   "1010101110100010",
   "1110100100111100",
   "0111111100000000",
   "0000000011111111",
   "1111101011000100",
   "1111000000001111",
	others=>x"0000"
  );
begin
process (memory_address_pc) 
begin  
instruction <= IM(to_integer(((unsigned(memory_address_pc))and x"ffff"))/2); --) 
end process ;
end Behavioral;

