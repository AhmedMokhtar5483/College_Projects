library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_std.all ;

entity data_memory is 
generic( n: integer := 16 ) ;
    Port ( address : in  STD_LOGIC_VECTOR (n-1 downto 0);
           writedata  : in  STD_LOGIC_VECTOR (n-1 downto 0);
           memwrite  : in  STD_LOGIC;
           memread : in  STD_LOGIC;
			  clock :  in  STD_LOGIC;
			  reset :  in  STD_LOGIC;
           readdata  : out  STD_LOGIC_VECTOR (n-1 downto 0));
end data_memory;

architecture Behavioral of data_memory is
type ram is array (0 to 15) of std_logic_vector (15 downto 0) ;
signal data_memory : ram :=((others=> (others=>'0')));
--signal DM_reset : STD_LOGIC := '0' ;
--signal data_memory : ram :=(
--   "1000000110000000",
--   "0010110010001011",
--   "1100010000000011",
--   "0001000111000000",
--   "1110110110000001",
--   "1100000001111011",
--   "0000000000000000",
--   "1100110011000000",
--   "0000111100000000",
--   "0000000000000000",
--   "0000000000000000",
--   "0000110101001010",
--   "0010010001100000",
--   "0001111111111000",
--   "0111001010110000",
--   "0000000101010111"
--  );
begin
--DM_reset <= reset ;
process(clock , reset)
begin
if  ( reset ='1' ) then 
data_memory <= (others=> (others=>'0'));
elsif (rising_edge (clock ) ) then  
			if memwrite ='1' then 
				data_memory((to_integer(unsigned((address and X"FFFF" ))))/2)<= writedata ; 
			end if ;
			
end if ;
end process;
				readdata <= data_memory((to_integer(unsigned(address and X"FFFF")))/2) when memread='1' else 
				           X"0000";
			
end Behavioral;

