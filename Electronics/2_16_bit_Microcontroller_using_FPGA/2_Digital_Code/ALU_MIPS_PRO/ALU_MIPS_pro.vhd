library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU_T is
    Port ( ALU_A : in  STD_LOGIC_VECTOR (15 downto 0);
           ALU_B : in  STD_LOGIC_VECTOR (15 downto 0);
           ALU_Result : out  STD_LOGIC_VECTOR (15 downto 0);
           alu_control : in  STD_LOGIC_VECTOR (3 downto 0);
           ZF  : out  STD_LOGIC
			--  OVF : out  STD_LOGIC;
			 -- CF  : out  STD_LOGIC
			  );
end ALU_T;

architecture Behavioral of ALU_T is

signal result : std_logic_vector (15 downto 0 );

begin
		process (alu_control, ALU_A , ALU_B)
		begin
			case alu_control is
			when "0000" =>
				result <= STD_LOGIC_VECTOR(unsigned(ALU_A) + unsigned(ALU_B));   
			when "0001" => 
				result <= STD_LOGIC_VECTOR(unsigned(ALU_A) - unsigned(ALU_B));     
			when "0010" => 
				result <= (ALU_A and ALU_B);  
			when "0011" => 
				result <= (ALU_A or ALU_B);
			when "0100" => 
				result <= (ALU_A xor ALU_B); 
			when "0101" => 
				result <= (ALU_A nor ALU_B);
			when "0110" => 
				result <=  STD_LOGIC_VECTOR(unsigned(ALU_A) sll 1);
			when "0111" =>
				result <= STD_LOGIC_VECTOR(unsigned(ALU_A) srl 1);
			when "1000" =>
				result <= ALU_A;
			when others => 
				result <= x"0001"; -- to keep ZF without change
			end case;
		end process;
		
		ALU_Result <= result;
		ZF <= '1' when result = x"0000" else '0';
		

end Behavioral;

