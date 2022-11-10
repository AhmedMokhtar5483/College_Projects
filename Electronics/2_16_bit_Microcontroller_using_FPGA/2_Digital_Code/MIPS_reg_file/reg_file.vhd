library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_std.all ;
entity reg_file is
Generic (
w : integer := 3 ;
B: integer := 16  
) ;
port (
      readregister1: in std_logic_vector (w-1 downto 0) ;
		readregister2: in std_logic_vector (w-1 downto 0) ;
		writeregister1: in  std_logic_vector (w-1 downto 0) ;
		writedata :in  std_logic_vector (B-1 downto 0) ;
		regwrite : in  std_logic ;
		clock : in  std_logic ;
		reset : in  std_logic ;
		readData1: out std_logic_vector (B-1 downto 0) ;
		readData2: out std_logic_vector (B-1 downto 0) ) ;
end reg_file;

architecture Behavioral of reg_file is
type register_file_type is array(0 to 2**w-1) of 
				std_logic_vector(B-1 downto 0) ;
signal register_file : register_file_type := 

begin
process(reset,clock)
begin
if (reset = '1') then
for i in 0 to 7 loop 
register_file(i) <= (others =>'0') ;
end loop ; 
elsif rising_edge(clock) then
if regwrite ='1' then  
register_file(to_integer( unsigned( writeregister1) )) <= writeData ;
end if ;
end if ;
end process ;
readData1 <= register_file(to_integer( unsigned(readregister1) ));
readData2 <= register_file(to_integer( unsigned(readregister2) ));
end Behavioral;

