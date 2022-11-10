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
		clk : in  std_logic ;
		reset : in  std_logic ;
		readData1: out std_logic_vector (B-1 downto 0) ;
		readData2: out std_logic_vector (B-1 downto 0) ) ;
end reg_file;

architecture Behavioral of reg_file is
type register_file_type is array(0 to 7) of  std_logic_vector(15 downto 0) ;
signal register_file : register_file_type ;
 
begin
process(reset,clk)
begin
if (reset = '1') then
register_file(0)<= X"0000";
register_file(1)<= X"0000";
register_file(2)<= X"0000";
register_file(3)<= X"0000";
register_file(4)<= X"0000";
register_file(5)<= X"0000";
register_file(6)<= X"0000";
register_file(7)<= X"0000";
elsif ( clk' event and clk= '1')   then
		if regwrite ='1' then  
		register_file(to_integer( unsigned( writeregister1) )) <= writeData ;
		end if ;
end if ;
end process ;
readData1 <= register_file(to_integer( unsigned(readregister1) ));
readData2 <= register_file(to_integer( unsigned(readregister2) ));
end Behavioral;

