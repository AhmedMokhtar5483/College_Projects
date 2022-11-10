
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MIPS_control_unit is
    Port (
			 -- Enter : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           op_code : in  STD_LOGIC_VECTOR (3 downto 0);
           regdst : out  STD_LOGIC;
           jump  : out  STD_LOGIC;
           branch : out  STD_LOGIC;
           branchBNQ : out  STD_LOGIC;
			  memread : out  STD_LOGIC;
           memtoreg : out  STD_LOGIC;
           aluop : out  STD_LOGIC_VECTOR (2 downto 0);
           memwrite : out  STD_LOGIC;
           alusrc : out  STD_LOGIC;
           regwrite : out  STD_LOGIC;
			  J_link : out  STD_LOGIC ;
			  J_R : out  STD_LOGIC ;
			  halt : out  STD_LOGIC;
			  output_enable: out  STD_LOGIC ;
			  input_enable: out  STD_LOGIC );
end MIPS_control_unit;

architecture Behavioral of MIPS_control_unit is

begin 
--memread <= '0' ;
--memwrite <= '0' ; 
process(op_code , reset)
begin 
if reset= '1' then   -- reset and NOP have the same o/p signals
				RegDst <= '0';
				jump <= '0' ;
				Branch <= '0';
				MemRead <= '0';
				memtoreg <= '0';
				ALUOP <= "000";
				Memwrite <= '0';
				ALUSrc <= '0';
				halt <= '0' ;
				J_link <= '0';
				J_R <= '0';
				branchBNQ <= '0';
				input_enable <= '0' ;
				output_enable <= '0' ;
				Regwrite <= '0' ;
else
case op_code is 
when X"0"=> --ADD,SUB,AND,OR,NOR,XOR,SLL
				RegDst <= '1';
				jump <= '0' ;
				Branch <= '0';
				MemRead <= '0';
				memtoreg <= '0';
				ALUOP <= "010";
				Memwrite <= '0';
				ALUSrc <= '0';
				halt <= '0' ;
				J_link <= '0';
				J_R <= '0';
				branchBNQ <= '0';
				input_enable <= '0' ;
				output_enable <= '0' ;
				Regwrite <= '1' after 10 ns;
when X"4"=> -- Add i
				branchBNQ <= '0';
				regdst <= '0';
				jump <= '0' ;
				J_R <= '0';
				branch <= '0';
				MemRead <= '0';
				memtoreg <= '0';
				AluOp <= "000";
				Memwrite <= '0';
				Alusrc <= '1';
				halt <= '0' ;
				J_link <= '0';
				input_enable <= '0' ;
				output_enable <= '0' ;
				RegWrite <='1' after 10 ns;

when X"5" => --AND i
            branchBNQ <= '0';
				regdst <= '0';
				jump <= '0' ;
				branch <= '0';
				MemRead <= '0';
				memtoreg <= '0';
				J_R <= '0';
				AluOp <= "011";
				Memwrite <= '0';
				Alusrc <= '1';
				J_link <= '0';
				halt <= '0' ;
				input_enable <= '0' ;
				output_enable <= '0' ;
				RegWrite <='1' after 10 ns;

when X"6" => --ori 
				branchBNQ <= '0';
				regdst <= '0';
				jump <= '0' ;
				branch <= '0';
				MemRead <= '0';
				memtoreg <= '0';
				J_R <= '0';
				AluOp <= "100";
				Memwrite <= '0';
				Alusrc <= '1';
				halt <= '0' ;
				J_link <= '0';
				input_enable <= '0' ;
				output_enable <= '0' ;
				RegWrite <='1' after 10 ns;


when X"7" => -- LW
				branchBNQ <= '0';
				regdst <= '0';
				jump <= '0' ;
				branch <= '0';
				MemRead <= '1';
				MemToReg <= '1';
				AluOp <= "000";
				J_R <= '0';
				Memwrite <= '0';
				Alusrc <= '1';
				RegWrite <='1';
				halt <= '0' ;
				input_enable <= '0' ;
				output_enable <= '0' ;
            J_link <= '0';
when X"8"=> --SW
				regdst <= '0';
				jump <= '0';
				branchBNQ <= '0';
				branch <= '0';
				MemRead <= '0';
				MemToReg <= '0';
				AluOp <= "000";
				J_R <= '0';
				Memwrite <= '1';
				Alusrc <= '1';
				RegWrite <='0';
				J_link <= '0';
				input_enable <= '0' ;
				halt <= '0';
				output_enable <= '0' ;

when X"b"=> --JUMP
				regdst <= '0';
				branchBNQ <= '0';
				branch <= '0';
				MemRead <= '0';
				MemToReg <= '0';
				AluOp <= "000";
				Memwrite <= '0';
				Alusrc <= '0';
				RegWrite <='0';
				J_R <= '0';
				halt <= '0';
				J_link <= '0';
				input_enable <= '0' ;
				jump <= '1';
				output_enable <= '0' ;
when X"c"=>  --JAL
				RegDst <= '1';
				jump <= '0' ;
				Branch <= '0';
				MemRead <= '0';
				MemToReg  <= '0';
				branchBNQ <= '0';
				ALUOP <= "010";
				Memwrite <= '0';
				ALUSrc <= '0';
				halt <= '0' ;
				J_link <= '1';
				J_R <= '0';
				input_enable <= '0' ;
				Regwrite <= '0' ;
				output_enable <= '0' ;
when X"3"=> --JR
				RegDst <= '0';
				jump <= '0' ;
				Branch <= '0';
				MemRead <= '0';
				MemToReg  <= '0';
				branchBNQ <= '0';
				ALUOP <= "010";
				Memwrite <= '0';
				ALUSrc <= '0';
				halt <= '0' ;
				J_R <= '1';
				J_link <= '0';
				Regwrite <= '0' ;
				input_enable <= '0' ;
				output_enable <= '0' ;
when X"9"=> --BEQ
				J_R <= '0';
				J_link <= '0';
				RegDst <= '1';
				jump <= '0' ;
				Branch <= '0';
				branchBNQ <= '0';
				MemRead <= '0';
				MemToReg  <= '0';
				ALUOP <= "010";
				Memwrite <= '0';
				ALUSrc <= '0';
				halt <= '0' ;
				input_enable <= '0' ;
				Regwrite <= '0' ;
				output_enable <= '0' ;
when X"a"=> --BNQ
				J_R <= '0';
				J_link <= '0';
				branchBNQ <= '1';
				RegDst <= '1';
				jump <= '0' ;
				Branch <= '0';
				MemRead <= '0';
				MemToReg  <= '0';
				ALUOP <= "010";
				Memwrite <= '0';
				ALUSrc <= '0';
				halt <= '0' ;
				input_enable <= '0' ;
				Regwrite <= '0' ;
				output_enable <= '0' ;
when X"1"=>-- input 
--if (enter ='1') then  
				input_enable <= '1' ;
				J_R <= '0';
				J_link <= '0';
				branchBNQ <= '0';
				RegDst <= '1';
				jump <= '0' ;
				Branch <= '0';
				MemRead <= '0';
				MemToReg  <= '0';
				ALUOP <= "010";
				Memwrite <= '0';
				ALUSrc <= '0';
				halt <= '0' ;
				Regwrite <= '0';
				output_enable <= '0' ;
--end if ;
when X"2"=> --output 
				output_enable <= '1' ;
				J_R <= '0';
				J_link <= '0';
				branchBNQ <= '0';
				RegDst <= '1';
				jump <= '0' ;
				Branch <= '0';
				MemRead <= '0';
				MemToReg  <= '0';
				ALUOP <= "010";
				Memwrite <= '0';
				ALUSrc <= '0';
				halt <= '0' ;
				Regwrite <= '0' ;
				input_enable <= '0' ;
when X"e"=>  --NOP
	         J_R <= '0';
				J_link <= '0';
				branchBNQ <= '0';
				RegDst <= '0';
				jump <= '0' ;
				Branch <= '0';
				MemRead <= '0';
				MemToReg  <= '0';
				ALUOP <= "111";
				Memwrite <= '0';
				ALUSrc <= '0';
				halt <= '0' ;
				Regwrite <= '0' ;
				input_enable <= '0' ;
				output_enable <= '0' ;

when others =>
            --any other opcode (halt) 
				J_R <= '0';
				J_link <= '0';
				branchBNQ <= '0';
				RegDst <= '0';
				jump <= '0' ;
				Branch <= '0';
				MemRead <= '0';
				MemToReg  <= '0';
				ALUOP <= "000";
				Memwrite <= '0';
				ALUSrc <= '0';
				halt <= '1' ;
				Regwrite <= '0' ;
				input_enable <= '0' ;
				output_enable <= '0' ;
end case ;
end if ;
end process ;
end Behavioral;