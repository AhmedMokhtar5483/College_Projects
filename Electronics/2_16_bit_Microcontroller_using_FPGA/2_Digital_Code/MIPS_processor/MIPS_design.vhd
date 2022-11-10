library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity MIPS_design is
port( reset : in std_logic;
		input_port : in std_logic_vector (15 downto 0 ):=x"0000" ;
		output_port : out std_logic_vector (15 downto 0 ) ;
      clock : in std_logic) 
;
end MIPS_design;
architecture Behavioral of MIPS_design is
component sign_extender is
    Port ( se_in : in  STD_LOGIC_VECTOR (5 downto 0);
           se_out : out  STD_LOGIC_VECTOR (15 downto 0));
end component ;
component IO_register is
    Port ( input : in  STD_LOGIC_VECTOR (15 downto 0);
           clock  : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           enable : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (15 downto 0));
end component;
component data_memory is 
generic( n: integer := 16 ) ;
    Port ( address : in  STD_LOGIC_VECTOR (n-1 downto 0);
           writedata  : in  STD_LOGIC_VECTOR (n-1 downto 0);
           memwrite  : in  STD_LOGIC;
           memread : in  STD_LOGIC;
			  clock :  in  STD_LOGIC;
			  reset :  in  STD_LOGIC;
           readdata  : out  STD_LOGIC_VECTOR (n-1 downto 0));
end component;
component jump_block is
    Port ( target  : in  STD_LOGIC_VECTOR (11 downto 0);
           PC_seg : in  STD_LOGIC_VECTOR (2 downto 0);
           PC_jump : out  STD_LOGIC_VECTOR (15 downto 0));
end component;
component BRANCH_BLOCK is
    Port ( offset  : in  STD_LOGIC_VECTOR (15 downto 0);
           PC : in  STD_LOGIC_VECTOR (15 downto 0);
           PC_branch : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component reg_file is
Generic (
	w : integer := 3 ;
	B: integer := 16  
	);
port (
      readregister1: in std_logic_vector (w-1 downto 0) ;
		readregister2: in std_logic_vector (w-1 downto 0) ;
		writeregister1: in  std_logic_vector (w-1 downto 0) ;
		writedata :in  std_logic_vector (B-1 downto 0) ;
		regwrite : in  std_logic ;
		clk :in  std_logic ;
		reset : in  std_logic ;
		readData1: out std_logic_vector (B-1 downto 0) ;
		readData2: out std_logic_vector (B-1 downto 0) ) ;
end component;

component general_register is
    Port ( input  : in  STD_LOGIC_VECTOR (15 downto 0);
           clock  : in  STD_LOGIC;
			  reset : in  std_logic ;
           output  : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component instruction_memory is
port (
memory_address_pc : in std_logic_vector ( 15 downto 0 );
instruction : out std_logic_vector ( 15 downto 0 )
); 
end component;


component MUX is
generic( n : integer := 32);
    Port ( mux_in0 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           mux_in1 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           mux_control : in  STD_LOGIC;
           mux_out : out  STD_LOGIC_VECTOR (n-1 downto 0));

end component;

component ALU_controller is
    Port ( ALU_op : in  STD_LOGIC_VECTOR (2 downto 0);
           in_Function : in  STD_LOGIC_VECTOR (2 downto 0);
           ALU_input : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component ALU_T is
    Port ( ALU_A : in  STD_LOGIC_VECTOR (15 downto 0);
           ALU_B : in  STD_LOGIC_VECTOR (15 downto 0);
           ALU_Result : out  STD_LOGIC_VECTOR (15 downto 0);
           alu_control : in  STD_LOGIC_VECTOR (3 downto 0);
           ZF  : out  STD_LOGIC
			--  OVF : out  STD_LOGIC;
			 -- CF  : out  STD_LOGIC
			  );
end component;

component MIPS_control_unit is
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
			  output_enable: out  STD_LOGIC ;
			  input_enable : out  STD_LOGIC ;
			  halt : out  STD_LOGIC);
end component;



         --constant n : integer := 16 ;
			--signal Enter_sig :  STD_LOGIC;
         signal reset_sig :   STD_LOGIC;
			--cotrol unit signals 
         --CU input
			signal op_code_sig :   STD_LOGIC_VECTOR (3 downto 0);  
			--CU output 
			signal regdst_sig  :  STD_LOGIC;
         signal jump_sig  :  STD_LOGIC;
			signal clock_sig  :  STD_LOGIC;
			signal branch_sig  :  STD_LOGIC;
			signal branchBNQ_sig  :  STD_LOGIC;
			signal memread_sig  :  STD_LOGIC;
			signal memtoreg_sig  :  STD_LOGIC;
			signal memwrite_sig : STD_LOGIC;
         signal alusrc_sig : STD_LOGIC;
         signal regwrite_sig : STD_LOGIC;
			signal aluop_sig  : STD_LOGIC_VECTOR (2 downto 0);
         signal ALUSRC : STD_LOGIC;
			signal J_link_sig : STD_LOGIC;
			signal J_R_sig : STD_LOGIC;
			signal halt_sig : STD_LOGIC;
			signal input_enable : STD_LOGIC;
			signal output_enable : STD_LOGIC;
			-----------sign extender-------------
			--signal sign_extender_in : STD_LOGIC_VECTOR (5 downto 0);
         signal sign_extender_out :  STD_LOGIC_VECTOR (15 downto 0);
			-------------------------------------
			signal PC_IR :  STD_LOGIC_VECTOR (15 downto 0):= (others=>'0');
			------------------------------
			signal mux_RT :  STD_LOGIC_VECTOR (2 downto 0) ;
         signal mux_RD :  STD_LOGIC_VECTOR (2 downto 0);
			signal instruction_sig: STD_LOGIC_VECTOR (15 downto 0);
			signal M1_write_register :  STD_LOGIC_VECTOR (2 downto 0);
			signal M2_write_register :  STD_LOGIC_VECTOR (2 downto 0);
			signal MUX_write_data :  STD_LOGIC_VECTOR (2 downto 0);
			-----------------register file output--------------------
			signal write_data_level1 :  STD_LOGIC_VECTOR (15 downto 0);
			signal write_data_level2 :  STD_LOGIC_VECTOR (15 downto 0);
			signal write_register : STD_LOGIC_VECTOR (2 downto 0);
			signal read_data1 :  STD_LOGIC_VECTOR (15 downto 0);
			signal read_data2 :  STD_LOGIC_VECTOR (15 downto 0);
			--------------------------     ALU         --------------
			signal ALUB_sig :  STD_LOGIC_VECTOR (15 downto 0);
			signal ALU_RESULT :  STD_LOGIC_VECTOR (15 downto 0);
			signal ZF :  STD_LOGIC ;
			signal ALU_op_sig : STD_LOGIC_VECTOR (3 downto 0);
			------------ ALU controller ------------------------------
			signal ALU_controller_sig :  STD_LOGIC_VECTOR (3 downto 0);
			-------------------   data memory  -----------------------
			signal read_data :  STD_LOGIC_VECTOR (15 downto 0);
			signal mux_datamem_sig : STD_LOGIC_VECTOR (15 downto 0);
			-------------------JUMP and BRANCH signals---------------------
			signal PC_BRANCH :  STD_LOGIC_VECTOR (15 downto 0) :=(others=>'0');
			signal PC_JUMP :  STD_LOGIC_VECTOR (15 downto 0) :=(others=>'0');
			signal PC_increment :  STD_LOGIC_VECTOR (15 downto 0):=(others=>'0');
			signal PC_level1 : STD_LOGIC_VECTOR (15 downto 0) :=(others=>'0');
			signal PC_level2 : STD_LOGIC_VECTOR (15 downto 0) :=(others=>'0');
			signal PC_input : STD_LOGIC_VECTOR (15 downto 0) :=(others=>'0');
			signal mux_branch_control : STD_LOGIC;
			signal input_port_sig: STD_LOGIC_VECTOR (15 downto 0);
			
			 
begin
clock_sig <= clock ;
mux_branch_control <= (((ZF)AND(branch_sig))OR((NOT ZF) AND(branchBNQ_sig))) ;
--Enter_sig <= Enter ;
Reset_sig <= Reset ;
op_code_sig <= instruction_sig(15 downto 12);
PC_increment <=  STD_LOGIC_VECTOR(unsigned(PC_ir) + 2) ;   
mux_RT <= instruction_sig(5 downto 3) ;
mux_RD <= instruction_sig(8 downto 6); 
U_Mux_write_register_level_1 : MUX GENERIC MAP(3)  
port map (
	mux_in0 => mux_RT ,
	mux_in1 => mux_RD,
	mux_control => regdst_sig ,
	mux_out => M1_write_register
);
U_Mux_write_register_level_2 : MUX GENERIC MAP(3)  
port map (
	mux_in0 => M1_write_register ,
	mux_in1 =>"111",
	mux_control => J_link_sig ,
	mux_out => write_register 
);
U_Mux_write_data: MUX GENERIC MAP(16)  
port map (
	mux_in0 => mux_datamem_sig,
	mux_in1 => PC_increment ,
	mux_control => J_link_sig,
	mux_out => write_data_level1 
);
U_Mux_register_file_alu: MUX GENERIC MAP(16)  
port map (
	mux_in0 => read_data2 ,
	mux_in1 => sign_extender_out ,
	mux_control => ALUsrc_sig ,
	mux_out => ALUB_sig
);
U_Mux_data_memory: MUX GENERIC MAP(16)  
port map (
	mux_in0 => alu_result,
	mux_in1 => READ_DATA ,
	mux_control => memtoreg_sig ,
	mux_out => mux_datamem_sig
);
U_Mux_branch: MUX GENERIC MAP(16)  
port map (
	mux_in0 => PC_increment,
	mux_in1 => PC_BRANCH ,
	mux_control => mux_branch_control ,
	mux_out => PC_level1
);
U_Mux_PC_jump: MUX GENERIC MAP(16)  
port map (
	mux_in0 => PC_level1 ,
	mux_in1 => PC_jump ,
	mux_control => jump_sig ,
	mux_out => PC_level2
);
U_Mux_PC_Rs: MUX GENERIC MAP(16)  
port map (
	mux_in0 => PC_level2,
	mux_in1 => read_data1,
	mux_control => J_R_sig,
	mux_out => PC_input 
);
U_input_port_MUX : MUX GENERIC MAP(16)  
port map (
	mux_in0 => write_data_level1,
	mux_in1 => input_port_sig,
	mux_control => input_enable,
	mux_out => write_data_level2 
);
U_sign_extender: sign_extender port map (
	 se_in => instruction_sig(5 downto 0 ) ,
	 se_out => sign_extender_out
	); 

U_PC : general_register port map (PC_input , clock_sig , reset_sig , PC_IR ) ;
U_input_port : general_register port map (input_port, clock_sig , reset_sig , input_port_sig) ;
U_output_port: IO_register port map (read_data1 , clock_sig , reset_sig , output_enable , output_port) ;

U_IR : Instruction_memory port map (PC_IR , instruction_sig) ;

U_CU : MIPS_control_unit port map (
	reset => reset_sig, 
   op_code => op_code_sig,
   regdst => regdst_sig,
   jump => jump_sig,
   branch => branch_sig,
	branchBNQ => branchBNQ_sig,
   memread => memread_sig,
   memtoreg => memtoreg_sig,
   aluop => aluop_sig,
   memwrite => memwrite_sig,
   alusrc => alusrc_sig,
   regwrite => regwrite_sig,
	J_link => J_link_sig,
	J_R => J_R_sig,
   halt => halt_sig ,
	input_enable => input_enable ,
	output_enable => output_enable  
);

U_REG : reg_file port map (
	instruction_sig(11 downto 9),
	instruction_sig(8 downto 6),
	write_register,
	write_data_level2 ,
	regwrite_sig,
	clock_sig,
	reset_sig,
	read_Data1,
	read_Data2
);

U_ALU_controller : ALU_controller port map(
	instruction_sig(2 downto 0),
	aluop_sig,
	ALU_op_sig
);
U_ALU : ALU_T port map(
	read_data1,
	ALUB_sig,
	ALU_result ,
	ALU_op_sig ,
	ZF
	
);
U_datamemory : data_memory port map ( 
	ALU_RESULT ,
	READ_DATA2 ,
	MEMWRITE_SIG ,
	MEMREAD_SIG ,
	CLOCK_SIG ,
	reset_sig ,
	READ_DATA 
	) ;
U_BRANCH_BLOCK : branch_block port map ( 
	sign_extender_out ,
	PC_increment ,
	PC_BRANCH 
	);	
U_JUMP_BLOCK : jump_block port map (
	instruction_sig(11 downto 0) ,
	PC_increment (15 downto 13 ) ,
	PC_jump 
);
end Behavioral;

