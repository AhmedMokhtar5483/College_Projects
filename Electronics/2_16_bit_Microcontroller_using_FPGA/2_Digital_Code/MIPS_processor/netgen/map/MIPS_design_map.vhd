--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: MIPS_design_map.vhd
-- /___/   /\     Timestamp: Tue Apr 28 00:50:41 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -filter E:/MIPS_final_project_edited/MIPS_final_project/MIPS_processor/iseconfig/filter.filter -intstyle ise -s 3 -pcf MIPS_design.pcf -rpw 100 -tpw 0 -ar Structure -tm MIPS_design -w -dir netgen/map -ofmt vhdl -sim MIPS_design_map.ncd MIPS_design_map.vhd 
-- Device	: 6slx9tqg144-3 (PRODUCTION 1.23 2013-10-13)
-- Input file	: MIPS_design_map.ncd
-- Output file	: E:\MIPS_final_project_edited\MIPS_final_project\MIPS_processor\netgen\map\MIPS_design_map.vhd
-- # of Entities	: 1
-- Design Name	: MIPS_design
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity MIPS_design is
  port (
    reset : in STD_LOGIC := 'X'; 
    clock : in STD_LOGIC := 'X'; 
    input_port : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    output_port : out STD_LOGIC_VECTOR ( 15 downto 0 ) 
  );
end MIPS_design;

architecture Structure of MIPS_design is
  signal N224 : STD_LOGIC; 
  signal PC_increment_2_0 : STD_LOGIC; 
  signal PC_BRANCH_2_0 : STD_LOGIC; 
  signal U_Mux_branch_mux_control_INV_3_o1_7015 : STD_LOGIC; 
  signal read_data1_2_0 : STD_LOGIC; 
  signal jump_sig : STD_LOGIC; 
  signal J_R_sig : STD_LOGIC; 
  signal N212 : STD_LOGIC; 
  signal PC_increment_9_0 : STD_LOGIC; 
  signal PC_BRANCH_9_0 : STD_LOGIC; 
  signal N131 : STD_LOGIC; 
  signal input_enable : STD_LOGIC; 
  signal PC_increment_4_0 : STD_LOGIC; 
  signal J_link_sig : STD_LOGIC; 
  signal N132_0 : STD_LOGIC; 
  signal N128 : STD_LOGIC; 
  signal N129_0 : STD_LOGIC; 
  signal N215 : STD_LOGIC; 
  signal PC_increment_10_0 : STD_LOGIC; 
  signal PC_BRANCH_10_0 : STD_LOGIC; 
  signal N218 : STD_LOGIC; 
  signal PC_increment_11_0 : STD_LOGIC; 
  signal PC_BRANCH_11_0 : STD_LOGIC; 
  signal N194 : STD_LOGIC; 
  signal PC_increment_3_0 : STD_LOGIC; 
  signal PC_BRANCH_3_0 : STD_LOGIC; 
  signal N221 : STD_LOGIC; 
  signal PC_increment_12_0 : STD_LOGIC; 
  signal PC_BRANCH_12_0 : STD_LOGIC; 
  signal N45 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal U_REG_n0093_inv : STD_LOGIC; 
  signal regwrite_sig : STD_LOGIC; 
  signal reset_IBUF_0 : STD_LOGIC; 
  signal regdst_sig_0 : STD_LOGIC; 
  signal N197 : STD_LOGIC; 
  signal PC_BRANCH_4_0 : STD_LOGIC; 
  signal read_data1_4_0 : STD_LOGIC; 
  signal output_enable : STD_LOGIC; 
  signal memwrite_sig : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal PC_increment_1_0 : STD_LOGIC; 
  signal PC_BRANCH_1_0 : STD_LOGIC; 
  signal N16_0 : STD_LOGIC; 
  signal N242 : STD_LOGIC; 
  signal memread_sig : STD_LOGIC; 
  signal N86 : STD_LOGIC; 
  signal N87 : STD_LOGIC; 
  signal ALU_RESULT_0_Q : STD_LOGIC; 
  signal N200 : STD_LOGIC; 
  signal PC_increment_5_0 : STD_LOGIC; 
  signal PC_BRANCH_5_0 : STD_LOGIC; 
  signal N203 : STD_LOGIC; 
  signal PC_increment_6_0 : STD_LOGIC; 
  signal PC_BRANCH_6_0 : STD_LOGIC; 
  signal read_data1_6_0 : STD_LOGIC; 
  signal N206 : STD_LOGIC; 
  signal PC_increment_7_0 : STD_LOGIC; 
  signal PC_BRANCH_7_0 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal N209 : STD_LOGIC; 
  signal PC_increment_8_0 : STD_LOGIC; 
  signal PC_BRANCH_8_0 : STD_LOGIC; 
  signal N89 : STD_LOGIC; 
  signal N90_0 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N125 : STD_LOGIC; 
  signal N126 : STD_LOGIC; 
  signal clock_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal read_data1_0_0 : STD_LOGIC; 
  signal alusrc_sig : STD_LOGIC; 
  signal read_data2_0_0 : STD_LOGIC; 
  signal U_ALU_Mmux_result1_split_0_0 : STD_LOGIC; 
  signal read_data1_1_0 : STD_LOGIC; 
  signal read_data2_1_0 : STD_LOGIC; 
  signal U_ALU_Mmux_result1_split_1_0 : STD_LOGIC; 
  signal read_data2_2_0 : STD_LOGIC; 
  signal U_ALU_Mmux_result1_split_2_0 : STD_LOGIC; 
  signal U_ALU_Mmux_result1_rs_cy_3_Q_7127 : STD_LOGIC; 
  signal read_data2_3_0 : STD_LOGIC; 
  signal U_ALU_controller_alu_signal_4_1_7129 : STD_LOGIC; 
  signal U_ALU_Mmux_result1_split_3_0 : STD_LOGIC; 
  signal read_data2_4_0 : STD_LOGIC; 
  signal U_ALU_Mmux_result1_split_4_0 : STD_LOGIC; 
  signal read_data2_5_0 : STD_LOGIC; 
  signal U_ALU_controller_alu_signal_4_2_7134 : STD_LOGIC; 
  signal U_ALU_Mmux_result1_split_5_0 : STD_LOGIC; 
  signal read_data2_6_0 : STD_LOGIC; 
  signal U_ALU_Mmux_result1_split_6_0 : STD_LOGIC; 
  signal U_ALU_Mmux_result1_rs_cy_7_Q_7138 : STD_LOGIC; 
  signal read_data2_7_0 : STD_LOGIC; 
  signal U_ALU_Mmux_result1_split_7_0 : STD_LOGIC; 
  signal read_data2_8_0 : STD_LOGIC; 
  signal U_ALU_Mmux_result1_split_8_0 : STD_LOGIC; 
  signal read_data2_9_0 : STD_LOGIC; 
  signal U_ALU_Mmux_result1_split_9_0 : STD_LOGIC; 
  signal read_data2_10_0 : STD_LOGIC; 
  signal U_ALU_Mmux_result1_split_10_0 : STD_LOGIC; 
  signal U_ALU_Mmux_result1_rs_cy_11_Q_7147 : STD_LOGIC; 
  signal read_data2_11_0 : STD_LOGIC; 
  signal U_ALU_Mmux_result1_split_11_0 : STD_LOGIC; 
  signal read_data2_12_0 : STD_LOGIC; 
  signal U_ALU_Mmux_result1_split_12_0 : STD_LOGIC; 
  signal read_data2_13_0 : STD_LOGIC; 
  signal U_ALU_Mmux_result1_split_13_0 : STD_LOGIC; 
  signal U_ALU_Mmux_result1_split_14_0 : STD_LOGIC; 
  signal U_ALU_Mmux_result1_split_15_0 : STD_LOGIC; 
  signal Madd_PC_increment_cy_4_Q_7165 : STD_LOGIC; 
  signal Madd_PC_increment_cy_8_Q_7170 : STD_LOGIC; 
  signal Madd_PC_increment_cy_12_Q_7175 : STD_LOGIC; 
  signal PC_increment_13_0 : STD_LOGIC; 
  signal PC_increment_14_0 : STD_LOGIC; 
  signal PC_increment_15_0 : STD_LOGIC; 
  signal U_BRANCH_BLOCK_Madd_PC_branch_cy_4_Q_7183 : STD_LOGIC; 
  signal U_BRANCH_BLOCK_Madd_PC_branch_cy_8_Q_7184 : STD_LOGIC; 
  signal U_BRANCH_BLOCK_Madd_PC_branch_cy_12_Q_7185 : STD_LOGIC; 
  signal PC_BRANCH_13_0 : STD_LOGIC; 
  signal PC_BRANCH_14_0 : STD_LOGIC; 
  signal PC_BRANCH_15_0 : STD_LOGIC; 
  signal input_port_10_IBUF_0 : STD_LOGIC; 
  signal input_port_11_IBUF_0 : STD_LOGIC; 
  signal input_port_12_IBUF_0 : STD_LOGIC; 
  signal input_port_13_IBUF_0 : STD_LOGIC; 
  signal input_port_14_IBUF_0 : STD_LOGIC; 
  signal input_port_15_IBUF_0 : STD_LOGIC; 
  signal input_port_0_IBUF_0 : STD_LOGIC; 
  signal input_port_1_IBUF_0 : STD_LOGIC; 
  signal input_port_2_IBUF_0 : STD_LOGIC; 
  signal input_port_3_IBUF_0 : STD_LOGIC; 
  signal input_port_4_IBUF_0 : STD_LOGIC; 
  signal input_port_5_IBUF_0 : STD_LOGIC; 
  signal input_port_6_IBUF_0 : STD_LOGIC; 
  signal input_port_7_IBUF_0 : STD_LOGIC; 
  signal input_port_8_IBUF_0 : STD_LOGIC; 
  signal input_port_9_IBUF_0 : STD_LOGIC; 
  signal clock_BUFGP : STD_LOGIC; 
  signal N232_0 : STD_LOGIC; 
  signal U_Mux_branch_mux_control_INV_3_o4_7223 : STD_LOGIC; 
  signal N235_0 : STD_LOGIC; 
  signal U_ALU_Mmux_result11164_7229 : STD_LOGIC; 
  signal U_ALU_Mmux_result11184_7230 : STD_LOGIC; 
  signal U_ALU_Mmux_result111841 : STD_LOGIC; 
  signal U_ALU_Mmux_result111641 : STD_LOGIC; 
  signal U_ALU_Mmux_result1120412 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_49_7238 : STD_LOGIC; 
  signal ALU_RESULT_4_Q : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_519_7241 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f711_0 : STD_LOGIC; 
  signal U_ALU_Mmux_result11204_7247 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f712_0 : STD_LOGIC; 
  signal U_ALU_Mmux_result11164_1_7261 : STD_LOGIC; 
  signal U_ALU_Mmux_result11184_1_7262 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f713_0 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f714_0 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f715_0 : STD_LOGIC; 
  signal U_ALU_Mmux_result111642 : STD_LOGIC; 
  signal U_ALU_Mmux_result111842 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f711_0 : STD_LOGIC; 
  signal U_ALU_Mmux_result11204_11_7297 : STD_LOGIC; 
  signal U_ALU_Mmux_result11184_2_7302 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f712_0 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f713_0 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f714_0 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f715_0 : STD_LOGIC; 
  signal U_ALU_Mmux_result1118 : STD_LOGIC; 
  signal N81 : STD_LOGIC; 
  signal N80 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f7_0_7475 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f7_0_7484 : STD_LOGIC; 
  signal U_IR_Mram_instruction231115_0 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f71_0 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f72_0 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f73_0 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f74_0 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f75_0 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f76_0 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f77_0 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f78_0 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f710_0 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f71_0 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f72_0 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f73_0 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f74_0 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f75_0 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f76_0 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f77_0 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f78_0 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f710_0 : STD_LOGIC; 
  signal ALU_RESULT_15_Q : STD_LOGIC; 
  signal N225 : STD_LOGIC; 
  signal U_Mux_branch_mux_control_INV_3_o2_7656 : STD_LOGIC; 
  signal U_Mux_branch_mux_control_INV_3_o3_7657 : STD_LOGIC; 
  signal N195 : STD_LOGIC; 
  signal N198 : STD_LOGIC; 
  signal N201 : STD_LOGIC; 
  signal N204 : STD_LOGIC; 
  signal N207 : STD_LOGIC; 
  signal N210 : STD_LOGIC; 
  signal N213 : STD_LOGIC; 
  signal N216 : STD_LOGIC; 
  signal N219 : STD_LOGIC; 
  signal N222 : STD_LOGIC; 
  signal N231 : STD_LOGIC; 
  signal ALU_RESULT_14_Q : STD_LOGIC; 
  signal N234 : STD_LOGIC; 
  signal N237 : STD_LOGIC; 
  signal U_datamemory_n0185_inv1_cepot_7672 : STD_LOGIC; 
  signal ALU_RESULT_1_Q : STD_LOGIC; 
  signal ALU_RESULT_2_Q : STD_LOGIC; 
  signal U_ALU_Mmux_result1122411 : STD_LOGIC; 
  signal U_ALU_Mmux_result112041 : STD_LOGIC; 
  signal U_ALU_Mmux_result112241 : STD_LOGIC; 
  signal U_ALU_Mmux_result112244 : STD_LOGIC; 
  signal U_ALU_Mmux_result112046 : STD_LOGIC; 
  signal U_ALU_Mmux_result1122412 : STD_LOGIC; 
  signal U_ALU_Mmux_result112245 : STD_LOGIC; 
  signal U_ALU_Mmux_result112242 : STD_LOGIC; 
  signal U_ALU_Mmux_result112043 : STD_LOGIC; 
  signal U_ALU_Mmux_result112042 : STD_LOGIC; 
  signal U_datamemory_n0137_inv1_cepot_7685 : STD_LOGIC; 
  signal U_ALU_Mmux_result112248 : STD_LOGIC; 
  signal U_ALU_Mmux_result1120410 : STD_LOGIC; 
  signal U_datamemory_n0141_inv1_cepot_7689 : STD_LOGIC; 
  signal U_ALU_Mmux_result112249 : STD_LOGIC; 
  signal U_ALU_Mmux_result112045 : STD_LOGIC; 
  signal U_ALU_Mmux_result1122410 : STD_LOGIC; 
  signal U_ALU_Mmux_result1120411 : STD_LOGIC; 
  signal U_datamemory_n0153_inv1_cepot_7697 : STD_LOGIC; 
  signal U_ALU_Mmux_result112047 : STD_LOGIC; 
  signal U_datamemory_n0157_inv1_cepot_7699 : STD_LOGIC; 
  signal U_ALU_Mmux_result112247 : STD_LOGIC; 
  signal U_ALU_Mmux_result112049 : STD_LOGIC; 
  signal U_ALU_Mmux_result112246 : STD_LOGIC; 
  signal U_ALU_Mmux_result112243 : STD_LOGIC; 
  signal U_datamemory_n0169_inv1_cepot_7704 : STD_LOGIC; 
  signal U_datamemory_n0173_inv1_cepot_7705 : STD_LOGIC; 
  signal U_ALU_Mmux_result112044 : STD_LOGIC; 
  signal U_datamemory_n0177_inv1_cepot_7707 : STD_LOGIC; 
  signal U_ALU_Mmux_result112048 : STD_LOGIC; 
  signal ALU_RESULT_3_Q : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal U_ALU_controller_alu_signal_3_1_7716 : STD_LOGIC; 
  signal U_ALU_controller_alu_signal_3_2_7717 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N92 : STD_LOGIC; 
  signal U_IR_Mram_instruction121112 : STD_LOGIC; 
  signal U_IR_Mram_instruction1211 : STD_LOGIC; 
  signal U_IR_Mram_instruction12111_7722 : STD_LOGIC; 
  signal U_IR_Mram_instruction31111 : STD_LOGIC; 
  signal N77 : STD_LOGIC; 
  signal U_ALU_Mmux_result1120 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal U_ALU_Mmux_result1122 : STD_LOGIC; 
  signal N75 : STD_LOGIC; 
  signal N74 : STD_LOGIC; 
  signal U_CU_Mmux_alusrc11_7730 : STD_LOGIC; 
  signal U_ALU_Mmux_result1116 : STD_LOGIC; 
  signal N84 : STD_LOGIC; 
  signal N83 : STD_LOGIC; 
  signal U_ALU_Mmux_result11184_3_7735 : STD_LOGIC; 
  signal U_ALU_Mmux_result11164_3_7736 : STD_LOGIC; 
  signal N264 : STD_LOGIC; 
  signal N266 : STD_LOGIC; 
  signal N161 : STD_LOGIC; 
  signal N251 : STD_LOGIC; 
  signal N255 : STD_LOGIC; 
  signal N254 : STD_LOGIC; 
  signal N258 : STD_LOGIC; 
  signal N257 : STD_LOGIC; 
  signal N261 : STD_LOGIC; 
  signal N260 : STD_LOGIC; 
  signal N243 : STD_LOGIC; 
  signal N91 : STD_LOGIC; 
  signal U_IR_Mram_instruction511 : STD_LOGIC; 
  signal N961 : STD_LOGIC; 
  signal U_IR_Mram_instruction51112 : STD_LOGIC; 
  signal N283 : STD_LOGIC; 
  signal U_REG_n0073_inv : STD_LOGIC; 
  signal U_REG_n0081_inv : STD_LOGIC; 
  signal N61 : STD_LOGIC; 
  signal U_IR_Mram_instruction151118 : STD_LOGIC; 
  signal U_REG_n0069_inv : STD_LOGIC; 
  signal U_REG_n0077_inv : STD_LOGIC; 
  signal U_REG_n0085_inv : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal U_REG_n0097_inv : STD_LOGIC; 
  signal U_REG_n0089_inv : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal N181 : STD_LOGIC; 
  signal N182 : STD_LOGIC; 
  signal N116 : STD_LOGIC; 
  signal N117 : STD_LOGIC; 
  signal U_ALU_Mmux_result1110 : STD_LOGIC; 
  signal N279 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal U_IR_Mram_instruction25114 : STD_LOGIC; 
  signal N134 : STD_LOGIC; 
  signal U_ALU_controller_alu_signal_1_11 : STD_LOGIC; 
  signal U_ALU_controller_alu_signal_1_1_7780 : STD_LOGIC; 
  signal N135 : STD_LOGIC; 
  signal U_ALU_Mmux_result11204_1_7783 : STD_LOGIC; 
  signal N119 : STD_LOGIC; 
  signal N120 : STD_LOGIC; 
  signal U_ALU_Mmux_result1112 : STD_LOGIC; 
  signal N281 : STD_LOGIC; 
  signal N282 : STD_LOGIC; 
  signal N187 : STD_LOGIC; 
  signal U_ALU_Mmux_result11224_7791 : STD_LOGIC; 
  signal N313 : STD_LOGIC; 
  signal N122 : STD_LOGIC; 
  signal N123 : STD_LOGIC; 
  signal N188 : STD_LOGIC; 
  signal N63 : STD_LOGIC; 
  signal N189 : STD_LOGIC; 
  signal N101 : STD_LOGIC; 
  signal N102 : STD_LOGIC; 
  signal U_ALU_Mmux_result1130 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal N347 : STD_LOGIC; 
  signal N285 : STD_LOGIC; 
  signal U_ALU_Mmux_result1114 : STD_LOGIC; 
  signal N59 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal N361 : STD_LOGIC; 
  signal N93 : STD_LOGIC; 
  signal U_ALU_Mmux_result1124 : STD_LOGIC; 
  signal N104 : STD_LOGIC; 
  signal N105 : STD_LOGIC; 
  signal U_ALU_Mmux_result1132 : STD_LOGIC; 
  signal N303 : STD_LOGIC; 
  signal N71 : STD_LOGIC; 
  signal N249 : STD_LOGIC; 
  signal N365 : STD_LOGIC; 
  signal N341 : STD_LOGIC; 
  signal N69 : STD_LOGIC; 
  signal N95 : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
  signal U_ALU_Mmux_result1126 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal N359 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal N98 : STD_LOGIC; 
  signal N99 : STD_LOGIC; 
  signal U_ALU_Mmux_result1128 : STD_LOGIC; 
  signal N65 : STD_LOGIC; 
  signal N353 : STD_LOGIC; 
  signal U_IR_Mram_instruction1121 : STD_LOGIC; 
  signal U_IR_Mram_instruction11216 : STD_LOGIC; 
  signal U_IR_Mram_instruction11217_7842 : STD_LOGIC; 
  signal U_IR_Mram_instruction11218_7843 : STD_LOGIC; 
  signal U_IR_Mram_instruction1311 : STD_LOGIC; 
  signal U_IR_Mram_instruction2111 : STD_LOGIC; 
  signal U_IR_Mram_instruction21116_7846 : STD_LOGIC; 
  signal U_IR_Mram_instruction2311 : STD_LOGIC; 
  signal U_IR_Mram_instruction311 : STD_LOGIC; 
  signal U_IR_Mram_instruction3114 : STD_LOGIC; 
  signal U_IR_Mram_instruction23114 : STD_LOGIC; 
  signal U_IR_Mram_instruction1711 : STD_LOGIC; 
  signal U_IR_Mram_instruction51110 : STD_LOGIC; 
  signal U_IR_Mram_instruction25115_7853 : STD_LOGIC; 
  signal U_IR_Mram_instruction25116_7854 : STD_LOGIC; 
  signal N601 : STD_LOGIC; 
  signal N97 : STD_LOGIC; 
  signal U_IR_Mram_instruction271115 : STD_LOGIC; 
  signal U_IR_Mram_instruction271112 : STD_LOGIC; 
  signal U_IR_Mram_instruction2911 : STD_LOGIC; 
  signal N871 : STD_LOGIC; 
  signal N461 : STD_LOGIC; 
  signal N57 : STD_LOGIC; 
  signal N107 : STD_LOGIC; 
  signal N108 : STD_LOGIC; 
  signal U_ALU_Mmux_result114 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal N270 : STD_LOGIC; 
  signal N53 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal N110 : STD_LOGIC; 
  signal N111 : STD_LOGIC; 
  signal U_ALU_Mmux_result116 : STD_LOGIC; 
  signal N273 : STD_LOGIC; 
  signal N184 : STD_LOGIC; 
  signal N185 : STD_LOGIC; 
  signal N113 : STD_LOGIC; 
  signal N114 : STD_LOGIC; 
  signal U_ALU_Mmux_result118 : STD_LOGIC; 
  signal N275 : STD_LOGIC; 
  signal N276 : STD_LOGIC; 
  signal ALU_RESULT_6_Q : STD_LOGIC; 
  signal ALU_RESULT_7_Q : STD_LOGIC; 
  signal ALU_RESULT_8_Q : STD_LOGIC; 
  signal ALU_RESULT_9_Q : STD_LOGIC; 
  signal N191 : STD_LOGIC; 
  signal N192 : STD_LOGIC; 
  signal ALU_RESULT_5_Q : STD_LOGIC; 
  signal U_IR_Mram_instruction211112_7897 : STD_LOGIC; 
  signal U_IR_Mram_instruction231110 : STD_LOGIC; 
  signal U_IR_Mram_instruction231111_7899 : STD_LOGIC; 
  signal U_IR_Mram_instruction23119 : STD_LOGIC; 
  signal U_IR_Mram_instruction251110 : STD_LOGIC; 
  signal N112 : STD_LOGIC; 
  signal N227 : STD_LOGIC; 
  signal N296 : STD_LOGIC; 
  signal N295 : STD_LOGIC; 
  signal N229 : STD_LOGIC; 
  signal N621 : STD_LOGIC; 
  signal U_IR_Mram_instruction9118_7919 : STD_LOGIC; 
  signal U_IR_Mram_instruction9117 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N1111 : STD_LOGIC; 
  signal N1071 : STD_LOGIC; 
  signal N481 : STD_LOGIC; 
  signal N127 : STD_LOGIC; 
  signal N1251 : STD_LOGIC; 
  signal U_IR_Mram_instruction27113 : STD_LOGIC; 
  signal U_IR_Mram_instruction27118 : STD_LOGIC; 
  signal N355 : STD_LOGIC; 
  signal N356 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal U_IR_Mram_instruction29115 : STD_LOGIC; 
  signal U_IR_Mram_instruction29111_7935 : STD_LOGIC; 
  signal N82 : STD_LOGIC; 
  signal N109 : STD_LOGIC; 
  signal N1051 : STD_LOGIC; 
  signal U_IR_Mram_instruction17114 : STD_LOGIC; 
  signal N267 : STD_LOGIC; 
  signal N252 : STD_LOGIC; 
  signal N358 : STD_LOGIC; 
  signal N931 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal U_IR_Mram_instruction231116_7946 : STD_LOGIC; 
  signal N349 : STD_LOGIC; 
  signal N350 : STD_LOGIC; 
  signal N364 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal N49 : STD_LOGIC; 
  signal U_IR_Mram_instruction13115 : STD_LOGIC; 
  signal N41 : STD_LOGIC; 
  signal U_IR_Mram_instruction13116_7954 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal U_IR_Mram_instruction7117 : STD_LOGIC; 
  signal U_IR_Mram_instruction7114 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N263 : STD_LOGIC; 
  signal N352 : STD_LOGIC; 
  signal N248 : STD_LOGIC; 
  signal N362 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal U_IR_Mram_instruction21115 : STD_LOGIC; 
  signal U_IR_Mram_instruction211110 : STD_LOGIC; 
  signal N241 : STD_LOGIC; 
  signal N721 : STD_LOGIC; 
  signal U_IR_Mram_instruction151114 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N33 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_69_7974 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_518_7975 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal U_IR_Mram_instruction9113 : STD_LOGIC; 
  signal U_IR_Mram_instruction911 : STD_LOGIC; 
  signal N661 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal N43 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N37 : STD_LOGIC; 
  signal N39 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal U_IR_Mram_instruction211111_7986 : STD_LOGIC; 
  signal U_IR_Mram_instruction31113_7987 : STD_LOGIC; 
  signal U_IR_Mram_instruction31112_7988 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal N681 : STD_LOGIC; 
  signal U_IR_Mram_instruction11213 : STD_LOGIC; 
  signal U_IR_Mram_instruction11219_7993 : STD_LOGIC; 
  signal N951 : STD_LOGIC; 
  signal N346 : STD_LOGIC; 
  signal N343 : STD_LOGIC; 
  signal N344 : STD_LOGIC; 
  signal N319 : STD_LOGIC; 
  signal N320 : STD_LOGIC; 
  signal N238 : STD_LOGIC; 
  signal U_IR_Mram_instruction5115_8001 : STD_LOGIC; 
  signal N991 : STD_LOGIC; 
  signal N323 : STD_LOGIC; 
  signal N322 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal N421 : STD_LOGIC; 
  signal N240 : STD_LOGIC; 
  signal N305 : STD_LOGIC; 
  signal N304 : STD_LOGIC; 
  signal N228 : STD_LOGIC; 
  signal N278 : STD_LOGIC; 
  signal N301 : STD_LOGIC; 
  signal N302 : STD_LOGIC; 
  signal N272 : STD_LOGIC; 
  signal N325 : STD_LOGIC; 
  signal N326 : STD_LOGIC; 
  signal ALU_RESULT_10_Q : STD_LOGIC; 
  signal ALU_RESULT_11_Q : STD_LOGIC; 
  signal N340 : STD_LOGIC; 
  signal N335 : STD_LOGIC; 
  signal N334 : STD_LOGIC; 
  signal N329 : STD_LOGIC; 
  signal N328 : STD_LOGIC; 
  signal N337 : STD_LOGIC; 
  signal N338 : STD_LOGIC; 
  signal N287 : STD_LOGIC; 
  signal N317 : STD_LOGIC; 
  signal N316 : STD_LOGIC; 
  signal N269 : STD_LOGIC; 
  signal N331 : STD_LOGIC; 
  signal N332 : STD_LOGIC; 
  signal N307 : STD_LOGIC; 
  signal N308 : STD_LOGIC; 
  signal N314 : STD_LOGIC; 
  signal N284 : STD_LOGIC; 
  signal N291 : STD_LOGIC; 
  signal N311 : STD_LOGIC; 
  signal N310 : STD_LOGIC; 
  signal read_data1_0_rt_31 : STD_LOGIC; 
  signal ProtoComp16_CYINITGND_0 : STD_LOGIC; 
  signal U_PC_output_sig_3_rt_149 : STD_LOGIC; 
  signal U_PC_output_sig_4_rt_144 : STD_LOGIC; 
  signal U_PC_output_sig_2_rt_141 : STD_LOGIC; 
  signal clock_BUFGP_IBUFG_1 : STD_LOGIC; 
  signal U_datamemory_data_memory_7_4_dpot_614 : STD_LOGIC; 
  signal U_datamemory_data_memory_7_7_dpot_606 : STD_LOGIC; 
  signal U_datamemory_data_memory_7_6_dpot_603 : STD_LOGIC; 
  signal U_datamemory_data_memory_7_5_dpot_589 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_525_561 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_612_556 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f712 : STD_LOGIC; 
  signal U_datamemory_data_memory_3_4_dpot_540 : STD_LOGIC; 
  signal U_datamemory_data_memory_3_5_dpot_533 : STD_LOGIC; 
  signal U_datamemory_data_memory_3_7_dpot_524 : STD_LOGIC; 
  signal U_datamemory_data_memory_3_6_dpot_523 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_527_577 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_613_572 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f713 : STD_LOGIC; 
  signal U_REG_mux10_4_632 : STD_LOGIC; 
  signal U_REG_mux10_3_629 : STD_LOGIC; 
  signal U_datamemory_data_memory_11_4_dpot_716 : STD_LOGIC; 
  signal U_datamemory_data_memory_11_6_dpot_714 : STD_LOGIC; 
  signal U_datamemory_data_memory_11_5_dpot_699 : STD_LOGIC; 
  signal U_datamemory_data_memory_11_7_dpot_695 : STD_LOGIC; 
  signal U_datamemory_data_memory_5_4_dpot_754 : STD_LOGIC; 
  signal U_datamemory_data_memory_5_7_dpot_746 : STD_LOGIC; 
  signal U_datamemory_data_memory_5_6_dpot_743 : STD_LOGIC; 
  signal U_datamemory_data_memory_5_5_dpot_729 : STD_LOGIC; 
  signal U_datamemory_data_memory_0_4_dpot_787 : STD_LOGIC; 
  signal U_datamemory_data_memory_0_5_dpot_778 : STD_LOGIC; 
  signal U_datamemory_data_memory_0_7_dpot_776 : STD_LOGIC; 
  signal U_datamemory_data_memory_0_6_dpot_775 : STD_LOGIC; 
  signal U_REG_mux9_3_1561 : STD_LOGIC; 
  signal read_data1_3_pack_4 : STD_LOGIC; 
  signal U_REG_mux9_4_1538 : STD_LOGIC; 
  signal U_REG_mux23_3_1572 : STD_LOGIC; 
  signal U_REG_mux23_4_1570 : STD_LOGIC; 
  signal U_REG_mux8_4_1495 : STD_LOGIC; 
  signal U_REG_mux8_3_1492 : STD_LOGIC; 
  signal U_REG_mux25_3_1523 : STD_LOGIC; 
  signal U_REG_mux25_4_1521 : STD_LOGIC; 
  signal N129 : STD_LOGIC; 
  signal U_REG_mux24_3_1507 : STD_LOGIC; 
  signal U_REG_mux24_4_1505 : STD_LOGIC; 
  signal N87_pack_1 : STD_LOGIC; 
  signal N25_pack_6 : STD_LOGIC; 
  signal input_port_0_IBUF_rt_1180 : STD_LOGIC; 
  signal input_port_1_IBUF_rt_1171 : STD_LOGIC; 
  signal input_port_2_IBUF_rt_1167 : STD_LOGIC; 
  signal input_port_3_IBUF_rt_1155 : STD_LOGIC; 
  signal N19_pack_6 : STD_LOGIC; 
  signal U_datamemory_data_memory_4_4_dpot_1255 : STD_LOGIC; 
  signal U_datamemory_data_memory_4_6_dpot_1254 : STD_LOGIC; 
  signal U_datamemory_data_memory_4_5_dpot_1236 : STD_LOGIC; 
  signal U_datamemory_data_memory_4_7_dpot_1234 : STD_LOGIC; 
  signal N132 : STD_LOGIC; 
  signal U_PC_output_sig_13_rt_213 : STD_LOGIC; 
  signal U_PC_output_sig_15_rt_212 : STD_LOGIC; 
  signal U_PC_output_sig_14_rt_210 : STD_LOGIC; 
  signal U_PC_output_sig_11_rt_190 : STD_LOGIC; 
  signal U_PC_output_sig_9_rt_189 : STD_LOGIC; 
  signal U_PC_output_sig_10_rt_187 : STD_LOGIC; 
  signal U_PC_output_sig_12_rt_183 : STD_LOGIC; 
  signal U_PC_output_sig_7_rt_168 : STD_LOGIC; 
  signal U_PC_output_sig_5_rt_167 : STD_LOGIC; 
  signal U_PC_output_sig_6_rt_165 : STD_LOGIC; 
  signal U_PC_output_sig_8_rt_161 : STD_LOGIC; 
  signal input_port_12_IBUF_283 : STD_LOGIC; 
  signal input_port_11_IBUF_280 : STD_LOGIC; 
  signal input_port_10_IBUF_277 : STD_LOGIC; 
  signal ProtoComp19_CYINITGND_0 : STD_LOGIC; 
  signal input_port_13_IBUF_286 : STD_LOGIC; 
  signal input_port_0_IBUF_310 : STD_LOGIC; 
  signal input_port_1_IBUF_313 : STD_LOGIC; 
  signal input_port_5_IBUF_325 : STD_LOGIC; 
  signal input_port_6_IBUF_328 : STD_LOGIC; 
  signal input_port_2_IBUF_316 : STD_LOGIC; 
  signal input_port_15_IBUF_292 : STD_LOGIC; 
  signal input_port_3_IBUF_319 : STD_LOGIC; 
  signal input_port_4_IBUF_322 : STD_LOGIC; 
  signal input_port_14_IBUF_289 : STD_LOGIC; 
  signal reset_IBUF_307 : STD_LOGIC; 
  signal input_port_7_IBUF_331 : STD_LOGIC; 
  signal input_port_9_IBUF_337 : STD_LOGIC; 
  signal input_port_8_IBUF_334 : STD_LOGIC; 
  signal U_datamemory_data_memory_2_4_dpot_413 : STD_LOGIC; 
  signal U_datamemory_data_memory_2_5_dpot_404 : STD_LOGIC; 
  signal U_datamemory_data_memory_2_7_dpot_402 : STD_LOGIC; 
  signal U_datamemory_data_memory_2_6_dpot_401 : STD_LOGIC; 
  signal U_datamemory_data_memory_1_4_dpot_499 : STD_LOGIC; 
  signal U_datamemory_data_memory_1_5_dpot_490 : STD_LOGIC; 
  signal U_datamemory_data_memory_1_7_dpot_488 : STD_LOGIC; 
  signal U_datamemory_data_memory_1_6_dpot_487 : STD_LOGIC; 
  signal U_IR_Mram_instruction231115 : STD_LOGIC; 
  signal N1291 : STD_LOGIC; 
  signal U_REG_mux26_3_425 : STD_LOGIC; 
  signal U_REG_mux26_4_423 : STD_LOGIC; 
  signal U_datamemory_data_memory_6_4_dpot_462 : STD_LOGIC; 
  signal U_datamemory_data_memory_6_6_dpot_461 : STD_LOGIC; 
  signal U_datamemory_data_memory_6_5_dpot_443 : STD_LOGIC; 
  signal U_datamemory_data_memory_6_7_dpot_441 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_521_378 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_610_373 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f710 : STD_LOGIC; 
  signal U_REG_mux13_3_965 : STD_LOGIC; 
  signal read_data1_7_pack_3 : STD_LOGIC; 
  signal U_REG_mux13_4_960 : STD_LOGIC; 
  signal U_REG_mux16_3_850 : STD_LOGIC; 
  signal U_REG_mux16_4_848 : STD_LOGIC; 
  signal U_REG_mux29_3_945 : STD_LOGIC; 
  signal U_REG_mux29_4_943 : STD_LOGIC; 
  signal N373 : STD_LOGIC; 
  signal N374 : STD_LOGIC; 
  signal ALU_RESULT_0_pack_7 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_523_894 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f711 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_611_885 : STD_LOGIC; 
  signal U_REG_mux_4_874 : STD_LOGIC; 
  signal U_REG_mux_3_871 : STD_LOGIC; 
  signal U_REG_mux12_4_933 : STD_LOGIC; 
  signal U_REG_mux12_3_930 : STD_LOGIC; 
  signal N8_pack_4 : STD_LOGIC; 
  signal N49_pack_6 : STD_LOGIC; 
  signal U_REG_mux11_3_1592 : STD_LOGIC; 
  signal read_data1_5_pack_3 : STD_LOGIC; 
  signal U_REG_mux11_4_1587 : STD_LOGIC; 
  signal U_REG_mux28_3_1614 : STD_LOGIC; 
  signal U_REG_mux28_4_1612 : STD_LOGIC; 
  signal U_REG_mux7_3_1640 : STD_LOGIC; 
  signal U_REG_mux7_4_1631 : STD_LOGIC; 
  signal N126_pack_1 : STD_LOGIC; 
  signal N28_pack_6 : STD_LOGIC; 
  signal N90 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_517_2300 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_68_2295 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f78 : STD_LOGIC; 
  signal U_REG_mux27_3_2384 : STD_LOGIC; 
  signal U_REG_mux27_4_2382 : STD_LOGIC; 
  signal N22_pack_6 : STD_LOGIC; 
  signal U_datamemory_data_memory_2_0_dpot_2249 : STD_LOGIC; 
  signal U_datamemory_data_memory_2_1_dpot_2240 : STD_LOGIC; 
  signal U_datamemory_data_memory_2_3_dpot_2238 : STD_LOGIC; 
  signal U_datamemory_data_memory_2_2_dpot_2237 : STD_LOGIC; 
  signal U_datamemory_data_memory_0_0_dpot_2284 : STD_LOGIC; 
  signal U_datamemory_data_memory_0_1_dpot_2275 : STD_LOGIC; 
  signal U_datamemory_data_memory_0_3_dpot_2273 : STD_LOGIC; 
  signal U_datamemory_data_memory_0_2_dpot_2272 : STD_LOGIC; 
  signal N34_pack_6 : STD_LOGIC; 
  signal N376 : STD_LOGIC; 
  signal N375 : STD_LOGIC; 
  signal write_data_level2_3_pack_7 : STD_LOGIC; 
  signal N43_pack_9 : STD_LOGIC; 
  signal N37_pack_6 : STD_LOGIC; 
  signal N40_pack_6 : STD_LOGIC; 
  signal U_datamemory_data_memory_1_0_dpot_2650 : STD_LOGIC; 
  signal U_datamemory_data_memory_1_1_dpot_2641 : STD_LOGIC; 
  signal U_datamemory_data_memory_1_3_dpot_2639 : STD_LOGIC; 
  signal U_datamemory_data_memory_1_2_dpot_2638 : STD_LOGIC; 
  signal N46_pack_4 : STD_LOGIC; 
  signal J_R_sig_pack_2 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal U_datamemory_data_memory_3_0_dpot_2680 : STD_LOGIC; 
  signal U_datamemory_data_memory_3_1_dpot_2673 : STD_LOGIC; 
  signal U_datamemory_data_memory_3_3_dpot_2664 : STD_LOGIC; 
  signal U_datamemory_data_memory_3_2_dpot_2663 : STD_LOGIC; 
  signal N382 : STD_LOGIC; 
  signal N381 : STD_LOGIC; 
  signal N238_pack_5 : STD_LOGIC; 
  signal U_datamemory_data_memory_5_0_dpot_3227 : STD_LOGIC; 
  signal U_datamemory_data_memory_5_3_dpot_3219 : STD_LOGIC; 
  signal U_datamemory_data_memory_5_2_dpot_3216 : STD_LOGIC; 
  signal U_datamemory_data_memory_5_1_dpot_3202 : STD_LOGIC; 
  signal U_datamemory_data_memory_6_0_dpot_3188 : STD_LOGIC; 
  signal U_datamemory_data_memory_6_2_dpot_3187 : STD_LOGIC; 
  signal U_datamemory_data_memory_6_1_dpot_3169 : STD_LOGIC; 
  signal U_datamemory_data_memory_6_3_dpot_3167 : STD_LOGIC; 
  signal N31_pack_1 : STD_LOGIC; 
  signal N380 : STD_LOGIC; 
  signal N235 : STD_LOGIC; 
  signal N379 : STD_LOGIC; 
  signal U_datamemory_data_memory_4_0_dpot_3258 : STD_LOGIC; 
  signal U_datamemory_data_memory_4_2_dpot_3257 : STD_LOGIC; 
  signal U_datamemory_data_memory_4_1_dpot_3239 : STD_LOGIC; 
  signal U_datamemory_data_memory_4_3_dpot_3237 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_515_2937 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_67_2932 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f77 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_51_2886 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_6_2881 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f7_2880 : STD_LOGIC; 
  signal U_datamemory_data_memory_7_0_dpot_2923 : STD_LOGIC; 
  signal U_datamemory_data_memory_7_3_dpot_2915 : STD_LOGIC; 
  signal U_datamemory_data_memory_7_2_dpot_2912 : STD_LOGIC; 
  signal U_datamemory_data_memory_7_1_dpot_2898 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_3428 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_5_3418 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f7_3417 : STD_LOGIC; 
  signal U_datamemory_data_memory_9_0_dpot_3469 : STD_LOGIC; 
  signal U_datamemory_data_memory_9_2_dpot_3467 : STD_LOGIC; 
  signal U_datamemory_data_memory_9_1_dpot_3452 : STD_LOGIC; 
  signal U_datamemory_data_memory_9_3_dpot_3448 : STD_LOGIC; 
  signal U_datamemory_data_memory_10_4_dpot_3505 : STD_LOGIC; 
  signal U_datamemory_data_memory_10_5_dpot_3502 : STD_LOGIC; 
  signal U_datamemory_data_memory_10_7_dpot_3492 : STD_LOGIC; 
  signal U_datamemory_data_memory_10_6_dpot_3485 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_412_3529 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_524_3522 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f712 : STD_LOGIC; 
  signal U_REG_mux5_4_3800 : STD_LOGIC; 
  signal read_data1_14_pack_8 : STD_LOGIC; 
  signal U_REG_mux5_3_3790 : STD_LOGIC; 
  signal N378 : STD_LOGIC; 
  signal N377 : STD_LOGIC; 
  signal N232 : STD_LOGIC; 
  signal read_data2_14_pack_5 : STD_LOGIC; 
  signal U_REG_mux21_4_3762 : STD_LOGIC; 
  signal U_REG_mux21_3_3754 : STD_LOGIC; 
  signal U_REG_mux19_3_3674 : STD_LOGIC; 
  signal U_REG_mux19_4_3672 : STD_LOGIC; 
  signal U_REG_mux14_3_3578 : STD_LOGIC; 
  signal read_data1_8_pack_3 : STD_LOGIC; 
  signal U_REG_mux14_4_3573 : STD_LOGIC; 
  signal U_REG_mux3_3_3658 : STD_LOGIC; 
  signal U_REG_mux3_4_3645 : STD_LOGIC; 
  signal read_data1_12_pack_4 : STD_LOGIC; 
  signal U_datamemory_data_memory_9_4_dpot_3875 : STD_LOGIC; 
  signal U_datamemory_data_memory_9_6_dpot_3873 : STD_LOGIC; 
  signal U_datamemory_data_memory_9_5_dpot_3858 : STD_LOGIC; 
  signal U_datamemory_data_memory_9_7_dpot_3854 : STD_LOGIC; 
  signal U_datamemory_data_memory_14_0_dpot_3849 : STD_LOGIC; 
  signal U_datamemory_data_memory_14_2_dpot_3825 : STD_LOGIC; 
  signal U_datamemory_data_memory_14_1_dpot_3822 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f77 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_514_5012 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_47_5009 : STD_LOGIC; 
  signal U_datamemory_data_memory_15_0_dpot_5053 : STD_LOGIC; 
  signal U_datamemory_data_memory_15_2_dpot_5049 : STD_LOGIC; 
  signal U_datamemory_data_memory_15_1_dpot_5047 : STD_LOGIC; 
  signal U_datamemory_data_memory_15_3_dpot_5032 : STD_LOGIC; 
  signal U_datamemory_data_memory_12_3_dpot_3952 : STD_LOGIC; 
  signal U_datamemory_data_memory_12_6_dpot_3941 : STD_LOGIC; 
  signal U_datamemory_data_memory_12_4_dpot_3929 : STD_LOGIC; 
  signal U_datamemory_data_memory_12_5_dpot_3923 : STD_LOGIC; 
  signal U_datamemory_data_memory_14_3_dpot_3986 : STD_LOGIC; 
  signal U_datamemory_data_memory_14_5_dpot_3982 : STD_LOGIC; 
  signal U_datamemory_data_memory_14_4_dpot_3980 : STD_LOGIC; 
  signal U_datamemory_data_memory_14_6_dpot_3965 : STD_LOGIC; 
  signal U_datamemory_data_memory_13_4_dpot_3916 : STD_LOGIC; 
  signal U_datamemory_data_memory_13_6_dpot_3912 : STD_LOGIC; 
  signal U_datamemory_data_memory_13_5_dpot_3910 : STD_LOGIC; 
  signal U_datamemory_data_memory_13_7_dpot_3895 : STD_LOGIC; 
  signal U_datamemory_data_memory_10_0_dpot_4119 : STD_LOGIC; 
  signal U_datamemory_data_memory_10_1_dpot_4116 : STD_LOGIC; 
  signal U_datamemory_data_memory_10_3_dpot_4106 : STD_LOGIC; 
  signal U_datamemory_data_memory_10_2_dpot_4099 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f711 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_522_4190 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_411_4188 : STD_LOGIC; 
  signal U_REG_mux1_3_4273 : STD_LOGIC; 
  signal read_data1_10_pack_3 : STD_LOGIC; 
  signal U_REG_mux1_4_4268 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f710 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_520_4157 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_410_4154 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f78 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_516_4134 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_48_4131 : STD_LOGIC; 
  signal U_REG_mux30_3_4237 : STD_LOGIC; 
  signal U_REG_mux30_4_4235 : STD_LOGIC; 
  signal U_REG_mux15_3_4316 : STD_LOGIC; 
  signal U_REG_mux15_4_4314 : STD_LOGIC; 
  signal read_data1_9_pack_8 : STD_LOGIC; 
  signal U_REG_mux17_3_4253 : STD_LOGIC; 
  signal U_REG_mux17_4_4251 : STD_LOGIC; 
  signal U_REG_mux31_3_4295 : STD_LOGIC; 
  signal U_REG_mux31_4_4293 : STD_LOGIC; 
  signal U_datamemory_data_memory_8_4_dpot_4642 : STD_LOGIC; 
  signal U_datamemory_data_memory_8_5_dpot_4639 : STD_LOGIC; 
  signal U_datamemory_data_memory_8_7_dpot_4629 : STD_LOGIC; 
  signal U_datamemory_data_memory_8_6_dpot_4622 : STD_LOGIC; 
  signal U_datamemory_data_memory_8_0_dpot_4607 : STD_LOGIC; 
  signal U_datamemory_data_memory_8_1_dpot_4604 : STD_LOGIC; 
  signal U_datamemory_data_memory_8_3_dpot_4594 : STD_LOGIC; 
  signal U_datamemory_data_memory_8_2_dpot_4587 : STD_LOGIC; 
  signal U_datamemory_data_memory_11_0_dpot_4571 : STD_LOGIC; 
  signal U_datamemory_data_memory_11_2_dpot_4569 : STD_LOGIC; 
  signal U_datamemory_data_memory_11_1_dpot_4554 : STD_LOGIC; 
  signal U_datamemory_data_memory_11_3_dpot_4550 : STD_LOGIC; 
  signal U_REG_mux4_4_4491 : STD_LOGIC; 
  signal read_data1_13_pack_9 : STD_LOGIC; 
  signal U_REG_mux4_3_4482 : STD_LOGIC; 
  signal regdst_sig : STD_LOGIC; 
  signal U_datamemory_data_memory_15_4_dpot_4682 : STD_LOGIC; 
  signal U_datamemory_data_memory_15_6_dpot_4678 : STD_LOGIC; 
  signal U_datamemory_data_memory_15_5_dpot_4676 : STD_LOGIC; 
  signal U_datamemory_data_memory_15_7_dpot_4661 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_41_5145 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f71 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_52_5126 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f713 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_526_5070 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_413_5067 : STD_LOGIC; 
  signal U_datamemory_data_memory_12_15_dpot_5226 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_65_5269 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f75 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_511_5263 : STD_LOGIC; 
  signal U_datamemory_data_memory_14_15_dpot_5206 : STD_LOGIC; 
  signal memwrite_sig_pack_7 : STD_LOGIC; 
  signal U_datamemory_data_memory_14_7_dpot_5118 : STD_LOGIC; 
  signal U_datamemory_data_memory_14_9_dpot_5114 : STD_LOGIC; 
  signal U_datamemory_data_memory_14_8_dpot_5112 : STD_LOGIC; 
  signal U_datamemory_data_memory_14_10_dpot_5097 : STD_LOGIC; 
  signal U_datamemory_data_memory_12_0_dpot_5177 : STD_LOGIC; 
  signal U_datamemory_data_memory_12_1_dpot_5163 : STD_LOGIC; 
  signal U_datamemory_data_memory_12_2_dpot_5158 : STD_LOGIC; 
  signal U_REG_mux2_4_5371 : STD_LOGIC; 
  signal read_data1_11_pack_8 : STD_LOGIC; 
  signal U_REG_mux2_3_5361 : STD_LOGIC; 
  signal U_REG_mux18_3_5342 : STD_LOGIC; 
  signal U_REG_mux18_4_5340 : STD_LOGIC; 
  signal U_REG_mux22_3_5420 : STD_LOGIC; 
  signal U_REG_mux22_4_5417 : STD_LOGIC; 
  signal read_data2_15_pack_4 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_59_5330 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_64_5325 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f74 : STD_LOGIC; 
  signal U_datamemory_data_memory_12_7_dpot_5552 : STD_LOGIC; 
  signal U_datamemory_data_memory_12_10_dpot_5541 : STD_LOGIC; 
  signal U_datamemory_data_memory_12_8_dpot_5529 : STD_LOGIC; 
  signal U_datamemory_data_memory_12_9_dpot_5523 : STD_LOGIC; 
  signal U_REG_mux20_3_5390 : STD_LOGIC; 
  signal U_REG_mux20_4_5388 : STD_LOGIC; 
  signal U_datamemory_data_memory_13_0_dpot_5516 : STD_LOGIC; 
  signal U_datamemory_data_memory_13_2_dpot_5512 : STD_LOGIC; 
  signal U_datamemory_data_memory_13_1_dpot_5510 : STD_LOGIC; 
  signal U_datamemory_data_memory_13_3_dpot_5495 : STD_LOGIC; 
  signal U_REG_mux6_3_5437 : STD_LOGIC; 
  signal U_REG_mux6_4_5432 : STD_LOGIC; 
  signal read_data1_15_pack_4 : STD_LOGIC; 
  signal U_datamemory_data_memory_0_12_dpot_5620 : STD_LOGIC; 
  signal U_datamemory_data_memory_0_13_dpot_5611 : STD_LOGIC; 
  signal U_datamemory_data_memory_0_15_dpot_5609 : STD_LOGIC; 
  signal U_datamemory_data_memory_0_14_dpot_5608 : STD_LOGIC; 
  signal U_datamemory_data_memory_7_8_dpot_5778 : STD_LOGIC; 
  signal U_datamemory_data_memory_7_11_dpot_5770 : STD_LOGIC; 
  signal U_datamemory_data_memory_7_10_dpot_5767 : STD_LOGIC; 
  signal U_datamemory_data_memory_7_9_dpot_5753 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_45_5842 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f75 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_510_5833 : STD_LOGIC; 
  signal U_datamemory_data_memory_1_12_dpot_5655 : STD_LOGIC; 
  signal U_datamemory_data_memory_1_13_dpot_5646 : STD_LOGIC; 
  signal U_datamemory_data_memory_1_15_dpot_5644 : STD_LOGIC; 
  signal U_datamemory_data_memory_1_14_dpot_5643 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f76 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_512_5808 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_46_5806 : STD_LOGIC; 
  signal U_datamemory_data_memory_3_12_dpot_6068 : STD_LOGIC; 
  signal U_datamemory_data_memory_3_13_dpot_6061 : STD_LOGIC; 
  signal U_datamemory_data_memory_3_15_dpot_6052 : STD_LOGIC; 
  signal U_datamemory_data_memory_3_14_dpot_6051 : STD_LOGIC; 
  signal U_datamemory_data_memory_2_12_dpot_6003 : STD_LOGIC; 
  signal U_datamemory_data_memory_2_13_dpot_5994 : STD_LOGIC; 
  signal U_datamemory_data_memory_2_15_dpot_5992 : STD_LOGIC; 
  signal U_datamemory_data_memory_2_14_dpot_5991 : STD_LOGIC; 
  signal U_datamemory_data_memory_5_12_dpot_6040 : STD_LOGIC; 
  signal U_datamemory_data_memory_5_15_dpot_6032 : STD_LOGIC; 
  signal U_datamemory_data_memory_5_14_dpot_6029 : STD_LOGIC; 
  signal U_datamemory_data_memory_5_13_dpot_6015 : STD_LOGIC; 
  signal U_datamemory_data_memory_4_12_dpot_5931 : STD_LOGIC; 
  signal U_datamemory_data_memory_4_14_dpot_5930 : STD_LOGIC; 
  signal U_datamemory_data_memory_4_13_dpot_5912 : STD_LOGIC; 
  signal U_datamemory_data_memory_4_15_dpot_5910 : STD_LOGIC; 
  signal U_datamemory_data_memory_7_12_dpot_6110 : STD_LOGIC; 
  signal U_datamemory_data_memory_7_15_dpot_6102 : STD_LOGIC; 
  signal U_datamemory_data_memory_7_14_dpot_6099 : STD_LOGIC; 
  signal U_datamemory_data_memory_7_13_dpot_6085 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_513_5903 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f76 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_66_5896 : STD_LOGIC; 
  signal U_datamemory_data_memory_9_12_dpot_5967 : STD_LOGIC; 
  signal U_datamemory_data_memory_9_14_dpot_5965 : STD_LOGIC; 
  signal U_datamemory_data_memory_9_13_dpot_5950 : STD_LOGIC; 
  signal U_datamemory_data_memory_9_15_dpot_5946 : STD_LOGIC; 
  signal U_datamemory_data_memory_15_12_dpot_5873 : STD_LOGIC; 
  signal U_datamemory_data_memory_15_14_dpot_5869 : STD_LOGIC; 
  signal U_datamemory_data_memory_15_13_dpot_5867 : STD_LOGIC; 
  signal U_datamemory_data_memory_15_15_dpot_5852 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f714 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_528_6209 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_414_6206 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f72 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_42_6222 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_54_6220 : STD_LOGIC; 
  signal U_datamemory_data_memory_8_8_dpot_6143 : STD_LOGIC; 
  signal U_datamemory_data_memory_8_9_dpot_6140 : STD_LOGIC; 
  signal U_datamemory_data_memory_8_11_dpot_6130 : STD_LOGIC; 
  signal U_datamemory_data_memory_8_10_dpot_6123 : STD_LOGIC; 
  signal U_datamemory_data_memory_10_8_dpot_6178 : STD_LOGIC; 
  signal U_datamemory_data_memory_10_9_dpot_6175 : STD_LOGIC; 
  signal U_datamemory_data_memory_10_11_dpot_6165 : STD_LOGIC; 
  signal U_datamemory_data_memory_10_10_dpot_6158 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f715 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_530_6193 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_415_6190 : STD_LOGIC; 
  signal U_datamemory_data_memory_15_8_dpot_6381 : STD_LOGIC; 
  signal U_datamemory_data_memory_15_10_dpot_6377 : STD_LOGIC; 
  signal U_datamemory_data_memory_15_9_dpot_6375 : STD_LOGIC; 
  signal U_datamemory_data_memory_15_11_dpot_6360 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f714 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_529_6254 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_614_6252 : STD_LOGIC; 
  signal U_datamemory_data_memory_9_8_dpot_6410 : STD_LOGIC; 
  signal U_datamemory_data_memory_9_10_dpot_6408 : STD_LOGIC; 
  signal U_datamemory_data_memory_9_9_dpot_6393 : STD_LOGIC; 
  signal U_datamemory_data_memory_9_11_dpot_6389 : STD_LOGIC; 
  signal U_datamemory_data_memory_14_11_dpot_6314 : STD_LOGIC; 
  signal U_datamemory_data_memory_14_13_dpot_6310 : STD_LOGIC; 
  signal U_datamemory_data_memory_14_12_dpot_6308 : STD_LOGIC; 
  signal U_datamemory_data_memory_14_14_dpot_6293 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_57_6341 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_63_6336 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f73 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_55_6274 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_62_6269 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f72 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f74 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_44_6321 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_58_6319 : STD_LOGIC; 
  signal U_datamemory_data_memory_11_8_dpot_6445 : STD_LOGIC; 
  signal U_datamemory_data_memory_11_10_dpot_6443 : STD_LOGIC; 
  signal U_datamemory_data_memory_11_9_dpot_6428 : STD_LOGIC; 
  signal U_datamemory_data_memory_11_11_dpot_6424 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_53_6242 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_61_6237 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f71 : STD_LOGIC; 
  signal U_datamemory_data_memory_0_8_dpot_6481 : STD_LOGIC; 
  signal U_datamemory_data_memory_0_9_dpot_6472 : STD_LOGIC; 
  signal U_datamemory_data_memory_0_11_dpot_6470 : STD_LOGIC; 
  signal U_datamemory_data_memory_0_10_dpot_6469 : STD_LOGIC; 
  signal U_datamemory_data_memory_10_12_dpot_6586 : STD_LOGIC; 
  signal U_datamemory_data_memory_10_13_dpot_6583 : STD_LOGIC; 
  signal U_datamemory_data_memory_10_15_dpot_6573 : STD_LOGIC; 
  signal U_datamemory_data_memory_10_14_dpot_6566 : STD_LOGIC; 
  signal U_datamemory_data_memory_13_8_dpot_6731 : STD_LOGIC; 
  signal U_datamemory_data_memory_13_10_dpot_6727 : STD_LOGIC; 
  signal U_datamemory_data_memory_13_9_dpot_6725 : STD_LOGIC; 
  signal U_datamemory_data_memory_13_11_dpot_6710 : STD_LOGIC; 
  signal U_datamemory_data_memory_6_12_dpot_6689 : STD_LOGIC; 
  signal U_datamemory_data_memory_6_14_dpot_6688 : STD_LOGIC; 
  signal U_datamemory_data_memory_6_13_dpot_6670 : STD_LOGIC; 
  signal U_datamemory_data_memory_6_15_dpot_6668 : STD_LOGIC; 
  signal U_datamemory_data_memory_12_11_dpot_6662 : STD_LOGIC; 
  signal U_datamemory_data_memory_12_14_dpot_6651 : STD_LOGIC; 
  signal U_datamemory_data_memory_12_12_dpot_6639 : STD_LOGIC; 
  signal U_datamemory_data_memory_12_13_dpot_6633 : STD_LOGIC; 
  signal U_datamemory_data_memory_5_8_dpot_6518 : STD_LOGIC; 
  signal U_datamemory_data_memory_5_11_dpot_6510 : STD_LOGIC; 
  signal U_datamemory_data_memory_5_10_dpot_6507 : STD_LOGIC; 
  signal U_datamemory_data_memory_5_9_dpot_6493 : STD_LOGIC; 
  signal U_datamemory_data_memory_4_8_dpot_6549 : STD_LOGIC; 
  signal U_datamemory_data_memory_4_10_dpot_6548 : STD_LOGIC; 
  signal U_datamemory_data_memory_4_9_dpot_6530 : STD_LOGIC; 
  signal U_datamemory_data_memory_4_11_dpot_6528 : STD_LOGIC; 
  signal U_datamemory_data_memory_8_12_dpot_6621 : STD_LOGIC; 
  signal U_datamemory_data_memory_8_13_dpot_6618 : STD_LOGIC; 
  signal U_datamemory_data_memory_8_15_dpot_6608 : STD_LOGIC; 
  signal U_datamemory_data_memory_8_14_dpot_6601 : STD_LOGIC; 
  signal U_datamemory_data_memory_1_8_dpot_6933 : STD_LOGIC; 
  signal U_datamemory_data_memory_1_9_dpot_6924 : STD_LOGIC; 
  signal U_datamemory_data_memory_1_11_dpot_6922 : STD_LOGIC; 
  signal U_datamemory_data_memory_1_10_dpot_6921 : STD_LOGIC; 
  signal U_datamemory_data_memory_13_12_dpot_6973 : STD_LOGIC; 
  signal U_datamemory_data_memory_13_14_dpot_6969 : STD_LOGIC; 
  signal U_datamemory_data_memory_13_13_dpot_6967 : STD_LOGIC; 
  signal U_datamemory_data_memory_13_15_dpot_6952 : STD_LOGIC; 
  signal U_datamemory_data_memory_2_8_dpot_6812 : STD_LOGIC; 
  signal U_datamemory_data_memory_2_9_dpot_6803 : STD_LOGIC; 
  signal U_datamemory_data_memory_2_11_dpot_6801 : STD_LOGIC; 
  signal U_datamemory_data_memory_2_10_dpot_6800 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f715 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_531_6738 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_615_6736 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f73 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_43_6859 : STD_LOGIC; 
  signal U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_56_6857 : STD_LOGIC; 
  signal U_datamemory_data_memory_6_8_dpot_6896 : STD_LOGIC; 
  signal U_datamemory_data_memory_6_10_dpot_6895 : STD_LOGIC; 
  signal U_datamemory_data_memory_6_9_dpot_6877 : STD_LOGIC; 
  signal U_datamemory_data_memory_6_11_dpot_6875 : STD_LOGIC; 
  signal U_datamemory_data_memory_11_12_dpot_6846 : STD_LOGIC; 
  signal U_datamemory_data_memory_11_14_dpot_6844 : STD_LOGIC; 
  signal U_datamemory_data_memory_11_13_dpot_6829 : STD_LOGIC; 
  signal U_datamemory_data_memory_11_15_dpot_6825 : STD_LOGIC; 
  signal U_datamemory_data_memory_3_8_dpot_6772 : STD_LOGIC; 
  signal U_datamemory_data_memory_3_9_dpot_6765 : STD_LOGIC; 
  signal U_datamemory_data_memory_3_11_dpot_6756 : STD_LOGIC; 
  signal U_datamemory_data_memory_3_10_dpot_6755 : STD_LOGIC; 
  signal NLW_U_ALU_Mmux_result1_rs_xor_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U_ALU_Mmux_result1_rs_xor_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U_ALU_Mmux_result1_rs_xor_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U_ALU_Mmux_result1_rs_xor_15_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U_ALU_Mmux_result1_rs_xor_15_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U_ALU_Mmux_result1_rs_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U_ALU_Mmux_result1_rs_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U_ALU_Mmux_result1_rs_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U_ALU_Mmux_result1_rs_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U_ALU_Mmux_result1_rs_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U_ALU_Mmux_result1_rs_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_5_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_PC_increment_cy_4_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_PC_increment_cy_4_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_PC_increment_cy_4_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_4_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_3_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U_ALU_Mmux_result1_rs_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U_ALU_Mmux_result1_rs_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U_ALU_Mmux_result1_rs_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal NLW_U_BRANCH_BLOCK_Madd_PC_branch_cy_8_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U_BRANCH_BLOCK_Madd_PC_branch_cy_8_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U_BRANCH_BLOCK_Madd_PC_branch_cy_8_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_PC_increment_xor_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_PC_increment_xor_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_PC_increment_xor_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_PC_increment_xor_15_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_PC_increment_xor_15_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_PC_increment_xor_15_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_PC_increment_xor_15_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_PC_increment_xor_15_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_15_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_14_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_13_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_PC_increment_cy_12_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_PC_increment_cy_12_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_PC_increment_cy_12_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_12_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_11_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_10_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_9_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_PC_increment_cy_8_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_PC_increment_cy_8_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Madd_PC_increment_cy_8_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_8_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_7_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_6_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U_BRANCH_BLOCK_Madd_PC_branch_cy_12_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U_BRANCH_BLOCK_Madd_PC_branch_cy_12_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U_BRANCH_BLOCK_Madd_PC_branch_cy_12_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U_BRANCH_BLOCK_Madd_PC_branch_xor_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U_BRANCH_BLOCK_Madd_PC_branch_xor_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U_BRANCH_BLOCK_Madd_PC_branch_xor_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U_BRANCH_BLOCK_Madd_PC_branch_xor_15_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U_BRANCH_BLOCK_Madd_PC_branch_xor_15_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U_BRANCH_BLOCK_Madd_PC_branch_xor_15_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U_BRANCH_BLOCK_Madd_PC_branch_xor_15_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U_BRANCH_BLOCK_Madd_PC_branch_xor_15_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U_BRANCH_BLOCK_Madd_PC_branch_cy_4_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U_BRANCH_BLOCK_Madd_PC_branch_cy_4_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U_BRANCH_BLOCK_Madd_PC_branch_cy_4_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_18_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal instruction_sig : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal read_data1 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U_input_port_output_sig : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal write_register : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal U_PC_output_sig : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal ALU_op_sig : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U_ALU_controller_alu_signal : STD_LOGIC_VECTOR ( 4 downto 3 ); 
  signal read_data2 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U_output_port_output : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U_datamemory_data_memory_0 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U_datamemory_data_memory_1 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U_datamemory_data_memory_3 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U_datamemory_data_memory_2 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U_datamemory_data_memory_8 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U_datamemory_data_memory_9 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U_datamemory_data_memory_11 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U_datamemory_data_memory_10 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal write_data_level2 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U_datamemory_data_memory_12 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U_datamemory_data_memory_13 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U_datamemory_data_memory_15 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U_datamemory_data_memory_14 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U_datamemory_data_memory_4 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U_datamemory_data_memory_5 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U_datamemory_data_memory_7 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U_datamemory_data_memory_6 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U_REG_register_file_4 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U_REG_register_file_5 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U_REG_register_file_7 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U_REG_register_file_6 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U_REG_register_file_0 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U_REG_register_file_1 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U_REG_register_file_3 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U_REG_register_file_2 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal ALUB_sig : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U_ALU_Mmux_result1_rs_lut : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U_ALU_Mmux_result1_split : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Madd_PC_increment_lut : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal PC_increment : STD_LOGIC_VECTOR ( 15 downto 1 ); 
  signal PC_input : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U_BRANCH_BLOCK_Madd_PC_branch_lut : STD_LOGIC_VECTOR ( 15 downto 1 ); 
  signal PC_BRANCH : STD_LOGIC_VECTOR ( 15 downto 1 ); 
begin
  U_ALU_Mmux_result1_split_15_U_ALU_Mmux_result1_split_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_ALU_Mmux_result1_split(15),
      O => U_ALU_Mmux_result1_split_15_0
    );
  U_ALU_Mmux_result1_split_15_U_ALU_Mmux_result1_split_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_ALU_Mmux_result1_split(14),
      O => U_ALU_Mmux_result1_split_14_0
    );
  U_ALU_Mmux_result1_split_15_U_ALU_Mmux_result1_split_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_ALU_Mmux_result1_split(13),
      O => U_ALU_Mmux_result1_split_13_0
    );
  U_ALU_Mmux_result1_split_15_U_ALU_Mmux_result1_split_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_ALU_Mmux_result1_split(12),
      O => U_ALU_Mmux_result1_split_12_0
    );
  U_ALU_Mmux_result1_rs_lut_15_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y35",
      INIT => X"CC3CC33333C33CCC"
    )
    port map (
      ADR0 => '1',
      ADR1 => read_data1(15),
      ADR2 => alusrc_sig,
      ADR3 => instruction_sig(5),
      ADR4 => read_data2(15),
      ADR5 => ALU_op_sig(0),
      O => U_ALU_Mmux_result1_rs_lut(15)
    );
  U_ALU_Mmux_result1_rs_xor_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X8Y35"
    )
    port map (
      CI => U_ALU_Mmux_result1_rs_cy_11_Q_7147,
      CYINIT => '0',
      CO(3) => NLW_U_ALU_Mmux_result1_rs_xor_15_CO_3_UNCONNECTED,
      CO(2) => NLW_U_ALU_Mmux_result1_rs_xor_15_CO_2_UNCONNECTED,
      CO(1) => NLW_U_ALU_Mmux_result1_rs_xor_15_CO_1_UNCONNECTED,
      CO(0) => NLW_U_ALU_Mmux_result1_rs_xor_15_CO_0_UNCONNECTED,
      DI(3) => NLW_U_ALU_Mmux_result1_rs_xor_15_DI_3_UNCONNECTED,
      DI(2) => read_data1(14),
      DI(1) => read_data1(13),
      DI(0) => read_data1(12),
      O(3) => U_ALU_Mmux_result1_split(15),
      O(2) => U_ALU_Mmux_result1_split(14),
      O(1) => U_ALU_Mmux_result1_split(13),
      O(0) => U_ALU_Mmux_result1_split(12),
      S(3) => U_ALU_Mmux_result1_rs_lut(15),
      S(2) => U_ALU_Mmux_result1_rs_lut(14),
      S(1) => U_ALU_Mmux_result1_rs_lut(13),
      S(0) => U_ALU_Mmux_result1_rs_lut(12)
    );
  U_ALU_Mmux_result1_rs_lut_14_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y35",
      INIT => X"CC3CC33333C33CCC"
    )
    port map (
      ADR0 => '1',
      ADR1 => read_data1(14),
      ADR2 => alusrc_sig,
      ADR3 => instruction_sig(5),
      ADR4 => read_data2(14),
      ADR5 => ALU_op_sig(0),
      O => U_ALU_Mmux_result1_rs_lut(14)
    );
  U_ALU_Mmux_result1_rs_lut_13_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y35",
      INIT => X"CC3CC33333C33CCC"
    )
    port map (
      ADR0 => '1',
      ADR1 => read_data1(13),
      ADR2 => alusrc_sig,
      ADR3 => instruction_sig(5),
      ADR4 => read_data2_13_0,
      ADR5 => U_ALU_controller_alu_signal_4_2_7134,
      O => U_ALU_Mmux_result1_rs_lut(13)
    );
  U_ALU_Mmux_result1_rs_lut_12_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y35",
      INIT => X"CC3CC33333C33CCC"
    )
    port map (
      ADR0 => '1',
      ADR1 => read_data1(12),
      ADR2 => alusrc_sig,
      ADR3 => instruction_sig(5),
      ADR4 => read_data2_12_0,
      ADR5 => U_ALU_controller_alu_signal_4_2_7134,
      O => U_ALU_Mmux_result1_rs_lut(12)
    );
  U_ALU_Mmux_result1_rs_cy_3_U_ALU_Mmux_result1_rs_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_ALU_Mmux_result1_split(3),
      O => U_ALU_Mmux_result1_split_3_0
    );
  U_ALU_Mmux_result1_rs_cy_3_U_ALU_Mmux_result1_rs_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_ALU_Mmux_result1_split(2),
      O => U_ALU_Mmux_result1_split_2_0
    );
  U_ALU_Mmux_result1_rs_cy_3_U_ALU_Mmux_result1_rs_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_ALU_Mmux_result1_split(1),
      O => U_ALU_Mmux_result1_split_1_0
    );
  U_ALU_Mmux_result1_rs_cy_3_U_ALU_Mmux_result1_rs_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_ALU_Mmux_result1_split(0),
      O => U_ALU_Mmux_result1_split_0_0
    );
  U_ALU_Mmux_result1_rs_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y32",
      INIT => X"CC33F00F33CC0FF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => instruction_sig(3),
      ADR2 => read_data2_3_0,
      ADR3 => read_data1(3),
      ADR4 => alusrc_sig,
      ADR5 => U_ALU_controller_alu_signal_4_1_7129,
      O => U_ALU_Mmux_result1_rs_lut(3)
    );
  U_ALU_Mmux_result1_rs_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X8Y32"
    )
    port map (
      CI => '0',
      CYINIT => U_ALU_controller_alu_signal(4),
      CO(3) => U_ALU_Mmux_result1_rs_cy_3_Q_7127,
      CO(2) => NLW_U_ALU_Mmux_result1_rs_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_U_ALU_Mmux_result1_rs_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_U_ALU_Mmux_result1_rs_cy_3_CO_0_UNCONNECTED,
      DI(3) => read_data1(3),
      DI(2) => read_data1_2_0,
      DI(1) => read_data1_1_0,
      DI(0) => read_data1_0_rt_31,
      O(3) => U_ALU_Mmux_result1_split(3),
      O(2) => U_ALU_Mmux_result1_split(2),
      O(1) => U_ALU_Mmux_result1_split(1),
      O(0) => U_ALU_Mmux_result1_split(0),
      S(3) => U_ALU_Mmux_result1_rs_lut(3),
      S(2) => U_ALU_Mmux_result1_rs_lut(2),
      S(1) => U_ALU_Mmux_result1_rs_lut(1),
      S(0) => U_ALU_Mmux_result1_rs_lut(0)
    );
  U_ALU_Mmux_result1_rs_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y32",
      INIT => X"CC3CC33333C33CCC"
    )
    port map (
      ADR0 => '1',
      ADR1 => read_data1_2_0,
      ADR2 => alusrc_sig,
      ADR3 => instruction_sig(2),
      ADR4 => read_data2_2_0,
      ADR5 => U_ALU_controller_alu_signal(4),
      O => U_ALU_Mmux_result1_rs_lut(2)
    );
  U_ALU_Mmux_result1_rs_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y32",
      INIT => X"CC3CC33333C33CCC"
    )
    port map (
      ADR0 => '1',
      ADR1 => read_data1_1_0,
      ADR2 => alusrc_sig,
      ADR3 => instruction_sig(1),
      ADR4 => read_data2_1_0,
      ADR5 => U_ALU_controller_alu_signal(4),
      O => U_ALU_Mmux_result1_rs_lut(1)
    );
  U_ALU_Mmux_result1_rs_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y32",
      INIT => X"A695596AA695596A"
    )
    port map (
      ADR0 => read_data1_0_0,
      ADR1 => alusrc_sig,
      ADR2 => instruction_sig(0),
      ADR3 => read_data2_0_0,
      ADR4 => U_ALU_controller_alu_signal(4),
      ADR5 => '1',
      O => U_ALU_Mmux_result1_rs_lut(0)
    );
  read_data1_0_rt : X_LUT5
    generic map(
      LOC => "SLICE_X8Y32",
      INIT => X"AAAAAAAA"
    )
    port map (
      ADR0 => read_data1_0_0,
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => read_data1_0_rt_31
    );
  U_ALU_Mmux_result1_rs_cy_7_U_ALU_Mmux_result1_rs_cy_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_ALU_Mmux_result1_split(7),
      O => U_ALU_Mmux_result1_split_7_0
    );
  U_ALU_Mmux_result1_rs_cy_7_U_ALU_Mmux_result1_rs_cy_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_ALU_Mmux_result1_split(6),
      O => U_ALU_Mmux_result1_split_6_0
    );
  U_ALU_Mmux_result1_rs_cy_7_U_ALU_Mmux_result1_rs_cy_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_ALU_Mmux_result1_split(5),
      O => U_ALU_Mmux_result1_split_5_0
    );
  U_ALU_Mmux_result1_rs_cy_7_U_ALU_Mmux_result1_rs_cy_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_ALU_Mmux_result1_split(4),
      O => U_ALU_Mmux_result1_split_4_0
    );
  U_ALU_Mmux_result1_rs_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y33",
      INIT => X"CC3CC33333C33CCC"
    )
    port map (
      ADR0 => '1',
      ADR1 => read_data1(7),
      ADR2 => alusrc_sig,
      ADR3 => instruction_sig(5),
      ADR4 => read_data2_7_0,
      ADR5 => U_ALU_controller_alu_signal_4_2_7134,
      O => U_ALU_Mmux_result1_rs_lut(7)
    );
  U_ALU_Mmux_result1_rs_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X8Y33"
    )
    port map (
      CI => U_ALU_Mmux_result1_rs_cy_3_Q_7127,
      CYINIT => '0',
      CO(3) => U_ALU_Mmux_result1_rs_cy_7_Q_7138,
      CO(2) => NLW_U_ALU_Mmux_result1_rs_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_U_ALU_Mmux_result1_rs_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_U_ALU_Mmux_result1_rs_cy_7_CO_0_UNCONNECTED,
      DI(3) => read_data1(7),
      DI(2) => read_data1_6_0,
      DI(1) => read_data1(5),
      DI(0) => read_data1_4_0,
      O(3) => U_ALU_Mmux_result1_split(7),
      O(2) => U_ALU_Mmux_result1_split(6),
      O(1) => U_ALU_Mmux_result1_split(5),
      O(0) => U_ALU_Mmux_result1_split(4),
      S(3) => U_ALU_Mmux_result1_rs_lut(7),
      S(2) => U_ALU_Mmux_result1_rs_lut(6),
      S(1) => U_ALU_Mmux_result1_rs_lut(5),
      S(0) => U_ALU_Mmux_result1_rs_lut(4)
    );
  U_ALU_Mmux_result1_rs_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y33",
      INIT => X"CC3CC33333C33CCC"
    )
    port map (
      ADR0 => '1',
      ADR1 => read_data1_6_0,
      ADR2 => alusrc_sig,
      ADR3 => instruction_sig(5),
      ADR4 => read_data2_6_0,
      ADR5 => U_ALU_controller_alu_signal_4_2_7134,
      O => U_ALU_Mmux_result1_rs_lut(6)
    );
  U_ALU_Mmux_result1_rs_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y33",
      INIT => X"CC3CC33333C33CCC"
    )
    port map (
      ADR0 => '1',
      ADR1 => read_data1(5),
      ADR2 => alusrc_sig,
      ADR3 => instruction_sig(5),
      ADR4 => read_data2_5_0,
      ADR5 => U_ALU_controller_alu_signal_4_2_7134,
      O => U_ALU_Mmux_result1_rs_lut(5)
    );
  U_ALU_Mmux_result1_rs_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y33",
      INIT => X"CC33F00F33CC0FF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => instruction_sig(4),
      ADR2 => read_data2_4_0,
      ADR3 => read_data1_4_0,
      ADR4 => alusrc_sig,
      ADR5 => U_ALU_controller_alu_signal_4_1_7129,
      O => U_ALU_Mmux_result1_rs_lut(4)
    );
  Madd_PC_increment_cy_4_Madd_PC_increment_cy_4_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PC_increment(4),
      O => PC_increment_4_0
    );
  Madd_PC_increment_cy_4_Madd_PC_increment_cy_4_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PC_increment(3),
      O => PC_increment_3_0
    );
  Madd_PC_increment_cy_4_Madd_PC_increment_cy_4_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PC_increment(2),
      O => PC_increment_2_0
    );
  Madd_PC_increment_cy_4_Madd_PC_increment_cy_4_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PC_increment(1),
      O => PC_increment_1_0
    );
  U_PC_output_sig_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X6Y44",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U_PC_output_sig(4),
      ADR5 => '1',
      O => U_PC_output_sig_4_rt_144
    );
  N1_5_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y44",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_5_D5LUT_O_UNCONNECTED
    );
  ProtoComp16_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X6Y44"
    )
    port map (
      O => ProtoComp16_CYINITGND_0
    );
  Madd_PC_increment_cy_4_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X6Y44"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp16_CYINITGND_0,
      CO(3) => Madd_PC_increment_cy_4_Q_7165,
      CO(2) => NLW_Madd_PC_increment_cy_4_CO_2_UNCONNECTED,
      CO(1) => NLW_Madd_PC_increment_cy_4_CO_1_UNCONNECTED,
      CO(0) => NLW_Madd_PC_increment_cy_4_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => PC_increment(4),
      O(2) => PC_increment(3),
      O(1) => PC_increment(2),
      O(0) => PC_increment(1),
      S(3) => U_PC_output_sig_4_rt_144,
      S(2) => U_PC_output_sig_3_rt_149,
      S(1) => U_PC_output_sig_2_rt_141,
      S(0) => Madd_PC_increment_lut(1)
    );
  U_PC_output_sig_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X6Y44",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U_PC_output_sig(3),
      ADR5 => '1',
      O => U_PC_output_sig_3_rt_149
    );
  N1_4_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y44",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_4_C5LUT_O_UNCONNECTED
    );
  U_PC_output_sig_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X6Y44",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U_PC_output_sig(2),
      ADR5 => '1',
      O => U_PC_output_sig_2_rt_141
    );
  N1_3_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y44",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_3_B5LUT_O_UNCONNECTED
    );
  Madd_PC_increment_lut_1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y44",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U_PC_output_sig(1),
      ADR5 => '1',
      O => Madd_PC_increment_lut(1)
    );
  N0_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y44",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_A5LUT_O_UNCONNECTED
    );
  clock_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD175",
      PATHPULSE => 115 ps
    )
    port map (
      O => clock_BUFGP_IBUFG_1,
      I => clock
    );
  ProtoComp11_IMUX : X_BUF
    generic map(
      LOC => "PAD175",
      PATHPULSE => 115 ps
    )
    port map (
      I => clock_BUFGP_IBUFG_1,
      O => clock_BUFGP_IBUFG_0
    );
  U_ALU_Mmux_result1_rs_cy_11_U_ALU_Mmux_result1_rs_cy_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_ALU_Mmux_result1_split(11),
      O => U_ALU_Mmux_result1_split_11_0
    );
  U_ALU_Mmux_result1_rs_cy_11_U_ALU_Mmux_result1_rs_cy_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_ALU_Mmux_result1_split(10),
      O => U_ALU_Mmux_result1_split_10_0
    );
  U_ALU_Mmux_result1_rs_cy_11_U_ALU_Mmux_result1_rs_cy_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_ALU_Mmux_result1_split(9),
      O => U_ALU_Mmux_result1_split_9_0
    );
  U_ALU_Mmux_result1_rs_cy_11_U_ALU_Mmux_result1_rs_cy_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_ALU_Mmux_result1_split(8),
      O => U_ALU_Mmux_result1_split_8_0
    );
  U_ALU_Mmux_result1_rs_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y34",
      INIT => X"CC3CC33333C33CCC"
    )
    port map (
      ADR0 => '1',
      ADR1 => read_data1(11),
      ADR2 => alusrc_sig,
      ADR3 => instruction_sig(5),
      ADR4 => read_data2_11_0,
      ADR5 => U_ALU_controller_alu_signal_4_2_7134,
      O => U_ALU_Mmux_result1_rs_lut(11)
    );
  U_ALU_Mmux_result1_rs_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X8Y34"
    )
    port map (
      CI => U_ALU_Mmux_result1_rs_cy_7_Q_7138,
      CYINIT => '0',
      CO(3) => U_ALU_Mmux_result1_rs_cy_11_Q_7147,
      CO(2) => NLW_U_ALU_Mmux_result1_rs_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_U_ALU_Mmux_result1_rs_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_U_ALU_Mmux_result1_rs_cy_11_CO_0_UNCONNECTED,
      DI(3) => read_data1(11),
      DI(2) => read_data1(10),
      DI(1) => read_data1(9),
      DI(0) => read_data1(8),
      O(3) => U_ALU_Mmux_result1_split(11),
      O(2) => U_ALU_Mmux_result1_split(10),
      O(1) => U_ALU_Mmux_result1_split(9),
      O(0) => U_ALU_Mmux_result1_split(8),
      S(3) => U_ALU_Mmux_result1_rs_lut(11),
      S(2) => U_ALU_Mmux_result1_rs_lut(10),
      S(1) => U_ALU_Mmux_result1_rs_lut(9),
      S(0) => U_ALU_Mmux_result1_rs_lut(8)
    );
  U_ALU_Mmux_result1_rs_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y34",
      INIT => X"CC3CC33333C33CCC"
    )
    port map (
      ADR0 => '1',
      ADR1 => read_data1(10),
      ADR2 => alusrc_sig,
      ADR3 => instruction_sig(5),
      ADR4 => read_data2_10_0,
      ADR5 => U_ALU_controller_alu_signal_4_2_7134,
      O => U_ALU_Mmux_result1_rs_lut(10)
    );
  U_ALU_Mmux_result1_rs_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y34",
      INIT => X"CC3CC33333C33CCC"
    )
    port map (
      ADR0 => '1',
      ADR1 => read_data1(9),
      ADR2 => alusrc_sig,
      ADR3 => instruction_sig(5),
      ADR4 => read_data2_9_0,
      ADR5 => U_ALU_controller_alu_signal_4_2_7134,
      O => U_ALU_Mmux_result1_rs_lut(9)
    );
  U_ALU_Mmux_result1_rs_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y34",
      INIT => X"CC3CC33333C33CCC"
    )
    port map (
      ADR0 => '1',
      ADR1 => read_data1(8),
      ADR2 => alusrc_sig,
      ADR3 => instruction_sig(5),
      ADR4 => read_data2_8_0,
      ADR5 => U_ALU_controller_alu_signal_4_2_7134,
      O => U_ALU_Mmux_result1_rs_lut(8)
    );
  U_IR_Mram_instruction271113 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y43",
      INIT => X"0000000000004054"
    )
    port map (
      ADR0 => U_PC_output_sig(8),
      ADR1 => U_PC_output_sig(5),
      ADR2 => U_PC_output_sig(2),
      ADR3 => U_PC_output_sig(1),
      ADR4 => U_PC_output_sig(9),
      ADR5 => N38,
      O => U_IR_Mram_instruction271112
    );
  U_IR_Mram_instruction271113_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y43",
      INIT => X"FFFFFF00FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U_PC_output_sig(14),
      ADR4 => U_PC_output_sig(11),
      ADR5 => U_PC_output_sig(4),
      O => N38
    );
  U_datamemory_data_memory_7_7 : X_FF
    generic map(
      LOC => "SLICE_X2Y25",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_7_7_dpot_606,
      O => U_datamemory_data_memory_7(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_7_7_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X2Y25",
      INIT => X"FB08FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_7_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112249,
      ADR3 => U_datamemory_data_memory_7(7),
      ADR4 => U_ALU_Mmux_result1120411,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_7_7_dpot_606
    );
  U_datamemory_data_memory_7_6 : X_FF
    generic map(
      LOC => "SLICE_X2Y25",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_7_6_dpot_603,
      O => U_datamemory_data_memory_7(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_7_6_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X2Y25",
      INIT => X"FB08FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_6_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112249,
      ADR3 => U_datamemory_data_memory_7(6),
      ADR4 => U_ALU_Mmux_result1120411,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_7_6_dpot_603
    );
  U_datamemory_data_memory_7_5 : X_FF
    generic map(
      LOC => "SLICE_X2Y25",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_7_5_dpot_589,
      O => U_datamemory_data_memory_7(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_7_5_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X2Y25",
      INIT => X"FB08FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_5_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112249,
      ADR3 => U_datamemory_data_memory_7(5),
      ADR4 => U_ALU_Mmux_result1120411,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_7_5_dpot_589
    );
  U_datamemory_data_memory_7_4 : X_FF
    generic map(
      LOC => "SLICE_X2Y25",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_7_4_dpot_614,
      O => U_datamemory_data_memory_7(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_7_4_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X2Y25",
      INIT => X"FB08FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_4_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112249,
      ADR3 => U_datamemory_data_memory_7(4),
      ADR4 => U_ALU_Mmux_result1120411,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_7_4_dpot_614
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f712_U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f712_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f712,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f712_0
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f7_11 : X_MUX2
    generic map(
      LOC => "SLICE_X2Y23"
    )
    port map (
      IA => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_612_556,
      IB => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_525_561,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f712,
      SEL => U_ALU_Mmux_result11204_11_7297
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_612 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y23",
      INIT => X"F0F0CCCCFF00AAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_0(6),
      ADR1 => U_datamemory_data_memory_1(6),
      ADR2 => U_datamemory_data_memory_3(6),
      ADR3 => U_datamemory_data_memory_2(6),
      ADR4 => U_ALU_Mmux_result11184_2_7302,
      ADR5 => U_ALU_Mmux_result111641,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_612_556
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_525 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y23",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_4(6),
      ADR1 => U_datamemory_data_memory_5(6),
      ADR2 => U_datamemory_data_memory_7(6),
      ADR3 => U_datamemory_data_memory_6(6),
      ADR4 => U_ALU_Mmux_result111642,
      ADR5 => U_ALU_Mmux_result111842,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_525_561
    );
  U_datamemory_data_memory_3_7 : X_FF
    generic map(
      LOC => "SLICE_X2Y22",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_3_7_dpot_524,
      O => U_datamemory_data_memory_3(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_3_7_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X2Y22",
      INIT => X"FF00FB08FF00FF00"
    )
    port map (
      ADR0 => read_data2_7_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112242,
      ADR3 => U_datamemory_data_memory_3(7),
      ADR4 => U_ALU_Mmux_result112043,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_3_7_dpot_524
    );
  U_datamemory_data_memory_3_6 : X_FF
    generic map(
      LOC => "SLICE_X2Y22",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_3_6_dpot_523,
      O => U_datamemory_data_memory_3(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_3_6_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X2Y22",
      INIT => X"FF00FB08FF00FF00"
    )
    port map (
      ADR0 => read_data2_6_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112242,
      ADR3 => U_datamemory_data_memory_3(6),
      ADR4 => U_ALU_Mmux_result112043,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_3_6_dpot_523
    );
  U_datamemory_data_memory_3_5 : X_FF
    generic map(
      LOC => "SLICE_X2Y22",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_3_5_dpot_533,
      O => U_datamemory_data_memory_3(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_3_5_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X2Y22",
      INIT => X"FF00FB08FF00FF00"
    )
    port map (
      ADR0 => read_data2_5_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112242,
      ADR3 => U_datamemory_data_memory_3(5),
      ADR4 => U_ALU_Mmux_result112043,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_3_5_dpot_533
    );
  U_datamemory_data_memory_3_4 : X_FF
    generic map(
      LOC => "SLICE_X2Y22",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_3_4_dpot_540,
      O => U_datamemory_data_memory_3(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_3_4_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X2Y22",
      INIT => X"FF00FB08FF00FF00"
    )
    port map (
      ADR0 => read_data2_4_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112242,
      ADR3 => U_datamemory_data_memory_3(4),
      ADR4 => U_ALU_Mmux_result112043,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_3_4_dpot_540
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f713_U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f713_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f713,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f713_0
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f7_12 : X_MUX2
    generic map(
      LOC => "SLICE_X2Y24"
    )
    port map (
      IA => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_613_572,
      IB => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_527_577,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f713,
      SEL => U_ALU_Mmux_result11204_11_7297
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_613 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y24",
      INIT => X"F0F0CCCCFF00AAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_0(7),
      ADR1 => U_datamemory_data_memory_1(7),
      ADR2 => U_datamemory_data_memory_3(7),
      ADR3 => U_datamemory_data_memory_2(7),
      ADR4 => U_ALU_Mmux_result11184_2_7302,
      ADR5 => U_ALU_Mmux_result111642,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_613_572
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_527 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y24",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_4(7),
      ADR1 => U_datamemory_data_memory_5(7),
      ADR2 => U_datamemory_data_memory_7(7),
      ADR3 => U_datamemory_data_memory_6(7),
      ADR4 => U_ALU_Mmux_result111642,
      ADR5 => U_ALU_Mmux_result111842,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_527_577
    );
  U_REG_register_file_4_3 : X_FF
    generic map(
      LOC => "SLICE_X2Y21",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0081_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(3),
      O => U_REG_register_file_4(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_4_2 : X_FF
    generic map(
      LOC => "SLICE_X2Y21",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0081_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(2),
      O => U_REG_register_file_4(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_4_1 : X_FF
    generic map(
      LOC => "SLICE_X2Y21",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0081_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(1),
      O => U_REG_register_file_4(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_4_0 : X_FF
    generic map(
      LOC => "SLICE_X2Y21",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0081_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(0),
      O => U_REG_register_file_4(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_output_port_output_4_U_output_port_output_4_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => read_data1(4),
      O => read_data1_4_0
    );
  U_REG_mux10_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X2Y27"
    )
    port map (
      IA => U_REG_mux10_4_632,
      IB => U_REG_mux10_3_629,
      O => read_data1(4),
      SEL => instruction_sig(11)
    );
  U_REG_mux10_4 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y27",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_0(4),
      ADR1 => U_REG_register_file_1(4),
      ADR2 => U_REG_register_file_3(4),
      ADR3 => U_REG_register_file_2(4),
      ADR4 => instruction_sig(9),
      ADR5 => instruction_sig(10),
      O => U_REG_mux10_4_632
    );
  U_output_port_output_4 : X_FF
    generic map(
      LOC => "SLICE_X2Y27",
      INIT => '0'
    )
    port map (
      CE => output_enable,
      CLK => clock_BUFGP,
      I => read_data1(4),
      O => U_output_port_output(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_mux10_3 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y27",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_4(4),
      ADR1 => U_REG_register_file_5(4),
      ADR2 => U_REG_register_file_7(4),
      ADR3 => U_REG_register_file_6(4),
      ADR4 => instruction_sig(9),
      ADR5 => instruction_sig(10),
      O => U_REG_mux10_3_629
    );
  U_IR_Mram_instruction312119_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y44",
      INIT => X"0101001111001010"
    )
    port map (
      ADR0 => U_PC_output_sig(14),
      ADR1 => U_PC_output_sig(11),
      ADR2 => U_PC_output_sig(2),
      ADR3 => U_PC_output_sig(1),
      ADR4 => U_PC_output_sig(3),
      ADR5 => U_PC_output_sig(4),
      O => N1071
    );
  U_IR_Mram_instruction12111 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y44",
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => U_PC_output_sig(15),
      ADR1 => U_PC_output_sig(7),
      ADR2 => U_PC_output_sig(10),
      ADR3 => U_PC_output_sig(13),
      ADR4 => U_PC_output_sig(12),
      ADR5 => U_PC_output_sig(6),
      O => U_IR_Mram_instruction1211
    );
  U_IR_Mram_instruction312119 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y44",
      INIT => X"0500000027002200"
    )
    port map (
      ADR0 => U_PC_output_sig(5),
      ADR1 => N91,
      ADR2 => N112,
      ADR3 => U_IR_Mram_instruction1211,
      ADR4 => N1071,
      ADR5 => N1111,
      O => instruction_sig(15)
    );
  U_IR_Mram_instruction312119_SW1_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y44",
      INIT => X"FFFBFFFBFFABFFBE"
    )
    port map (
      ADR0 => U_PC_output_sig(8),
      ADR1 => U_PC_output_sig(2),
      ADR2 => U_PC_output_sig(3),
      ADR3 => U_PC_output_sig(9),
      ADR4 => U_PC_output_sig(1),
      ADR5 => U_PC_output_sig(4),
      O => N1111
    );
  U_datamemory_data_memory_11_7 : X_FF
    generic map(
      LOC => "SLICE_X3Y17",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_11_7_dpot_695,
      O => U_datamemory_data_memory_11(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_11_7_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X3Y17",
      INIT => X"FF00BF80FF00FF00"
    )
    port map (
      ADR0 => read_data2_7_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112247,
      ADR3 => U_datamemory_data_memory_11(7),
      ADR4 => U_ALU_Mmux_result112049,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_11_7_dpot_695
    );
  U_datamemory_data_memory_11_6 : X_FF
    generic map(
      LOC => "SLICE_X3Y17",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_11_6_dpot_714,
      O => U_datamemory_data_memory_11(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_11_6_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X3Y17",
      INIT => X"FF00BF80FF00FF00"
    )
    port map (
      ADR0 => read_data2_6_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112247,
      ADR3 => U_datamemory_data_memory_11(6),
      ADR4 => U_ALU_Mmux_result112049,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_11_6_dpot_714
    );
  U_datamemory_data_memory_11_5 : X_FF
    generic map(
      LOC => "SLICE_X3Y17",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_11_5_dpot_699,
      O => U_datamemory_data_memory_11(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_11_5_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X3Y17",
      INIT => X"FF00BF80FF00FF00"
    )
    port map (
      ADR0 => read_data2_5_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112247,
      ADR3 => U_datamemory_data_memory_11(5),
      ADR4 => U_ALU_Mmux_result112049,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_11_5_dpot_699
    );
  U_datamemory_data_memory_11_4 : X_FF
    generic map(
      LOC => "SLICE_X3Y17",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_11_4_dpot_716,
      O => U_datamemory_data_memory_11(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_11_4_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X3Y17",
      INIT => X"FF00BF80FF00FF00"
    )
    port map (
      ADR0 => read_data2_4_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112247,
      ADR3 => U_datamemory_data_memory_11(4),
      ADR4 => U_ALU_Mmux_result112049,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_11_4_dpot_716
    );
  U_IR_Mram_instruction271116 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y45",
      INIT => X"0000000000000041"
    )
    port map (
      ADR0 => U_PC_output_sig(8),
      ADR1 => U_PC_output_sig(5),
      ADR2 => U_PC_output_sig(2),
      ADR3 => U_PC_output_sig(9),
      ADR4 => U_PC_output_sig(4),
      ADR5 => N481,
      O => U_IR_Mram_instruction271115
    );
  U_IR_Mram_instruction271116_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y45",
      INIT => X"FFFFFF00FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U_PC_output_sig(14),
      ADR4 => U_PC_output_sig(11),
      ADR5 => U_PC_output_sig(1),
      O => N481
    );
  U_datamemory_data_memory_5_7 : X_FF
    generic map(
      LOC => "SLICE_X3Y23",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0141_inv1_cepot_7689,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_5_7_dpot_746,
      O => U_datamemory_data_memory_5(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_5_7_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X3Y23",
      INIT => X"FB08FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_7_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result1122410,
      ADR3 => U_datamemory_data_memory_5(7),
      ADR4 => U_ALU_Mmux_result1120412,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_5_7_dpot_746
    );
  U_datamemory_data_memory_5_6 : X_FF
    generic map(
      LOC => "SLICE_X3Y23",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0141_inv1_cepot_7689,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_5_6_dpot_743,
      O => U_datamemory_data_memory_5(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_5_6_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X3Y23",
      INIT => X"FB08FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_6_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result1122410,
      ADR3 => U_datamemory_data_memory_5(6),
      ADR4 => U_ALU_Mmux_result1120412,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_5_6_dpot_743
    );
  U_datamemory_data_memory_5_5 : X_FF
    generic map(
      LOC => "SLICE_X3Y23",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0141_inv1_cepot_7689,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_5_5_dpot_729,
      O => U_datamemory_data_memory_5(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_5_5_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X3Y23",
      INIT => X"FB08FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_5_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result1122410,
      ADR3 => U_datamemory_data_memory_5(5),
      ADR4 => U_ALU_Mmux_result1120412,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_5_5_dpot_729
    );
  U_datamemory_data_memory_5_4 : X_FF
    generic map(
      LOC => "SLICE_X3Y23",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0141_inv1_cepot_7689,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_5_4_dpot_754,
      O => U_datamemory_data_memory_5(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_5_4_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X3Y23",
      INIT => X"FB08FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_4_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112249,
      ADR3 => U_datamemory_data_memory_5(4),
      ADR4 => U_ALU_Mmux_result1120412,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_5_4_dpot_754
    );
  U_datamemory_data_memory_0_7 : X_FF
    generic map(
      LOC => "SLICE_X3Y24",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0185_inv1_cepot_7672,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_0_7_dpot_776,
      O => U_datamemory_data_memory_0(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_0_7_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X3Y24",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2_7_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112241,
      ADR3 => U_datamemory_data_memory_0(7),
      ADR4 => ALU_RESULT_1_Q,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_0_7_dpot_776
    );
  U_datamemory_data_memory_0_6 : X_FF
    generic map(
      LOC => "SLICE_X3Y24",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0185_inv1_cepot_7672,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_0_6_dpot_775,
      O => U_datamemory_data_memory_0(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_0_6_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X3Y24",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2_6_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112241,
      ADR3 => U_datamemory_data_memory_0(6),
      ADR4 => ALU_RESULT_1_Q,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_0_6_dpot_775
    );
  U_datamemory_data_memory_0_5 : X_FF
    generic map(
      LOC => "SLICE_X3Y24",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0185_inv1_cepot_7672,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_0_5_dpot_778,
      O => U_datamemory_data_memory_0(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_0_5_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X3Y24",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2_5_0,
      ADR1 => memwrite_sig,
      ADR2 => ALU_RESULT_4_Q,
      ADR3 => U_datamemory_data_memory_0(5),
      ADR4 => ALU_RESULT_1_Q,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_0_5_dpot_778
    );
  U_datamemory_data_memory_0_4 : X_FF
    generic map(
      LOC => "SLICE_X3Y24",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0185_inv1_cepot_7672,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_0_4_dpot_787,
      O => U_datamemory_data_memory_0(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_0_4_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X3Y24",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2_4_0,
      ADR1 => memwrite_sig,
      ADR2 => ALU_RESULT_4_Q,
      ADR3 => U_datamemory_data_memory_0(4),
      ADR4 => ALU_RESULT_1_Q,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_0_4_dpot_787
    );
  U_output_port_output_3_U_output_port_output_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => read_data1_3_pack_4,
      O => read_data1(3)
    );
  U_REG_mux9_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X6Y21"
    )
    port map (
      IA => U_REG_mux9_4_1538,
      IB => U_REG_mux9_3_1561,
      O => read_data1_3_pack_4,
      SEL => instruction_sig(11)
    );
  U_REG_mux9_4 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y21",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_0(3),
      ADR1 => U_REG_register_file_1(3),
      ADR2 => U_REG_register_file_3(3),
      ADR3 => U_REG_register_file_2(3),
      ADR4 => instruction_sig(9),
      ADR5 => instruction_sig(10),
      O => U_REG_mux9_4_1538
    );
  U_output_port_output_3 : X_FF
    generic map(
      LOC => "SLICE_X6Y21",
      INIT => '0'
    )
    port map (
      CE => output_enable,
      CLK => clock_BUFGP,
      I => read_data1_3_pack_4,
      O => U_output_port_output(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_mux9_3 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y21",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_4(3),
      ADR1 => U_REG_register_file_5(3),
      ADR2 => U_REG_register_file_7(3),
      ADR3 => U_REG_register_file_6(3),
      ADR4 => instruction_sig(9),
      ADR5 => instruction_sig(10),
      O => U_REG_mux9_3_1561
    );
  U_ALU_Mmux_result11203_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y21",
      INIT => X"CCCFCC0CCFFFCC0C"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_ALU_controller_alu_signal_1_1_7780,
      ADR2 => read_data1(3),
      ADR3 => U_ALU_controller_alu_signal_4_1_7129,
      ADR4 => U_ALU_controller_alu_signal(3),
      ADR5 => ALUB_sig(3),
      O => N78
    );
  U_ALU_Mmux_result11204_14 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y21",
      INIT => X"4447000374773033"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => U_ALU_Mmux_result1_split_3_0,
      ADR3 => N77,
      ADR4 => U_ALU_Mmux_result1120,
      ADR5 => N78,
      O => U_ALU_Mmux_result11204_1_7783
    );
  U_IR_Mram_instruction29111 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y43",
      INIT => X"00000000000000FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U_PC_output_sig(15),
      ADR4 => U_PC_output_sig(7),
      ADR5 => U_PC_output_sig(10),
      O => U_IR_Mram_instruction2911
    );
  U_IR_Mram_instruction29119_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y43",
      INIT => X"FCFFFFFCFFFFFFFC"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_PC_output_sig(12),
      ADR2 => U_PC_output_sig(11),
      ADR3 => U_PC_output_sig(2),
      ADR4 => U_PC_output_sig(3),
      ADR5 => U_PC_output_sig(4),
      O => N44
    );
  U_IR_Mram_instruction291113_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y43",
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      ADR0 => U_PC_output_sig(13),
      ADR1 => U_PC_output_sig(8),
      ADR2 => U_PC_output_sig(6),
      ADR3 => U_PC_output_sig(14),
      ADR4 => U_PC_output_sig(1),
      ADR5 => U_PC_output_sig(9),
      O => N871
    );
  U_IR_Mram_instruction291112_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y43",
      INIT => X"FFFFFCFCFFFCFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_PC_output_sig(12),
      ADR2 => U_PC_output_sig(11),
      ADR3 => U_PC_output_sig(2),
      ADR4 => U_PC_output_sig(3),
      ADR5 => U_PC_output_sig(4),
      O => N461
    );
  read_data2_1_read_data2_1_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => read_data2(1),
      O => read_data2_1_0
    );
  U_REG_mux23_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X6Y22"
    )
    port map (
      IA => U_REG_mux23_4_1570,
      IB => U_REG_mux23_3_1572,
      O => read_data2(1),
      SEL => instruction_sig(8)
    );
  U_REG_mux23_4 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y22",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_0(1),
      ADR1 => U_REG_register_file_1(1),
      ADR2 => U_REG_register_file_3(1),
      ADR3 => U_REG_register_file_2(1),
      ADR4 => instruction_sig(6),
      ADR5 => instruction_sig(7),
      O => U_REG_mux23_4_1570
    );
  U_REG_mux23_3 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y22",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_4(1),
      ADR1 => U_REG_register_file_5(1),
      ADR2 => U_REG_register_file_7(1),
      ADR3 => U_REG_register_file_6(1),
      ADR4 => instruction_sig(6),
      ADR5 => instruction_sig(7),
      O => U_REG_mux23_3_1572
    );
  U_output_port_output_2_U_output_port_output_2_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => read_data1(2),
      O => read_data1_2_0
    );
  U_REG_mux8_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X6Y18"
    )
    port map (
      IA => U_REG_mux8_4_1495,
      IB => U_REG_mux8_3_1492,
      O => read_data1(2),
      SEL => instruction_sig(11)
    );
  U_REG_mux8_4 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y18",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_0(2),
      ADR1 => U_REG_register_file_1(2),
      ADR2 => U_REG_register_file_3(2),
      ADR3 => U_REG_register_file_2(2),
      ADR4 => instruction_sig(9),
      ADR5 => instruction_sig(10),
      O => U_REG_mux8_4_1495
    );
  U_output_port_output_2 : X_FF
    generic map(
      LOC => "SLICE_X6Y18",
      INIT => '0'
    )
    port map (
      CE => output_enable,
      CLK => clock_BUFGP,
      I => read_data1(2),
      O => U_output_port_output(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_mux8_3 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y18",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_4(2),
      ADR1 => U_REG_register_file_5(2),
      ADR2 => U_REG_register_file_7(2),
      ADR3 => U_REG_register_file_6(2),
      ADR4 => instruction_sig(9),
      ADR5 => instruction_sig(10),
      O => U_REG_mux8_3_1492
    );
  U_IR_Mram_instruction23111 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y34",
      INIT => X"0000000000000003"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_PC_output_sig(15),
      ADR2 => U_PC_output_sig(7),
      ADR3 => U_PC_output_sig(10),
      ADR4 => U_PC_output_sig(13),
      ADR5 => U_PC_output_sig(8),
      O => U_IR_Mram_instruction2311
    );
  U_IR_Mram_instruction21111 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y34",
      INIT => X"000000000000000F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U_PC_output_sig(15),
      ADR3 => U_PC_output_sig(7),
      ADR4 => U_PC_output_sig(13),
      ADR5 => U_PC_output_sig(8),
      O => U_IR_Mram_instruction2111
    );
  U_PC_output_sig_6 : X_FF
    generic map(
      LOC => "SLICE_X5Y42",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => clock_BUFGP,
      I => PC_input(6),
      O => U_PC_output_sig(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_Mux_PC_Rs_Mmux_mux_out132 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y42",
      INIT => X"BA8AAAAAAAAAAAAA"
    )
    port map (
      ADR0 => N203,
      ADR1 => ALU_RESULT_15_Q,
      ADR2 => U_Mux_branch_mux_control_INV_3_o4_7223,
      ADR3 => N204,
      ADR4 => U_Mux_branch_mux_control_INV_3_o2_7656,
      ADR5 => U_Mux_branch_mux_control_INV_3_o3_7657,
      O => PC_input(6)
    );
  U_PC_output_sig_5 : X_FF
    generic map(
      LOC => "SLICE_X5Y42",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => clock_BUFGP,
      I => PC_input(5),
      O => U_PC_output_sig(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_Mux_PC_Rs_Mmux_mux_out122 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y42",
      INIT => X"BA8AAAAAAAAAAAAA"
    )
    port map (
      ADR0 => N200,
      ADR1 => ALU_RESULT_15_Q,
      ADR2 => U_Mux_branch_mux_control_INV_3_o4_7223,
      ADR3 => N201,
      ADR4 => U_Mux_branch_mux_control_INV_3_o2_7656,
      ADR5 => U_Mux_branch_mux_control_INV_3_o3_7657,
      O => PC_input(5)
    );
  U_PC_output_sig_4 : X_FF
    generic map(
      LOC => "SLICE_X5Y42",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => clock_BUFGP,
      I => PC_input(4),
      O => U_PC_output_sig(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_Mux_PC_Rs_Mmux_mux_out112 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y42",
      INIT => X"BA8AAAAAAAAAAAAA"
    )
    port map (
      ADR0 => N197,
      ADR1 => ALU_RESULT_15_Q,
      ADR2 => U_Mux_branch_mux_control_INV_3_o4_7223,
      ADR3 => N198,
      ADR4 => U_Mux_branch_mux_control_INV_3_o2_7656,
      ADR5 => U_Mux_branch_mux_control_INV_3_o3_7657,
      O => PC_input(4)
    );
  U_PC_output_sig_3 : X_FF
    generic map(
      LOC => "SLICE_X5Y42",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => clock_BUFGP,
      I => PC_input(3),
      O => U_PC_output_sig(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_Mux_PC_Rs_Mmux_mux_out102 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y42",
      INIT => X"BA8AAAAAAAAAAAAA"
    )
    port map (
      ADR0 => N194,
      ADR1 => ALU_RESULT_15_Q,
      ADR2 => U_Mux_branch_mux_control_INV_3_o4_7223,
      ADR3 => N195,
      ADR4 => U_Mux_branch_mux_control_INV_3_o2_7656,
      ADR5 => U_Mux_branch_mux_control_INV_3_o3_7657,
      O => PC_input(3)
    );
  U_IR_Mram_instruction17115_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y44",
      INIT => X"FFFFFFFFFFFFFFF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U_PC_output_sig(10),
      ADR3 => U_PC_output_sig(13),
      ADR4 => U_PC_output_sig(12),
      ADR5 => U_PC_output_sig(11),
      O => N161
    );
  U_IR_Mram_instruction17111 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y44",
      INIT => X"0000000000000003"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_PC_output_sig(15),
      ADR2 => U_PC_output_sig(7),
      ADR3 => U_PC_output_sig(8),
      ADR4 => U_PC_output_sig(14),
      ADR5 => U_PC_output_sig(9),
      O => U_IR_Mram_instruction1711
    );
  U_IR_Mram_instruction151119 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y37",
      INIT => X"00000000000F00F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U_PC_output_sig(1),
      ADR3 => U_PC_output_sig(9),
      ADR4 => U_PC_output_sig(4),
      ADR5 => N931,
      O => U_IR_Mram_instruction151118
    );
  U_IR_Mram_instruction151119_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y37",
      INIT => X"FFFFFFFFFFFFFFF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U_PC_output_sig(12),
      ADR3 => U_PC_output_sig(14),
      ADR4 => U_PC_output_sig(11),
      ADR5 => U_PC_output_sig(3),
      O => N931
    );
  read_data2_3_read_data2_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => read_data2(3),
      O => read_data2_3_0
    );
  U_REG_mux25_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X6Y20"
    )
    port map (
      IA => U_REG_mux25_4_1521,
      IB => U_REG_mux25_3_1523,
      O => read_data2(3),
      SEL => instruction_sig(8)
    );
  U_REG_mux25_4 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y20",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_0(3),
      ADR1 => U_REG_register_file_1(3),
      ADR2 => U_REG_register_file_3(3),
      ADR3 => U_REG_register_file_2(3),
      ADR4 => instruction_sig(6),
      ADR5 => instruction_sig(7),
      O => U_REG_mux25_4_1521
    );
  U_REG_mux25_3 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y20",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_4(3),
      ADR1 => U_REG_register_file_5(3),
      ADR2 => U_REG_register_file_7(3),
      ADR3 => U_REG_register_file_6(3),
      ADR4 => instruction_sig(6),
      ADR5 => instruction_sig(7),
      O => U_REG_mux25_3_1523
    );
  N128_N128_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N129,
      O => N129_0
    );
  U_input_port_MUX_Mmux_mux_out91_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y32",
      INIT => X"CCF0CC00CCF0CC00"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_input_port_output_sig(2),
      ADR2 => PC_increment_2_0,
      ADR3 => input_enable,
      ADR4 => J_link_sig,
      ADR5 => '1',
      O => N128
    );
  U_input_port_MUX_Mmux_mux_out91_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X5Y32",
      INIT => X"CCF0CCFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_input_port_output_sig(2),
      ADR2 => PC_increment_2_0,
      ADR3 => input_enable,
      ADR4 => J_link_sig,
      O => N129
    );
  U_IR_Mram_instruction2311101 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y32",
      INIT => X"0000000000000054"
    )
    port map (
      ADR0 => U_PC_output_sig(6),
      ADR1 => U_PC_output_sig(5),
      ADR2 => U_PC_output_sig(1),
      ADR3 => U_PC_output_sig(9),
      ADR4 => U_PC_output_sig(4),
      ADR5 => N12,
      O => U_IR_Mram_instruction23119
    );
  U_Mux_register_file_alu_Mmux_mux_out11 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y32",
      INIT => X"FF00FFFFFF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => instruction_sig(0),
      ADR4 => alusrc_sig,
      ADR5 => read_data2_0_0,
      O => ALUB_sig(0)
    );
  read_data2_2_read_data2_2_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => read_data2(2),
      O => read_data2_2_0
    );
  U_REG_mux24_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X6Y19"
    )
    port map (
      IA => U_REG_mux24_4_1505,
      IB => U_REG_mux24_3_1507,
      O => read_data2(2),
      SEL => instruction_sig(8)
    );
  U_REG_mux24_4 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y19",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_0(2),
      ADR1 => U_REG_register_file_1(2),
      ADR2 => U_REG_register_file_3(2),
      ADR3 => U_REG_register_file_2(2),
      ADR4 => instruction_sig(6),
      ADR5 => instruction_sig(7),
      O => U_REG_mux24_4_1505
    );
  U_REG_mux24_3 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y19",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_4(2),
      ADR1 => U_REG_register_file_5(2),
      ADR2 => U_REG_register_file_7(2),
      ADR3 => U_REG_register_file_6(2),
      ADR4 => instruction_sig(6),
      ADR5 => instruction_sig(7),
      O => U_REG_mux24_3_1507
    );
  N86_N86_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N87_pack_1,
      O => N87
    );
  U_input_port_MUX_Mmux_mux_out17_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y33",
      INIT => X"CCF0CC00CCF0CC00"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_input_port_output_sig(0),
      ADR2 => U_PC_output_sig(0),
      ADR3 => input_enable,
      ADR4 => J_link_sig,
      ADR5 => '1',
      O => N86
    );
  U_input_port_MUX_Mmux_mux_out17_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X5Y33",
      INIT => X"CCF0CCFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_input_port_output_sig(0),
      ADR2 => U_PC_output_sig(0),
      ADR3 => input_enable,
      ADR4 => J_link_sig,
      O => N87_pack_1
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_2_f8_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y33",
      INIT => X"FF0FF000FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => memread_sig,
      ADR3 => N86,
      ADR4 => N87,
      ADR5 => ALU_RESULT_0_Q,
      O => N242
    );
  N201_N201_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N25_pack_6,
      O => N25
    );
  U_Mux_branch_mux_control_INV_3_o5_SW7 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y45",
      INIT => X"FF53AC00FF55AA00"
    )
    port map (
      ADR0 => PC_increment_5_0,
      ADR1 => PC_BRANCH_5_0,
      ADR2 => U_Mux_branch_mux_control_INV_3_o1_7015,
      ADR3 => N25,
      ADR4 => N24,
      ADR5 => ALU_RESULT_14_Q,
      O => N201
    );
  U_Mux_PC_Rs_Mmux_mux_out121_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y45",
      INIT => X"F0F0CC00F0F0CC00"
    )
    port map (
      ADR0 => '1',
      ADR1 => instruction_sig(4),
      ADR2 => read_data1(5),
      ADR3 => jump_sig,
      ADR4 => J_R_sig,
      ADR5 => '1',
      O => N24
    );
  U_Mux_PC_Rs_Mmux_mux_out121_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X5Y45",
      INIT => X"F0F0CCFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => instruction_sig(4),
      ADR2 => read_data1(5),
      ADR3 => jump_sig,
      ADR4 => J_R_sig,
      O => N25_pack_6
    );
  U_Mux_branch_mux_control_INV_3_o5_SW6 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y45",
      INIT => X"FFFFCCF0330F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => PC_increment_5_0,
      ADR2 => PC_BRANCH_5_0,
      ADR3 => U_Mux_branch_mux_control_INV_3_o1_7015,
      ADR4 => N24,
      ADR5 => N25,
      O => N200
    );
  U_REG_register_file_2_3 : X_FF
    generic map(
      LOC => "SLICE_X5Y20",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0073_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(3),
      O => U_REG_register_file_2(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_2_2 : X_FF
    generic map(
      LOC => "SLICE_X5Y20",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0073_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(2),
      O => U_REG_register_file_2(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_2_1 : X_FF
    generic map(
      LOC => "SLICE_X5Y20",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0073_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(1),
      O => U_REG_register_file_2(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_2_0 : X_FF
    generic map(
      LOC => "SLICE_X5Y20",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0073_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(0),
      O => U_REG_register_file_2(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_2_7 : X_FF
    generic map(
      LOC => "SLICE_X5Y26",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0073_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(7),
      O => U_REG_register_file_2(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_2_6 : X_FF
    generic map(
      LOC => "SLICE_X5Y26",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0073_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(6),
      O => U_REG_register_file_2(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_2_5 : X_FF
    generic map(
      LOC => "SLICE_X5Y26",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0073_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(5),
      O => U_REG_register_file_2(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_2_4 : X_FF
    generic map(
      LOC => "SLICE_X5Y26",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0073_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(4),
      O => U_REG_register_file_2(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_IR_Mram_instruction29112 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y43",
      INIT => X"0000000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U_PC_output_sig(8),
      ADR4 => U_PC_output_sig(1),
      ADR5 => U_PC_output_sig(9),
      O => U_IR_Mram_instruction29111_7935
    );
  U_IR_Mram_instruction29116_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y43",
      INIT => X"FFFFF0FFF0FCFFFC"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_PC_output_sig(5),
      ADR2 => U_PC_output_sig(11),
      ADR3 => U_PC_output_sig(2),
      ADR4 => U_PC_output_sig(3),
      ADR5 => U_PC_output_sig(4),
      O => N82
    );
  U_IR_Mram_instruction291113 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y43",
      INIT => X"AAAAAAAA00022202"
    )
    port map (
      ADR0 => U_IR_Mram_instruction2911,
      ADR1 => N871,
      ADR2 => N44,
      ADR3 => U_PC_output_sig(5),
      ADR4 => N461,
      ADR5 => U_IR_Mram_instruction29115,
      O => instruction_sig(14)
    );
  U_IR_Mram_instruction29116 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y43",
      INIT => X"0000000000010000"
    )
    port map (
      ADR0 => U_PC_output_sig(6),
      ADR1 => U_PC_output_sig(14),
      ADR2 => U_PC_output_sig(13),
      ADR3 => U_PC_output_sig(12),
      ADR4 => U_IR_Mram_instruction29111_7935,
      ADR5 => N82,
      O => U_IR_Mram_instruction29115
    );
  U_input_port_output_sig_3_U_input_port_output_sig_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PC_BRANCH(8),
      O => PC_BRANCH_8_0
    );
  U_input_port_output_sig_3_U_input_port_output_sig_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PC_BRANCH(7),
      O => PC_BRANCH_7_0
    );
  U_input_port_output_sig_3_U_input_port_output_sig_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PC_BRANCH(6),
      O => PC_BRANCH_6_0
    );
  U_input_port_output_sig_3_U_input_port_output_sig_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PC_BRANCH(5),
      O => PC_BRANCH_5_0
    );
  U_input_port_output_sig_3 : X_FF
    generic map(
      LOC => "SLICE_X4Y46",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => clock_BUFGP,
      I => input_port_3_IBUF_rt_1155,
      O => U_input_port_output_sig(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_BRANCH_BLOCK_Madd_PC_branch_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X4Y46",
      INIT => X"00FFFF0000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => PC_increment_8_0,
      ADR4 => instruction_sig(5),
      ADR5 => '1',
      O => U_BRANCH_BLOCK_Madd_PC_branch_lut(8)
    );
  input_port_3_IBUF_rt : X_LUT5
    generic map(
      LOC => "SLICE_X4Y46",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => input_port_3_IBUF_0,
      ADR3 => '1',
      ADR4 => '1',
      O => input_port_3_IBUF_rt_1155
    );
  U_input_port_output_sig_2 : X_FF
    generic map(
      LOC => "SLICE_X4Y46",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => clock_BUFGP,
      I => input_port_2_IBUF_rt_1167,
      O => U_input_port_output_sig(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_BRANCH_BLOCK_Madd_PC_branch_cy_8_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X4Y46"
    )
    port map (
      CI => U_BRANCH_BLOCK_Madd_PC_branch_cy_4_Q_7183,
      CYINIT => '0',
      CO(3) => U_BRANCH_BLOCK_Madd_PC_branch_cy_8_Q_7184,
      CO(2) => NLW_U_BRANCH_BLOCK_Madd_PC_branch_cy_8_CO_2_UNCONNECTED,
      CO(1) => NLW_U_BRANCH_BLOCK_Madd_PC_branch_cy_8_CO_1_UNCONNECTED,
      CO(0) => NLW_U_BRANCH_BLOCK_Madd_PC_branch_cy_8_CO_0_UNCONNECTED,
      DI(3) => PC_increment_8_0,
      DI(2) => PC_increment_7_0,
      DI(1) => PC_increment_6_0,
      DI(0) => PC_increment_5_0,
      O(3) => PC_BRANCH(8),
      O(2) => PC_BRANCH(7),
      O(1) => PC_BRANCH(6),
      O(0) => PC_BRANCH(5),
      S(3) => U_BRANCH_BLOCK_Madd_PC_branch_lut(8),
      S(2) => U_BRANCH_BLOCK_Madd_PC_branch_lut(7),
      S(1) => U_BRANCH_BLOCK_Madd_PC_branch_lut(6),
      S(0) => U_BRANCH_BLOCK_Madd_PC_branch_lut(5)
    );
  U_BRANCH_BLOCK_Madd_PC_branch_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X4Y46",
      INIT => X"00FFFF0000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => PC_increment_7_0,
      ADR4 => instruction_sig(5),
      ADR5 => '1',
      O => U_BRANCH_BLOCK_Madd_PC_branch_lut(7)
    );
  input_port_2_IBUF_rt : X_LUT5
    generic map(
      LOC => "SLICE_X4Y46",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => input_port_2_IBUF_0,
      ADR3 => '1',
      ADR4 => '1',
      O => input_port_2_IBUF_rt_1167
    );
  U_input_port_output_sig_1 : X_FF
    generic map(
      LOC => "SLICE_X4Y46",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => clock_BUFGP,
      I => input_port_1_IBUF_rt_1171,
      O => U_input_port_output_sig(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_BRANCH_BLOCK_Madd_PC_branch_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X4Y46",
      INIT => X"00FFFF0000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => PC_increment_6_0,
      ADR4 => instruction_sig(5),
      ADR5 => '1',
      O => U_BRANCH_BLOCK_Madd_PC_branch_lut(6)
    );
  input_port_1_IBUF_rt : X_LUT5
    generic map(
      LOC => "SLICE_X4Y46",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => input_port_1_IBUF_0,
      ADR3 => '1',
      ADR4 => '1',
      O => input_port_1_IBUF_rt_1171
    );
  U_input_port_output_sig_0 : X_FF
    generic map(
      LOC => "SLICE_X4Y46",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => clock_BUFGP,
      I => input_port_0_IBUF_rt_1180,
      O => U_input_port_output_sig(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_BRANCH_BLOCK_Madd_PC_branch_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X4Y46",
      INIT => X"00FFFF0000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => PC_increment_5_0,
      ADR4 => instruction_sig(4),
      ADR5 => '1',
      O => U_BRANCH_BLOCK_Madd_PC_branch_lut(5)
    );
  input_port_0_IBUF_rt : X_LUT5
    generic map(
      LOC => "SLICE_X4Y46",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => input_port_0_IBUF_0,
      ADR3 => '1',
      ADR4 => '1',
      O => input_port_0_IBUF_rt_1180
    );
  N195_N195_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N19_pack_6,
      O => N19
    );
  U_Mux_branch_mux_control_INV_3_o5_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y42",
      INIT => X"FF53AC00FF55AA00"
    )
    port map (
      ADR0 => PC_increment_3_0,
      ADR1 => PC_BRANCH_3_0,
      ADR2 => U_Mux_branch_mux_control_INV_3_o1_7015,
      ADR3 => N19,
      ADR4 => N18,
      ADR5 => ALU_RESULT_14_Q,
      O => N195
    );
  U_Mux_PC_Rs_Mmux_mux_out101_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y42",
      INIT => X"F0F0CC00F0F0CC00"
    )
    port map (
      ADR0 => '1',
      ADR1 => instruction_sig(2),
      ADR2 => read_data1(3),
      ADR3 => jump_sig,
      ADR4 => J_R_sig,
      ADR5 => '1',
      O => N18
    );
  U_Mux_PC_Rs_Mmux_mux_out101_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X4Y42",
      INIT => X"F0F0CCFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => instruction_sig(2),
      ADR2 => read_data1(3),
      ADR3 => jump_sig,
      ADR4 => J_R_sig,
      O => N19_pack_6
    );
  U_Mux_branch_mux_control_INV_3_o5_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y42",
      INIT => X"FFFFCCF0330F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => PC_increment_3_0,
      ADR2 => PC_BRANCH_3_0,
      ADR3 => U_Mux_branch_mux_control_INV_3_o1_7015,
      ADR4 => N18,
      ADR5 => N19,
      O => N194
    );
  U_REG_register_file_1_3 : X_FF
    generic map(
      LOC => "SLICE_X5Y21",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0069_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(3),
      O => U_REG_register_file_1(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_1_2 : X_FF
    generic map(
      LOC => "SLICE_X5Y21",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0069_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(2),
      O => U_REG_register_file_1(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_1_1 : X_FF
    generic map(
      LOC => "SLICE_X5Y21",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0069_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(1),
      O => U_REG_register_file_1(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_1_0 : X_FF
    generic map(
      LOC => "SLICE_X5Y21",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0069_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(0),
      O => U_REG_register_file_1(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_4_7 : X_FF
    generic map(
      LOC => "SLICE_X5Y23",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0137_inv1_cepot_7685,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_4_7_dpot_1234,
      O => U_datamemory_data_memory_4(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_4_7_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X5Y23",
      INIT => X"FF00FF00FB08FF00"
    )
    port map (
      ADR0 => read_data2_7_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112248,
      ADR3 => U_datamemory_data_memory_4(7),
      ADR4 => U_ALU_Mmux_result1120410,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_4_7_dpot_1234
    );
  U_datamemory_data_memory_4_6 : X_FF
    generic map(
      LOC => "SLICE_X5Y23",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0137_inv1_cepot_7685,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_4_6_dpot_1254,
      O => U_datamemory_data_memory_4(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_4_6_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X5Y23",
      INIT => X"FF00FF00FB08FF00"
    )
    port map (
      ADR0 => read_data2_6_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112248,
      ADR3 => U_datamemory_data_memory_4(6),
      ADR4 => U_ALU_Mmux_result1120410,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_4_6_dpot_1254
    );
  U_datamemory_data_memory_4_5 : X_FF
    generic map(
      LOC => "SLICE_X5Y23",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0137_inv1_cepot_7685,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_4_5_dpot_1236,
      O => U_datamemory_data_memory_4(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_4_5_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X5Y23",
      INIT => X"FF00FF00FB08FF00"
    )
    port map (
      ADR0 => read_data2_5_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112248,
      ADR3 => U_datamemory_data_memory_4(5),
      ADR4 => U_ALU_Mmux_result1120410,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_4_5_dpot_1236
    );
  U_datamemory_data_memory_4_4 : X_FF
    generic map(
      LOC => "SLICE_X5Y23",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0137_inv1_cepot_7685,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_4_4_dpot_1255,
      O => U_datamemory_data_memory_4(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_4_4_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X5Y23",
      INIT => X"FF00FF00FB08FF00"
    )
    port map (
      ADR0 => read_data2_4_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112248,
      ADR3 => U_datamemory_data_memory_4(4),
      ADR4 => U_ALU_Mmux_result1120410,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_4_4_dpot_1255
    );
  U_IR_Mram_instruction171114 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y44",
      INIT => X"A0A0A0A200000002"
    )
    port map (
      ADR0 => U_IR_Mram_instruction1711,
      ADR1 => U_PC_output_sig(6),
      ADR2 => U_PC_output_sig(4),
      ADR3 => U_PC_output_sig(13),
      ADR4 => N1051,
      ADR5 => U_IR_Mram_instruction17114,
      O => instruction_sig(8)
    );
  U_IR_Mram_instruction17115 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y44",
      INIT => X"0000000001110004"
    )
    port map (
      ADR0 => U_PC_output_sig(6),
      ADR1 => U_PC_output_sig(5),
      ADR2 => U_PC_output_sig(2),
      ADR3 => U_PC_output_sig(3),
      ADR4 => U_PC_output_sig(1),
      ADR5 => N161,
      O => U_IR_Mram_instruction17114
    );
  U_IR_Mram_instruction171114_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y44",
      INIT => X"FFFFFFFFAFEFABBF"
    )
    port map (
      ADR0 => U_PC_output_sig(12),
      ADR1 => U_PC_output_sig(5),
      ADR2 => U_PC_output_sig(2),
      ADR3 => U_PC_output_sig(3),
      ADR4 => U_PC_output_sig(1),
      ADR5 => N109,
      O => N1051
    );
  U_IR_Mram_instruction171114_SW0_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y44",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U_PC_output_sig(10),
      ADR5 => U_PC_output_sig(11),
      O => N109
    );
  U_REG_register_file_0_3 : X_FF
    generic map(
      LOC => "SLICE_X5Y22",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0097_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(3),
      O => U_REG_register_file_0(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_2_f8_7_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y22",
      INIT => X"FFFF0000FFF00F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => memread_sig,
      ADR3 => N128,
      ADR4 => N129_0,
      ADR5 => U_ALU_Mmux_result111841,
      O => N267
    );
  U_REG_register_file_0_2 : X_FF
    generic map(
      LOC => "SLICE_X5Y22",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0097_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(2),
      O => U_REG_register_file_0(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_input_port_MUX_Mmux_mux_out92 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y22",
      INIT => X"FF00FC30F3C0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_ALU_Mmux_result1122412,
      ADR2 => N266,
      ADR3 => N267,
      ADR4 => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f78_0,
      ADR5 => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f78_0,
      O => write_data_level2(2)
    );
  U_REG_register_file_0_1 : X_FF
    generic map(
      LOC => "SLICE_X5Y22",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0097_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(1),
      O => U_REG_register_file_0(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_0_0 : X_FF
    generic map(
      LOC => "SLICE_X5Y22",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0097_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(0),
      O => U_REG_register_file_0(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_4_7 : X_FF
    generic map(
      LOC => "SLICE_X5Y27",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0081_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(7),
      O => U_REG_register_file_4(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_4_6 : X_FF
    generic map(
      LOC => "SLICE_X5Y27",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0081_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(6),
      O => U_REG_register_file_4(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_4_5 : X_FF
    generic map(
      LOC => "SLICE_X5Y27",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0081_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(5),
      O => U_REG_register_file_4(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_4_4 : X_FF
    generic map(
      LOC => "SLICE_X5Y27",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0081_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(4),
      O => U_REG_register_file_4(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_input_port_MUX_Mmux_mux_out112 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y27",
      INIT => X"F0E4D8E4F0CCD8CC"
    )
    port map (
      ADR0 => memread_sig,
      ADR1 => N131,
      ADR2 => N132_0,
      ADR3 => U_ALU_Mmux_result1122410,
      ADR4 => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f710_0,
      ADR5 => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f710_0,
      O => write_data_level2(4)
    );
  U_Mux_register_file_alu_Mmux_mux_out141 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y29",
      INIT => X"FF00FFFFFF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => instruction_sig(5),
      ADR4 => U_CU_Mmux_alusrc11_7730,
      ADR5 => read_data2_7_0,
      O => ALUB_sig(7)
    );
  U_ALU_Mmux_result11283_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y29",
      INIT => X"CCFFCF3FCFFFFF3F"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_ALU_controller_alu_signal_1_11,
      ADR2 => read_data1(7),
      ADR3 => U_ALU_controller_alu_signal_3_2_7717,
      ADR4 => U_ALU_controller_alu_signal_4_2_7134,
      ADR5 => ALUB_sig(7),
      O => N65
    );
  N131_N131_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N132,
      O => N132_0
    );
  U_input_port_MUX_Mmux_mux_out111_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y30",
      INIT => X"CFC0C0C0CFC0C0C0"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_input_port_output_sig(4),
      ADR2 => input_enable,
      ADR3 => PC_increment_4_0,
      ADR4 => J_link_sig,
      ADR5 => '1',
      O => N131
    );
  U_input_port_MUX_Mmux_mux_out111_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X5Y30",
      INIT => X"CFC0CFCF"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_input_port_output_sig(4),
      ADR2 => input_enable,
      ADR3 => PC_increment_4_0,
      ADR4 => J_link_sig,
      O => N132
    );
  U_REG_register_file_0_7 : X_FF
    generic map(
      LOC => "SLICE_X5Y31",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0097_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(7),
      O => U_REG_register_file_0(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_input_port_MUX_Mmux_mux_out131_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y31",
      INIT => X"F0F0FF00F0F0FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U_input_port_output_sig(6),
      ADR3 => PC_increment_6_0,
      ADR4 => input_enable,
      ADR5 => J_link_sig,
      O => N96
    );
  U_REG_register_file_0_6 : X_FF
    generic map(
      LOC => "SLICE_X5Y31",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0097_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(6),
      O => U_REG_register_file_0(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_input_port_MUX_Mmux_mux_out132 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y31",
      INIT => X"CCCCF0CCCCF0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => N252,
      ADR2 => N251,
      ADR3 => U_ALU_Mmux_result1122410,
      ADR4 => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f712_0,
      ADR5 => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f712_0,
      O => write_data_level2(6)
    );
  U_REG_register_file_0_5 : X_FF
    generic map(
      LOC => "SLICE_X5Y31",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0097_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(5),
      O => U_REG_register_file_0(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_ALU_Mmux_result11264_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y31",
      INIT => X"FFBF4000FFBB4400"
    )
    port map (
      ADR0 => memread_sig,
      ADR1 => ALU_op_sig(2),
      ADR2 => ALU_op_sig(3),
      ADR3 => N95,
      ADR4 => N96,
      ADR5 => U_ALU_Mmux_result1126,
      O => N358
    );
  U_REG_register_file_0_4 : X_FF
    generic map(
      LOC => "SLICE_X5Y31",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0097_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(4),
      O => U_REG_register_file_0(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_2_f8_11_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y31",
      INIT => X"FFFF0F33F0CC0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => N68,
      ADR2 => N69,
      ADR3 => U_ALU_Mmux_result1_split_6_0,
      ADR4 => N359,
      ADR5 => N358,
      O => N252
    );
  PC_increment_15_PC_increment_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PC_increment(15),
      O => PC_increment_15_0
    );
  PC_increment_15_PC_increment_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PC_increment(14),
      O => PC_increment_14_0
    );
  PC_increment_15_PC_increment_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PC_increment(13),
      O => PC_increment_13_0
    );
  Madd_PC_increment_xor_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X6Y47"
    )
    port map (
      CI => Madd_PC_increment_cy_12_Q_7175,
      CYINIT => '0',
      CO(3) => NLW_Madd_PC_increment_xor_15_CO_3_UNCONNECTED,
      CO(2) => NLW_Madd_PC_increment_xor_15_CO_2_UNCONNECTED,
      CO(1) => NLW_Madd_PC_increment_xor_15_CO_1_UNCONNECTED,
      CO(0) => NLW_Madd_PC_increment_xor_15_CO_0_UNCONNECTED,
      DI(3) => NLW_Madd_PC_increment_xor_15_DI_3_UNCONNECTED,
      DI(2) => NLW_Madd_PC_increment_xor_15_DI_2_UNCONNECTED,
      DI(1) => '0',
      DI(0) => '0',
      O(3) => NLW_Madd_PC_increment_xor_15_O_3_UNCONNECTED,
      O(2) => PC_increment(15),
      O(1) => PC_increment(14),
      O(0) => PC_increment(13),
      S(3) => NLW_Madd_PC_increment_xor_15_S_3_UNCONNECTED,
      S(2) => U_PC_output_sig_15_rt_212,
      S(1) => U_PC_output_sig_14_rt_210,
      S(0) => U_PC_output_sig_13_rt_213
    );
  U_PC_output_sig_15_rt : X_LUT6
    generic map(
      LOC => "SLICE_X6Y47",
      INIT => X"FFFFFFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => U_PC_output_sig(15),
      O => U_PC_output_sig_15_rt_212
    );
  U_PC_output_sig_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X6Y47",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U_PC_output_sig(14),
      ADR5 => '1',
      O => U_PC_output_sig_14_rt_210
    );
  N1_15_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y47",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_15_B5LUT_O_UNCONNECTED
    );
  U_PC_output_sig_13_rt : X_LUT6
    generic map(
      LOC => "SLICE_X6Y47",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U_PC_output_sig(13),
      ADR5 => '1',
      O => U_PC_output_sig_13_rt_213
    );
  N1_14_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y47",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_14_A5LUT_O_UNCONNECTED
    );
  Madd_PC_increment_cy_12_Madd_PC_increment_cy_12_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PC_increment(12),
      O => PC_increment_12_0
    );
  Madd_PC_increment_cy_12_Madd_PC_increment_cy_12_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PC_increment(11),
      O => PC_increment_11_0
    );
  Madd_PC_increment_cy_12_Madd_PC_increment_cy_12_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PC_increment(10),
      O => PC_increment_10_0
    );
  Madd_PC_increment_cy_12_Madd_PC_increment_cy_12_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PC_increment(9),
      O => PC_increment_9_0
    );
  U_PC_output_sig_12_rt : X_LUT6
    generic map(
      LOC => "SLICE_X6Y46",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U_PC_output_sig(12),
      ADR5 => '1',
      O => U_PC_output_sig_12_rt_183
    );
  N1_13_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y46",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_13_D5LUT_O_UNCONNECTED
    );
  Madd_PC_increment_cy_12_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X6Y46"
    )
    port map (
      CI => Madd_PC_increment_cy_8_Q_7170,
      CYINIT => '0',
      CO(3) => Madd_PC_increment_cy_12_Q_7175,
      CO(2) => NLW_Madd_PC_increment_cy_12_CO_2_UNCONNECTED,
      CO(1) => NLW_Madd_PC_increment_cy_12_CO_1_UNCONNECTED,
      CO(0) => NLW_Madd_PC_increment_cy_12_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => PC_increment(12),
      O(2) => PC_increment(11),
      O(1) => PC_increment(10),
      O(0) => PC_increment(9),
      S(3) => U_PC_output_sig_12_rt_183,
      S(2) => U_PC_output_sig_11_rt_190,
      S(1) => U_PC_output_sig_10_rt_187,
      S(0) => U_PC_output_sig_9_rt_189
    );
  U_PC_output_sig_11_rt : X_LUT6
    generic map(
      LOC => "SLICE_X6Y46",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U_PC_output_sig(11),
      ADR5 => '1',
      O => U_PC_output_sig_11_rt_190
    );
  N1_12_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y46",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_12_C5LUT_O_UNCONNECTED
    );
  U_PC_output_sig_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X6Y46",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U_PC_output_sig(10),
      ADR5 => '1',
      O => U_PC_output_sig_10_rt_187
    );
  N1_11_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y46",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_11_B5LUT_O_UNCONNECTED
    );
  U_PC_output_sig_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X6Y46",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U_PC_output_sig(9),
      ADR5 => '1',
      O => U_PC_output_sig_9_rt_189
    );
  N1_10_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y46",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_10_A5LUT_O_UNCONNECTED
    );
  Madd_PC_increment_cy_8_Madd_PC_increment_cy_8_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PC_increment(8),
      O => PC_increment_8_0
    );
  Madd_PC_increment_cy_8_Madd_PC_increment_cy_8_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PC_increment(7),
      O => PC_increment_7_0
    );
  Madd_PC_increment_cy_8_Madd_PC_increment_cy_8_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PC_increment(6),
      O => PC_increment_6_0
    );
  Madd_PC_increment_cy_8_Madd_PC_increment_cy_8_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PC_increment(5),
      O => PC_increment_5_0
    );
  U_PC_output_sig_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X6Y45",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U_PC_output_sig(8),
      ADR5 => '1',
      O => U_PC_output_sig_8_rt_161
    );
  N1_9_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y45",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_9_D5LUT_O_UNCONNECTED
    );
  Madd_PC_increment_cy_8_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X6Y45"
    )
    port map (
      CI => Madd_PC_increment_cy_4_Q_7165,
      CYINIT => '0',
      CO(3) => Madd_PC_increment_cy_8_Q_7170,
      CO(2) => NLW_Madd_PC_increment_cy_8_CO_2_UNCONNECTED,
      CO(1) => NLW_Madd_PC_increment_cy_8_CO_1_UNCONNECTED,
      CO(0) => NLW_Madd_PC_increment_cy_8_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => PC_increment(8),
      O(2) => PC_increment(7),
      O(1) => PC_increment(6),
      O(0) => PC_increment(5),
      S(3) => U_PC_output_sig_8_rt_161,
      S(2) => U_PC_output_sig_7_rt_168,
      S(1) => U_PC_output_sig_6_rt_165,
      S(0) => U_PC_output_sig_5_rt_167
    );
  U_PC_output_sig_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X6Y45",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U_PC_output_sig(7),
      ADR5 => '1',
      O => U_PC_output_sig_7_rt_168
    );
  N1_8_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y45",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_8_C5LUT_O_UNCONNECTED
    );
  U_PC_output_sig_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X6Y45",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U_PC_output_sig(6),
      ADR5 => '1',
      O => U_PC_output_sig_6_rt_165
    );
  N1_7_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y45",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_7_B5LUT_O_UNCONNECTED
    );
  U_PC_output_sig_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X6Y45",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U_PC_output_sig(5),
      ADR5 => '1',
      O => U_PC_output_sig_5_rt_167
    );
  N1_6_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y45",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_6_A5LUT_O_UNCONNECTED
    );
  U_BRANCH_BLOCK_Madd_PC_branch_cy_12_U_BRANCH_BLOCK_Madd_PC_branch_cy_12_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PC_BRANCH(12),
      O => PC_BRANCH_12_0
    );
  U_BRANCH_BLOCK_Madd_PC_branch_cy_12_U_BRANCH_BLOCK_Madd_PC_branch_cy_12_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PC_BRANCH(11),
      O => PC_BRANCH_11_0
    );
  U_BRANCH_BLOCK_Madd_PC_branch_cy_12_U_BRANCH_BLOCK_Madd_PC_branch_cy_12_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PC_BRANCH(10),
      O => PC_BRANCH_10_0
    );
  U_BRANCH_BLOCK_Madd_PC_branch_cy_12_U_BRANCH_BLOCK_Madd_PC_branch_cy_12_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PC_BRANCH(9),
      O => PC_BRANCH_9_0
    );
  U_BRANCH_BLOCK_Madd_PC_branch_lut_12_Q : X_LUT6
    generic map(
      LOC => "SLICE_X4Y47",
      INIT => X"0000FFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => PC_increment_12_0,
      ADR5 => instruction_sig(5),
      O => U_BRANCH_BLOCK_Madd_PC_branch_lut(12)
    );
  U_BRANCH_BLOCK_Madd_PC_branch_cy_12_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X4Y47"
    )
    port map (
      CI => U_BRANCH_BLOCK_Madd_PC_branch_cy_8_Q_7184,
      CYINIT => '0',
      CO(3) => U_BRANCH_BLOCK_Madd_PC_branch_cy_12_Q_7185,
      CO(2) => NLW_U_BRANCH_BLOCK_Madd_PC_branch_cy_12_CO_2_UNCONNECTED,
      CO(1) => NLW_U_BRANCH_BLOCK_Madd_PC_branch_cy_12_CO_1_UNCONNECTED,
      CO(0) => NLW_U_BRANCH_BLOCK_Madd_PC_branch_cy_12_CO_0_UNCONNECTED,
      DI(3) => PC_increment_12_0,
      DI(2) => PC_increment_11_0,
      DI(1) => PC_increment_10_0,
      DI(0) => PC_increment_9_0,
      O(3) => PC_BRANCH(12),
      O(2) => PC_BRANCH(11),
      O(1) => PC_BRANCH(10),
      O(0) => PC_BRANCH(9),
      S(3) => U_BRANCH_BLOCK_Madd_PC_branch_lut(12),
      S(2) => U_BRANCH_BLOCK_Madd_PC_branch_lut(11),
      S(1) => U_BRANCH_BLOCK_Madd_PC_branch_lut(10),
      S(0) => U_BRANCH_BLOCK_Madd_PC_branch_lut(9)
    );
  U_BRANCH_BLOCK_Madd_PC_branch_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X4Y47",
      INIT => X"0000FFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => PC_increment_11_0,
      ADR5 => instruction_sig(5),
      O => U_BRANCH_BLOCK_Madd_PC_branch_lut(11)
    );
  U_BRANCH_BLOCK_Madd_PC_branch_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X4Y47",
      INIT => X"0000FFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => PC_increment_10_0,
      ADR5 => instruction_sig(5),
      O => U_BRANCH_BLOCK_Madd_PC_branch_lut(10)
    );
  U_BRANCH_BLOCK_Madd_PC_branch_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X4Y47",
      INIT => X"0000FFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => PC_increment_9_0,
      ADR5 => instruction_sig(5),
      O => U_BRANCH_BLOCK_Madd_PC_branch_lut(9)
    );
  input_port_12_IBUF : X_BUF
    generic map(
      LOC => "PAD173",
      PATHPULSE => 115 ps
    )
    port map (
      O => input_port_12_IBUF_283,
      I => input_port(12)
    );
  ProtoComp11_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD173",
      PATHPULSE => 115 ps
    )
    port map (
      I => input_port_12_IBUF_283,
      O => input_port_12_IBUF_0
    );
  input_port_11_IBUF : X_BUF
    generic map(
      LOC => "PAD174",
      PATHPULSE => 115 ps
    )
    port map (
      O => input_port_11_IBUF_280,
      I => input_port(11)
    );
  ProtoComp11_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD174",
      PATHPULSE => 115 ps
    )
    port map (
      I => input_port_11_IBUF_280,
      O => input_port_11_IBUF_0
    );
  PC_BRANCH_15_PC_BRANCH_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PC_BRANCH(15),
      O => PC_BRANCH_15_0
    );
  PC_BRANCH_15_PC_BRANCH_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PC_BRANCH(14),
      O => PC_BRANCH_14_0
    );
  PC_BRANCH_15_PC_BRANCH_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PC_BRANCH(13),
      O => PC_BRANCH_13_0
    );
  U_BRANCH_BLOCK_Madd_PC_branch_xor_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X4Y48"
    )
    port map (
      CI => U_BRANCH_BLOCK_Madd_PC_branch_cy_12_Q_7185,
      CYINIT => '0',
      CO(3) => NLW_U_BRANCH_BLOCK_Madd_PC_branch_xor_15_CO_3_UNCONNECTED,
      CO(2) => NLW_U_BRANCH_BLOCK_Madd_PC_branch_xor_15_CO_2_UNCONNECTED,
      CO(1) => NLW_U_BRANCH_BLOCK_Madd_PC_branch_xor_15_CO_1_UNCONNECTED,
      CO(0) => NLW_U_BRANCH_BLOCK_Madd_PC_branch_xor_15_CO_0_UNCONNECTED,
      DI(3) => NLW_U_BRANCH_BLOCK_Madd_PC_branch_xor_15_DI_3_UNCONNECTED,
      DI(2) => NLW_U_BRANCH_BLOCK_Madd_PC_branch_xor_15_DI_2_UNCONNECTED,
      DI(1) => PC_increment_14_0,
      DI(0) => PC_increment_13_0,
      O(3) => NLW_U_BRANCH_BLOCK_Madd_PC_branch_xor_15_O_3_UNCONNECTED,
      O(2) => PC_BRANCH(15),
      O(1) => PC_BRANCH(14),
      O(0) => PC_BRANCH(13),
      S(3) => NLW_U_BRANCH_BLOCK_Madd_PC_branch_xor_15_S_3_UNCONNECTED,
      S(2) => U_BRANCH_BLOCK_Madd_PC_branch_lut(15),
      S(1) => U_BRANCH_BLOCK_Madd_PC_branch_lut(14),
      S(0) => U_BRANCH_BLOCK_Madd_PC_branch_lut(13)
    );
  U_BRANCH_BLOCK_Madd_PC_branch_lut_15_Q : X_LUT6
    generic map(
      LOC => "SLICE_X4Y48",
      INIT => X"0000FFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => PC_increment_15_0,
      ADR5 => instruction_sig(5),
      O => U_BRANCH_BLOCK_Madd_PC_branch_lut(15)
    );
  U_BRANCH_BLOCK_Madd_PC_branch_lut_14_Q : X_LUT6
    generic map(
      LOC => "SLICE_X4Y48",
      INIT => X"0000FFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => PC_increment_14_0,
      ADR5 => instruction_sig(5),
      O => U_BRANCH_BLOCK_Madd_PC_branch_lut(14)
    );
  U_BRANCH_BLOCK_Madd_PC_branch_lut_13_Q : X_LUT6
    generic map(
      LOC => "SLICE_X4Y48",
      INIT => X"0000FFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => PC_increment_13_0,
      ADR5 => instruction_sig(5),
      O => U_BRANCH_BLOCK_Madd_PC_branch_lut(13)
    );
  input_port_10_IBUF : X_BUF
    generic map(
      LOC => "PAD176",
      PATHPULSE => 115 ps
    )
    port map (
      O => input_port_10_IBUF_277,
      I => input_port(10)
    );
  ProtoComp11_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD176",
      PATHPULSE => 115 ps
    )
    port map (
      I => input_port_10_IBUF_277,
      O => input_port_10_IBUF_0
    );
  U_BRANCH_BLOCK_Madd_PC_branch_cy_4_U_BRANCH_BLOCK_Madd_PC_branch_cy_4_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PC_BRANCH(4),
      O => PC_BRANCH_4_0
    );
  U_BRANCH_BLOCK_Madd_PC_branch_cy_4_U_BRANCH_BLOCK_Madd_PC_branch_cy_4_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PC_BRANCH(3),
      O => PC_BRANCH_3_0
    );
  U_BRANCH_BLOCK_Madd_PC_branch_cy_4_U_BRANCH_BLOCK_Madd_PC_branch_cy_4_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PC_BRANCH(2),
      O => PC_BRANCH_2_0
    );
  U_BRANCH_BLOCK_Madd_PC_branch_cy_4_U_BRANCH_BLOCK_Madd_PC_branch_cy_4_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PC_BRANCH(1),
      O => PC_BRANCH_1_0
    );
  U_BRANCH_BLOCK_Madd_PC_branch_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X4Y45",
      INIT => X"0000FFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => PC_increment_4_0,
      ADR5 => instruction_sig(3),
      O => U_BRANCH_BLOCK_Madd_PC_branch_lut(4)
    );
  ProtoComp19_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X4Y45"
    )
    port map (
      O => ProtoComp19_CYINITGND_0
    );
  U_BRANCH_BLOCK_Madd_PC_branch_cy_4_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X4Y45"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp19_CYINITGND_0,
      CO(3) => U_BRANCH_BLOCK_Madd_PC_branch_cy_4_Q_7183,
      CO(2) => NLW_U_BRANCH_BLOCK_Madd_PC_branch_cy_4_CO_2_UNCONNECTED,
      CO(1) => NLW_U_BRANCH_BLOCK_Madd_PC_branch_cy_4_CO_1_UNCONNECTED,
      CO(0) => NLW_U_BRANCH_BLOCK_Madd_PC_branch_cy_4_CO_0_UNCONNECTED,
      DI(3) => PC_increment_4_0,
      DI(2) => PC_increment_3_0,
      DI(1) => PC_increment_2_0,
      DI(0) => PC_increment_1_0,
      O(3) => PC_BRANCH(4),
      O(2) => PC_BRANCH(3),
      O(1) => PC_BRANCH(2),
      O(0) => PC_BRANCH(1),
      S(3) => U_BRANCH_BLOCK_Madd_PC_branch_lut(4),
      S(2) => U_BRANCH_BLOCK_Madd_PC_branch_lut(3),
      S(1) => U_BRANCH_BLOCK_Madd_PC_branch_lut(2),
      S(0) => U_BRANCH_BLOCK_Madd_PC_branch_lut(1)
    );
  U_BRANCH_BLOCK_Madd_PC_branch_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X4Y45",
      INIT => X"0000FFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => PC_increment_3_0,
      ADR5 => instruction_sig(2),
      O => U_BRANCH_BLOCK_Madd_PC_branch_lut(3)
    );
  U_BRANCH_BLOCK_Madd_PC_branch_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X4Y45",
      INIT => X"0000FFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => PC_increment_2_0,
      ADR5 => instruction_sig(1),
      O => U_BRANCH_BLOCK_Madd_PC_branch_lut(2)
    );
  U_BRANCH_BLOCK_Madd_PC_branch_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X4Y45",
      INIT => X"0000FFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => PC_increment_1_0,
      ADR5 => instruction_sig(0),
      O => U_BRANCH_BLOCK_Madd_PC_branch_lut(1)
    );
  input_port_13_IBUF : X_BUF
    generic map(
      LOC => "PAD171",
      PATHPULSE => 115 ps
    )
    port map (
      O => input_port_13_IBUF_286,
      I => input_port(13)
    );
  ProtoComp11_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD171",
      PATHPULSE => 115 ps
    )
    port map (
      I => input_port_13_IBUF_286,
      O => input_port_13_IBUF_0
    );
  input_port_0_IBUF : X_BUF
    generic map(
      LOC => "PAD6",
      PATHPULSE => 115 ps
    )
    port map (
      O => input_port_0_IBUF_310,
      I => input_port(0)
    );
  ProtoComp11_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD6",
      PATHPULSE => 115 ps
    )
    port map (
      I => input_port_0_IBUF_310,
      O => input_port_0_IBUF_0
    );
  input_port_1_IBUF : X_BUF
    generic map(
      LOC => "PAD7",
      PATHPULSE => 115 ps
    )
    port map (
      O => input_port_1_IBUF_313,
      I => input_port(1)
    );
  ProtoComp11_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD7",
      PATHPULSE => 115 ps
    )
    port map (
      I => input_port_1_IBUF_313,
      O => input_port_1_IBUF_0
    );
  output_port_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD111"
    )
    port map (
      I => U_output_port_output(11),
      O => output_port(11)
    );
  output_port_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD199"
    )
    port map (
      I => U_output_port_output(14),
      O => output_port(14)
    );
  output_port_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD108"
    )
    port map (
      I => U_output_port_output(12),
      O => output_port(12)
    );
  input_port_5_IBUF : X_BUF
    generic map(
      LOC => "PAD189",
      PATHPULSE => 115 ps
    )
    port map (
      O => input_port_5_IBUF_325,
      I => input_port(5)
    );
  ProtoComp11_IMUX_13 : X_BUF
    generic map(
      LOC => "PAD189",
      PATHPULSE => 115 ps
    )
    port map (
      I => input_port_5_IBUF_325,
      O => input_port_5_IBUF_0
    );
  input_port_6_IBUF : X_BUF
    generic map(
      LOC => "PAD188",
      PATHPULSE => 115 ps
    )
    port map (
      O => input_port_6_IBUF_328,
      I => input_port(6)
    );
  ProtoComp11_IMUX_14 : X_BUF
    generic map(
      LOC => "PAD188",
      PATHPULSE => 115 ps
    )
    port map (
      I => input_port_6_IBUF_328,
      O => input_port_6_IBUF_0
    );
  input_port_2_IBUF : X_BUF
    generic map(
      LOC => "PAD8",
      PATHPULSE => 115 ps
    )
    port map (
      O => input_port_2_IBUF_316,
      I => input_port(2)
    );
  ProtoComp11_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD8",
      PATHPULSE => 115 ps
    )
    port map (
      I => input_port_2_IBUF_316,
      O => input_port_2_IBUF_0
    );
  output_port_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD192"
    )
    port map (
      I => U_output_port_output(15),
      O => output_port(15)
    );
  input_port_15_IBUF : X_BUF
    generic map(
      LOC => "PAD170",
      PATHPULSE => 115 ps
    )
    port map (
      O => input_port_15_IBUF_292,
      I => input_port(15)
    );
  ProtoComp11_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD170",
      PATHPULSE => 115 ps
    )
    port map (
      I => input_port_15_IBUF_292,
      O => input_port_15_IBUF_0
    );
  output_port_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD200"
    )
    port map (
      I => U_output_port_output(13),
      O => output_port(13)
    );
  output_port_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD112"
    )
    port map (
      I => U_output_port_output(10),
      O => output_port(10)
    );
  input_port_3_IBUF : X_BUF
    generic map(
      LOC => "PAD191",
      PATHPULSE => 115 ps
    )
    port map (
      O => input_port_3_IBUF_319,
      I => input_port(3)
    );
  ProtoComp11_IMUX_11 : X_BUF
    generic map(
      LOC => "PAD191",
      PATHPULSE => 115 ps
    )
    port map (
      I => input_port_3_IBUF_319,
      O => input_port_3_IBUF_0
    );
  input_port_4_IBUF : X_BUF
    generic map(
      LOC => "PAD190",
      PATHPULSE => 115 ps
    )
    port map (
      O => input_port_4_IBUF_322,
      I => input_port(4)
    );
  ProtoComp11_IMUX_12 : X_BUF
    generic map(
      LOC => "PAD190",
      PATHPULSE => 115 ps
    )
    port map (
      I => input_port_4_IBUF_322,
      O => input_port_4_IBUF_0
    );
  input_port_14_IBUF : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 115 ps
    )
    port map (
      O => input_port_14_IBUF_289,
      I => input_port(14)
    );
  ProtoComp11_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 115 ps
    )
    port map (
      I => input_port_14_IBUF_289,
      O => input_port_14_IBUF_0
    );
  reset_IBUF : X_BUF
    generic map(
      LOC => "PAD109",
      PATHPULSE => 115 ps
    )
    port map (
      O => reset_IBUF_307,
      I => reset
    );
  ProtoComp11_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD109",
      PATHPULSE => 115 ps
    )
    port map (
      I => reset_IBUF_307,
      O => reset_IBUF_0
    );
  input_port_7_IBUF : X_BUF
    generic map(
      LOC => "PAD187",
      PATHPULSE => 115 ps
    )
    port map (
      O => input_port_7_IBUF_331,
      I => input_port(7)
    );
  ProtoComp11_IMUX_15 : X_BUF
    generic map(
      LOC => "PAD187",
      PATHPULSE => 115 ps
    )
    port map (
      I => input_port_7_IBUF_331,
      O => input_port_7_IBUF_0
    );
  input_port_9_IBUF : X_BUF
    generic map(
      LOC => "PAD186",
      PATHPULSE => 115 ps
    )
    port map (
      O => input_port_9_IBUF_337,
      I => input_port(9)
    );
  ProtoComp11_IMUX_17 : X_BUF
    generic map(
      LOC => "PAD186",
      PATHPULSE => 115 ps
    )
    port map (
      I => input_port_9_IBUF_337,
      O => input_port_9_IBUF_0
    );
  input_port_8_IBUF : X_BUF
    generic map(
      LOC => "PAD185",
      PATHPULSE => 115 ps
    )
    port map (
      O => input_port_8_IBUF_334,
      I => input_port(8)
    );
  ProtoComp11_IMUX_16 : X_BUF
    generic map(
      LOC => "PAD185",
      PATHPULSE => 115 ps
    )
    port map (
      I => input_port_8_IBUF_334,
      O => input_port_8_IBUF_0
    );
  output_port_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD121"
    )
    port map (
      I => U_output_port_output(9),
      O => output_port(9)
    );
  output_port_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD138"
    )
    port map (
      I => U_output_port_output(2),
      O => output_port(2)
    );
  output_port_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD122"
    )
    port map (
      I => U_output_port_output(8),
      O => output_port(8)
    );
  U_datamemory_data_memory_2_7 : X_FF
    generic map(
      LOC => "SLICE_X0Y24",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_2_7_dpot_402,
      O => U_datamemory_data_memory_2(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_2_7_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X0Y24",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2_7_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112245,
      ADR3 => U_datamemory_data_memory_2(7),
      ADR4 => U_ALU_Mmux_result112046,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_2_7_dpot_402
    );
  U_datamemory_data_memory_2_6 : X_FF
    generic map(
      LOC => "SLICE_X0Y24",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_2_6_dpot_401,
      O => U_datamemory_data_memory_2(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_2_6_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X0Y24",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2_6_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112245,
      ADR3 => U_datamemory_data_memory_2(6),
      ADR4 => U_ALU_Mmux_result112046,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_2_6_dpot_401
    );
  U_datamemory_data_memory_2_5 : X_FF
    generic map(
      LOC => "SLICE_X0Y24",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_2_5_dpot_404,
      O => U_datamemory_data_memory_2(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_2_5_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X0Y24",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2_5_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112245,
      ADR3 => U_datamemory_data_memory_2(5),
      ADR4 => U_ALU_Mmux_result112046,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_2_5_dpot_404
    );
  U_datamemory_data_memory_2_4 : X_FF
    generic map(
      LOC => "SLICE_X0Y24",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_2_4_dpot_413,
      O => U_datamemory_data_memory_2(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_2_4_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X0Y24",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2_4_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112245,
      ADR3 => U_datamemory_data_memory_2(4),
      ADR4 => U_ALU_Mmux_result112046,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_2_4_dpot_413
    );
  U_datamemory_data_memory_1_7 : X_FF
    generic map(
      LOC => "SLICE_X1Y24",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_1_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_1_7_dpot_488,
      O => U_datamemory_data_memory_1(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_1_7_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X1Y24",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2_7_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result1122412,
      ADR3 => U_datamemory_data_memory_1(7),
      ADR4 => U_ALU_Mmux_result112041,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_1_7_dpot_488
    );
  U_datamemory_data_memory_1_6 : X_FF
    generic map(
      LOC => "SLICE_X1Y24",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_1_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_1_6_dpot_487,
      O => U_datamemory_data_memory_1(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_1_6_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X1Y24",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2_6_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result1122412,
      ADR3 => U_datamemory_data_memory_1(6),
      ADR4 => U_ALU_Mmux_result112041,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_1_6_dpot_487
    );
  U_datamemory_data_memory_1_5 : X_FF
    generic map(
      LOC => "SLICE_X1Y24",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_1_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_1_5_dpot_490,
      O => U_datamemory_data_memory_1(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_1_5_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X1Y24",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2_5_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result1122412,
      ADR3 => U_datamemory_data_memory_1(5),
      ADR4 => U_ALU_Mmux_result112041,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_1_5_dpot_490
    );
  U_datamemory_data_memory_1_4 : X_FF
    generic map(
      LOC => "SLICE_X1Y24",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_1_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_1_4_dpot_499,
      O => U_datamemory_data_memory_1(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_1_4_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X1Y24",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2_4_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result1122411,
      ADR3 => U_datamemory_data_memory_1(4),
      ADR4 => U_ALU_Mmux_result112041,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_1_4_dpot_499
    );
  output_port_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD134"
    )
    port map (
      I => U_output_port_output(6),
      O => output_port(6)
    );
  output_port_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD136"
    )
    port map (
      I => U_output_port_output(4),
      O => output_port(4)
    );
  clock_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X3Y15",
      PATHPULSE => 115 ps
    )
    port map (
      I => clock_BUFGP_IBUFG_0,
      O => clock_BUFGP
    );
  U_IR_Mram_instruction231115_U_IR_Mram_instruction231115_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_IR_Mram_instruction231115,
      O => U_IR_Mram_instruction231115_0
    );
  U_IR_Mram_instruction231116 : X_MUX2
    generic map(
      LOC => "SLICE_X6Y30"
    )
    port map (
      IA => N1291,
      IB => '0',
      O => U_IR_Mram_instruction231115,
      SEL => U_PC_output_sig(11)
    );
  U_IR_Mram_instruction231116_F : X_LUT6
    generic map(
      LOC => "SLICE_X6Y30",
      INIT => X"0000000100010000"
    )
    port map (
      ADR0 => U_PC_output_sig(14),
      ADR1 => U_PC_output_sig(6),
      ADR2 => U_PC_output_sig(12),
      ADR3 => U_PC_output_sig(9),
      ADR4 => U_PC_output_sig(1),
      ADR5 => U_PC_output_sig(4),
      O => N1291
    );
  N1_18_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X6Y30",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_N1_18_C6LUT_O_UNCONNECTED
    );
  output_port_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD137"
    )
    port map (
      I => U_output_port_output(3),
      O => output_port(3)
    );
  read_data2_4_read_data2_4_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => read_data2(4),
      O => read_data2_4_0
    );
  U_REG_mux26_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X0Y27"
    )
    port map (
      IA => U_REG_mux26_4_423,
      IB => U_REG_mux26_3_425,
      O => read_data2(4),
      SEL => instruction_sig(8)
    );
  U_REG_mux26_4 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y27",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_0(4),
      ADR1 => U_REG_register_file_1(4),
      ADR2 => U_REG_register_file_3(4),
      ADR3 => U_REG_register_file_2(4),
      ADR4 => instruction_sig(6),
      ADR5 => instruction_sig(7),
      O => U_REG_mux26_4_423
    );
  U_REG_mux26_3 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y27",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_4(4),
      ADR1 => U_REG_register_file_5(4),
      ADR2 => U_REG_register_file_7(4),
      ADR3 => U_REG_register_file_6(4),
      ADR4 => instruction_sig(6),
      ADR5 => instruction_sig(7),
      O => U_REG_mux26_3_425
    );
  output_port_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD133"
    )
    port map (
      I => U_output_port_output(7),
      O => output_port(7)
    );
  U_datamemory_data_memory_6_7 : X_FF
    generic map(
      LOC => "SLICE_X1Y23",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_6_7_dpot_441,
      O => U_datamemory_data_memory_6(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_6_7_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X1Y23",
      INIT => X"FF00FF00FB08FF00"
    )
    port map (
      ADR0 => read_data2_7_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112244,
      ADR3 => U_datamemory_data_memory_6(7),
      ADR4 => U_ALU_Mmux_result112045,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_6_7_dpot_441
    );
  U_datamemory_data_memory_6_6 : X_FF
    generic map(
      LOC => "SLICE_X1Y23",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_6_6_dpot_461,
      O => U_datamemory_data_memory_6(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_6_6_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X1Y23",
      INIT => X"FF00FF00FB08FF00"
    )
    port map (
      ADR0 => read_data2_6_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112244,
      ADR3 => U_datamemory_data_memory_6(6),
      ADR4 => U_ALU_Mmux_result112045,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_6_6_dpot_461
    );
  U_datamemory_data_memory_6_5 : X_FF
    generic map(
      LOC => "SLICE_X1Y23",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_6_5_dpot_443,
      O => U_datamemory_data_memory_6(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_6_5_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X1Y23",
      INIT => X"FF00FF00FB08FF00"
    )
    port map (
      ADR0 => read_data2_5_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112244,
      ADR3 => U_datamemory_data_memory_6(5),
      ADR4 => U_ALU_Mmux_result112045,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_6_5_dpot_443
    );
  U_datamemory_data_memory_6_4 : X_FF
    generic map(
      LOC => "SLICE_X1Y23",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_6_4_dpot_462,
      O => U_datamemory_data_memory_6(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_6_4_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X1Y23",
      INIT => X"FF00FF00FB08FF00"
    )
    port map (
      ADR0 => read_data2_4_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112244,
      ADR3 => U_datamemory_data_memory_6(4),
      ADR4 => U_ALU_Mmux_result112045,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_6_4_dpot_462
    );
  output_port_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD142"
    )
    port map (
      I => U_output_port_output(0),
      O => output_port(0)
    );
  output_port_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD141"
    )
    port map (
      I => U_output_port_output(1),
      O => output_port(1)
    );
  output_port_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD135"
    )
    port map (
      I => U_output_port_output(5),
      O => output_port(5)
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f710_U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f710_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f710,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f710_0
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f7_9 : X_MUX2
    generic map(
      LOC => "SLICE_X0Y23"
    )
    port map (
      IA => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_610_373,
      IB => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_521_378,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f710,
      SEL => U_ALU_Mmux_result11204_11_7297
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_610 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y23",
      INIT => X"F0F0CCCCFF00AAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_0(4),
      ADR1 => U_datamemory_data_memory_1(4),
      ADR2 => U_datamemory_data_memory_3(4),
      ADR3 => U_datamemory_data_memory_2(4),
      ADR4 => U_ALU_Mmux_result11184_2_7302,
      ADR5 => U_ALU_Mmux_result111641,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_610_373
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_521 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y23",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_4(4),
      ADR1 => U_datamemory_data_memory_5(4),
      ADR2 => U_datamemory_data_memory_7(4),
      ADR3 => U_datamemory_data_memory_6(4),
      ADR4 => U_ALU_Mmux_result111642,
      ADR5 => U_ALU_Mmux_result111842,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_521_378
    );
  U_output_port_output_7_U_output_port_output_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => read_data1_7_pack_3,
      O => read_data1(7)
    );
  U_REG_mux13_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X4Y28"
    )
    port map (
      IA => U_REG_mux13_4_960,
      IB => U_REG_mux13_3_965,
      O => read_data1_7_pack_3,
      SEL => instruction_sig(11)
    );
  U_REG_mux13_4 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y28",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_0(7),
      ADR1 => U_REG_register_file_1(7),
      ADR2 => U_REG_register_file_3(7),
      ADR3 => U_REG_register_file_2(7),
      ADR4 => instruction_sig(9),
      ADR5 => instruction_sig(10),
      O => U_REG_mux13_4_960
    );
  U_output_port_output_7 : X_FF
    generic map(
      LOC => "SLICE_X4Y28",
      INIT => '0'
    )
    port map (
      CE => output_enable,
      CLK => clock_BUFGP,
      I => read_data1_7_pack_3,
      O => U_output_port_output(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_mux13_3 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y28",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_4(7),
      ADR1 => U_REG_register_file_5(7),
      ADR2 => U_REG_register_file_7(7),
      ADR3 => U_REG_register_file_6(7),
      ADR4 => instruction_sig(9),
      ADR5 => instruction_sig(10),
      O => U_REG_mux13_3_965
    );
  U_ALU_Mmux_result11283_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y28",
      INIT => X"CCCCCF0CCFCCFF0C"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_ALU_controller_alu_signal_1_11,
      ADR2 => read_data1(7),
      ADR3 => U_ALU_controller_alu_signal_3_2_7717,
      ADR4 => U_ALU_controller_alu_signal_4_2_7134,
      ADR5 => ALUB_sig(7),
      O => N66
    );
  U_IR_Mram_instruction231111 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y29",
      INIT => X"0000010000000000"
    )
    port map (
      ADR0 => U_PC_output_sig(12),
      ADR1 => U_PC_output_sig(6),
      ADR2 => U_PC_output_sig(2),
      ADR3 => U_PC_output_sig(1),
      ADR4 => U_PC_output_sig(9),
      ADR5 => U_PC_output_sig(4),
      O => U_IR_Mram_instruction231110
    );
  U_IR_Mram_instruction231112 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y29",
      INIT => X"0001000000000000"
    )
    port map (
      ADR0 => U_PC_output_sig(6),
      ADR1 => U_PC_output_sig(12),
      ADR2 => U_PC_output_sig(9),
      ADR3 => U_PC_output_sig(1),
      ADR4 => U_PC_output_sig(2),
      ADR5 => U_PC_output_sig(4),
      O => U_IR_Mram_instruction231111_7899
    );
  U_IR_Mram_instruction27119_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y45",
      INIT => X"FFFFFFFFFFFFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U_PC_output_sig(14),
      ADR4 => U_PC_output_sig(11),
      ADR5 => U_PC_output_sig(4),
      O => N61
    );
  U_input_port_MUX_Mmux_mux_out131_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y31",
      INIT => X"F0F0FF00F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U_input_port_output_sig(6),
      ADR3 => PC_increment_6_0,
      ADR4 => input_enable,
      ADR5 => J_link_sig,
      O => N95
    );
  U_ALU_Mmux_result11264_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y31",
      INIT => X"FF15EA00FF11EE00"
    )
    port map (
      ADR0 => memread_sig,
      ADR1 => ALU_op_sig(2),
      ADR2 => ALU_op_sig(3),
      ADR3 => N95,
      ADR4 => N96,
      ADR5 => U_ALU_Mmux_result1126,
      O => N355
    );
  U_ALU_Mmux_result11264_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y31",
      INIT => X"FF04FB00FF00FF00"
    )
    port map (
      ADR0 => memread_sig,
      ADR1 => ALU_op_sig(2),
      ADR2 => ALU_op_sig(3),
      ADR3 => N95,
      ADR4 => N96,
      ADR5 => U_ALU_Mmux_result1126,
      O => N356
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_2_f8_11_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y31",
      INIT => X"FFFFF0CC0F330000"
    )
    port map (
      ADR0 => '1',
      ADR1 => N68,
      ADR2 => N69,
      ADR3 => U_ALU_Mmux_result1_split_6_0,
      ADR4 => N355,
      ADR5 => N356,
      O => N251
    );
  read_data2_0_read_data2_0_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => read_data2(0),
      O => read_data2_0_0
    );
  U_REG_mux16_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X4Y20"
    )
    port map (
      IA => U_REG_mux16_4_848,
      IB => U_REG_mux16_3_850,
      O => read_data2(0),
      SEL => instruction_sig(8)
    );
  U_REG_mux16_4 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y20",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_0(0),
      ADR1 => U_REG_register_file_1(0),
      ADR2 => U_REG_register_file_3(0),
      ADR3 => U_REG_register_file_2(0),
      ADR4 => instruction_sig(6),
      ADR5 => instruction_sig(7),
      O => U_REG_mux16_4_848
    );
  U_REG_mux16_3 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y20",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_4(0),
      ADR1 => U_REG_register_file_5(0),
      ADR2 => U_REG_register_file_7(0),
      ADR3 => U_REG_register_file_6(0),
      ADR4 => instruction_sig(6),
      ADR5 => instruction_sig(7),
      O => U_REG_mux16_3_850
    );
  U_IR_Mram_instruction27119 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y44",
      INIT => X"0000000000005441"
    )
    port map (
      ADR0 => U_PC_output_sig(8),
      ADR1 => U_PC_output_sig(5),
      ADR2 => U_PC_output_sig(2),
      ADR3 => U_PC_output_sig(1),
      ADR4 => U_PC_output_sig(9),
      ADR5 => N61,
      O => U_IR_Mram_instruction27118
    );
  U_IR_Mram_instruction271117 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y44",
      INIT => X"CCCCCC88C4C4C480"
    )
    port map (
      ADR0 => U_PC_output_sig(3),
      ADR1 => U_IR_Mram_instruction1211,
      ADR2 => U_IR_Mram_instruction27113,
      ADR3 => U_IR_Mram_instruction271115,
      ADR4 => U_IR_Mram_instruction271112,
      ADR5 => U_IR_Mram_instruction27118,
      O => instruction_sig(13)
    );
  U_IR_Mram_instruction27114 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y44",
      INIT => X"0000000000010000"
    )
    port map (
      ADR0 => U_PC_output_sig(9),
      ADR1 => U_PC_output_sig(8),
      ADR2 => U_PC_output_sig(5),
      ADR3 => U_PC_output_sig(2),
      ADR4 => U_PC_output_sig(4),
      ADR5 => N91,
      O => U_IR_Mram_instruction27113
    );
  U_IR_Mram_instruction27114_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y44",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U_PC_output_sig(14),
      ADR5 => U_PC_output_sig(11),
      O => N91
    );
  U_REG_register_file_1_7 : X_FF
    generic map(
      LOC => "SLICE_X4Y25",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0069_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(7),
      O => U_REG_register_file_1(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_1_6 : X_FF
    generic map(
      LOC => "SLICE_X4Y25",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0069_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(6),
      O => U_REG_register_file_1(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_1_5 : X_FF
    generic map(
      LOC => "SLICE_X4Y25",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0069_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(5),
      O => U_REG_register_file_1(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_1_4 : X_FF
    generic map(
      LOC => "SLICE_X4Y25",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0069_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(4),
      O => U_REG_register_file_1(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  read_data2_7_read_data2_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => read_data2(7),
      O => read_data2_7_0
    );
  U_REG_mux29_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X4Y27"
    )
    port map (
      IA => U_REG_mux29_4_943,
      IB => U_REG_mux29_3_945,
      O => read_data2(7),
      SEL => instruction_sig(8)
    );
  U_REG_mux29_4 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y27",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_0(7),
      ADR1 => U_REG_register_file_1(7),
      ADR2 => U_REG_register_file_3(7),
      ADR3 => U_REG_register_file_2(7),
      ADR4 => instruction_sig(6),
      ADR5 => instruction_sig(7),
      O => U_REG_mux29_4_943
    );
  U_REG_mux29_3 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y27",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_4(7),
      ADR1 => U_REG_register_file_5(7),
      ADR2 => U_REG_register_file_7(7),
      ADR3 => U_REG_register_file_6(7),
      ADR4 => instruction_sig(6),
      ADR5 => instruction_sig(7),
      O => U_REG_mux29_3_945
    );
  ALU_op_sig_3_ALU_op_sig_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ALU_RESULT_0_pack_7,
      O => ALU_RESULT_0_Q
    );
  U_ALU_Mmux_result112 : X_MUX2
    generic map(
      LOC => "SLICE_X4Y32"
    )
    port map (
      IA => N373,
      IB => N374,
      O => ALU_RESULT_0_pack_7,
      SEL => ALU_op_sig(1)
    );
  U_ALU_Mmux_result112_F : X_LUT6
    generic map(
      LOC => "SLICE_X4Y32",
      INIT => X"FFFA577DFFFA0228"
    )
    port map (
      ADR0 => ALU_op_sig(2),
      ADR1 => ALUB_sig(0),
      ADR2 => read_data1_0_0,
      ADR3 => ALU_op_sig(0),
      ADR4 => ALU_op_sig(3),
      ADR5 => U_ALU_Mmux_result1_split_0_0,
      O => N373
    );
  U_ALU_Mmux_result112_G : X_LUT6
    generic map(
      LOC => "SLICE_X4Y32",
      INIT => X"FFFFFFFFBAA83220"
    )
    port map (
      ADR0 => ALU_op_sig(0),
      ADR1 => ALU_op_sig(2),
      ADR2 => ALUB_sig(0),
      ADR3 => read_data1_0_0,
      ADR4 => read_data1_1_0,
      ADR5 => ALU_op_sig(3),
      O => N374
    );
  U_ALU_controller_alu_signal_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y32",
      INIT => X"FFFFFF0000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => instruction_sig(0),
      ADR4 => instruction_sig(1),
      ADR5 => instruction_sig(2),
      O => ALU_op_sig(3)
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_2_f8_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y32",
      INIT => X"FFFF0000FFF00F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => memread_sig,
      ADR3 => N86,
      ADR4 => N87,
      ADR5 => ALU_RESULT_0_Q,
      O => N243
    );
  N266_N266_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f711,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f711_0
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f7_10 : X_MUX2
    generic map(
      LOC => "SLICE_X4Y23"
    )
    port map (
      IA => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_611_885,
      IB => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_523_894,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f711,
      SEL => U_ALU_Mmux_result11204_11_7297
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_611 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y23",
      INIT => X"F0F0CCCCFF00AAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_0(5),
      ADR1 => U_datamemory_data_memory_1(5),
      ADR2 => U_datamemory_data_memory_3(5),
      ADR3 => U_datamemory_data_memory_2(5),
      ADR4 => U_ALU_Mmux_result11184_2_7302,
      ADR5 => U_ALU_Mmux_result111641,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_611_885
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_523 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y23",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_4(5),
      ADR1 => U_datamemory_data_memory_5(5),
      ADR2 => U_datamemory_data_memory_7(5),
      ADR3 => U_datamemory_data_memory_6(5),
      ADR4 => U_ALU_Mmux_result111642,
      ADR5 => U_ALU_Mmux_result111842,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_523_894
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_2_f8_7_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y23",
      INIT => X"FF0FF000FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => memread_sig,
      ADR3 => N128,
      ADR4 => N129_0,
      ADR5 => U_ALU_Mmux_result111842,
      O => N266
    );
  U_ALU_Mmux_result11184_3 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y23",
      INIT => X"4073407340407373"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => U_ALU_Mmux_result1118,
      ADR3 => N81,
      ADR4 => N80,
      ADR5 => U_ALU_Mmux_result1_split_2_0,
      O => U_ALU_Mmux_result111842
    );
  U_output_port_output_0_U_output_port_output_0_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => read_data1(0),
      O => read_data1_0_0
    );
  U_REG_mux_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X4Y21"
    )
    port map (
      IA => U_REG_mux_4_874,
      IB => U_REG_mux_3_871,
      O => read_data1(0),
      SEL => instruction_sig(11)
    );
  U_REG_mux_4 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y21",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_0(0),
      ADR1 => U_REG_register_file_1(0),
      ADR2 => U_REG_register_file_3(0),
      ADR3 => U_REG_register_file_2(0),
      ADR4 => instruction_sig(9),
      ADR5 => instruction_sig(10),
      O => U_REG_mux_4_874
    );
  U_output_port_output_0 : X_FF
    generic map(
      LOC => "SLICE_X4Y21",
      INIT => '0'
    )
    port map (
      CE => output_enable,
      CLK => clock_BUFGP,
      I => read_data1(0),
      O => U_output_port_output(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_mux_3 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y21",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_4(0),
      ADR1 => U_REG_register_file_5(0),
      ADR2 => U_REG_register_file_7(0),
      ADR3 => U_REG_register_file_6(0),
      ADR4 => instruction_sig(9),
      ADR5 => instruction_sig(10),
      O => U_REG_mux_3_871
    );
  U_input_port_output_sig_7 : X_FF
    generic map(
      LOC => "SLICE_X4Y40",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => clock_BUFGP,
      I => input_port_7_IBUF_0,
      O => U_input_port_output_sig(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_input_port_MUX_Mmux_mux_out121_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y40",
      INIT => X"F0F0FF00F0F0FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U_input_port_output_sig(5),
      ADR3 => PC_increment_5_0,
      ADR4 => input_enable,
      ADR5 => J_link_sig,
      O => N93
    );
  U_input_port_output_sig_6 : X_FF
    generic map(
      LOC => "SLICE_X4Y40",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => clock_BUFGP,
      I => input_port_6_IBUF_0,
      O => U_input_port_output_sig(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_CU_Mmux_input_enable11 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y40",
      INIT => X"0000000300000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => reset_IBUF_0,
      ADR2 => instruction_sig(15),
      ADR3 => instruction_sig(14),
      ADR4 => instruction_sig(13),
      ADR5 => instruction_sig(12),
      O => input_enable
    );
  U_input_port_output_sig_5 : X_FF
    generic map(
      LOC => "SLICE_X4Y40",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => clock_BUFGP,
      I => input_port_5_IBUF_0,
      O => U_input_port_output_sig(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_CU_Mmux_J_link11 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y40",
      INIT => X"0000000000003000"
    )
    port map (
      ADR0 => '1',
      ADR1 => reset_IBUF_0,
      ADR2 => instruction_sig(15),
      ADR3 => instruction_sig(14),
      ADR4 => instruction_sig(12),
      ADR5 => instruction_sig(13),
      O => J_link_sig
    );
  U_input_port_output_sig_4 : X_FF
    generic map(
      LOC => "SLICE_X4Y40",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => clock_BUFGP,
      I => input_port_4_IBUF_0,
      O => U_input_port_output_sig(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_input_port_MUX_Mmux_mux_out121_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y40",
      INIT => X"F0F0FF00F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U_input_port_output_sig(5),
      ADR3 => PC_increment_5_0,
      ADR4 => input_enable,
      ADR5 => J_link_sig,
      O => N92
    );
  U_output_port_output_6_U_output_port_output_6_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => read_data1(6),
      O => read_data1_6_0
    );
  U_REG_mux12_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X4Y26"
    )
    port map (
      IA => U_REG_mux12_4_933,
      IB => U_REG_mux12_3_930,
      O => read_data1(6),
      SEL => instruction_sig(11)
    );
  U_REG_mux12_4 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y26",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_0(6),
      ADR1 => U_REG_register_file_1(6),
      ADR2 => U_REG_register_file_3(6),
      ADR3 => U_REG_register_file_2(6),
      ADR4 => instruction_sig(9),
      ADR5 => instruction_sig(10),
      O => U_REG_mux12_4_933
    );
  U_output_port_output_6 : X_FF
    generic map(
      LOC => "SLICE_X4Y26",
      INIT => '0'
    )
    port map (
      CE => output_enable,
      CLK => clock_BUFGP,
      I => read_data1(6),
      O => U_output_port_output(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_mux12_3 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y26",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_4(6),
      ADR1 => U_REG_register_file_5(6),
      ADR2 => U_REG_register_file_7(6),
      ADR3 => U_REG_register_file_6(6),
      ADR4 => instruction_sig(9),
      ADR5 => instruction_sig(10),
      O => U_REG_mux12_3_930
    );
  U_IR_Mram_instruction191115_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y35",
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      ADR0 => U_PC_output_sig(15),
      ADR1 => U_PC_output_sig(7),
      ADR2 => U_PC_output_sig(10),
      ADR3 => U_PC_output_sig(12),
      ADR4 => U_PC_output_sig(14),
      ADR5 => U_PC_output_sig(11),
      O => N1251
    );
  U_IR_Mram_instruction191115 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y35",
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => U_PC_output_sig(13),
      ADR1 => U_PC_output_sig(8),
      ADR2 => U_PC_output_sig(6),
      ADR3 => U_PC_output_sig(9),
      ADR4 => N1251,
      ADR5 => N127,
      O => instruction_sig(9)
    );
  U_IR_Mram_instruction191115_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y35",
      INIT => X"FCFCFC03F33333FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_PC_output_sig(5),
      ADR2 => U_PC_output_sig(2),
      ADR3 => U_PC_output_sig(1),
      ADR4 => U_PC_output_sig(3),
      ADR5 => U_PC_output_sig(4),
      O => N127
    );
  U_IR_Mram_instruction312119_SW1_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y43",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U_PC_output_sig(8),
      ADR5 => U_PC_output_sig(9),
      O => N112
    );
  U_Mux_register_file_alu_Mmux_mux_out131 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y32",
      INIT => X"FF00FFFFFF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => instruction_sig(5),
      ADR4 => U_CU_Mmux_alusrc11_7730,
      ADR5 => read_data2_6_0,
      O => ALUB_sig(6)
    );
  U_ALU_Mmux_result11263_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y32",
      INIT => X"CCFFCF3FCFFFFF3F"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_ALU_controller_alu_signal_1_11,
      ADR2 => read_data1_6_0,
      ADR3 => U_ALU_controller_alu_signal_3_2_7717,
      ADR4 => U_ALU_controller_alu_signal_4_2_7134,
      ADR5 => ALUB_sig(6),
      O => N68
    );
  U_input_port_MUX_Mmux_mux_out141_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y29",
      INIT => X"F0F0FF00F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U_input_port_output_sig(7),
      ADR3 => PC_increment_7_0,
      ADR4 => input_enable,
      ADR5 => J_link_sig,
      O => N98
    );
  U_ALU_Mmux_result11284_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y29",
      INIT => X"FF15EA00FF11EE00"
    )
    port map (
      ADR0 => memread_sig,
      ADR1 => ALU_op_sig(2),
      ADR2 => ALU_op_sig(3),
      ADR3 => N98,
      ADR4 => N99,
      ADR5 => U_ALU_Mmux_result1128,
      O => N349
    );
  U_ALU_Mmux_result11284_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y29",
      INIT => X"FF04FB00FF00FF00"
    )
    port map (
      ADR0 => memread_sig,
      ADR1 => ALU_op_sig(2),
      ADR2 => ALU_op_sig(3),
      ADR3 => N98,
      ADR4 => N99,
      ADR5 => U_ALU_Mmux_result1128,
      O => N350
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_2_f8_12_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y29",
      INIT => X"FFFFF0CC0F330000"
    )
    port map (
      ADR0 => '1',
      ADR1 => N65,
      ADR2 => N66,
      ADR3 => U_ALU_Mmux_result1_split_7_0,
      ADR4 => N349,
      ADR5 => N350,
      O => N254
    );
  N364_N364_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N8_pack_4,
      O => N8
    );
  U_ALU_Mmux_result11244_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y33",
      INIT => X"FFBF4000FFBB4400"
    )
    port map (
      ADR0 => memread_sig,
      ADR1 => ALU_op_sig(2),
      ADR2 => ALU_op_sig(3),
      ADR3 => N92,
      ADR4 => N93,
      ADR5 => U_ALU_Mmux_result1124,
      O => N364
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_2_f8_10_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y33",
      INIT => X"FFFF0F33F0CC0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => N71,
      ADR2 => N72,
      ADR3 => U_ALU_Mmux_result1_split_5_0,
      ADR4 => N365,
      ADR5 => N364,
      O => N249
    );
  U_Mux_branch_mux_control_INV_3_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y33",
      INIT => X"FFFDFFFFFFFDFFFF"
    )
    port map (
      ADR0 => instruction_sig(15),
      ADR1 => instruction_sig(14),
      ADR2 => reset_IBUF_0,
      ADR3 => instruction_sig(12),
      ADR4 => instruction_sig(13),
      ADR5 => '1',
      O => U_Mux_branch_mux_control_INV_3_o1_7015
    );
  U_ALU_controller_alu_signal_2_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X6Y33",
      INIT => X"F3F3F3F3"
    )
    port map (
      ADR0 => '1',
      ADR1 => instruction_sig(14),
      ADR2 => reset_IBUF_0,
      ADR3 => '1',
      ADR4 => '1',
      O => N8_pack_4
    );
  U_ALU_controller_alu_signal_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X6Y33",
      INIT => X"CCCC0000CCCC0040"
    )
    port map (
      ADR0 => instruction_sig(0),
      ADR1 => instruction_sig(1),
      ADR2 => instruction_sig(13),
      ADR3 => instruction_sig(12),
      ADR4 => instruction_sig(2),
      ADR5 => N8,
      O => ALU_op_sig(2)
    );
  U_PC_output_sig_2 : X_FF
    generic map(
      LOC => "SLICE_X6Y34",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => clock_BUFGP,
      I => PC_input(2),
      O => U_PC_output_sig(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_Mux_PC_Rs_Mmux_mux_out92 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y34",
      INIT => X"BA8AAAAAAAAAAAAA"
    )
    port map (
      ADR0 => N224,
      ADR1 => ALU_RESULT_15_Q,
      ADR2 => U_Mux_branch_mux_control_INV_3_o4_7223,
      ADR3 => N225,
      ADR4 => U_Mux_branch_mux_control_INV_3_o2_7656,
      ADR5 => U_Mux_branch_mux_control_INV_3_o3_7657,
      O => PC_input(2)
    );
  U_Mux_branch_mux_control_INV_3_o3 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y34",
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => ALU_RESULT_0_Q,
      ADR1 => ALU_RESULT_5_Q,
      ADR2 => U_ALU_Mmux_result11164_3_7736,
      ADR3 => U_ALU_Mmux_result11224_7791,
      ADR4 => U_ALU_Mmux_result11184_3_7735,
      ADR5 => U_ALU_Mmux_result11204_1_7783,
      O => U_Mux_branch_mux_control_INV_3_o3_7657
    );
  U_PC_output_sig_1 : X_FF
    generic map(
      LOC => "SLICE_X6Y34",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => clock_BUFGP,
      I => PC_input(1),
      O => U_PC_output_sig(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_Mux_PC_Rs_Mmux_mux_out82 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y34",
      INIT => X"BA8AAAAAAAAAAAAA"
    )
    port map (
      ADR0 => N191,
      ADR1 => ALU_RESULT_15_Q,
      ADR2 => U_Mux_branch_mux_control_INV_3_o4_7223,
      ADR3 => N192,
      ADR4 => U_Mux_branch_mux_control_INV_3_o2_7656,
      ADR5 => U_Mux_branch_mux_control_INV_3_o3_7657,
      O => PC_input(1)
    );
  U_PC_output_sig_0 : X_FF
    generic map(
      LOC => "SLICE_X6Y34",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => clock_BUFGP,
      I => PC_input(0),
      O => U_PC_output_sig(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_Mux_PC_Rs_Mmux_mux_out17 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y34",
      INIT => X"F0F00000FFF00F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => J_R_sig,
      ADR3 => U_PC_output_sig(0),
      ADR4 => read_data1_0_0,
      ADR5 => jump_sig,
      O => PC_input(0)
    );
  N225_N225_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N49_pack_6,
      O => N49
    );
  U_Mux_branch_mux_control_INV_3_o5_SW23 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y36",
      INIT => X"FF53AC00FF55AA00"
    )
    port map (
      ADR0 => PC_increment_2_0,
      ADR1 => PC_BRANCH_2_0,
      ADR2 => U_Mux_branch_mux_control_INV_3_o1_7015,
      ADR3 => N49,
      ADR4 => N48,
      ADR5 => ALU_RESULT_14_Q,
      O => N225
    );
  U_Mux_PC_Rs_Mmux_mux_out91_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y36",
      INIT => X"F0F0CC00F0F0CC00"
    )
    port map (
      ADR0 => '1',
      ADR1 => instruction_sig(1),
      ADR2 => read_data1_2_0,
      ADR3 => jump_sig,
      ADR4 => J_R_sig,
      ADR5 => '1',
      O => N48
    );
  U_Mux_PC_Rs_Mmux_mux_out91_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X6Y36",
      INIT => X"F0F0CCFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => instruction_sig(1),
      ADR2 => read_data1_2_0,
      ADR3 => jump_sig,
      ADR4 => J_R_sig,
      O => N49_pack_6
    );
  U_Mux_branch_mux_control_INV_3_o5_SW22 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y36",
      INIT => X"FFFFCCF0330F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => PC_increment_2_0,
      ADR2 => PC_BRANCH_2_0,
      ADR3 => U_Mux_branch_mux_control_INV_3_o1_7015,
      ADR4 => N48,
      ADR5 => N49,
      O => N224
    );
  U_output_port_output_5_U_output_port_output_5_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => read_data1_5_pack_3,
      O => read_data1(5)
    );
  U_REG_mux11_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X6Y26"
    )
    port map (
      IA => U_REG_mux11_4_1587,
      IB => U_REG_mux11_3_1592,
      O => read_data1_5_pack_3,
      SEL => instruction_sig(11)
    );
  U_REG_mux11_4 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y26",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_0(5),
      ADR1 => U_REG_register_file_1(5),
      ADR2 => U_REG_register_file_3(5),
      ADR3 => U_REG_register_file_2(5),
      ADR4 => instruction_sig(9),
      ADR5 => instruction_sig(10),
      O => U_REG_mux11_4_1587
    );
  U_output_port_output_5 : X_FF
    generic map(
      LOC => "SLICE_X6Y26",
      INIT => '0'
    )
    port map (
      CE => output_enable,
      CLK => clock_BUFGP,
      I => read_data1_5_pack_3,
      O => U_output_port_output(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_mux11_3 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y26",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_4(5),
      ADR1 => U_REG_register_file_5(5),
      ADR2 => U_REG_register_file_7(5),
      ADR3 => U_REG_register_file_6(5),
      ADR4 => instruction_sig(9),
      ADR5 => instruction_sig(10),
      O => U_REG_mux11_3_1592
    );
  U_ALU_Mmux_result11243_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y26",
      INIT => X"CCCCCF0CCFCCFF0C"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_ALU_controller_alu_signal_1_11,
      ADR2 => read_data1(5),
      ADR3 => U_ALU_controller_alu_signal_3_2_7717,
      ADR4 => ALU_op_sig(0),
      ADR5 => ALUB_sig(5),
      O => N72
    );
  U_IR_Mram_instruction13117 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y37",
      INIT => X"0000000000040000"
    )
    port map (
      ADR0 => U_PC_output_sig(12),
      ADR1 => U_PC_output_sig(5),
      ADR2 => U_PC_output_sig(14),
      ADR3 => U_PC_output_sig(3),
      ADR4 => U_PC_output_sig(1),
      ADR5 => U_PC_output_sig(9),
      O => U_IR_Mram_instruction13116_7954
    );
  U_IR_Mram_instruction13116_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y37",
      INIT => X"FFFFFFFFFFF0FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U_PC_output_sig(12),
      ADR3 => U_PC_output_sig(14),
      ADR4 => U_PC_output_sig(2),
      ADR5 => U_PC_output_sig(11),
      O => N41
    );
  U_IR_Mram_instruction131114 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y37",
      INIT => X"F0F0F0F010001010"
    )
    port map (
      ADR0 => U_PC_output_sig(11),
      ADR1 => U_PC_output_sig(2),
      ADR2 => U_IR_Mram_instruction1311,
      ADR3 => U_IR_Mram_instruction13116_7954,
      ADR4 => N303,
      ADR5 => U_IR_Mram_instruction13115,
      O => instruction_sig(6)
    );
  U_IR_Mram_instruction13116 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y37",
      INIT => X"0000000000170026"
    )
    port map (
      ADR0 => U_PC_output_sig(5),
      ADR1 => U_PC_output_sig(3),
      ADR2 => U_PC_output_sig(1),
      ADR3 => U_PC_output_sig(9),
      ADR4 => U_PC_output_sig(4),
      ADR5 => N41,
      O => U_IR_Mram_instruction13115
    );
  U_ALU_Mmux_result11263_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y31",
      INIT => X"CCCCCF0CCFCCFF0C"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_ALU_controller_alu_signal_1_11,
      ADR2 => read_data1_6_0,
      ADR3 => U_ALU_controller_alu_signal_3_2_7717,
      ADR4 => U_ALU_controller_alu_signal_4_2_7134,
      ADR5 => ALUB_sig(6),
      O => N69
    );
  U_ALU_Mmux_result11264_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y31",
      INIT => X"FFAE5100FFAA5500"
    )
    port map (
      ADR0 => memread_sig,
      ADR1 => ALU_op_sig(2),
      ADR2 => ALU_op_sig(3),
      ADR3 => N95,
      ADR4 => N96,
      ADR5 => U_ALU_Mmux_result1126,
      O => N359
    );
  U_ALU_Mmux_result11261 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y31",
      INIT => X"AA00CC0FAA0FCCF0"
    )
    port map (
      ADR0 => read_data1(7),
      ADR1 => read_data1(5),
      ADR2 => read_data1_6_0,
      ADR3 => U_ALU_controller_alu_signal_3_2_7717,
      ADR4 => U_ALU_controller_alu_signal_4_2_7134,
      ADR5 => ALUB_sig(6),
      O => U_ALU_Mmux_result1126
    );
  U_ALU_Mmux_result11264 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y31",
      INIT => X"4747030344770033"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => N69,
      ADR3 => N68,
      ADR4 => U_ALU_Mmux_result1126,
      ADR5 => U_ALU_Mmux_result1_split_6_0,
      O => ALU_RESULT_6_Q
    );
  U_IR_Mram_instruction21117 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y35",
      INIT => X"000000FF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U_PC_output_sig(10),
      ADR4 => U_PC_output_sig(6),
      ADR5 => U_PC_output_sig(3),
      O => U_IR_Mram_instruction21116_7846
    );
  U_IR_Mram_instruction23115 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y38",
      INIT => X"0000000000110041"
    )
    port map (
      ADR0 => U_PC_output_sig(6),
      ADR1 => U_PC_output_sig(5),
      ADR2 => U_PC_output_sig(1),
      ADR3 => U_PC_output_sig(9),
      ADR4 => U_PC_output_sig(4),
      ADR5 => N12,
      O => U_IR_Mram_instruction23114
    );
  U_IR_Mram_instruction251111 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y38",
      INIT => X"0000000000360006"
    )
    port map (
      ADR0 => U_PC_output_sig(5),
      ADR1 => U_PC_output_sig(3),
      ADR2 => U_PC_output_sig(1),
      ADR3 => U_PC_output_sig(9),
      ADR4 => U_PC_output_sig(4),
      ADR5 => N12,
      O => U_IR_Mram_instruction251110
    );
  U_IR_Mram_instruction25115 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y38",
      INIT => X"000000000000001A"
    )
    port map (
      ADR0 => U_PC_output_sig(5),
      ADR1 => U_PC_output_sig(3),
      ADR2 => U_PC_output_sig(1),
      ADR3 => U_PC_output_sig(9),
      ADR4 => U_PC_output_sig(4),
      ADR5 => N12,
      O => U_IR_Mram_instruction25114
    );
  U_IR_Mram_instruction251111_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y38",
      INIT => X"FFFFFFFFFFFFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U_PC_output_sig(12),
      ADR4 => U_PC_output_sig(14),
      ADR5 => U_PC_output_sig(11),
      O => N12
    );
  read_data2_6_read_data2_6_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => read_data2(6),
      O => read_data2_6_0
    );
  U_REG_mux28_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X6Y27"
    )
    port map (
      IA => U_REG_mux28_4_1612,
      IB => U_REG_mux28_3_1614,
      O => read_data2(6),
      SEL => instruction_sig(8)
    );
  U_REG_mux28_4 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y27",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_0(6),
      ADR1 => U_REG_register_file_1(6),
      ADR2 => U_REG_register_file_3(6),
      ADR3 => U_REG_register_file_2(6),
      ADR4 => instruction_sig(6),
      ADR5 => instruction_sig(7),
      O => U_REG_mux28_4_1612
    );
  U_REG_mux28_3 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y27",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_4(6),
      ADR1 => U_REG_register_file_5(6),
      ADR2 => U_REG_register_file_7(6),
      ADR3 => U_REG_register_file_6(6),
      ADR4 => instruction_sig(6),
      ADR5 => instruction_sig(7),
      O => U_REG_mux28_3_1614
    );
  U_IR_Mram_instruction7115 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y41",
      INIT => X"0000000000000003"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_PC_output_sig(9),
      ADR2 => U_PC_output_sig(8),
      ADR3 => U_PC_output_sig(14),
      ADR4 => U_PC_output_sig(11),
      ADR5 => N621,
      O => U_IR_Mram_instruction7114
    );
  U_IR_Mram_instruction7119 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y41",
      INIT => X"FF00F0000F000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U_PC_output_sig(5),
      ADR3 => U_IR_Mram_instruction1211,
      ADR4 => U_IR_Mram_instruction7117,
      ADR5 => U_IR_Mram_instruction7114,
      O => instruction_sig(3)
    );
  U_IR_Mram_instruction7118 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y41",
      INIT => X"0000000000110010"
    )
    port map (
      ADR0 => U_PC_output_sig(8),
      ADR1 => U_PC_output_sig(2),
      ADR2 => U_PC_output_sig(3),
      ADR3 => U_PC_output_sig(9),
      ADR4 => U_PC_output_sig(4),
      ADR5 => N64,
      O => U_IR_Mram_instruction7117
    );
  U_IR_Mram_instruction7118_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y41",
      INIT => X"FFFFFFFFFFFFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U_PC_output_sig(14),
      ADR4 => U_PC_output_sig(11),
      ADR5 => U_PC_output_sig(1),
      O => N64
    );
  U_output_port_output_1_U_output_port_output_1_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => read_data1(1),
      O => read_data1_1_0
    );
  U_REG_mux7_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X6Y28"
    )
    port map (
      IA => U_REG_mux7_4_1631,
      IB => U_REG_mux7_3_1640,
      O => read_data1(1),
      SEL => instruction_sig(11)
    );
  U_REG_mux7_4 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y28",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_0(1),
      ADR1 => U_REG_register_file_1(1),
      ADR2 => U_REG_register_file_3(1),
      ADR3 => U_REG_register_file_2(1),
      ADR4 => instruction_sig(9),
      ADR5 => instruction_sig(10),
      O => U_REG_mux7_4_1631
    );
  U_output_port_output_1 : X_FF
    generic map(
      LOC => "SLICE_X6Y28",
      INIT => '0'
    )
    port map (
      CE => output_enable,
      CLK => clock_BUFGP,
      I => read_data1(1),
      O => U_output_port_output(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_mux7_3 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y28",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_4(1),
      ADR1 => U_REG_register_file_5(1),
      ADR2 => U_REG_register_file_7(1),
      ADR3 => U_REG_register_file_6(1),
      ADR4 => instruction_sig(9),
      ADR5 => instruction_sig(10),
      O => U_REG_mux7_3_1640
    );
  U_IR_Mram_instruction231118 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y28",
      INIT => X"AAA22A2288800800"
    )
    port map (
      ADR0 => U_IR_Mram_instruction2311,
      ADR1 => U_PC_output_sig(3),
      ADR2 => U_PC_output_sig(2),
      ADR3 => U_IR_Mram_instruction23114,
      ADR4 => U_IR_Mram_instruction23119,
      ADR5 => U_IR_Mram_instruction231116_7946,
      O => instruction_sig(11)
    );
  U_IR_Mram_instruction231117 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y28",
      INIT => X"ABABABAA01010100"
    )
    port map (
      ADR0 => U_PC_output_sig(5),
      ADR1 => U_PC_output_sig(11),
      ADR2 => U_PC_output_sig(14),
      ADR3 => U_IR_Mram_instruction231110,
      ADR4 => U_IR_Mram_instruction231111_7899,
      ADR5 => U_IR_Mram_instruction231115_0,
      O => U_IR_Mram_instruction231116_7946
    );
  U_REG_register_file_6_7 : X_FF
    generic map(
      LOC => "SLICE_X7Y31",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0089_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(7),
      O => U_REG_register_file_6(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_ALU_Mmux_result11244_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y31",
      INIT => X"FF04FB00FF00FF00"
    )
    port map (
      ADR0 => memread_sig,
      ADR1 => ALU_op_sig(2),
      ADR2 => ALU_op_sig(3),
      ADR3 => N92,
      ADR4 => N93,
      ADR5 => U_ALU_Mmux_result1124,
      O => N362
    );
  U_REG_register_file_6_6 : X_FF
    generic map(
      LOC => "SLICE_X7Y31",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0089_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(6),
      O => U_REG_register_file_6(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_2_f8_10_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y31",
      INIT => X"FFFFF0CC0F330000"
    )
    port map (
      ADR0 => '1',
      ADR1 => N71,
      ADR2 => N72,
      ADR3 => U_ALU_Mmux_result1_split_5_0,
      ADR4 => N361,
      ADR5 => N362,
      O => N248
    );
  U_REG_register_file_6_5 : X_FF
    generic map(
      LOC => "SLICE_X7Y31",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0089_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(5),
      O => U_REG_register_file_6(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_input_port_MUX_Mmux_mux_out122 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y31",
      INIT => X"CCCCF0CCCCF0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => N249,
      ADR2 => N248,
      ADR3 => U_ALU_Mmux_result1122410,
      ADR4 => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f711_0,
      ADR5 => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f711_0,
      O => write_data_level2(5)
    );
  U_REG_register_file_6_4 : X_FF
    generic map(
      LOC => "SLICE_X7Y31",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0089_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(4),
      O => U_REG_register_file_6(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_ALU_Mmux_result11224_11 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y31",
      INIT => X"4073407340407373"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => U_ALU_Mmux_result1122,
      ADR3 => N75,
      ADR4 => N74,
      ADR5 => U_ALU_Mmux_result1_split_4_0,
      O => U_ALU_Mmux_result1122410
    );
  U_Mux_register_file_alu_Mmux_mux_out121 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y32",
      INIT => X"FF00FFFFFF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => instruction_sig(5),
      ADR4 => alusrc_sig,
      ADR5 => read_data2_5_0,
      O => ALUB_sig(5)
    );
  U_ALU_Mmux_result11243_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y32",
      INIT => X"CCFFCF3FCFFFFF3F"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_ALU_controller_alu_signal_1_11,
      ADR2 => read_data1(5),
      ADR3 => U_ALU_controller_alu_signal_3_2_7717,
      ADR4 => ALU_op_sig(0),
      ADR5 => ALUB_sig(5),
      O => N71
    );
  U_REG_register_file_7_2 : X_FF
    generic map(
      LOC => "SLICE_X7Y20",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0093_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(2),
      O => U_REG_register_file_7(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_7_1 : X_FF
    generic map(
      LOC => "SLICE_X7Y20",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0093_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(1),
      O => U_REG_register_file_7(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_7_0 : X_FF
    generic map(
      LOC => "SLICE_X7Y20",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0093_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(0),
      O => U_REG_register_file_7(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_input_port_MUX_Mmux_mux_out18 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y20",
      INIT => X"CCCCF0CCCCF0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => N243,
      ADR2 => N242,
      ADR3 => U_ALU_Mmux_result1122410,
      ADR4 => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f7_0_7475,
      ADR5 => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f7_0_7484,
      O => write_data_level2(0)
    );
  U_ALU_Mmux_result11244_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y33",
      INIT => X"FFAE5100FFAA5500"
    )
    port map (
      ADR0 => memread_sig,
      ADR1 => ALU_op_sig(2),
      ADR2 => ALU_op_sig(3),
      ADR3 => N92,
      ADR4 => N93,
      ADR5 => U_ALU_Mmux_result1124,
      O => N365
    );
  U_ALU_Mmux_result11244_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y33",
      INIT => X"FF15EA00FF11EE00"
    )
    port map (
      ADR0 => memread_sig,
      ADR1 => ALU_op_sig(2),
      ADR2 => ALU_op_sig(3),
      ADR3 => N92,
      ADR4 => N93,
      ADR5 => U_ALU_Mmux_result1124,
      O => N361
    );
  U_ALU_Mmux_result11241 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y33",
      INIT => X"AACC000FAACC0FF0"
    )
    port map (
      ADR0 => read_data1_6_0,
      ADR1 => read_data1_4_0,
      ADR2 => read_data1(5),
      ADR3 => ALU_op_sig(0),
      ADR4 => ALU_op_sig(1),
      ADR5 => ALUB_sig(5),
      O => U_ALU_Mmux_result1124
    );
  U_ALU_Mmux_result11244 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y33",
      INIT => X"4747030344770033"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => N72,
      ADR3 => N71,
      ADR4 => U_ALU_Mmux_result1124,
      ADR5 => U_ALU_Mmux_result1_split_5_0,
      O => ALU_RESULT_5_Q
    );
  U_ALU_Mmux_result11284_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y29",
      INIT => X"FFBF4000FFBB4400"
    )
    port map (
      ADR0 => memread_sig,
      ADR1 => ALU_op_sig(2),
      ADR2 => ALU_op_sig(3),
      ADR3 => N98,
      ADR4 => N99,
      ADR5 => U_ALU_Mmux_result1128,
      O => N352
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_2_f8_12_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y29",
      INIT => X"FFFF0F33F0CC0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => N65,
      ADR2 => N66,
      ADR3 => U_ALU_Mmux_result1_split_7_0,
      ADR4 => N353,
      ADR5 => N352,
      O => N255
    );
  U_ALU_Mmux_result11281 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y29",
      INIT => X"AA00CC0FAA0FCCF0"
    )
    port map (
      ADR0 => read_data1(8),
      ADR1 => read_data1_6_0,
      ADR2 => read_data1(7),
      ADR3 => U_ALU_controller_alu_signal_3_2_7717,
      ADR4 => U_ALU_controller_alu_signal_4_2_7134,
      ADR5 => ALUB_sig(7),
      O => U_ALU_Mmux_result1128
    );
  U_ALU_Mmux_result11284 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y29",
      INIT => X"4747030344770033"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => N66,
      ADR3 => N65,
      ADR4 => U_ALU_Mmux_result1128,
      ADR5 => U_ALU_Mmux_result1_split_7_0,
      O => ALU_RESULT_7_Q
    );
  U_REG_register_file_6_3 : X_FF
    generic map(
      LOC => "SLICE_X7Y21",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0089_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(3),
      O => U_REG_register_file_6(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_6_2 : X_FF
    generic map(
      LOC => "SLICE_X7Y21",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0089_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(2),
      O => U_REG_register_file_6(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_6_1 : X_FF
    generic map(
      LOC => "SLICE_X7Y21",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0089_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(1),
      O => U_REG_register_file_6(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_6_0 : X_FF
    generic map(
      LOC => "SLICE_X7Y21",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0089_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(0),
      O => U_REG_register_file_6(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_ALU_Mmux_result11204_10 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y16",
      INIT => X"4447000374773033"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => U_ALU_Mmux_result1_split_3_0,
      ADR3 => N77,
      ADR4 => U_ALU_Mmux_result1120,
      ADR5 => N78,
      O => U_ALU_Mmux_result112049
    );
  U_ALU_Mmux_result11284_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y30",
      INIT => X"FFAE5100FFAA5500"
    )
    port map (
      ADR0 => memread_sig,
      ADR1 => ALU_op_sig(2),
      ADR2 => ALU_op_sig(3),
      ADR3 => N98,
      ADR4 => N99,
      ADR5 => U_ALU_Mmux_result1128,
      O => N353
    );
  U_input_port_MUX_Mmux_mux_out141_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y30",
      INIT => X"F0F0FF00F0F0FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U_input_port_output_sig(7),
      ADR3 => PC_increment_7_0,
      ADR4 => input_enable,
      ADR5 => J_link_sig,
      O => N99
    );
  U_REG_register_file_5_3_U_REG_register_file_5_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N126_pack_1,
      O => N126
    );
  U_REG_register_file_5_3 : X_FF
    generic map(
      LOC => "SLICE_X7Y22",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0085_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(3),
      O => U_REG_register_file_5(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_5_2 : X_FF
    generic map(
      LOC => "SLICE_X7Y22",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0085_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(2),
      O => U_REG_register_file_5(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_2_f8_6_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y22",
      INIT => X"FF0FF000FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => memread_sig,
      ADR3 => N125,
      ADR4 => N126,
      ADR5 => U_ALU_Mmux_result111641,
      O => N263
    );
  U_REG_register_file_5_1 : X_FF
    generic map(
      LOC => "SLICE_X7Y22",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0085_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(1),
      O => U_REG_register_file_5(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_input_port_MUX_Mmux_mux_out82 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y22",
      INIT => X"F0F0FC30F3C0FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_ALU_Mmux_result1122410,
      ADR2 => N264,
      ADR3 => N263,
      ADR4 => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f77_0,
      ADR5 => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f77_0,
      O => write_data_level2(1)
    );
  U_REG_register_file_5_0 : X_FF
    generic map(
      LOC => "SLICE_X7Y22",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0085_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(0),
      O => U_REG_register_file_5(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_input_port_MUX_Mmux_mux_out81_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y22",
      INIT => X"CCF0CC00CCF0CC00"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_input_port_output_sig(1),
      ADR2 => PC_increment_1_0,
      ADR3 => input_enable,
      ADR4 => J_link_sig,
      ADR5 => '1',
      O => N125
    );
  U_input_port_MUX_Mmux_mux_out81_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X7Y22",
      INIT => X"CCF0CCFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_input_port_output_sig(1),
      ADR2 => PC_increment_1_0,
      ADR3 => input_enable,
      ADR4 => J_link_sig,
      O => N126_pack_1
    );
  N204_N204_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N28_pack_6,
      O => N28
    );
  U_Mux_branch_mux_control_INV_3_o5_SW9 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y42",
      INIT => X"FF53AC00FF55AA00"
    )
    port map (
      ADR0 => PC_increment_6_0,
      ADR1 => PC_BRANCH_6_0,
      ADR2 => U_Mux_branch_mux_control_INV_3_o1_7015,
      ADR3 => N28,
      ADR4 => N27,
      ADR5 => ALU_RESULT_14_Q,
      O => N204
    );
  U_Mux_PC_Rs_Mmux_mux_out131_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y42",
      INIT => X"F0F0CC00F0F0CC00"
    )
    port map (
      ADR0 => '1',
      ADR1 => instruction_sig(5),
      ADR2 => read_data1_6_0,
      ADR3 => jump_sig,
      ADR4 => J_R_sig,
      ADR5 => '1',
      O => N27
    );
  U_Mux_PC_Rs_Mmux_mux_out131_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X6Y42",
      INIT => X"F0F0CCFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => instruction_sig(5),
      ADR2 => read_data1_6_0,
      ADR3 => jump_sig,
      ADR4 => J_R_sig,
      O => N28_pack_6
    );
  U_Mux_branch_mux_control_INV_3_o5_SW8 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y42",
      INIT => X"FFFFCCF0330F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => PC_increment_6_0,
      ADR2 => PC_BRANCH_6_0,
      ADR3 => U_Mux_branch_mux_control_INV_3_o1_7015,
      ADR4 => N27,
      ADR5 => N28,
      O => N203
    );
  U_REG_register_file_3_7 : X_FF
    generic map(
      LOC => "SLICE_X7Y26",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0077_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(7),
      O => U_REG_register_file_3(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_3_6 : X_FF
    generic map(
      LOC => "SLICE_X7Y26",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0077_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(6),
      O => U_REG_register_file_3(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_3_5 : X_FF
    generic map(
      LOC => "SLICE_X7Y26",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0077_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(5),
      O => U_REG_register_file_3(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_3_4 : X_FF
    generic map(
      LOC => "SLICE_X7Y26",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0077_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(4),
      O => U_REG_register_file_3(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_5_7_U_REG_register_file_5_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N90,
      O => N90_0
    );
  U_REG_register_file_5_7 : X_FF
    generic map(
      LOC => "SLICE_X7Y27",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0085_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(7),
      O => U_REG_register_file_5(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_input_port_MUX_Mmux_mux_out101_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y27",
      INIT => X"CFC0C0C0CFC0C0C0"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_input_port_output_sig(3),
      ADR2 => input_enable,
      ADR3 => PC_increment_3_0,
      ADR4 => J_link_sig,
      ADR5 => '1',
      O => N89
    );
  U_input_port_MUX_Mmux_mux_out101_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X7Y27",
      INIT => X"CFC0CFCF"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_input_port_output_sig(3),
      ADR2 => input_enable,
      ADR3 => PC_increment_3_0,
      ADR4 => J_link_sig,
      O => N90
    );
  U_REG_register_file_5_6 : X_FF
    generic map(
      LOC => "SLICE_X7Y27",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0085_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(6),
      O => U_REG_register_file_5(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_5_5 : X_FF
    generic map(
      LOC => "SLICE_X7Y27",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0085_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(5),
      O => U_REG_register_file_5(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_5_4 : X_FF
    generic map(
      LOC => "SLICE_X7Y27",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0085_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(4),
      O => U_REG_register_file_5(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_IR_Mram_instruction211111 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y34",
      INIT => X"0000000000040051"
    )
    port map (
      ADR0 => U_PC_output_sig(5),
      ADR1 => U_PC_output_sig(2),
      ADR2 => U_PC_output_sig(1),
      ADR3 => U_PC_output_sig(9),
      ADR4 => U_PC_output_sig(4),
      ADR5 => N12,
      O => U_IR_Mram_instruction211110
    );
  U_IR_Mram_instruction211114 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y34",
      INIT => X"CCC0CCC0CCC0CC00"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_IR_Mram_instruction2111,
      ADR2 => U_IR_Mram_instruction21116_7846,
      ADR3 => U_IR_Mram_instruction21115,
      ADR4 => U_IR_Mram_instruction211112_7897,
      ADR5 => U_IR_Mram_instruction211110,
      O => instruction_sig(10)
    );
  U_IR_Mram_instruction21116 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y34",
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => U_PC_output_sig(9),
      ADR1 => U_PC_output_sig(6),
      ADR2 => U_PC_output_sig(3),
      ADR3 => U_PC_output_sig(14),
      ADR4 => U_PC_output_sig(12),
      ADR5 => N2,
      O => U_IR_Mram_instruction21115
    );
  U_IR_Mram_instruction21116_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y34",
      INIT => X"FEFEFFFBFFFFFBFF"
    )
    port map (
      ADR0 => U_PC_output_sig(10),
      ADR1 => U_PC_output_sig(5),
      ADR2 => U_PC_output_sig(11),
      ADR3 => U_PC_output_sig(2),
      ADR4 => U_PC_output_sig(1),
      ADR5 => U_PC_output_sig(4),
      O => N2
    );
  U_IR_Mram_instruction151120_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y36",
      INIT => X"FFFFFFFFFFFF918F"
    )
    port map (
      ADR0 => U_PC_output_sig(5),
      ADR1 => U_PC_output_sig(4),
      ADR2 => U_PC_output_sig(3),
      ADR3 => U_PC_output_sig(1),
      ADR4 => U_PC_output_sig(9),
      ADR5 => N721,
      O => N283
    );
  U_IR_Mram_instruction131114_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y36",
      INIT => X"FFFFFFFFFFFFF9D9"
    )
    port map (
      ADR0 => U_PC_output_sig(5),
      ADR1 => U_PC_output_sig(4),
      ADR2 => U_PC_output_sig(3),
      ADR3 => U_PC_output_sig(1),
      ADR4 => U_PC_output_sig(9),
      ADR5 => N721,
      O => N303
    );
  U_IR_Mram_instruction151120_SW0_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y36",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U_PC_output_sig(12),
      ADR5 => U_PC_output_sig(14),
      O => N721
    );
  U_IR_Mram_instruction3115 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y35",
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => U_PC_output_sig(9),
      ADR1 => U_PC_output_sig(6),
      ADR2 => U_PC_output_sig(12),
      ADR3 => U_PC_output_sig(11),
      ADR4 => U_PC_output_sig(10),
      ADR5 => N241,
      O => U_IR_Mram_instruction3114
    );
  U_IR_Mram_instruction3115_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y35",
      INIT => X"FF00FFFFF0FF0FFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U_PC_output_sig(2),
      ADR3 => U_PC_output_sig(3),
      ADR4 => U_PC_output_sig(1),
      ADR5 => U_PC_output_sig(4),
      O => N241
    );
  U_IR_Mram_instruction151115 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y37",
      INIT => X"000000000004004C"
    )
    port map (
      ADR0 => U_PC_output_sig(5),
      ADR1 => U_PC_output_sig(3),
      ADR2 => U_PC_output_sig(1),
      ADR3 => U_PC_output_sig(9),
      ADR4 => U_PC_output_sig(4),
      ADR5 => N12,
      O => U_IR_Mram_instruction151114
    );
  U_IR_Mram_instruction151120 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y37",
      INIT => X"C0D0C0D0C0D00010"
    )
    port map (
      ADR0 => U_PC_output_sig(11),
      ADR1 => U_PC_output_sig(2),
      ADR2 => U_IR_Mram_instruction1311,
      ADR3 => N283,
      ADR4 => U_IR_Mram_instruction151118,
      ADR5 => U_IR_Mram_instruction151114,
      O => instruction_sig(7)
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f78_U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f78_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f78,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f78_0
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f7_7 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y16"
    )
    port map (
      IA => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_68_2295,
      IB => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_517_2300,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f78,
      SEL => U_ALU_Mmux_result11204_11_7297
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_68 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y16",
      INIT => X"F0F0CCCCFF00AAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_0(2),
      ADR1 => U_datamemory_data_memory_1(2),
      ADR2 => U_datamemory_data_memory_3(2),
      ADR3 => U_datamemory_data_memory_2(2),
      ADR4 => U_ALU_Mmux_result11184_2_7302,
      ADR5 => U_ALU_Mmux_result111641,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_68_2295
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_517 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y16",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_4(2),
      ADR1 => U_datamemory_data_memory_5(2),
      ADR2 => U_datamemory_data_memory_7(2),
      ADR3 => U_datamemory_data_memory_6(2),
      ADR4 => U_ALU_Mmux_result111642,
      ADR5 => U_ALU_Mmux_result111842,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_517_2300
    );
  U_ALU_controller_alu_signal_4_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y38",
      INIT => X"FFFF00FFFF00FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => instruction_sig(15),
      ADR4 => instruction_sig(12),
      ADR5 => instruction_sig(13),
      O => N4
    );
  U_ALU_controller_alu_signal_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y38",
      INIT => X"A6A6A6A6A6A6B6A6"
    )
    port map (
      ADR0 => instruction_sig(2),
      ADR1 => instruction_sig(0),
      ADR2 => instruction_sig(1),
      ADR3 => instruction_sig(14),
      ADR4 => reset_IBUF_0,
      ADR5 => N4,
      O => ALU_op_sig(0)
    );
  U_CU_Mmux_alusrc11 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y38",
      INIT => X"0300030003000330"
    )
    port map (
      ADR0 => '1',
      ADR1 => reset_IBUF_0,
      ADR2 => instruction_sig(15),
      ADR3 => instruction_sig(14),
      ADR4 => instruction_sig(13),
      ADR5 => instruction_sig(12),
      O => alusrc_sig
    );
  U_IR_Mram_instruction251112 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y38",
      INIT => X"F0F0E0A050504000"
    )
    port map (
      ADR0 => U_PC_output_sig(2),
      ADR1 => U_IR_Mram_instruction25116_7854,
      ADR2 => U_IR_Mram_instruction1311,
      ADR3 => U_IR_Mram_instruction25115_7853,
      ADR4 => U_IR_Mram_instruction25114,
      ADR5 => U_IR_Mram_instruction251110,
      O => instruction_sig(12)
    );
  read_data2_5_read_data2_5_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => read_data2(5),
      O => read_data2_5_0
    );
  U_REG_mux27_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y26"
    )
    port map (
      IA => U_REG_mux27_4_2382,
      IB => U_REG_mux27_3_2384,
      O => read_data2(5),
      SEL => instruction_sig(8)
    );
  U_REG_mux27_4 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y26",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_0(5),
      ADR1 => U_REG_register_file_1(5),
      ADR2 => U_REG_register_file_3(5),
      ADR3 => U_REG_register_file_2(5),
      ADR4 => instruction_sig(6),
      ADR5 => instruction_sig(7),
      O => U_REG_mux27_4_2382
    );
  U_REG_mux27_3 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y26",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_4(5),
      ADR1 => U_REG_register_file_5(5),
      ADR2 => U_REG_register_file_7(5),
      ADR3 => U_REG_register_file_6(5),
      ADR4 => instruction_sig(6),
      ADR5 => instruction_sig(7),
      O => U_REG_mux27_3_2384
    );
  U_IR_Mram_instruction7115_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y41",
      INIT => X"FF00FFFF00FFFFF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U_PC_output_sig(2),
      ADR3 => U_PC_output_sig(3),
      ADR4 => U_PC_output_sig(1),
      ADR5 => U_PC_output_sig(4),
      O => N621
    );
  U_REG_register_file_3_3 : X_FF
    generic map(
      LOC => "SLICE_X8Y21",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0077_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(3),
      O => U_REG_register_file_3(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_3_2 : X_FF
    generic map(
      LOC => "SLICE_X8Y21",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0077_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(2),
      O => U_REG_register_file_3(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_3_1 : X_FF
    generic map(
      LOC => "SLICE_X8Y21",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0077_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(1),
      O => U_REG_register_file_3(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_3_0 : X_FF
    generic map(
      LOC => "SLICE_X8Y21",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0077_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(0),
      O => U_REG_register_file_3(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_IR_Mram_instruction11217 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y44",
      INIT => X"0000000000000054"
    )
    port map (
      ADR0 => U_PC_output_sig(6),
      ADR1 => U_PC_output_sig(2),
      ADR2 => U_PC_output_sig(3),
      ADR3 => U_PC_output_sig(9),
      ADR4 => U_PC_output_sig(4),
      ADR5 => N12,
      O => U_IR_Mram_instruction11216
    );
  N198_N198_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N22_pack_6,
      O => N22
    );
  U_Mux_branch_mux_control_INV_3_o5_SW5 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y42",
      INIT => X"FF53AC00FF55AA00"
    )
    port map (
      ADR0 => PC_increment_4_0,
      ADR1 => PC_BRANCH_4_0,
      ADR2 => U_Mux_branch_mux_control_INV_3_o1_7015,
      ADR3 => N22,
      ADR4 => N21,
      ADR5 => ALU_RESULT_14_Q,
      O => N198
    );
  U_Mux_PC_Rs_Mmux_mux_out111_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y42",
      INIT => X"F0F0CC00F0F0CC00"
    )
    port map (
      ADR0 => '1',
      ADR1 => instruction_sig(3),
      ADR2 => read_data1_4_0,
      ADR3 => jump_sig,
      ADR4 => J_R_sig,
      ADR5 => '1',
      O => N21
    );
  U_Mux_PC_Rs_Mmux_mux_out111_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X7Y42",
      INIT => X"F0F0CCFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => instruction_sig(3),
      ADR2 => read_data1_4_0,
      ADR3 => jump_sig,
      ADR4 => J_R_sig,
      O => N22_pack_6
    );
  U_Mux_branch_mux_control_INV_3_o5_SW4 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y42",
      INIT => X"FFFFCCF0330F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => PC_increment_4_0,
      ADR2 => PC_BRANCH_4_0,
      ADR3 => U_Mux_branch_mux_control_INV_3_o1_7015,
      ADR4 => N21,
      ADR5 => N22,
      O => N197
    );
  U_datamemory_data_memory_2_3 : X_FF
    generic map(
      LOC => "SLICE_X8Y14",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_2_3_dpot_2238,
      O => U_datamemory_data_memory_2(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_2_3_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X8Y14",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2_3_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112245,
      ADR3 => U_datamemory_data_memory_2(3),
      ADR4 => U_ALU_Mmux_result112046,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_2_3_dpot_2238
    );
  U_datamemory_data_memory_2_2 : X_FF
    generic map(
      LOC => "SLICE_X8Y14",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_2_2_dpot_2237,
      O => U_datamemory_data_memory_2(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_2_2_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X8Y14",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2_2_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112245,
      ADR3 => U_datamemory_data_memory_2(2),
      ADR4 => U_ALU_Mmux_result112046,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_2_2_dpot_2237
    );
  U_datamemory_data_memory_2_1 : X_FF
    generic map(
      LOC => "SLICE_X8Y14",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_2_1_dpot_2240,
      O => U_datamemory_data_memory_2(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_2_1_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X8Y14",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2_1_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112244,
      ADR3 => U_datamemory_data_memory_2(1),
      ADR4 => U_ALU_Mmux_result112046,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_2_1_dpot_2240
    );
  U_datamemory_data_memory_2_0 : X_FF
    generic map(
      LOC => "SLICE_X8Y14",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_2_0_dpot_2249,
      O => U_datamemory_data_memory_2(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_2_0_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X8Y14",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2_0_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112244,
      ADR3 => U_datamemory_data_memory_2(0),
      ADR4 => U_ALU_Mmux_result112046,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_2_0_dpot_2249
    );
  U_datamemory_data_memory_0_3 : X_FF
    generic map(
      LOC => "SLICE_X8Y15",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0185_inv1_cepot_7672,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_0_3_dpot_2273,
      O => U_datamemory_data_memory_0(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_0_3_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X8Y15",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2_3_0,
      ADR1 => memwrite_sig,
      ADR2 => ALU_RESULT_4_Q,
      ADR3 => U_datamemory_data_memory_0(3),
      ADR4 => ALU_RESULT_1_Q,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_0_3_dpot_2273
    );
  U_datamemory_data_memory_0_2 : X_FF
    generic map(
      LOC => "SLICE_X8Y15",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0185_inv1_cepot_7672,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_0_2_dpot_2272,
      O => U_datamemory_data_memory_0(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_0_2_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X8Y15",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2_2_0,
      ADR1 => memwrite_sig,
      ADR2 => ALU_RESULT_4_Q,
      ADR3 => U_datamemory_data_memory_0(2),
      ADR4 => ALU_RESULT_1_Q,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_0_2_dpot_2272
    );
  U_datamemory_data_memory_0_1 : X_FF
    generic map(
      LOC => "SLICE_X8Y15",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0185_inv1_cepot_7672,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_0_1_dpot_2275,
      O => U_datamemory_data_memory_0(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_0_1_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X8Y15",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2_1_0,
      ADR1 => memwrite_sig,
      ADR2 => ALU_RESULT_4_Q,
      ADR3 => U_datamemory_data_memory_0(1),
      ADR4 => ALU_RESULT_1_Q,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_0_1_dpot_2275
    );
  U_datamemory_data_memory_0_0 : X_FF
    generic map(
      LOC => "SLICE_X8Y15",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0185_inv1_cepot_7672,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_0_0_dpot_2284,
      O => U_datamemory_data_memory_0(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_0_0_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X8Y15",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2_0_0,
      ADR1 => memwrite_sig,
      ADR2 => ALU_RESULT_4_Q,
      ADR3 => U_datamemory_data_memory_0(0),
      ADR4 => ALU_RESULT_1_Q,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_0_0_dpot_2284
    );
  N210_N210_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N34_pack_6,
      O => N34
    );
  U_Mux_branch_mux_control_INV_3_o5_SW13 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y46",
      INIT => X"FF53AC00FF55AA00"
    )
    port map (
      ADR0 => PC_increment_8_0,
      ADR1 => PC_BRANCH_8_0,
      ADR2 => U_Mux_branch_mux_control_INV_3_o1_7015,
      ADR3 => N34,
      ADR4 => N33,
      ADR5 => ALU_RESULT_14_Q,
      O => N210
    );
  U_Mux_PC_Rs_Mmux_mux_out151_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y46",
      INIT => X"F0F0CC00F0F0CC00"
    )
    port map (
      ADR0 => '1',
      ADR1 => instruction_sig(7),
      ADR2 => read_data1(8),
      ADR3 => jump_sig,
      ADR4 => J_R_sig,
      ADR5 => '1',
      O => N33
    );
  U_Mux_PC_Rs_Mmux_mux_out151_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X7Y46",
      INIT => X"F0F0CCFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => instruction_sig(7),
      ADR2 => read_data1(8),
      ADR3 => jump_sig,
      ADR4 => J_R_sig,
      O => N34_pack_6
    );
  U_Mux_branch_mux_control_INV_3_o5_SW12 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y46",
      INIT => X"FFFFCFC0303F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => PC_increment_8_0,
      ADR2 => U_Mux_branch_mux_control_INV_3_o1_7015,
      ADR3 => PC_BRANCH_8_0,
      ADR4 => N33,
      ADR5 => N34,
      O => N209
    );
  U_REG_register_file_7_3_U_REG_register_file_7_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => write_data_level2_3_pack_7,
      O => write_data_level2(3)
    );
  U_input_port_MUX_Mmux_mux_out102 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y20"
    )
    port map (
      IA => N375,
      IB => N376,
      O => write_data_level2_3_pack_7,
      SEL => ALU_RESULT_4_Q
    );
  U_REG_register_file_7_3 : X_FF
    generic map(
      LOC => "SLICE_X8Y20",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0093_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(3),
      O => U_REG_register_file_7(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_input_port_MUX_Mmux_mux_out102_F : X_LUT6
    generic map(
      LOC => "SLICE_X8Y20",
      INIT => X"CDEDC848DDFD8808"
    )
    port map (
      ADR0 => U_ALU_Mmux_result1120412,
      ADR1 => N90_0,
      ADR2 => memread_sig,
      ADR3 => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_519_7241,
      ADR4 => N89,
      ADR5 => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_69_7974,
      O => N375
    );
  U_input_port_MUX_Mmux_mux_out102_G : X_LUT6
    generic map(
      LOC => "SLICE_X8Y20",
      INIT => X"CDEDC848DDFD8808"
    )
    port map (
      ADR0 => U_ALU_Mmux_result1120412,
      ADR1 => N90_0,
      ADR2 => memread_sig,
      ADR3 => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_49_7238,
      ADR4 => N89,
      ADR5 => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_518_7975,
      O => N376
    );
  U_REG_register_file_7_5 : X_FF
    generic map(
      LOC => "SLICE_X8Y20",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0093_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(5),
      O => U_REG_register_file_7(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_518 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y20",
      INIT => X"F0F0CCCCFF00AAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_8(3),
      ADR1 => U_datamemory_data_memory_9(3),
      ADR2 => U_datamemory_data_memory_11(3),
      ADR3 => U_datamemory_data_memory_10(3),
      ADR4 => U_ALU_Mmux_result111841,
      ADR5 => U_ALU_Mmux_result111641,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_518_7975
    );
  U_REG_register_file_7_4 : X_FF
    generic map(
      LOC => "SLICE_X8Y20",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0093_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(4),
      O => U_REG_register_file_7(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_69 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y20",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_0(3),
      ADR1 => U_datamemory_data_memory_1(3),
      ADR2 => U_datamemory_data_memory_3(3),
      ADR3 => U_datamemory_data_memory_2(3),
      ADR4 => U_ALU_Mmux_result11164_7229,
      ADR5 => U_ALU_Mmux_result11184_7230,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_69_7974
    );
  U_Mux_register_file_alu_Mmux_mux_out111 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y25",
      INIT => X"FF00FFFFFF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => instruction_sig(4),
      ADR4 => U_CU_Mmux_alusrc11_7730,
      ADR5 => read_data2_4_0,
      O => ALUB_sig(4)
    );
  U_ALU_Mmux_result11221 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y25",
      INIT => X"AA00CC0FAA0FCCF0"
    )
    port map (
      ADR0 => read_data1(5),
      ADR1 => read_data1(3),
      ADR2 => read_data1_4_0,
      ADR3 => U_ALU_controller_alu_signal_3_1_7716,
      ADR4 => U_ALU_controller_alu_signal_4_1_7129,
      ADR5 => ALUB_sig(4),
      O => U_ALU_Mmux_result1122
    );
  U_Mux_register_file_alu_Mmux_mux_out101 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y25",
      INIT => X"FF00FFFFFF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => instruction_sig(3),
      ADR4 => U_CU_Mmux_alusrc11_7730,
      ADR5 => read_data2_3_0,
      O => ALUB_sig(3)
    );
  U_ALU_Mmux_result11201 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y25",
      INIT => X"AA00CC0FAA0FCCF0"
    )
    port map (
      ADR0 => read_data1_4_0,
      ADR1 => read_data1_2_0,
      ADR2 => read_data1(3),
      ADR3 => U_ALU_controller_alu_signal_3_1_7716,
      ADR4 => U_ALU_controller_alu_signal_4_1_7129,
      ADR5 => ALUB_sig(3),
      O => U_ALU_Mmux_result1120
    );
  U_IR_Mram_instruction9118 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y42",
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => U_PC_output_sig(8),
      ADR1 => U_PC_output_sig(6),
      ADR2 => U_PC_output_sig(13),
      ADR3 => U_PC_output_sig(11),
      ADR4 => U_PC_output_sig(10),
      ADR5 => N26,
      O => U_IR_Mram_instruction9117
    );
  U_IR_Mram_instruction9118_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y42",
      INIT => X"FFF0FFFF0F0FFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U_PC_output_sig(2),
      ADR3 => U_PC_output_sig(3),
      ADR4 => U_PC_output_sig(1),
      ADR5 => U_PC_output_sig(4),
      O => N26
    );
  U_IR_Mram_instruction25116 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y39",
      INIT => X"0000000400000000"
    )
    port map (
      ADR0 => U_PC_output_sig(12),
      ADR1 => U_PC_output_sig(5),
      ADR2 => U_PC_output_sig(3),
      ADR3 => U_PC_output_sig(1),
      ADR4 => U_PC_output_sig(9),
      ADR5 => U_PC_output_sig(4),
      O => U_IR_Mram_instruction25115_7853
    );
  N234_N234_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N43_pack_9,
      O => N43
    );
  U_Mux_branch_mux_control_INV_3_o5_SW26 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y47",
      INIT => X"EEEFEEEA44454440"
    )
    port map (
      ADR0 => J_R_sig,
      ADR1 => PC_increment_14_0,
      ADR2 => U_Mux_branch_mux_control_INV_3_o1_7015,
      ADR3 => jump_sig,
      ADR4 => PC_BRANCH_14_0,
      ADR5 => read_data1(14),
      O => N234
    );
  U_Mux_branch_mux_control_INV_3_o5_SW19 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y47",
      INIT => X"FF47B800FF55AA00"
    )
    port map (
      ADR0 => PC_increment_11_0,
      ADR1 => U_Mux_branch_mux_control_INV_3_o1_7015,
      ADR2 => PC_BRANCH_11_0,
      ADR3 => N43,
      ADR4 => N42,
      ADR5 => ALU_RESULT_14_Q,
      O => N219
    );
  U_Mux_PC_Rs_Mmux_mux_out31_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y47",
      INIT => X"F0F0CC00F0F0CC00"
    )
    port map (
      ADR0 => '1',
      ADR1 => instruction_sig(10),
      ADR2 => read_data1(11),
      ADR3 => jump_sig,
      ADR4 => J_R_sig,
      ADR5 => '1',
      O => N42
    );
  U_Mux_PC_Rs_Mmux_mux_out31_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X8Y47",
      INIT => X"F0F0CCFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => instruction_sig(10),
      ADR2 => read_data1(11),
      ADR3 => jump_sig,
      ADR4 => J_R_sig,
      O => N43_pack_9
    );
  U_Mux_branch_mux_control_INV_3_o5_SW18 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y47",
      INIT => X"FFFFCFC0303F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => PC_increment_11_0,
      ADR2 => U_Mux_branch_mux_control_INV_3_o1_7015,
      ADR3 => PC_BRANCH_11_0,
      ADR4 => N42,
      ADR5 => N43,
      O => N218
    );
  U_IR_Mram_instruction9114_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y43",
      INIT => X"FFF0FFF0FFFFFFF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U_PC_output_sig(11),
      ADR3 => U_PC_output_sig(10),
      ADR4 => U_PC_output_sig(3),
      ADR5 => U_PC_output_sig(2),
      O => N661
    );
  U_IR_Mram_instruction9111 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y43",
      INIT => X"000000000000000F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U_PC_output_sig(5),
      ADR3 => U_PC_output_sig(14),
      ADR4 => U_PC_output_sig(9),
      ADR5 => U_PC_output_sig(1),
      O => U_IR_Mram_instruction911
    );
  U_IR_Mram_instruction9114 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y43",
      INIT => X"0000000001000000"
    )
    port map (
      ADR0 => U_PC_output_sig(13),
      ADR1 => U_PC_output_sig(8),
      ADR2 => U_PC_output_sig(6),
      ADR3 => U_PC_output_sig(4),
      ADR4 => U_IR_Mram_instruction911,
      ADR5 => N661,
      O => U_IR_Mram_instruction9113
    );
  U_IR_Mram_instruction91110 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y43",
      INIT => X"0101010101000000"
    )
    port map (
      ADR0 => U_PC_output_sig(15),
      ADR1 => U_PC_output_sig(7),
      ADR2 => U_PC_output_sig(12),
      ADR3 => U_IR_Mram_instruction9118_7919,
      ADR4 => U_IR_Mram_instruction9117,
      ADR5 => U_IR_Mram_instruction9113,
      O => instruction_sig(4)
    );
  U_Mux_branch_mux_control_INV_3_o5_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y44",
      INIT => X"CC00CC0FCCF0CCFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => read_data1_1_0,
      ADR2 => U_Mux_branch_mux_control_INV_3_o1_7015,
      ADR3 => J_R_sig,
      ADR4 => N15,
      ADR5 => N16_0,
      O => N191
    );
  U_Mux_branch_mux_control_INV_3_o5_SW24 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y44",
      INIT => X"EEEFEEEA44454440"
    )
    port map (
      ADR0 => J_R_sig,
      ADR1 => PC_increment_13_0,
      ADR2 => U_Mux_branch_mux_control_INV_3_o1_7015,
      ADR3 => jump_sig,
      ADR4 => PC_BRANCH_13_0,
      ADR5 => read_data1(13),
      O => N231
    );
  N213_N213_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N37_pack_6,
      O => N37
    );
  U_Mux_branch_mux_control_INV_3_o5_SW15 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y48",
      INIT => X"FF53AC00FF55AA00"
    )
    port map (
      ADR0 => PC_increment_9_0,
      ADR1 => PC_BRANCH_9_0,
      ADR2 => U_Mux_branch_mux_control_INV_3_o1_7015,
      ADR3 => N37,
      ADR4 => N36,
      ADR5 => ALU_RESULT_14_Q,
      O => N213
    );
  U_Mux_PC_Rs_Mmux_mux_out161_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y48",
      INIT => X"F0F0CC00F0F0CC00"
    )
    port map (
      ADR0 => '1',
      ADR1 => instruction_sig(8),
      ADR2 => read_data1(9),
      ADR3 => jump_sig,
      ADR4 => J_R_sig,
      ADR5 => '1',
      O => N36
    );
  U_Mux_PC_Rs_Mmux_mux_out161_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X8Y48",
      INIT => X"F0F0CCFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => instruction_sig(8),
      ADR2 => read_data1(9),
      ADR3 => jump_sig,
      ADR4 => J_R_sig,
      O => N37_pack_6
    );
  U_Mux_branch_mux_control_INV_3_o5_SW14 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y48",
      INIT => X"FFFFCFC0303F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => PC_increment_9_0,
      ADR2 => U_Mux_branch_mux_control_INV_3_o1_7015,
      ADR3 => PC_BRANCH_9_0,
      ADR4 => N36,
      ADR5 => N37,
      O => N212
    );
  N216_N216_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N40_pack_6,
      O => N40
    );
  U_Mux_branch_mux_control_INV_3_o5_SW17 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y50",
      INIT => X"FF53AC00FF55AA00"
    )
    port map (
      ADR0 => PC_increment_10_0,
      ADR1 => PC_BRANCH_10_0,
      ADR2 => U_Mux_branch_mux_control_INV_3_o1_7015,
      ADR3 => N40,
      ADR4 => N39,
      ADR5 => ALU_RESULT_14_Q,
      O => N216
    );
  U_Mux_PC_Rs_Mmux_mux_out21_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y50",
      INIT => X"F0F0CC00F0F0CC00"
    )
    port map (
      ADR0 => '1',
      ADR1 => instruction_sig(9),
      ADR2 => read_data1(10),
      ADR3 => jump_sig,
      ADR4 => J_R_sig,
      ADR5 => '1',
      O => N39
    );
  U_Mux_PC_Rs_Mmux_mux_out21_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X8Y50",
      INIT => X"F0F0CCFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => instruction_sig(9),
      ADR2 => read_data1(10),
      ADR3 => jump_sig,
      ADR4 => J_R_sig,
      O => N40_pack_6
    );
  U_Mux_branch_mux_control_INV_3_o5_SW16 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y50",
      INIT => X"FFFFCFC0303F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => PC_increment_10_0,
      ADR2 => U_Mux_branch_mux_control_INV_3_o1_7015,
      ADR3 => PC_BRANCH_10_0,
      ADR4 => N39,
      ADR5 => N40,
      O => N215
    );
  U_datamemory_data_memory_1_3 : X_FF
    generic map(
      LOC => "SLICE_X9Y14",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_1_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_1_3_dpot_2639,
      O => U_datamemory_data_memory_1(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_1_3_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X9Y14",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2_3_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result1122411,
      ADR3 => U_datamemory_data_memory_1(3),
      ADR4 => U_ALU_Mmux_result112041,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_1_3_dpot_2639
    );
  U_datamemory_data_memory_1_2 : X_FF
    generic map(
      LOC => "SLICE_X9Y14",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_1_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_1_2_dpot_2638,
      O => U_datamemory_data_memory_1(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_1_2_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X9Y14",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2_2_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result1122411,
      ADR3 => U_datamemory_data_memory_1(2),
      ADR4 => U_ALU_Mmux_result112041,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_1_2_dpot_2638
    );
  U_datamemory_data_memory_1_1 : X_FF
    generic map(
      LOC => "SLICE_X9Y14",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_1_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_1_1_dpot_2641,
      O => U_datamemory_data_memory_1(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_1_1_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X9Y14",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2_1_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result1122411,
      ADR3 => U_datamemory_data_memory_1(1),
      ADR4 => U_ALU_Mmux_result112041,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_1_1_dpot_2641
    );
  U_datamemory_data_memory_1_0 : X_FF
    generic map(
      LOC => "SLICE_X9Y14",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_1_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_1_0_dpot_2650,
      O => U_datamemory_data_memory_1(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_1_0_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X9Y14",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2_0_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result1122411,
      ADR3 => U_datamemory_data_memory_1(0),
      ADR4 => U_ALU_Mmux_result112041,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_1_0_dpot_2650
    );
  U_PC_output_sig_10 : X_FF
    generic map(
      LOC => "SLICE_X8Y49",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => clock_BUFGP,
      I => PC_input(10),
      O => U_PC_output_sig(10),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_Mux_PC_Rs_Mmux_mux_out22 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y49",
      INIT => X"BA8AAAAAAAAAAAAA"
    )
    port map (
      ADR0 => N215,
      ADR1 => ALU_RESULT_15_Q,
      ADR2 => U_Mux_branch_mux_control_INV_3_o4_7223,
      ADR3 => N216,
      ADR4 => U_Mux_branch_mux_control_INV_3_o2_7656,
      ADR5 => U_Mux_branch_mux_control_INV_3_o3_7657,
      O => PC_input(10)
    );
  U_PC_output_sig_9 : X_FF
    generic map(
      LOC => "SLICE_X8Y49",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => clock_BUFGP,
      I => PC_input(9),
      O => U_PC_output_sig(9),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_Mux_PC_Rs_Mmux_mux_out162 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y49",
      INIT => X"BA8AAAAAAAAAAAAA"
    )
    port map (
      ADR0 => N212,
      ADR1 => ALU_RESULT_15_Q,
      ADR2 => U_Mux_branch_mux_control_INV_3_o4_7223,
      ADR3 => N213,
      ADR4 => U_Mux_branch_mux_control_INV_3_o2_7656,
      ADR5 => U_Mux_branch_mux_control_INV_3_o3_7657,
      O => PC_input(9)
    );
  U_PC_output_sig_8 : X_FF
    generic map(
      LOC => "SLICE_X8Y49",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => clock_BUFGP,
      I => PC_input(8),
      O => U_PC_output_sig(8),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_Mux_PC_Rs_Mmux_mux_out152 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y49",
      INIT => X"BA8AAAAAAAAAAAAA"
    )
    port map (
      ADR0 => N209,
      ADR1 => ALU_RESULT_15_Q,
      ADR2 => U_Mux_branch_mux_control_INV_3_o4_7223,
      ADR3 => N210,
      ADR4 => U_Mux_branch_mux_control_INV_3_o2_7656,
      ADR5 => U_Mux_branch_mux_control_INV_3_o3_7657,
      O => PC_input(8)
    );
  U_PC_output_sig_7 : X_FF
    generic map(
      LOC => "SLICE_X8Y49",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => clock_BUFGP,
      I => PC_input(7),
      O => U_PC_output_sig(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_Mux_PC_Rs_Mmux_mux_out142 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y49",
      INIT => X"BA8AAAAAAAAAAAAA"
    )
    port map (
      ADR0 => N206,
      ADR1 => ALU_RESULT_15_Q,
      ADR2 => U_Mux_branch_mux_control_INV_3_o4_7223,
      ADR3 => N207,
      ADR4 => U_Mux_branch_mux_control_INV_3_o2_7656,
      ADR5 => U_Mux_branch_mux_control_INV_3_o3_7657,
      O => PC_input(7)
    );
  N45_N45_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N46_pack_4,
      O => N46
    );
  N45_N45_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => J_R_sig_pack_2,
      O => J_R_sig
    );
  N45_N45_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N16,
      O => N16_0
    );
  U_Mux_PC_Rs_Mmux_mux_out41_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y45",
      INIT => X"FF00C0C0FF00C0C0"
    )
    port map (
      ADR0 => '1',
      ADR1 => instruction_sig(11),
      ADR2 => jump_sig,
      ADR3 => read_data1(12),
      ADR4 => J_R_sig,
      ADR5 => '1',
      O => N45
    );
  U_Mux_PC_Rs_Mmux_mux_out41_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X8Y45",
      INIT => X"FF00CFCF"
    )
    port map (
      ADR0 => '1',
      ADR1 => instruction_sig(11),
      ADR2 => jump_sig,
      ADR3 => read_data1(12),
      ADR4 => J_R_sig,
      O => N46_pack_4
    );
  U_Mux_branch_mux_control_INV_3_o5_SW20 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y45",
      INIT => X"FFFFCFC0303F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => PC_increment_12_0,
      ADR2 => U_Mux_branch_mux_control_INV_3_o1_7015,
      ADR3 => PC_BRANCH_12_0,
      ADR4 => N45,
      ADR5 => N46,
      O => N221
    );
  U_CU_Mmux_jump11 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y45",
      INIT => X"0400000004000000"
    )
    port map (
      ADR0 => reset_IBUF_0,
      ADR1 => instruction_sig(15),
      ADR2 => instruction_sig(14),
      ADR3 => instruction_sig(13),
      ADR4 => instruction_sig(12),
      ADR5 => '1',
      O => jump_sig
    );
  U_CU_Mmux_J_R11 : X_LUT5
    generic map(
      LOC => "SLICE_X8Y45",
      INIT => X"01000000"
    )
    port map (
      ADR0 => reset_IBUF_0,
      ADR1 => instruction_sig(15),
      ADR2 => instruction_sig(14),
      ADR3 => instruction_sig(13),
      ADR4 => instruction_sig(12),
      O => J_R_sig_pack_2
    );
  U_Mux_PC_Rs_Mmux_mux_out81_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y45",
      INIT => X"0F0F00FF0F0F00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => instruction_sig(0),
      ADR3 => PC_BRANCH_1_0,
      ADR4 => jump_sig,
      ADR5 => '1',
      O => N15
    );
  U_Mux_PC_Rs_Mmux_mux_out81_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X8Y45",
      INIT => X"0F0F3333"
    )
    port map (
      ADR0 => '1',
      ADR1 => PC_increment_1_0,
      ADR2 => instruction_sig(0),
      ADR3 => '1',
      ADR4 => jump_sig,
      O => N16
    );
  U_IR_Mram_instruction11218 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y46",
      INIT => X"0000010000000000"
    )
    port map (
      ADR0 => U_PC_output_sig(12),
      ADR1 => U_PC_output_sig(6),
      ADR2 => U_PC_output_sig(2),
      ADR3 => U_PC_output_sig(3),
      ADR4 => U_PC_output_sig(9),
      ADR5 => U_PC_output_sig(4),
      O => U_IR_Mram_instruction11217_7842
    );
  U_IR_Mram_instruction11211 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y46",
      INIT => X"000000000000000F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U_PC_output_sig(15),
      ADR3 => U_PC_output_sig(7),
      ADR4 => U_PC_output_sig(10),
      ADR5 => U_PC_output_sig(13),
      O => U_IR_Mram_instruction1121
    );
  U_IR_Mram_instruction11219 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y46",
      INIT => X"0000000300000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_PC_output_sig(12),
      ADR2 => U_PC_output_sig(6),
      ADR3 => U_PC_output_sig(9),
      ADR4 => U_PC_output_sig(1),
      ADR5 => U_PC_output_sig(4),
      O => U_IR_Mram_instruction11218_7843
    );
  U_ALU_Mmux_result11224 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y25",
      INIT => X"4073407340407373"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => U_ALU_Mmux_result1122,
      ADR3 => N75,
      ADR4 => N74,
      ADR5 => U_ALU_Mmux_result1_split_4_0,
      O => ALU_RESULT_4_Q
    );
  U_ALU_Mmux_result11223_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y25",
      INIT => X"CCCCCF0CCFCCFF0C"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_ALU_controller_alu_signal_1_1_7780,
      ADR2 => read_data1_4_0,
      ADR3 => U_ALU_controller_alu_signal_3_1_7716,
      ADR4 => U_ALU_controller_alu_signal_4_1_7129,
      ADR5 => ALUB_sig(4),
      O => N75
    );
  U_ALU_Mmux_result11223_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y25",
      INIT => X"CCFFCF3FCFFFFF3F"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_ALU_controller_alu_signal_1_1_7780,
      ADR2 => read_data1_4_0,
      ADR3 => U_ALU_controller_alu_signal_3_1_7716,
      ADR4 => U_ALU_controller_alu_signal_4_1_7129,
      ADR5 => ALUB_sig(4),
      O => N74
    );
  U_ALU_Mmux_result11224_1 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y25",
      INIT => X"4073407340407373"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => U_ALU_Mmux_result1122,
      ADR3 => N75,
      ADR4 => N74,
      ADR5 => U_ALU_Mmux_result1_split_4_0,
      O => U_ALU_Mmux_result11224_7791
    );
  U_datamemory_data_memory_3_3 : X_FF
    generic map(
      LOC => "SLICE_X9Y15",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_3_3_dpot_2664,
      O => U_datamemory_data_memory_3(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_3_3_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X9Y15",
      INIT => X"FF00FB08FF00FF00"
    )
    port map (
      ADR0 => read_data2_3_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112242,
      ADR3 => U_datamemory_data_memory_3(3),
      ADR4 => U_ALU_Mmux_result112043,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_3_3_dpot_2664
    );
  U_datamemory_data_memory_3_2 : X_FF
    generic map(
      LOC => "SLICE_X9Y15",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_3_2_dpot_2663,
      O => U_datamemory_data_memory_3(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_3_2_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X9Y15",
      INIT => X"FF00FB08FF00FF00"
    )
    port map (
      ADR0 => read_data2_2_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112242,
      ADR3 => U_datamemory_data_memory_3(2),
      ADR4 => U_ALU_Mmux_result112043,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_3_2_dpot_2663
    );
  U_datamemory_data_memory_3_1 : X_FF
    generic map(
      LOC => "SLICE_X9Y15",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_3_1_dpot_2673,
      O => U_datamemory_data_memory_3(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_3_1_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X9Y15",
      INIT => X"FF00FB08FF00FF00"
    )
    port map (
      ADR0 => read_data2_1_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112242,
      ADR3 => U_datamemory_data_memory_3(1),
      ADR4 => U_ALU_Mmux_result112043,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_3_1_dpot_2673
    );
  U_datamemory_data_memory_3_0 : X_FF
    generic map(
      LOC => "SLICE_X9Y15",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_3_0_dpot_2680,
      O => U_datamemory_data_memory_3(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_3_0_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X9Y15",
      INIT => X"FF00FB08FF00FF00"
    )
    port map (
      ADR0 => read_data2_0_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112242,
      ADR3 => U_datamemory_data_memory_3(0),
      ADR4 => U_ALU_Mmux_result112043,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_3_0_dpot_2680
    );
  U_input_port_output_sig_15 : X_FF
    generic map(
      LOC => "SLICE_X10Y43",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => clock_BUFGP,
      I => input_port_15_IBUF_0,
      O => U_input_port_output_sig(15),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_input_port_MUX_Mmux_mux_out61_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y43",
      INIT => X"F0F0FF00F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U_input_port_output_sig(14),
      ADR3 => PC_increment_14_0,
      ADR4 => input_enable,
      ADR5 => J_link_sig,
      O => N119
    );
  U_input_port_output_sig_14 : X_FF
    generic map(
      LOC => "SLICE_X10Y43",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => clock_BUFGP,
      I => input_port_14_IBUF_0,
      O => U_input_port_output_sig(14),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_ALU_Mmux_result11124_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y43",
      INIT => X"FF15EA00FF11EE00"
    )
    port map (
      ADR0 => memread_sig,
      ADR1 => ALU_op_sig(2),
      ADR2 => ALU_op_sig(3),
      ADR3 => N119,
      ADR4 => N120,
      ADR5 => U_ALU_Mmux_result1112,
      O => N319
    );
  U_input_port_output_sig_13 : X_FF
    generic map(
      LOC => "SLICE_X10Y43",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => clock_BUFGP,
      I => input_port_13_IBUF_0,
      O => U_input_port_output_sig(13),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_ALU_Mmux_result11124_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y43",
      INIT => X"FF04FB00FF00FF00"
    )
    port map (
      ADR0 => memread_sig,
      ADR1 => ALU_op_sig(2),
      ADR2 => ALU_op_sig(3),
      ADR3 => N119,
      ADR4 => N120,
      ADR5 => U_ALU_Mmux_result1112,
      O => N320
    );
  U_input_port_output_sig_12 : X_FF
    generic map(
      LOC => "SLICE_X10Y43",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => clock_BUFGP,
      I => input_port_12_IBUF_0,
      O => U_input_port_output_sig(12),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_2_f8_4_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y43",
      INIT => X"FFFFF0CC0F330000"
    )
    port map (
      ADR0 => '1',
      ADR1 => N134,
      ADR2 => N135,
      ADR3 => U_ALU_Mmux_result1_split_14_0,
      ADR4 => N319,
      ADR5 => N320,
      O => N281
    );
  U_ALU_Mmux_result11204_6 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y19",
      INIT => X"4447000374773033"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => U_ALU_Mmux_result1_split_3_0,
      ADR3 => N77,
      ADR4 => U_ALU_Mmux_result1120,
      ADR5 => N78,
      O => U_ALU_Mmux_result112045
    );
  U_ALU_controller_alu_signal_3_3 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y26",
      INIT => X"FF0FF000FF0FF300"
    )
    port map (
      ADR0 => '1',
      ADR1 => reset_IBUF_0,
      ADR2 => instruction_sig(0),
      ADR3 => instruction_sig(1),
      ADR4 => instruction_sig(2),
      ADR5 => N6,
      O => U_ALU_controller_alu_signal_3_2_7717
    );
  U_ALU_controller_alu_signal_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y26",
      INIT => X"FF0FF000FF0FF300"
    )
    port map (
      ADR0 => '1',
      ADR1 => reset_IBUF_0,
      ADR2 => instruction_sig(0),
      ADR3 => instruction_sig(1),
      ADR4 => instruction_sig(2),
      ADR5 => N6,
      O => U_ALU_controller_alu_signal(3)
    );
  U_ALU_controller_alu_signal_3_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y26",
      INIT => X"FFF0F0000F000FF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => instruction_sig(15),
      ADR3 => instruction_sig(14),
      ADR4 => instruction_sig(13),
      ADR5 => instruction_sig(12),
      O => N6
    );
  U_ALU_controller_alu_signal_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X11Y26",
      INIT => X"FF0FF000FF0FF300"
    )
    port map (
      ADR0 => '1',
      ADR1 => reset_IBUF_0,
      ADR2 => instruction_sig(0),
      ADR3 => instruction_sig(1),
      ADR4 => instruction_sig(2),
      ADR5 => N6,
      O => ALU_op_sig(1)
    );
  U_Mux_branch_mux_control_INV_3_o5_SW28 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y46",
      INIT => X"EEEFEEEA44454440"
    )
    port map (
      ADR0 => J_R_sig,
      ADR1 => PC_increment_15_0,
      ADR2 => U_Mux_branch_mux_control_INV_3_o1_7015,
      ADR3 => jump_sig,
      ADR4 => PC_BRANCH_15_0,
      ADR5 => read_data1(15),
      O => N237
    );
  U_PC_output_sig_15_U_PC_output_sig_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N238_pack_5,
      O => N238
    );
  U_Mux_branch_mux_control_INV_3_o5_SW29 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y44"
    )
    port map (
      IA => N381,
      IB => N382,
      O => N238_pack_5,
      SEL => U_Mux_branch_mux_control_INV_3_o4_7223
    );
  U_Mux_branch_mux_control_INV_3_o5_SW29_F : X_LUT6
    generic map(
      LOC => "SLICE_X10Y44",
      INIT => X"EEEFEEEA44454440"
    )
    port map (
      ADR0 => J_R_sig,
      ADR1 => PC_increment_15_0,
      ADR2 => U_Mux_branch_mux_control_INV_3_o1_7015,
      ADR3 => jump_sig,
      ADR4 => PC_BRANCH_15_0,
      ADR5 => read_data1(15),
      O => N381
    );
  U_Mux_branch_mux_control_INV_3_o5_SW29_G : X_LUT6
    generic map(
      LOC => "SLICE_X10Y44",
      INIT => X"FFFF00FFFF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => J_R_sig,
      ADR4 => read_data1(15),
      ADR5 => PC_increment_15_0,
      O => N382
    );
  U_IR_Mram_instruction13111 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y44",
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => U_PC_output_sig(15),
      ADR1 => U_PC_output_sig(7),
      ADR2 => U_PC_output_sig(10),
      ADR3 => U_PC_output_sig(13),
      ADR4 => U_PC_output_sig(8),
      ADR5 => U_PC_output_sig(6),
      O => U_IR_Mram_instruction1311
    );
  U_PC_output_sig_15 : X_FF
    generic map(
      LOC => "SLICE_X10Y44",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => clock_BUFGP,
      I => PC_input(15),
      O => U_PC_output_sig(15),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_Mux_PC_Rs_Mmux_mux_out71 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y44",
      INIT => X"ABAAAAAAA8AAAAAA"
    )
    port map (
      ADR0 => N237,
      ADR1 => ALU_RESULT_14_Q,
      ADR2 => ALU_RESULT_15_Q,
      ADR3 => U_Mux_branch_mux_control_INV_3_o2_7656,
      ADR4 => U_Mux_branch_mux_control_INV_3_o3_7657,
      ADR5 => N238,
      O => PC_input(15)
    );
  U_datamemory_data_memory_5_3 : X_FF
    generic map(
      LOC => "SLICE_X11Y14",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0141_inv1_cepot_7689,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_5_3_dpot_3219,
      O => U_datamemory_data_memory_5(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_5_3_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X11Y14",
      INIT => X"FB08FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_3_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112249,
      ADR3 => U_datamemory_data_memory_5(3),
      ADR4 => U_ALU_Mmux_result1120412,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_5_3_dpot_3219
    );
  U_datamemory_data_memory_5_2 : X_FF
    generic map(
      LOC => "SLICE_X11Y14",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0141_inv1_cepot_7689,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_5_2_dpot_3216,
      O => U_datamemory_data_memory_5(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_5_2_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X11Y14",
      INIT => X"FB08FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_2_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112249,
      ADR3 => U_datamemory_data_memory_5(2),
      ADR4 => U_ALU_Mmux_result1120412,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_5_2_dpot_3216
    );
  U_datamemory_data_memory_5_1 : X_FF
    generic map(
      LOC => "SLICE_X11Y14",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0141_inv1_cepot_7689,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_5_1_dpot_3202,
      O => U_datamemory_data_memory_5(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_5_1_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X11Y14",
      INIT => X"FB08FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_1_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112249,
      ADR3 => U_datamemory_data_memory_5(1),
      ADR4 => U_ALU_Mmux_result1120412,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_5_1_dpot_3202
    );
  U_datamemory_data_memory_5_0 : X_FF
    generic map(
      LOC => "SLICE_X11Y14",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0141_inv1_cepot_7689,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_5_0_dpot_3227,
      O => U_datamemory_data_memory_5(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_5_0_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X11Y14",
      INIT => X"FB08FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_0_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112249,
      ADR3 => U_datamemory_data_memory_5(0),
      ADR4 => U_ALU_Mmux_result1120412,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_5_0_dpot_3227
    );
  U_datamemory_data_memory_6_3 : X_FF
    generic map(
      LOC => "SLICE_X11Y13",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_6_3_dpot_3167,
      O => U_datamemory_data_memory_6(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_6_3_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X11Y13",
      INIT => X"FF00FF00FB08FF00"
    )
    port map (
      ADR0 => read_data2_3_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112244,
      ADR3 => U_datamemory_data_memory_6(3),
      ADR4 => U_ALU_Mmux_result112045,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_6_3_dpot_3167
    );
  U_datamemory_data_memory_6_2 : X_FF
    generic map(
      LOC => "SLICE_X11Y13",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_6_2_dpot_3187,
      O => U_datamemory_data_memory_6(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_6_2_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X11Y13",
      INIT => X"FF00FF00FB08FF00"
    )
    port map (
      ADR0 => read_data2_2_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112244,
      ADR3 => U_datamemory_data_memory_6(2),
      ADR4 => U_ALU_Mmux_result112045,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_6_2_dpot_3187
    );
  U_datamemory_data_memory_6_1 : X_FF
    generic map(
      LOC => "SLICE_X11Y13",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_6_1_dpot_3169,
      O => U_datamemory_data_memory_6(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_6_1_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X11Y13",
      INIT => X"FF00FF00FB08FF00"
    )
    port map (
      ADR0 => read_data2_1_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112244,
      ADR3 => U_datamemory_data_memory_6(1),
      ADR4 => U_ALU_Mmux_result112045,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_6_1_dpot_3169
    );
  U_datamemory_data_memory_6_0 : X_FF
    generic map(
      LOC => "SLICE_X11Y13",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_6_0_dpot_3188,
      O => U_datamemory_data_memory_6(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_6_0_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X11Y13",
      INIT => X"FF00FF00FB08FF00"
    )
    port map (
      ADR0 => read_data2_0_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112244,
      ADR3 => U_datamemory_data_memory_6(0),
      ADR4 => U_ALU_Mmux_result112045,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_6_0_dpot_3188
    );
  N30_N30_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N31_pack_1,
      O => N31
    );
  U_Mux_PC_Rs_Mmux_mux_out141_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y45",
      INIT => X"F0F0CC00F0F0CC00"
    )
    port map (
      ADR0 => '1',
      ADR1 => instruction_sig(6),
      ADR2 => read_data1(7),
      ADR3 => jump_sig,
      ADR4 => J_R_sig,
      ADR5 => '1',
      O => N30
    );
  U_Mux_PC_Rs_Mmux_mux_out141_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y45",
      INIT => X"F0F0CCFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => instruction_sig(6),
      ADR2 => read_data1(7),
      ADR3 => jump_sig,
      ADR4 => J_R_sig,
      O => N31_pack_1
    );
  U_Mux_branch_mux_control_INV_3_o5_SW10 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y45",
      INIT => X"FFFFCFC0303F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => PC_increment_7_0,
      ADR2 => U_Mux_branch_mux_control_INV_3_o1_7015,
      ADR3 => PC_BRANCH_7_0,
      ADR4 => N30,
      ADR5 => N31,
      O => N206
    );
  N235_N235_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N235,
      O => N235_0
    );
  U_Mux_branch_mux_control_INV_3_o5_SW27 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y47"
    )
    port map (
      IA => N379,
      IB => N380,
      O => N235,
      SEL => U_Mux_branch_mux_control_INV_3_o4_7223
    );
  U_Mux_branch_mux_control_INV_3_o5_SW27_F : X_LUT6
    generic map(
      LOC => "SLICE_X10Y47",
      INIT => X"EEEFEEEA44454440"
    )
    port map (
      ADR0 => J_R_sig,
      ADR1 => PC_increment_14_0,
      ADR2 => U_Mux_branch_mux_control_INV_3_o1_7015,
      ADR3 => jump_sig,
      ADR4 => PC_BRANCH_14_0,
      ADR5 => read_data1(14),
      O => N379
    );
  U_Mux_branch_mux_control_INV_3_o5_SW27_G : X_LUT6
    generic map(
      LOC => "SLICE_X10Y47",
      INIT => X"FFFF00FFFF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => J_R_sig,
      ADR4 => read_data1(14),
      ADR5 => PC_increment_14_0,
      O => N380
    );
  U_ALU_Mmux_result11204_11 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y16",
      INIT => X"4447000374773033"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => U_ALU_Mmux_result1_split_3_0,
      ADR3 => N77,
      ADR4 => U_ALU_Mmux_result1120,
      ADR5 => N78,
      O => U_ALU_Mmux_result1120410
    );
  U_datamemory_data_memory_4_3 : X_FF
    generic map(
      LOC => "SLICE_X11Y15",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0137_inv1_cepot_7685,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_4_3_dpot_3237,
      O => U_datamemory_data_memory_4(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_4_3_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X11Y15",
      INIT => X"FF00FF00FB08FF00"
    )
    port map (
      ADR0 => read_data2_3_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112248,
      ADR3 => U_datamemory_data_memory_4(3),
      ADR4 => U_ALU_Mmux_result1120410,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_4_3_dpot_3237
    );
  U_datamemory_data_memory_4_2 : X_FF
    generic map(
      LOC => "SLICE_X11Y15",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0137_inv1_cepot_7685,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_4_2_dpot_3257,
      O => U_datamemory_data_memory_4(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_4_2_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X11Y15",
      INIT => X"FF00FF00FB08FF00"
    )
    port map (
      ADR0 => read_data2_2_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112248,
      ADR3 => U_datamemory_data_memory_4(2),
      ADR4 => U_ALU_Mmux_result1120410,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_4_2_dpot_3257
    );
  U_datamemory_data_memory_4_1 : X_FF
    generic map(
      LOC => "SLICE_X11Y15",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0137_inv1_cepot_7685,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_4_1_dpot_3239,
      O => U_datamemory_data_memory_4(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_4_1_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X11Y15",
      INIT => X"FF00FF00FB08FF00"
    )
    port map (
      ADR0 => read_data2_1_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112248,
      ADR3 => U_datamemory_data_memory_4(1),
      ADR4 => U_ALU_Mmux_result1120410,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_4_1_dpot_3239
    );
  U_datamemory_data_memory_4_0 : X_FF
    generic map(
      LOC => "SLICE_X11Y15",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0137_inv1_cepot_7685,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_4_0_dpot_3258,
      O => U_datamemory_data_memory_4(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_4_0_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X11Y15",
      INIT => X"FF00FF00FB08FF00"
    )
    port map (
      ADR0 => read_data2_0_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112248,
      ADR3 => U_datamemory_data_memory_4(0),
      ADR4 => U_ALU_Mmux_result1120410,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_4_0_dpot_3258
    );
  U_IR_Mram_instruction3111 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y36",
      INIT => X"0000000000000003"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_PC_output_sig(15),
      ADR2 => U_PC_output_sig(7),
      ADR3 => U_PC_output_sig(13),
      ADR4 => U_PC_output_sig(8),
      ADR5 => U_PC_output_sig(14),
      O => U_IR_Mram_instruction311
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f77_U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f77_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f77,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f77_0
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f7_6 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y16"
    )
    port map (
      IA => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_67_2932,
      IB => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_515_2937,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f77,
      SEL => U_ALU_Mmux_result11204_11_7297
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_67 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y16",
      INIT => X"F0F0CCCCFF00AAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_0(1),
      ADR1 => U_datamemory_data_memory_1(1),
      ADR2 => U_datamemory_data_memory_3(1),
      ADR3 => U_datamemory_data_memory_2(1),
      ADR4 => U_ALU_Mmux_result11184_2_7302,
      ADR5 => U_ALU_Mmux_result111641,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_67_2932
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_515 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y16",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_4(1),
      ADR1 => U_datamemory_data_memory_5(1),
      ADR2 => U_datamemory_data_memory_7(1),
      ADR3 => U_datamemory_data_memory_6(1),
      ADR4 => U_ALU_Mmux_result111642,
      ADR5 => U_ALU_Mmux_result111842,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_515_2937
    );
  U_ALU_controller_alu_signal_3_2 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y26",
      INIT => X"FF0FF000FF0FF300"
    )
    port map (
      ADR0 => '1',
      ADR1 => reset_IBUF_0,
      ADR2 => instruction_sig(0),
      ADR3 => instruction_sig(1),
      ADR4 => instruction_sig(2),
      ADR5 => N6,
      O => U_ALU_controller_alu_signal_3_1_7716
    );
  U_ALU_controller_alu_signal_4_2 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y34",
      INIT => X"A6A6A6A6A6A6B6A6"
    )
    port map (
      ADR0 => instruction_sig(2),
      ADR1 => instruction_sig(0),
      ADR2 => instruction_sig(1),
      ADR3 => instruction_sig(14),
      ADR4 => reset_IBUF_0,
      ADR5 => N4,
      O => U_ALU_controller_alu_signal_4_1_7129
    );
  U_IR_Mram_instruction51115_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y34",
      INIT => X"FFFFFCFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_PC_output_sig(8),
      ADR2 => U_PC_output_sig(6),
      ADR3 => U_PC_output_sig(5),
      ADR4 => U_PC_output_sig(14),
      ADR5 => U_IR_Mram_instruction511,
      O => N951
    );
  U_ALU_controller_alu_signal_1_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y34",
      INIT => X"FFFFFF0000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => instruction_sig(0),
      ADR4 => instruction_sig(1),
      ADR5 => instruction_sig(2),
      O => U_ALU_controller_alu_signal_1_1_7780
    );
  U_IR_Mram_instruction51115 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y34",
      INIT => X"A0B10011AABB0A1B"
    )
    port map (
      ADR0 => U_PC_output_sig(2),
      ADR1 => N601,
      ADR2 => U_IR_Mram_instruction51110,
      ADR3 => N951,
      ADR4 => N97,
      ADR5 => N961,
      O => instruction_sig(2)
    );
  U_IR_Mram_instruction9119 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y43",
      INIT => X"0000000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U_PC_output_sig(14),
      ADR4 => U_PC_output_sig(5),
      ADR5 => U_PC_output_sig(9),
      O => U_IR_Mram_instruction9118_7919
    );
  U_IR_Mram_instruction31113 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y35",
      INIT => X"0000000100000000"
    )
    port map (
      ADR0 => U_PC_output_sig(10),
      ADR1 => U_PC_output_sig(6),
      ADR2 => U_PC_output_sig(2),
      ADR3 => U_PC_output_sig(9),
      ADR4 => U_PC_output_sig(1),
      ADR5 => U_PC_output_sig(4),
      O => U_IR_Mram_instruction31112_7988
    );
  U_ALU_controller_alu_signal_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y35",
      INIT => X"A6A6A6A6A6A6B6A6"
    )
    port map (
      ADR0 => instruction_sig(2),
      ADR1 => instruction_sig(0),
      ADR2 => instruction_sig(1),
      ADR3 => instruction_sig(14),
      ADR4 => reset_IBUF_0,
      ADR5 => N4,
      O => U_ALU_controller_alu_signal(4)
    );
  U_IR_Mram_instruction31115 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y35",
      INIT => X"F0F03030F0C03000"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_PC_output_sig(5),
      ADR2 => U_IR_Mram_instruction311,
      ADR3 => U_IR_Mram_instruction31111,
      ADR4 => U_IR_Mram_instruction3114,
      ADR5 => U_IR_Mram_instruction31113_7987,
      O => instruction_sig(1)
    );
  U_IR_Mram_instruction31114 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y35",
      INIT => X"0000000F00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U_PC_output_sig(11),
      ADR3 => U_PC_output_sig(12),
      ADR4 => U_PC_output_sig(3),
      ADR5 => U_IR_Mram_instruction31112_7988,
      O => U_IR_Mram_instruction31113_7987
    );
  U_IR_Mram_instruction112111 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y46",
      INIT => X"5050501040404000"
    )
    port map (
      ADR0 => U_PC_output_sig(8),
      ADR1 => U_PC_output_sig(5),
      ADR2 => U_IR_Mram_instruction1121,
      ADR3 => U_IR_Mram_instruction11213,
      ADR4 => U_IR_Mram_instruction11216,
      ADR5 => U_IR_Mram_instruction11219_7993,
      O => instruction_sig(5)
    );
  U_IR_Mram_instruction112110 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y46",
      INIT => X"000F000F000F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U_PC_output_sig(11),
      ADR3 => U_PC_output_sig(14),
      ADR4 => U_IR_Mram_instruction11217_7842,
      ADR5 => U_IR_Mram_instruction11218_7843,
      O => U_IR_Mram_instruction11219_7993
    );
  U_IR_Mram_instruction11214 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y46",
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => U_PC_output_sig(9),
      ADR1 => U_PC_output_sig(6),
      ADR2 => U_PC_output_sig(14),
      ADR3 => U_PC_output_sig(12),
      ADR4 => U_PC_output_sig(11),
      ADR5 => N681,
      O => U_IR_Mram_instruction11213
    );
  U_IR_Mram_instruction11214_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y46",
      INIT => X"FFF0FFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U_PC_output_sig(2),
      ADR3 => U_PC_output_sig(3),
      ADR4 => U_PC_output_sig(1),
      ADR5 => U_PC_output_sig(4),
      O => N681
    );
  U_IR_Mram_instruction211113 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y34",
      INIT => X"000000FF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U_PC_output_sig(12),
      ADR4 => U_PC_output_sig(11),
      ADR5 => U_IR_Mram_instruction211111_7986,
      O => U_IR_Mram_instruction211112_7897
    );
  U_IR_Mram_instruction211112 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y34",
      INIT => X"0000000000000002"
    )
    port map (
      ADR0 => U_PC_output_sig(5),
      ADR1 => U_PC_output_sig(14),
      ADR2 => U_PC_output_sig(2),
      ADR3 => U_PC_output_sig(9),
      ADR4 => U_PC_output_sig(1),
      ADR5 => U_PC_output_sig(4),
      O => U_IR_Mram_instruction211111_7986
    );
  U_ALU_controller_alu_signal_4_3 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y40",
      INIT => X"A6A6A6A6A6A6B6A6"
    )
    port map (
      ADR0 => instruction_sig(2),
      ADR1 => instruction_sig(0),
      ADR2 => instruction_sig(1),
      ADR3 => instruction_sig(14),
      ADR4 => reset_IBUF_0,
      ADR5 => N4,
      O => U_ALU_controller_alu_signal_4_2_7134
    );
  U_IR_Mram_instruction121114_SW0_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y40",
      INIT => X"FF0F0F0F00FFF0FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U_PC_output_sig(2),
      ADR3 => U_PC_output_sig(3),
      ADR4 => U_PC_output_sig(1),
      ADR5 => U_PC_output_sig(4),
      O => N76
    );
  U_IR_Mram_instruction121114_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y40",
      INIT => X"FFFFFFFFFFFFFFF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U_PC_output_sig(9),
      ADR3 => U_PC_output_sig(8),
      ADR4 => U_PC_output_sig(14),
      ADR5 => N76,
      O => N32
    );
  U_IR_Mram_instruction121114 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y40",
      INIT => X"B0A01000B0B01010"
    )
    port map (
      ADR0 => U_PC_output_sig(5),
      ADR1 => U_PC_output_sig(11),
      ADR2 => U_IR_Mram_instruction1211,
      ADR3 => U_IR_Mram_instruction12111_7722,
      ADR4 => U_IR_Mram_instruction121112,
      ADR5 => N32,
      O => instruction_sig(0)
    );
  U_Mux_branch_mux_control_INV_3_o5_SW21 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y45",
      INIT => X"FF47B800FF55AA00"
    )
    port map (
      ADR0 => PC_increment_12_0,
      ADR1 => U_Mux_branch_mux_control_INV_3_o1_7015,
      ADR2 => PC_BRANCH_12_0,
      ADR3 => N46,
      ADR4 => N45,
      ADR5 => ALU_RESULT_14_Q,
      O => N222
    );
  U_Mux_branch_mux_control_INV_3_o5_SW11 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y45",
      INIT => X"FF53AC00FF55AA00"
    )
    port map (
      ADR0 => PC_increment_7_0,
      ADR1 => PC_BRANCH_7_0,
      ADR2 => U_Mux_branch_mux_control_INV_3_o1_7015,
      ADR3 => N31,
      ADR4 => N30,
      ADR5 => ALU_RESULT_14_Q,
      O => N207
    );
  U_ALU_Mmux_result11124 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y45",
      INIT => X"2277005527270505"
    )
    port map (
      ADR0 => ALU_op_sig(2),
      ADR1 => ALU_op_sig(3),
      ADR2 => N134,
      ADR3 => N135,
      ADR4 => U_ALU_Mmux_result1112,
      ADR5 => U_ALU_Mmux_result1_split_14_0,
      O => ALU_RESULT_14_Q
    );
  U_Mux_branch_mux_control_INV_3_o5_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y45",
      INIT => X"C0D1E2F3C0C0F3F3"
    )
    port map (
      ADR0 => U_Mux_branch_mux_control_INV_3_o1_7015,
      ADR1 => J_R_sig,
      ADR2 => read_data1_1_0,
      ADR3 => N15,
      ADR4 => N16_0,
      ADR5 => ALU_RESULT_14_Q,
      O => N192
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f7_U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f7_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f7_2880,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f7_0_7484
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y14"
    )
    port map (
      IA => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_6_2881,
      IB => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_51_2886,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f7_2880,
      SEL => U_ALU_Mmux_result11204_7247
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_6 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y14",
      INIT => X"F0F0CCCCFF00AAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_0(0),
      ADR1 => U_datamemory_data_memory_1(0),
      ADR2 => U_datamemory_data_memory_3(0),
      ADR3 => U_datamemory_data_memory_2(0),
      ADR4 => U_ALU_Mmux_result111841,
      ADR5 => U_ALU_Mmux_result111641,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_6_2881
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_51 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y14",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_4(0),
      ADR1 => U_datamemory_data_memory_5(0),
      ADR2 => U_datamemory_data_memory_7(0),
      ADR3 => U_datamemory_data_memory_6(0),
      ADR4 => U_ALU_Mmux_result111642,
      ADR5 => U_ALU_Mmux_result111842,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_51_2886
    );
  U_Mux_register_file_alu_Mmux_mux_out151 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y33",
      INIT => X"FF00FFFFFF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => instruction_sig(5),
      ADR4 => U_CU_Mmux_alusrc11_7730,
      ADR5 => read_data2_8_0,
      O => ALUB_sig(8)
    );
  U_ALU_Mmux_result11303_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y33",
      INIT => X"CCFFCF3FCFFFFF3F"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_ALU_controller_alu_signal_1_11,
      ADR2 => read_data1(8),
      ADR3 => U_ALU_controller_alu_signal_3_2_7717,
      ADR4 => U_ALU_controller_alu_signal_4_2_7134,
      ADR5 => ALUB_sig(8),
      O => N62
    );
  U_PC_output_sig_14 : X_FF
    generic map(
      LOC => "SLICE_X9Y47",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => clock_BUFGP,
      I => PC_input(14),
      O => U_PC_output_sig(14),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_Mux_PC_Rs_Mmux_mux_out61 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y47",
      INIT => X"ABAAAAAAA8AAAAAA"
    )
    port map (
      ADR0 => N234,
      ADR1 => ALU_RESULT_14_Q,
      ADR2 => ALU_RESULT_15_Q,
      ADR3 => U_Mux_branch_mux_control_INV_3_o2_7656,
      ADR4 => U_Mux_branch_mux_control_INV_3_o3_7657,
      ADR5 => N235_0,
      O => PC_input(14)
    );
  U_PC_output_sig_13 : X_FF
    generic map(
      LOC => "SLICE_X9Y47",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => clock_BUFGP,
      I => PC_input(13),
      O => U_PC_output_sig(13),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_Mux_PC_Rs_Mmux_mux_out51 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y47",
      INIT => X"ABAAAAAAA8AAAAAA"
    )
    port map (
      ADR0 => N231,
      ADR1 => ALU_RESULT_14_Q,
      ADR2 => ALU_RESULT_15_Q,
      ADR3 => U_Mux_branch_mux_control_INV_3_o2_7656,
      ADR4 => U_Mux_branch_mux_control_INV_3_o3_7657,
      ADR5 => N232_0,
      O => PC_input(13)
    );
  U_PC_output_sig_12 : X_FF
    generic map(
      LOC => "SLICE_X9Y47",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => clock_BUFGP,
      I => PC_input(12),
      O => U_PC_output_sig(12),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_Mux_PC_Rs_Mmux_mux_out42 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y47",
      INIT => X"BA8AAAAAAAAAAAAA"
    )
    port map (
      ADR0 => N221,
      ADR1 => ALU_RESULT_15_Q,
      ADR2 => U_Mux_branch_mux_control_INV_3_o4_7223,
      ADR3 => N222,
      ADR4 => U_Mux_branch_mux_control_INV_3_o2_7656,
      ADR5 => U_Mux_branch_mux_control_INV_3_o3_7657,
      O => PC_input(12)
    );
  U_PC_output_sig_11 : X_FF
    generic map(
      LOC => "SLICE_X9Y47",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => clock_BUFGP,
      I => PC_input(11),
      O => U_PC_output_sig(11),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_Mux_PC_Rs_Mmux_mux_out32 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y47",
      INIT => X"BA8AAAAAAAAAAAAA"
    )
    port map (
      ADR0 => N218,
      ADR1 => ALU_RESULT_15_Q,
      ADR2 => U_Mux_branch_mux_control_INV_3_o4_7223,
      ADR3 => N219,
      ADR4 => U_Mux_branch_mux_control_INV_3_o2_7656,
      ADR5 => U_Mux_branch_mux_control_INV_3_o3_7657,
      O => PC_input(11)
    );
  U_datamemory_data_memory_7_3 : X_FF
    generic map(
      LOC => "SLICE_X10Y15",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_7_3_dpot_2915,
      O => U_datamemory_data_memory_7(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_7_3_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X10Y15",
      INIT => X"FB08FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_3_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112249,
      ADR3 => U_datamemory_data_memory_7(3),
      ADR4 => U_ALU_Mmux_result1120411,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_7_3_dpot_2915
    );
  U_datamemory_data_memory_7_2 : X_FF
    generic map(
      LOC => "SLICE_X10Y15",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_7_2_dpot_2912,
      O => U_datamemory_data_memory_7(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_7_2_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X10Y15",
      INIT => X"FB08FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_2_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112249,
      ADR3 => U_datamemory_data_memory_7(2),
      ADR4 => U_ALU_Mmux_result1120411,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_7_2_dpot_2912
    );
  U_datamemory_data_memory_7_1 : X_FF
    generic map(
      LOC => "SLICE_X10Y15",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_7_1_dpot_2898,
      O => U_datamemory_data_memory_7(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_7_1_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X10Y15",
      INIT => X"FB08FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_1_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112249,
      ADR3 => U_datamemory_data_memory_7(1),
      ADR4 => U_ALU_Mmux_result1120411,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_7_1_dpot_2898
    );
  U_datamemory_data_memory_7_0 : X_FF
    generic map(
      LOC => "SLICE_X10Y15",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_7_0_dpot_2923,
      O => U_datamemory_data_memory_7(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_7_0_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X10Y15",
      INIT => X"FB08FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_0_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112249,
      ADR3 => U_datamemory_data_memory_7(0),
      ADR4 => U_ALU_Mmux_result1120411,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_7_0_dpot_2923
    );
  U_IR_Mram_instruction25117 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y38",
      INIT => X"000000000000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U_PC_output_sig(14),
      ADR5 => U_PC_output_sig(11),
      O => U_IR_Mram_instruction25116_7854
    );
  U_CU_Mmux_memread11 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y37",
      INIT => X"0300000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => reset_IBUF_0,
      ADR2 => instruction_sig(15),
      ADR3 => instruction_sig(14),
      ADR4 => instruction_sig(12),
      ADR5 => instruction_sig(13),
      O => memread_sig
    );
  U_ALU_Mmux_result11304_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y37",
      INIT => X"FFAE5100FFAA5500"
    )
    port map (
      ADR0 => memread_sig,
      ADR1 => ALU_op_sig(2),
      ADR2 => ALU_op_sig(3),
      ADR3 => N101,
      ADR4 => N102,
      ADR5 => U_ALU_Mmux_result1130,
      O => N347
    );
  U_input_port_MUX_Mmux_mux_out151_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y37",
      INIT => X"F0F0FF00F0F0FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U_input_port_output_sig(8),
      ADR3 => PC_increment_8_0,
      ADR4 => input_enable,
      ADR5 => J_link_sig,
      O => N102
    );
  U_input_port_output_sig_11 : X_FF
    generic map(
      LOC => "SLICE_X10Y36",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => clock_BUFGP,
      I => input_port_11_IBUF_0,
      O => U_input_port_output_sig(11),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_input_port_MUX_Mmux_mux_out151_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y36",
      INIT => X"F0F0FF00F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U_input_port_output_sig(8),
      ADR3 => PC_increment_8_0,
      ADR4 => input_enable,
      ADR5 => J_link_sig,
      O => N101
    );
  U_input_port_output_sig_10 : X_FF
    generic map(
      LOC => "SLICE_X10Y36",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => clock_BUFGP,
      I => input_port_10_IBUF_0,
      O => U_input_port_output_sig(10),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_ALU_Mmux_result11304_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y36",
      INIT => X"FF15EA00FF11EE00"
    )
    port map (
      ADR0 => memread_sig,
      ADR1 => ALU_op_sig(2),
      ADR2 => ALU_op_sig(3),
      ADR3 => N101,
      ADR4 => N102,
      ADR5 => U_ALU_Mmux_result1130,
      O => N343
    );
  U_input_port_output_sig_9 : X_FF
    generic map(
      LOC => "SLICE_X10Y36",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => clock_BUFGP,
      I => input_port_9_IBUF_0,
      O => U_input_port_output_sig(9),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_ALU_Mmux_result11304_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y36",
      INIT => X"FF04FB00FF00FF00"
    )
    port map (
      ADR0 => memread_sig,
      ADR1 => ALU_op_sig(2),
      ADR2 => ALU_op_sig(3),
      ADR3 => N101,
      ADR4 => N102,
      ADR5 => U_ALU_Mmux_result1130,
      O => N344
    );
  U_input_port_output_sig_8 : X_FF
    generic map(
      LOC => "SLICE_X10Y36",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => clock_BUFGP,
      I => input_port_8_IBUF_0,
      O => U_input_port_output_sig(8),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_2_f8_13_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y36",
      INIT => X"FFFFF0CC0F330000"
    )
    port map (
      ADR0 => '1',
      ADR1 => N62,
      ADR2 => N63,
      ADR3 => U_ALU_Mmux_result1_split_8_0,
      ADR4 => N343,
      ADR5 => N344,
      O => N257
    );
  U_ALU_Mmux_result11304_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y35",
      INIT => X"FFBF4000FFBB4400"
    )
    port map (
      ADR0 => memread_sig,
      ADR1 => ALU_op_sig(2),
      ADR2 => ALU_op_sig(3),
      ADR3 => N101,
      ADR4 => N102,
      ADR5 => U_ALU_Mmux_result1130,
      O => N346
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_2_f8_13_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y35",
      INIT => X"FFFF0F33F0CC0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => N62,
      ADR2 => N63,
      ADR3 => U_ALU_Mmux_result1_split_8_0,
      ADR4 => N347,
      ADR5 => N346,
      O => N258
    );
  U_ALU_Mmux_result11301 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y35",
      INIT => X"AA00CC0FAA0FCCF0"
    )
    port map (
      ADR0 => read_data1(9),
      ADR1 => read_data1(7),
      ADR2 => read_data1(8),
      ADR3 => U_ALU_controller_alu_signal_3_2_7717,
      ADR4 => U_ALU_controller_alu_signal_4_2_7134,
      ADR5 => ALUB_sig(8),
      O => U_ALU_Mmux_result1130
    );
  U_ALU_Mmux_result11304 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y35",
      INIT => X"2277005527270505"
    )
    port map (
      ADR0 => ALU_op_sig(2),
      ADR1 => ALU_op_sig(3),
      ADR2 => N62,
      ADR3 => N63,
      ADR4 => U_ALU_Mmux_result1130,
      ADR5 => U_ALU_Mmux_result1_split_8_0,
      O => ALU_RESULT_8_Q
    );
  U_IR_Mram_instruction121113 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y45",
      INIT => X"0000000000000003"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_PC_output_sig(9),
      ADR2 => U_PC_output_sig(8),
      ADR3 => U_PC_output_sig(14),
      ADR4 => U_PC_output_sig(11),
      ADR5 => N58,
      O => U_IR_Mram_instruction121112
    );
  U_IR_Mram_instruction121113_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y45",
      INIT => X"FF00FFFFFF0FF0FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U_PC_output_sig(2),
      ADR3 => U_PC_output_sig(3),
      ADR4 => U_PC_output_sig(1),
      ADR5 => U_PC_output_sig(4),
      O => N58
    );
  U_datamemory_n0185_inv1_cepot : X_LUT6
    generic map(
      LOC => "SLICE_X12Y22",
      INIT => X"BBB88B88FFFCCFCC"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => U_ALU_Mmux_result1_split_3_0,
      ADR3 => N77,
      ADR4 => N78,
      ADR5 => U_ALU_Mmux_result1120,
      O => U_datamemory_n0185_inv1_cepot_7672
    );
  U_ALU_Mmux_result11184_U_ALU_Mmux_result11184_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f7_3417,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f7_0_7475
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y15"
    )
    port map (
      IA => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_5_3418,
      IB => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_3428,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f7_3417,
      SEL => U_ALU_Mmux_result11204_7247
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_5 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y15",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_8(0),
      ADR1 => U_datamemory_data_memory_9(0),
      ADR2 => U_datamemory_data_memory_11(0),
      ADR3 => U_datamemory_data_memory_10(0),
      ADR4 => U_ALU_Mmux_result11164_7229,
      ADR5 => U_ALU_Mmux_result11184_7230,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_5_3418
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y15",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_12(0),
      ADR1 => U_datamemory_data_memory_13(0),
      ADR2 => U_datamemory_data_memory_15(0),
      ADR3 => U_datamemory_data_memory_14(0),
      ADR4 => U_ALU_Mmux_result11164_1_7261,
      ADR5 => U_ALU_Mmux_result11184_1_7262,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_3428
    );
  U_ALU_Mmux_result11184_1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y15",
      INIT => X"4073407340407373"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => U_ALU_Mmux_result1118,
      ADR3 => N81,
      ADR4 => N80,
      ADR5 => U_ALU_Mmux_result1_split_2_0,
      O => U_ALU_Mmux_result11184_7230
    );
  U_ALU_Mmux_result11184_6 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y15",
      INIT => X"4073407340407373"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => U_ALU_Mmux_result1118,
      ADR3 => N81,
      ADR4 => N80,
      ADR5 => U_ALU_Mmux_result1_split_2_0,
      O => U_ALU_Mmux_result11184_1_7262
    );
  U_datamemory_data_memory_9_3 : X_FF
    generic map(
      LOC => "SLICE_X12Y16",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0157_inv1_cepot_7699,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_9_3_dpot_3448,
      O => U_datamemory_data_memory_9(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_9_3_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X12Y16",
      INIT => X"FF00BF80FF00FF00"
    )
    port map (
      ADR0 => read_data2_3_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112247,
      ADR3 => U_datamemory_data_memory_9(3),
      ADR4 => U_ALU_Mmux_result112049,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_9_3_dpot_3448
    );
  U_datamemory_data_memory_9_2 : X_FF
    generic map(
      LOC => "SLICE_X12Y16",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0157_inv1_cepot_7699,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_9_2_dpot_3467,
      O => U_datamemory_data_memory_9(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_9_2_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X12Y16",
      INIT => X"FF00BF80FF00FF00"
    )
    port map (
      ADR0 => read_data2_2_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112247,
      ADR3 => U_datamemory_data_memory_9(2),
      ADR4 => U_ALU_Mmux_result112049,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_9_2_dpot_3467
    );
  U_datamemory_data_memory_9_1 : X_FF
    generic map(
      LOC => "SLICE_X12Y16",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0157_inv1_cepot_7699,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_9_1_dpot_3452,
      O => U_datamemory_data_memory_9(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_9_1_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X12Y16",
      INIT => X"FF00BF80FF00FF00"
    )
    port map (
      ADR0 => read_data2_1_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112247,
      ADR3 => U_datamemory_data_memory_9(1),
      ADR4 => U_ALU_Mmux_result112049,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_9_1_dpot_3452
    );
  U_datamemory_data_memory_9_0 : X_FF
    generic map(
      LOC => "SLICE_X12Y16",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0157_inv1_cepot_7699,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_9_0_dpot_3469,
      O => U_datamemory_data_memory_9(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_9_0_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X12Y16",
      INIT => X"FF00BF80FF00FF00"
    )
    port map (
      ADR0 => read_data2_0_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112247,
      ADR3 => U_datamemory_data_memory_9(0),
      ADR4 => U_ALU_Mmux_result112049,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_9_0_dpot_3469
    );
  U_IR_Mram_instruction5115 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y36",
      INIT => X"0000000100000000"
    )
    port map (
      ADR0 => U_PC_output_sig(13),
      ADR1 => U_PC_output_sig(8),
      ADR2 => U_PC_output_sig(6),
      ADR3 => U_PC_output_sig(14),
      ADR4 => U_PC_output_sig(3),
      ADR5 => U_PC_output_sig(4),
      O => U_IR_Mram_instruction51112
    );
  U_input_port_MUX_Mmux_mux_out61_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y43",
      INIT => X"F0F0FF00F0F0FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U_input_port_output_sig(14),
      ADR3 => PC_increment_14_0,
      ADR4 => input_enable,
      ADR5 => J_link_sig,
      O => N120
    );
  U_ALU_Mmux_result11124_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y43",
      INIT => X"FFAE5100FFAA5500"
    )
    port map (
      ADR0 => memread_sig,
      ADR1 => ALU_op_sig(2),
      ADR2 => ALU_op_sig(3),
      ADR3 => N119,
      ADR4 => N120,
      ADR5 => U_ALU_Mmux_result1112,
      O => N323
    );
  U_ALU_Mmux_result11124_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y43",
      INIT => X"FFBF4000FFBB4400"
    )
    port map (
      ADR0 => memread_sig,
      ADR1 => ALU_op_sig(2),
      ADR2 => ALU_op_sig(3),
      ADR3 => N119,
      ADR4 => N120,
      ADR5 => U_ALU_Mmux_result1112,
      O => N322
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_2_f8_4_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y43",
      INIT => X"FFFF0F33F0CC0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => N134,
      ADR2 => N135,
      ADR3 => U_ALU_Mmux_result1_split_14_0,
      ADR4 => N323,
      ADR5 => N322,
      O => N282
    );
  U_datamemory_data_memory_10_7 : X_FF
    generic map(
      LOC => "SLICE_X12Y17",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_10_7_dpot_3492,
      O => U_datamemory_data_memory_10(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_10_7_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X12Y17",
      INIT => X"FF00FF00FF00BF80"
    )
    port map (
      ADR0 => read_data2_7_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112243,
      ADR3 => U_datamemory_data_memory_10(7),
      ADR4 => U_ALU_Mmux_result112045,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_10_7_dpot_3492
    );
  U_datamemory_data_memory_10_6 : X_FF
    generic map(
      LOC => "SLICE_X12Y17",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_10_6_dpot_3485,
      O => U_datamemory_data_memory_10(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_10_6_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X12Y17",
      INIT => X"FF00FF00FF00BF80"
    )
    port map (
      ADR0 => read_data2_6_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112243,
      ADR3 => U_datamemory_data_memory_10(6),
      ADR4 => U_ALU_Mmux_result112045,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_10_6_dpot_3485
    );
  U_datamemory_data_memory_10_5 : X_FF
    generic map(
      LOC => "SLICE_X12Y17",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_10_5_dpot_3502,
      O => U_datamemory_data_memory_10(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_10_5_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X12Y17",
      INIT => X"FF00FF00FF00BF80"
    )
    port map (
      ADR0 => read_data2_5_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112243,
      ADR3 => U_datamemory_data_memory_10(5),
      ADR4 => U_ALU_Mmux_result112045,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_10_5_dpot_3502
    );
  U_datamemory_data_memory_10_4 : X_FF
    generic map(
      LOC => "SLICE_X12Y17",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_10_4_dpot_3505,
      O => U_datamemory_data_memory_10(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_10_4_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X12Y17",
      INIT => X"FF00FF00FF00BF80"
    )
    port map (
      ADR0 => read_data2_4_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112243,
      ADR3 => U_datamemory_data_memory_10(4),
      ADR4 => U_ALU_Mmux_result112045,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_10_4_dpot_3505
    );
  U_REG_register_file_7_9 : X_FF
    generic map(
      LOC => "SLICE_X11Y28",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0093_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(9),
      O => U_REG_register_file_7(9),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_7_8 : X_FF
    generic map(
      LOC => "SLICE_X11Y28",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0093_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(8),
      O => U_REG_register_file_7(8),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_input_port_MUX_Mmux_mux_out152 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y28",
      INIT => X"CCCCF0CCCCF0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => N258,
      ADR2 => N257,
      ADR3 => U_ALU_Mmux_result1122410,
      ADR4 => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f714_0,
      ADR5 => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f714_0,
      O => write_data_level2(8)
    );
  U_REG_register_file_7_7 : X_FF
    generic map(
      LOC => "SLICE_X11Y28",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0093_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(7),
      O => U_REG_register_file_7(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_input_port_MUX_Mmux_mux_out142 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y28",
      INIT => X"CCCCF0CCCCF0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => N255,
      ADR2 => N254,
      ADR3 => U_ALU_Mmux_result1122410,
      ADR4 => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f713_0,
      ADR5 => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f713_0,
      O => write_data_level2(7)
    );
  U_REG_register_file_7_6 : X_FF
    generic map(
      LOC => "SLICE_X11Y28",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0093_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(6),
      O => U_REG_register_file_7(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_IR_Mram_instruction5116 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y34",
      INIT => X"0000000000000003"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_PC_output_sig(13),
      ADR2 => U_PC_output_sig(8),
      ADR3 => U_PC_output_sig(6),
      ADR4 => U_PC_output_sig(14),
      ADR5 => U_PC_output_sig(3),
      O => U_IR_Mram_instruction5115_8001
    );
  U_IR_Mram_instruction51115_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y34",
      INIT => X"ECECFDFFFFFFFFFF"
    )
    port map (
      ADR0 => U_PC_output_sig(5),
      ADR1 => U_PC_output_sig(11),
      ADR2 => U_PC_output_sig(1),
      ADR3 => U_IR_Mram_instruction5115_8001,
      ADR4 => U_IR_Mram_instruction51112,
      ADR5 => U_IR_Mram_instruction511,
      O => N961
    );
  U_IR_Mram_instruction51115_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y34",
      INIT => X"B3B3A2A000000000"
    )
    port map (
      ADR0 => U_PC_output_sig(5),
      ADR1 => U_PC_output_sig(11),
      ADR2 => U_PC_output_sig(1),
      ADR3 => U_IR_Mram_instruction5115_8001,
      ADR4 => U_IR_Mram_instruction51112,
      ADR5 => U_IR_Mram_instruction511,
      O => N97
    );
  U_IR_Mram_instruction5111 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y34",
      INIT => X"0000000000000003"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_PC_output_sig(15),
      ADR2 => U_PC_output_sig(7),
      ADR3 => U_PC_output_sig(10),
      ADR4 => U_PC_output_sig(12),
      ADR5 => U_PC_output_sig(9),
      O => U_IR_Mram_instruction511
    );
  N77_N77_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f712,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f712_0
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f7_11 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y18"
    )
    port map (
      IA => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_524_3522,
      IB => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_412_3529,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f712,
      SEL => U_ALU_Mmux_result11204_7247
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_524 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y18",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_8(6),
      ADR1 => U_datamemory_data_memory_9(6),
      ADR2 => U_datamemory_data_memory_11(6),
      ADR3 => U_datamemory_data_memory_10(6),
      ADR4 => U_ALU_Mmux_result11164_1_7261,
      ADR5 => U_ALU_Mmux_result11184_1_7262,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_524_3522
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_412 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y18",
      INIT => X"F0F0CCCCFF00AAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_12(6),
      ADR1 => U_datamemory_data_memory_13(6),
      ADR2 => U_datamemory_data_memory_15(6),
      ADR3 => U_datamemory_data_memory_14(6),
      ADR4 => U_ALU_Mmux_result111841,
      ADR5 => U_ALU_Mmux_result111641,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_412_3529
    );
  U_ALU_Mmux_result11203_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y18",
      INIT => X"FFF30F3FFFF33FFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => read_data1(3),
      ADR2 => U_ALU_controller_alu_signal(3),
      ADR3 => U_ALU_controller_alu_signal(4),
      ADR4 => U_ALU_controller_alu_signal_1_1_7780,
      ADR5 => ALUB_sig(3),
      O => N77
    );
  U_ALU_Mmux_result11204_1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y18",
      INIT => X"4447000374773033"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => U_ALU_Mmux_result1_split_3_0,
      ADR3 => N77,
      ADR4 => U_ALU_Mmux_result1120,
      ADR5 => N78,
      O => U_ALU_Mmux_result11204_7247
    );
  U_ALU_Mmux_result11204 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y19",
      INIT => X"4447000374773033"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => U_ALU_Mmux_result1_split_3_0,
      ADR3 => N77,
      ADR4 => U_ALU_Mmux_result1120,
      ADR5 => N78,
      O => ALU_RESULT_3_Q
    );
  U_ALU_Mmux_result11224_6 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y19",
      INIT => X"4073407340407373"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => U_ALU_Mmux_result1122,
      ADR3 => N75,
      ADR4 => N74,
      ADR5 => U_ALU_Mmux_result1_split_4_0,
      O => U_ALU_Mmux_result112245
    );
  U_IR_Mram_instruction31112 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y35",
      INIT => X"0000000000150011"
    )
    port map (
      ADR0 => U_PC_output_sig(6),
      ADR1 => U_PC_output_sig(2),
      ADR2 => U_PC_output_sig(1),
      ADR3 => U_PC_output_sig(9),
      ADR4 => U_PC_output_sig(4),
      ADR5 => N991,
      O => U_IR_Mram_instruction31111
    );
  U_IR_Mram_instruction31112_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y35",
      INIT => X"FFFFFFF0FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U_PC_output_sig(10),
      ADR3 => U_PC_output_sig(12),
      ADR4 => U_PC_output_sig(11),
      ADR5 => U_PC_output_sig(3),
      O => N991
    );
  U_IR_Mram_instruction5114_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y35",
      INIT => X"FFFCFFFFFFFCFCFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_PC_output_sig(13),
      ADR2 => U_PC_output_sig(11),
      ADR3 => U_PC_output_sig(3),
      ADR4 => U_PC_output_sig(1),
      ADR5 => U_PC_output_sig(4),
      O => N601
    );
  U_output_port_output_14_U_output_port_output_14_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => read_data1_14_pack_8,
      O => read_data1(14)
    );
  U_REG_mux5_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y44"
    )
    port map (
      IA => U_REG_mux5_4_3800,
      IB => U_REG_mux5_3_3790,
      O => read_data1_14_pack_8,
      SEL => instruction_sig(11)
    );
  U_REG_mux5_4 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y44",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_0(14),
      ADR1 => U_REG_register_file_1(14),
      ADR2 => U_REG_register_file_3(14),
      ADR3 => U_REG_register_file_2(14),
      ADR4 => instruction_sig(9),
      ADR5 => instruction_sig(10),
      O => U_REG_mux5_4_3800
    );
  U_output_port_output_14 : X_FF
    generic map(
      LOC => "SLICE_X12Y44",
      INIT => '0'
    )
    port map (
      CE => output_enable,
      CLK => clock_BUFGP,
      I => read_data1_14_pack_8,
      O => U_output_port_output(14),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_mux5_3 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y44",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_4(14),
      ADR1 => U_REG_register_file_5(14),
      ADR2 => U_REG_register_file_7(14),
      ADR3 => U_REG_register_file_6(14),
      ADR4 => instruction_sig(9),
      ADR5 => instruction_sig(10),
      O => U_REG_mux5_3_3790
    );
  U_ALU_Mmux_result11123_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y44",
      INIT => X"CCCFCC0CCFFFCC0C"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_ALU_controller_alu_signal_1_11,
      ADR2 => read_data1(14),
      ADR3 => ALU_op_sig(0),
      ADR4 => ALU_op_sig(1),
      ADR5 => ALUB_sig(14),
      O => N135
    );
  U_ALU_Mmux_result11123_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y44",
      INIT => X"CCCFFF3FCFFFFF3F"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_ALU_controller_alu_signal_1_11,
      ADR2 => read_data1(14),
      ADR3 => ALU_op_sig(0),
      ADR4 => ALU_op_sig(1),
      ADR5 => ALUB_sig(14),
      O => N134
    );
  N228_N228_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N232,
      O => N232_0
    );
  U_Mux_branch_mux_control_INV_3_o5_SW25 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y42"
    )
    port map (
      IA => N377,
      IB => N378,
      O => N232,
      SEL => U_Mux_branch_mux_control_INV_3_o4_7223
    );
  U_Mux_branch_mux_control_INV_3_o5_SW25_F : X_LUT6
    generic map(
      LOC => "SLICE_X12Y42",
      INIT => X"EEEFEEEA44454440"
    )
    port map (
      ADR0 => J_R_sig,
      ADR1 => PC_increment_13_0,
      ADR2 => U_Mux_branch_mux_control_INV_3_o1_7015,
      ADR3 => jump_sig,
      ADR4 => PC_BRANCH_13_0,
      ADR5 => read_data1(13),
      O => N377
    );
  U_Mux_branch_mux_control_INV_3_o5_SW25_G : X_LUT6
    generic map(
      LOC => "SLICE_X12Y42",
      INIT => X"FFFF00FFFF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => J_R_sig,
      ADR4 => read_data1(13),
      ADR5 => PC_increment_13_0,
      O => N378
    );
  U_Mux_branch_mux_control_INV_3_o4_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y42",
      INIT => X"AAA8AAA8AAA8FFFD"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(1),
      ADR2 => N51,
      ADR3 => ALU_op_sig(0),
      ADR4 => U_ALU_Mmux_result118,
      ADR5 => U_ALU_Mmux_result1110,
      O => N228
    );
  U_Mux_branch_mux_control_INV_3_o4 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y42",
      INIT => X"EEEFEEEA44454440"
    )
    port map (
      ADR0 => ALU_op_sig(2),
      ADR1 => N229,
      ADR2 => U_ALU_Mmux_result1_split_12_0,
      ADR3 => U_ALU_Mmux_result1_split_13_0,
      ADR4 => N227,
      ADR5 => N228,
      O => U_Mux_branch_mux_control_INV_3_o4_7223
    );
  U_REG_register_file_7_15_U_REG_register_file_7_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => read_data2_14_pack_5,
      O => read_data2(14)
    );
  U_REG_mux21_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y43"
    )
    port map (
      IA => U_REG_mux21_4_3762,
      IB => U_REG_mux21_3_3754,
      O => read_data2_14_pack_5,
      SEL => instruction_sig(8)
    );
  U_REG_mux21_4 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y43",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_0(14),
      ADR1 => U_REG_register_file_1(14),
      ADR2 => U_REG_register_file_3(14),
      ADR3 => U_REG_register_file_2(14),
      ADR4 => instruction_sig(6),
      ADR5 => instruction_sig(7),
      O => U_REG_mux21_4_3762
    );
  U_REG_mux21_3 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y43",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_4(14),
      ADR1 => U_REG_register_file_5(14),
      ADR2 => U_REG_register_file_7(14),
      ADR3 => U_REG_register_file_6(14),
      ADR4 => instruction_sig(6),
      ADR5 => instruction_sig(7),
      O => U_REG_mux21_3_3754
    );
  U_REG_register_file_7_15 : X_FF
    generic map(
      LOC => "SLICE_X12Y43",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0093_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(15),
      O => U_REG_register_file_7(15),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_Mux_register_file_alu_Mmux_mux_out61 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y43",
      INIT => X"FF00FFFFFF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => instruction_sig(5),
      ADR4 => alusrc_sig,
      ADR5 => read_data2(14),
      O => ALUB_sig(14)
    );
  U_REG_register_file_7_14 : X_FF
    generic map(
      LOC => "SLICE_X12Y43",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0093_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(14),
      O => U_REG_register_file_7(14),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_ALU_Mmux_result11121 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y43",
      INIT => X"AAF00033AAF033CC"
    )
    port map (
      ADR0 => read_data1(15),
      ADR1 => read_data1(14),
      ADR2 => read_data1(13),
      ADR3 => ALU_op_sig(0),
      ADR4 => ALU_op_sig(1),
      ADR5 => ALUB_sig(14),
      O => U_ALU_Mmux_result1112
    );
  U_REG_register_file_2_15 : X_FF
    generic map(
      LOC => "SLICE_X12Y40",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0073_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(15),
      O => U_REG_register_file_2(15),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_2_14 : X_FF
    generic map(
      LOC => "SLICE_X12Y40",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0073_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(14),
      O => U_REG_register_file_2(14),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_2_13 : X_FF
    generic map(
      LOC => "SLICE_X12Y40",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0073_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(13),
      O => U_REG_register_file_2(13),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_2_12 : X_FF
    generic map(
      LOC => "SLICE_X12Y40",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0073_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(12),
      O => U_REG_register_file_2(12),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_5_11 : X_FF
    generic map(
      LOC => "SLICE_X12Y30",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0085_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(11),
      O => U_REG_register_file_5(11),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_input_port_MUX_Mmux_mux_out21_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y30",
      INIT => X"F0F0FF00F0F0FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U_input_port_output_sig(10),
      ADR3 => PC_increment_10_0,
      ADR4 => input_enable,
      ADR5 => J_link_sig,
      O => N108
    );
  U_REG_register_file_5_10 : X_FF
    generic map(
      LOC => "SLICE_X12Y30",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0085_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(10),
      O => U_REG_register_file_5(10),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_5_9 : X_FF
    generic map(
      LOC => "SLICE_X12Y30",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0085_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(9),
      O => U_REG_register_file_5(9),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_5_8 : X_FF
    generic map(
      LOC => "SLICE_X12Y30",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0085_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(8),
      O => U_REG_register_file_5(8),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_input_port_MUX_Mmux_mux_out31_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y33",
      INIT => X"F0F0FF00F0F0FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U_input_port_output_sig(11),
      ADR3 => PC_increment_11_0,
      ADR4 => input_enable,
      ADR5 => J_link_sig,
      O => N111
    );
  read_data2_12_read_data2_12_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => read_data2(12),
      O => read_data2_12_0
    );
  U_REG_mux19_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y39"
    )
    port map (
      IA => U_REG_mux19_4_3672,
      IB => U_REG_mux19_3_3674,
      O => read_data2(12),
      SEL => instruction_sig(8)
    );
  U_REG_mux19_4 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y39",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_0(12),
      ADR1 => U_REG_register_file_1(12),
      ADR2 => U_REG_register_file_3(12),
      ADR3 => U_REG_register_file_2(12),
      ADR4 => instruction_sig(6),
      ADR5 => instruction_sig(7),
      O => U_REG_mux19_4_3672
    );
  U_REG_mux19_3 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y39",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_4(12),
      ADR1 => U_REG_register_file_5(12),
      ADR2 => U_REG_register_file_7(12),
      ADR3 => U_REG_register_file_6(12),
      ADR4 => instruction_sig(6),
      ADR5 => instruction_sig(7),
      O => U_REG_mux19_3_3674
    );
  U_input_port_MUX_Mmux_mux_out51_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y41",
      INIT => X"F0F0FF00F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U_input_port_output_sig(13),
      ADR3 => PC_increment_13_0,
      ADR4 => input_enable,
      ADR5 => J_link_sig,
      O => N116
    );
  U_ALU_Mmux_result11104_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y41",
      INIT => X"FFAE5100FFAA5500"
    )
    port map (
      ADR0 => memread_sig,
      ADR1 => ALU_op_sig(2),
      ADR2 => ALU_op_sig(3),
      ADR3 => N116,
      ADR4 => N117,
      ADR5 => U_ALU_Mmux_result1110,
      O => N305
    );
  U_ALU_Mmux_result11104_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y41",
      INIT => X"FFBF4000FFBB4400"
    )
    port map (
      ADR0 => memread_sig,
      ADR1 => ALU_op_sig(2),
      ADR2 => ALU_op_sig(3),
      ADR3 => N116,
      ADR4 => N117,
      ADR5 => U_ALU_Mmux_result1110,
      O => N304
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_2_f8_3_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y41",
      INIT => X"FFFF0F33F0CC0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => N181,
      ADR2 => N182,
      ADR3 => U_ALU_Mmux_result1_split_13_0,
      ADR4 => N305,
      ADR5 => N304,
      O => N279
    );
  U_IR_Mram_instruction511111 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y35",
      INIT => X"0000000000010101"
    )
    port map (
      ADR0 => U_PC_output_sig(8),
      ADR1 => U_PC_output_sig(6),
      ADR2 => U_PC_output_sig(14),
      ADR3 => U_PC_output_sig(3),
      ADR4 => U_PC_output_sig(4),
      ADR5 => N421,
      O => U_IR_Mram_instruction51110
    );
  U_IR_Mram_instruction511111_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y35",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U_PC_output_sig(13),
      ADR5 => U_PC_output_sig(11),
      O => N421
    );
  U_ALU_Mmux_result11204_12 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y24",
      INIT => X"4447000374773033"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => U_ALU_Mmux_result1_split_3_0,
      ADR3 => N77,
      ADR4 => U_ALU_Mmux_result1120,
      ADR5 => N78,
      O => U_ALU_Mmux_result1120411
    );
  U_output_port_output_8_U_output_port_output_8_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => read_data1_8_pack_3,
      O => read_data1(8)
    );
  U_REG_mux14_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y27"
    )
    port map (
      IA => U_REG_mux14_4_3573,
      IB => U_REG_mux14_3_3578,
      O => read_data1_8_pack_3,
      SEL => instruction_sig(11)
    );
  U_REG_mux14_4 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y27",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_0(8),
      ADR1 => U_REG_register_file_1(8),
      ADR2 => U_REG_register_file_3(8),
      ADR3 => U_REG_register_file_2(8),
      ADR4 => instruction_sig(9),
      ADR5 => instruction_sig(10),
      O => U_REG_mux14_4_3573
    );
  U_output_port_output_8 : X_FF
    generic map(
      LOC => "SLICE_X12Y27",
      INIT => '0'
    )
    port map (
      CE => output_enable,
      CLK => clock_BUFGP,
      I => read_data1_8_pack_3,
      O => U_output_port_output(8),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_mux14_3 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y27",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_4(8),
      ADR1 => U_REG_register_file_5(8),
      ADR2 => U_REG_register_file_7(8),
      ADR3 => U_REG_register_file_6(8),
      ADR4 => instruction_sig(9),
      ADR5 => instruction_sig(10),
      O => U_REG_mux14_3_3578
    );
  U_ALU_Mmux_result11303_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y27",
      INIT => X"CCCCCF0CCFCCFF0C"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_ALU_controller_alu_signal_1_11,
      ADR2 => read_data1(8),
      ADR3 => U_ALU_controller_alu_signal_3_2_7717,
      ADR4 => U_ALU_controller_alu_signal_4_2_7134,
      ADR5 => ALUB_sig(8),
      O => N63
    );
  U_output_port_output_12_U_output_port_output_12_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => read_data1_12_pack_4,
      O => read_data1(12)
    );
  U_REG_mux3_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y38"
    )
    port map (
      IA => U_REG_mux3_4_3645,
      IB => U_REG_mux3_3_3658,
      O => read_data1_12_pack_4,
      SEL => instruction_sig(11)
    );
  U_REG_mux3_4 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y38",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_0(12),
      ADR1 => U_REG_register_file_1(12),
      ADR2 => U_REG_register_file_3(12),
      ADR3 => U_REG_register_file_2(12),
      ADR4 => instruction_sig(9),
      ADR5 => instruction_sig(10),
      O => U_REG_mux3_4_3645
    );
  U_output_port_output_12 : X_FF
    generic map(
      LOC => "SLICE_X12Y38",
      INIT => '0'
    )
    port map (
      CE => output_enable,
      CLK => clock_BUFGP,
      I => read_data1_12_pack_4,
      O => U_output_port_output(12),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_mux3_3 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y38",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_4(12),
      ADR1 => U_REG_register_file_5(12),
      ADR2 => U_REG_register_file_7(12),
      ADR3 => U_REG_register_file_6(12),
      ADR4 => instruction_sig(9),
      ADR5 => instruction_sig(10),
      O => U_REG_mux3_3_3658
    );
  U_ALU_controller_alu_signal_2_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y38",
      INIT => X"FFFFFF00FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => instruction_sig(12),
      ADR4 => instruction_sig(0),
      ADR5 => instruction_sig(13),
      O => N240
    );
  U_Mux_branch_mux_control_INV_3_o4_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y38",
      INIT => X"888A888A888AFFFF"
    )
    port map (
      ADR0 => instruction_sig(1),
      ADR1 => instruction_sig(2),
      ADR2 => N8,
      ADR3 => N240,
      ADR4 => read_data1(12),
      ADR5 => read_data1(13),
      O => N51
    );
  U_ALU_Mmux_result11324_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y34",
      INIT => X"FFAE5100FFAA5500"
    )
    port map (
      ADR0 => memread_sig,
      ADR1 => ALU_op_sig(2),
      ADR2 => ALU_op_sig(3),
      ADR3 => N104,
      ADR4 => N105,
      ADR5 => U_ALU_Mmux_result1132,
      O => N341
    );
  U_input_port_MUX_Mmux_mux_out161_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y34",
      INIT => X"F0F0FF00F0F0FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U_input_port_output_sig(9),
      ADR3 => PC_increment_9_0,
      ADR4 => input_enable,
      ADR5 => J_link_sig,
      O => N105
    );
  U_datamemory_data_memory_9_7 : X_FF
    generic map(
      LOC => "SLICE_X13Y16",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0157_inv1_cepot_7699,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_9_7_dpot_3854,
      O => U_datamemory_data_memory_9(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_9_7_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y16",
      INIT => X"FF00BF80FF00FF00"
    )
    port map (
      ADR0 => read_data2_7_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112248,
      ADR3 => U_datamemory_data_memory_9(7),
      ADR4 => U_ALU_Mmux_result112049,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_9_7_dpot_3854
    );
  U_datamemory_data_memory_9_6 : X_FF
    generic map(
      LOC => "SLICE_X13Y16",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0157_inv1_cepot_7699,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_9_6_dpot_3873,
      O => U_datamemory_data_memory_9(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_9_6_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y16",
      INIT => X"FF00BF80FF00FF00"
    )
    port map (
      ADR0 => read_data2_6_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112247,
      ADR3 => U_datamemory_data_memory_9(6),
      ADR4 => U_ALU_Mmux_result112049,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_9_6_dpot_3873
    );
  U_datamemory_data_memory_9_5 : X_FF
    generic map(
      LOC => "SLICE_X13Y16",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0157_inv1_cepot_7699,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_9_5_dpot_3858,
      O => U_datamemory_data_memory_9(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_9_5_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y16",
      INIT => X"FF00BF80FF00FF00"
    )
    port map (
      ADR0 => read_data2_5_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112247,
      ADR3 => U_datamemory_data_memory_9(5),
      ADR4 => U_ALU_Mmux_result112049,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_9_5_dpot_3858
    );
  U_datamemory_data_memory_9_4 : X_FF
    generic map(
      LOC => "SLICE_X13Y16",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0157_inv1_cepot_7699,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_9_4_dpot_3875,
      O => U_datamemory_data_memory_9(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_9_4_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y16",
      INIT => X"FF00BF80FF00FF00"
    )
    port map (
      ADR0 => read_data2_4_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112247,
      ADR3 => U_datamemory_data_memory_9(4),
      ADR4 => U_ALU_Mmux_result112049,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_9_4_dpot_3875
    );
  U_datamemory_data_memory_14_2 : X_FF
    generic map(
      LOC => "SLICE_X13Y15",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0177_inv1_cepot_7707,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_14_2_dpot_3825,
      O => U_datamemory_data_memory_14(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_14_2_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y15",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_2_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result1122411,
      ADR3 => U_datamemory_data_memory_14(2),
      ADR4 => ALU_RESULT_3_Q,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_14_2_dpot_3825
    );
  U_datamemory_data_memory_14_1 : X_FF
    generic map(
      LOC => "SLICE_X13Y15",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0177_inv1_cepot_7707,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_14_1_dpot_3822,
      O => U_datamemory_data_memory_14(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_14_1_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y15",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_1_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result1122411,
      ADR3 => U_datamemory_data_memory_14(1),
      ADR4 => ALU_RESULT_3_Q,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_14_1_dpot_3822
    );
  U_ALU_Mmux_result11184 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y15",
      INIT => X"4073407340407373"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => U_ALU_Mmux_result1118,
      ADR3 => N81,
      ADR4 => N80,
      ADR5 => U_ALU_Mmux_result1_split_2_0,
      O => ALU_RESULT_2_Q
    );
  U_datamemory_data_memory_14_0 : X_FF
    generic map(
      LOC => "SLICE_X13Y15",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0177_inv1_cepot_7707,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_14_0_dpot_3849,
      O => U_datamemory_data_memory_14(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_14_0_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y15",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_0_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result1122411,
      ADR3 => U_datamemory_data_memory_14(0),
      ADR4 => ALU_RESULT_3_Q,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_14_0_dpot_3849
    );
  U_input_port_MUX_Mmux_mux_out71_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y44",
      INIT => X"F0F0FF00F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U_input_port_output_sig(15),
      ADR3 => PC_increment_15_0,
      ADR4 => input_enable,
      ADR5 => J_link_sig,
      O => N122
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f77_U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f77_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f77,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f77_0
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f7_6 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y14"
    )
    port map (
      IA => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_514_5012,
      IB => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_47_5009,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f77,
      SEL => U_ALU_Mmux_result11204_7247
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_514 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y14",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_8(1),
      ADR1 => U_datamemory_data_memory_9(1),
      ADR2 => U_datamemory_data_memory_11(1),
      ADR3 => U_datamemory_data_memory_10(1),
      ADR4 => U_ALU_Mmux_result11164_7229,
      ADR5 => U_ALU_Mmux_result11184_7230,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_514_5012
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_47 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y14",
      INIT => X"F0F0CCCCFF00AAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_12(1),
      ADR1 => U_datamemory_data_memory_13(1),
      ADR2 => U_datamemory_data_memory_15(1),
      ADR3 => U_datamemory_data_memory_14(1),
      ADR4 => U_ALU_Mmux_result111841,
      ADR5 => U_ALU_Mmux_result111641,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_47_5009
    );
  U_ALU_Mmux_result11143_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y43",
      INIT => X"FFFCFFC3FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => read_data1(15),
      ADR2 => ALU_op_sig(0),
      ADR3 => ALU_op_sig(1),
      ADR4 => ALUB_sig(15),
      ADR5 => ALU_op_sig(2),
      O => N187
    );
  U_ALU_Mmux_result11144_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y43",
      INIT => X"FFCC3300FFFC0300"
    )
    port map (
      ADR0 => '1',
      ADR1 => memread_sig,
      ADR2 => ALU_op_sig(3),
      ADR3 => N122,
      ADR4 => N123,
      ADR5 => N188,
      O => N317
    );
  U_ALU_Mmux_result11144_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y43",
      INIT => X"FFCF3000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => memread_sig,
      ADR2 => ALU_op_sig(3),
      ADR3 => N122,
      ADR4 => N123,
      ADR5 => N188,
      O => N316
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_2_f8_5_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y43",
      INIT => X"FFFFDDCF22300000"
    )
    port map (
      ADR0 => N189,
      ADR1 => U_ALU_Mmux_result1114,
      ADR2 => N187,
      ADR3 => U_ALU_Mmux_result1_split_15_0,
      ADR4 => N317,
      ADR5 => N316,
      O => N285
    );
  U_datamemory_data_memory_15_3 : X_FF
    generic map(
      LOC => "SLICE_X16Y15",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_15_3_dpot_5032,
      O => U_datamemory_data_memory_15(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_15_3_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X16Y15",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_3_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112246,
      ADR3 => U_datamemory_data_memory_15(3),
      ADR4 => U_ALU_Mmux_result112048,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_15_3_dpot_5032
    );
  U_datamemory_data_memory_15_2 : X_FF
    generic map(
      LOC => "SLICE_X16Y15",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_15_2_dpot_5049,
      O => U_datamemory_data_memory_15(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_15_2_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X16Y15",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_2_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112246,
      ADR3 => U_datamemory_data_memory_15(2),
      ADR4 => U_ALU_Mmux_result112048,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_15_2_dpot_5049
    );
  U_datamemory_data_memory_15_1 : X_FF
    generic map(
      LOC => "SLICE_X16Y15",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_15_1_dpot_5047,
      O => U_datamemory_data_memory_15(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_15_1_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X16Y15",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_1_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112246,
      ADR3 => U_datamemory_data_memory_15(1),
      ADR4 => U_ALU_Mmux_result112048,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_15_1_dpot_5047
    );
  U_datamemory_data_memory_15_0 : X_FF
    generic map(
      LOC => "SLICE_X16Y15",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_15_0_dpot_5053,
      O => U_datamemory_data_memory_15(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_15_0_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X16Y15",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_0_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112246,
      ADR3 => U_datamemory_data_memory_15(0),
      ADR4 => U_ALU_Mmux_result112048,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_15_0_dpot_5053
    );
  U_Mux_register_file_alu_Mmux_mux_out41 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y42",
      INIT => X"FF00FFFFFF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => instruction_sig(5),
      ADR4 => U_CU_Mmux_alusrc11_7730,
      ADR5 => read_data2_12_0,
      O => ALUB_sig(12)
    );
  U_ALU_Mmux_result1181 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y42",
      INIT => X"F000AA33F033AACC"
    )
    port map (
      ADR0 => read_data1(11),
      ADR1 => read_data1(12),
      ADR2 => read_data1(13),
      ADR3 => U_ALU_controller_alu_signal_3_2_7717,
      ADR4 => U_ALU_controller_alu_signal_4_2_7134,
      ADR5 => ALUB_sig(12),
      O => U_ALU_Mmux_result118
    );
  U_Mux_branch_mux_control_INV_3_o4_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y42",
      INIT => X"EEECEEA8AAECAAA8"
    )
    port map (
      ADR0 => U_ALU_controller_alu_signal_1_11,
      ADR1 => ALU_op_sig(1),
      ADR2 => N51,
      ADR3 => U_ALU_controller_alu_signal_4_2_7134,
      ADR4 => N295,
      ADR5 => N296,
      O => N229
    );
  U_ALU_controller_alu_signal_1_1_2 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y42",
      INIT => X"FFFFFF0000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => instruction_sig(0),
      ADR4 => instruction_sig(1),
      ADR5 => instruction_sig(2),
      O => U_ALU_controller_alu_signal_1_11
    );
  U_input_port_MUX_Mmux_mux_out31_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y33",
      INIT => X"F0F0FF00F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U_input_port_output_sig(11),
      ADR3 => PC_increment_11_0,
      ADR4 => input_enable,
      ADR5 => J_link_sig,
      O => N110
    );
  U_ALU_Mmux_result1164_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y33",
      INIT => X"FFAE5100FFAA5500"
    )
    port map (
      ADR0 => memread_sig,
      ADR1 => ALU_op_sig(2),
      ADR2 => ALU_op_sig(3),
      ADR3 => N110,
      ADR4 => N111,
      ADR5 => U_ALU_Mmux_result116,
      O => N329
    );
  U_ALU_Mmux_result1164_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y33",
      INIT => X"FFBF4000FFBB4400"
    )
    port map (
      ADR0 => memread_sig,
      ADR1 => ALU_op_sig(2),
      ADR2 => ALU_op_sig(3),
      ADR3 => N110,
      ADR4 => N111,
      ADR5 => U_ALU_Mmux_result116,
      O => N328
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_2_f8_1_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y33",
      INIT => X"FFFF0F33F0CC0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => N53,
      ADR2 => N54,
      ADR3 => U_ALU_Mmux_result1_split_11_0,
      ADR4 => N329,
      ADR5 => N328,
      O => N273
    );
  U_Mux_register_file_alu_Mmux_mux_out161 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y31",
      INIT => X"FF00FFFFFF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => instruction_sig(5),
      ADR4 => U_CU_Mmux_alusrc11_7730,
      ADR5 => read_data2_9_0,
      O => ALUB_sig(9)
    );
  U_CU_Mmux_alusrc11_1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y31",
      INIT => X"0300030003000330"
    )
    port map (
      ADR0 => '1',
      ADR1 => reset_IBUF_0,
      ADR2 => instruction_sig(15),
      ADR3 => instruction_sig(14),
      ADR4 => instruction_sig(13),
      ADR5 => instruction_sig(12),
      O => U_CU_Mmux_alusrc11_7730
    );
  U_REG_register_file_1_15 : X_FF
    generic map(
      LOC => "SLICE_X15Y40",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0069_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(15),
      O => U_REG_register_file_1(15),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_n0077_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y40",
      INIT => X"0F00000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => write_register(2),
      ADR3 => write_register(0),
      ADR4 => write_register(1),
      ADR5 => regwrite_sig,
      O => U_REG_n0077_inv
    );
  U_REG_register_file_1_14 : X_FF
    generic map(
      LOC => "SLICE_X15Y40",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0069_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(14),
      O => U_REG_register_file_1(14),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_n0069_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y40",
      INIT => X"00000F0000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => write_register(2),
      ADR3 => write_register(0),
      ADR4 => write_register(1),
      ADR5 => regwrite_sig,
      O => U_REG_n0069_inv
    );
  U_REG_register_file_1_13 : X_FF
    generic map(
      LOC => "SLICE_X15Y40",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0069_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(13),
      O => U_REG_register_file_1(13),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_n0081_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y40",
      INIT => X"00000F0000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => write_register(0),
      ADR3 => write_register(2),
      ADR4 => write_register(1),
      ADR5 => regwrite_sig,
      O => U_REG_n0081_inv
    );
  U_REG_register_file_1_12 : X_FF
    generic map(
      LOC => "SLICE_X15Y40",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0069_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(12),
      O => U_REG_register_file_1(12),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_Mux_write_register_level_2_Mmux_mux_out31 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y40",
      INIT => X"FFFFFFFFF0F0FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => instruction_sig(8),
      ADR3 => instruction_sig(5),
      ADR4 => regdst_sig_0,
      ADR5 => J_link_sig,
      O => write_register(2)
    );
  U_Mux_register_file_alu_Mmux_mux_out31 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y32",
      INIT => X"FF00FFFFFF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => instruction_sig(5),
      ADR4 => alusrc_sig,
      ADR5 => read_data2_11_0,
      O => ALUB_sig(11)
    );
  U_ALU_Mmux_result1161 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y32",
      INIT => X"F0AA0033F0AA33CC"
    )
    port map (
      ADR0 => read_data1(10),
      ADR1 => read_data1(11),
      ADR2 => read_data1(12),
      ADR3 => ALU_op_sig(0),
      ADR4 => ALU_op_sig(1),
      ADR5 => ALUB_sig(11),
      O => U_ALU_Mmux_result116
    );
  U_Mux_register_file_alu_Mmux_mux_out21 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y32",
      INIT => X"FF00FFFFFF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => instruction_sig(5),
      ADR4 => alusrc_sig,
      ADR5 => read_data2_10_0,
      O => ALUB_sig(10)
    );
  U_ALU_Mmux_result1143_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y32",
      INIT => X"CCFFCF3FCFFFFF3F"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_ALU_controller_alu_signal_1_11,
      ADR2 => read_data1(10),
      ADR3 => U_ALU_controller_alu_signal_3_2_7717,
      ADR4 => U_ALU_controller_alu_signal_4_2_7134,
      ADR5 => ALUB_sig(10),
      O => N56
    );
  U_input_port_MUX_Mmux_mux_out161_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y34",
      INIT => X"F0F0FF00F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U_input_port_output_sig(9),
      ADR3 => PC_increment_9_0,
      ADR4 => input_enable,
      ADR5 => J_link_sig,
      O => N104
    );
  U_ALU_Mmux_result11324_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y34",
      INIT => X"FF15EA00FF11EE00"
    )
    port map (
      ADR0 => memread_sig,
      ADR1 => ALU_op_sig(2),
      ADR2 => ALU_op_sig(3),
      ADR3 => N104,
      ADR4 => N105,
      ADR5 => U_ALU_Mmux_result1132,
      O => N337
    );
  U_ALU_Mmux_result11324_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y34",
      INIT => X"FF04FB00FF00FF00"
    )
    port map (
      ADR0 => memread_sig,
      ADR1 => ALU_op_sig(2),
      ADR2 => ALU_op_sig(3),
      ADR3 => N104,
      ADR4 => N105,
      ADR5 => U_ALU_Mmux_result1132,
      O => N338
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_2_f8_14_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y34",
      INIT => X"FFFFF0CC0F330000"
    )
    port map (
      ADR0 => '1',
      ADR1 => N59,
      ADR2 => N60,
      ADR3 => U_ALU_Mmux_result1_split_9_0,
      ADR4 => N337,
      ADR5 => N338,
      O => N260
    );
  U_REG_register_file_5_15 : X_FF
    generic map(
      LOC => "SLICE_X15Y41",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0085_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(15),
      O => U_REG_register_file_5(15),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_5_14 : X_FF
    generic map(
      LOC => "SLICE_X15Y41",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0085_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(14),
      O => U_REG_register_file_5(14),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_ALU_Mmux_result11103_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y41",
      INIT => X"F3FFF030F0F3F030"
    )
    port map (
      ADR0 => '1',
      ADR1 => read_data1(13),
      ADR2 => ALU_op_sig(3),
      ADR3 => ALU_op_sig(0),
      ADR4 => ALU_op_sig(1),
      ADR5 => N287,
      O => N182
    );
  U_REG_register_file_5_13 : X_FF
    generic map(
      LOC => "SLICE_X15Y41",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0085_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(13),
      O => U_REG_register_file_5(13),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_ALU_Mmux_result11102_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y41",
      INIT => X"00FF000000FFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => instruction_sig(5),
      ADR4 => alusrc_sig,
      ADR5 => read_data2_13_0,
      O => N287
    );
  U_REG_register_file_5_12 : X_FF
    generic map(
      LOC => "SLICE_X15Y41",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0085_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(12),
      O => U_REG_register_file_5(12),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_ALU_Mmux_result11103_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y41",
      INIT => X"F3FFFF3FF0F3FF3F"
    )
    port map (
      ADR0 => '1',
      ADR1 => read_data1(13),
      ADR2 => ALU_op_sig(3),
      ADR3 => ALU_op_sig(0),
      ADR4 => ALU_op_sig(1),
      ADR5 => N287,
      O => N181
    );
  U_REG_register_file_3_15 : X_FF
    generic map(
      LOC => "SLICE_X15Y39",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0077_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(15),
      O => U_REG_register_file_3(15),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_3_14 : X_FF
    generic map(
      LOC => "SLICE_X15Y39",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0077_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(14),
      O => U_REG_register_file_3(14),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_input_port_MUX_Mmux_mux_out62 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y39",
      INIT => X"CCCCF0CCCCF0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => N282,
      ADR2 => N281,
      ADR3 => U_ALU_Mmux_result1122411,
      ADR4 => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f75_0,
      ADR5 => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f75_0,
      O => write_data_level2(14)
    );
  U_REG_register_file_3_13 : X_FF
    generic map(
      LOC => "SLICE_X15Y39",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0077_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(13),
      O => U_REG_register_file_3(13),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_ALU_Mmux_result11224_12 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y39",
      INIT => X"4073407340407373"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => U_ALU_Mmux_result1122,
      ADR3 => N75,
      ADR4 => N74,
      ADR5 => U_ALU_Mmux_result1_split_4_0,
      O => U_ALU_Mmux_result1122411
    );
  U_REG_register_file_3_12 : X_FF
    generic map(
      LOC => "SLICE_X15Y39",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0077_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(12),
      O => U_REG_register_file_3(12),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_n0073_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y39",
      INIT => X"00000F0000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => write_register(0),
      ADR3 => write_register(1),
      ADR4 => write_register(2),
      ADR5 => regwrite_sig,
      O => U_REG_n0073_inv
    );
  U_datamemory_data_memory_12_6 : X_FF
    generic map(
      LOC => "SLICE_X13Y18",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0169_inv1_cepot_7704,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_12_6_dpot_3941,
      O => U_datamemory_data_memory_12(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_12_6_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y18",
      INIT => X"FF00FF00BF80FF00"
    )
    port map (
      ADR0 => read_data2_6_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112241,
      ADR3 => U_datamemory_data_memory_12(6),
      ADR4 => U_ALU_Mmux_result112042,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_12_6_dpot_3941
    );
  U_datamemory_data_memory_12_5 : X_FF
    generic map(
      LOC => "SLICE_X13Y18",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0169_inv1_cepot_7704,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_12_5_dpot_3923,
      O => U_datamemory_data_memory_12(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_12_5_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y18",
      INIT => X"FF00FF00BF80FF00"
    )
    port map (
      ADR0 => read_data2_5_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112241,
      ADR3 => U_datamemory_data_memory_12(5),
      ADR4 => U_ALU_Mmux_result112042,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_12_5_dpot_3923
    );
  U_datamemory_data_memory_12_4 : X_FF
    generic map(
      LOC => "SLICE_X13Y18",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0169_inv1_cepot_7704,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_12_4_dpot_3929,
      O => U_datamemory_data_memory_12(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_12_4_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y18",
      INIT => X"FF00FF00BF80FF00"
    )
    port map (
      ADR0 => read_data2_4_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112241,
      ADR3 => U_datamemory_data_memory_12(4),
      ADR4 => U_ALU_Mmux_result112042,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_12_4_dpot_3929
    );
  U_datamemory_data_memory_12_3 : X_FF
    generic map(
      LOC => "SLICE_X13Y18",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0169_inv1_cepot_7704,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_12_3_dpot_3952,
      O => U_datamemory_data_memory_12(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_12_3_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y18",
      INIT => X"FF00FF00BF80FF00"
    )
    port map (
      ADR0 => read_data2_3_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112241,
      ADR3 => U_datamemory_data_memory_12(3),
      ADR4 => U_ALU_Mmux_result112042,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_12_3_dpot_3952
    );
  U_datamemory_data_memory_14_6 : X_FF
    generic map(
      LOC => "SLICE_X13Y19",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0177_inv1_cepot_7707,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_14_6_dpot_3965,
      O => U_datamemory_data_memory_14(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_14_6_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y19",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_6_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result1122411,
      ADR3 => U_datamemory_data_memory_14(6),
      ADR4 => U_ALU_Mmux_result112041,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_14_6_dpot_3965
    );
  U_datamemory_data_memory_14_5 : X_FF
    generic map(
      LOC => "SLICE_X13Y19",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0177_inv1_cepot_7707,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_14_5_dpot_3982,
      O => U_datamemory_data_memory_14(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_14_5_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y19",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_5_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result1122411,
      ADR3 => U_datamemory_data_memory_14(5),
      ADR4 => U_ALU_Mmux_result112041,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_14_5_dpot_3982
    );
  U_datamemory_data_memory_14_4 : X_FF
    generic map(
      LOC => "SLICE_X13Y19",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0177_inv1_cepot_7707,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_14_4_dpot_3980,
      O => U_datamemory_data_memory_14(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_14_4_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y19",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_4_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result1122411,
      ADR3 => U_datamemory_data_memory_14(4),
      ADR4 => U_ALU_Mmux_result112041,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_14_4_dpot_3980
    );
  U_datamemory_data_memory_14_3 : X_FF
    generic map(
      LOC => "SLICE_X13Y19",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0177_inv1_cepot_7707,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_14_3_dpot_3986,
      O => U_datamemory_data_memory_14(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_14_3_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y19",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_3_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result1122411,
      ADR3 => U_datamemory_data_memory_14(3),
      ADR4 => ALU_RESULT_3_Q,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_14_3_dpot_3986
    );
  U_datamemory_data_memory_13_7 : X_FF
    generic map(
      LOC => "SLICE_X13Y17",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0173_inv1_cepot_7705,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_13_7_dpot_3895,
      O => U_datamemory_data_memory_13(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_13_7_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y17",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_7_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112243,
      ADR3 => U_datamemory_data_memory_13(7),
      ADR4 => U_ALU_Mmux_result112044,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_13_7_dpot_3895
    );
  U_datamemory_data_memory_13_6 : X_FF
    generic map(
      LOC => "SLICE_X13Y17",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0173_inv1_cepot_7705,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_13_6_dpot_3912,
      O => U_datamemory_data_memory_13(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_13_6_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y17",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_6_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112243,
      ADR3 => U_datamemory_data_memory_13(6),
      ADR4 => U_ALU_Mmux_result112044,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_13_6_dpot_3912
    );
  U_datamemory_data_memory_13_5 : X_FF
    generic map(
      LOC => "SLICE_X13Y17",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0173_inv1_cepot_7705,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_13_5_dpot_3910,
      O => U_datamemory_data_memory_13(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_13_5_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y17",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_5_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112243,
      ADR3 => U_datamemory_data_memory_13(5),
      ADR4 => U_ALU_Mmux_result112044,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_13_5_dpot_3910
    );
  U_datamemory_data_memory_13_4 : X_FF
    generic map(
      LOC => "SLICE_X13Y17",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0173_inv1_cepot_7705,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_13_4_dpot_3916,
      O => U_datamemory_data_memory_13(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_13_4_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y17",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_4_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112243,
      ADR3 => U_datamemory_data_memory_13(4),
      ADR4 => U_ALU_Mmux_result112044,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_13_4_dpot_3916
    );
  U_ALU_Mmux_result11224_10 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y21",
      INIT => X"4073407340407373"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => U_ALU_Mmux_result1122,
      ADR3 => N75,
      ADR4 => N74,
      ADR5 => U_ALU_Mmux_result1_split_4_0,
      O => U_ALU_Mmux_result112249
    );
  U_datamemory_n0141_inv1_cepot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y21",
      INIT => X"DFDF8ADFDF8A8A8A"
    )
    port map (
      ADR0 => ALU_op_sig(2),
      ADR1 => ALU_op_sig(3),
      ADR2 => U_ALU_Mmux_result1118,
      ADR3 => U_ALU_Mmux_result1_split_2_0,
      ADR4 => N81,
      ADR5 => N80,
      O => U_datamemory_n0141_inv1_cepot_7689
    );
  U_Mux_register_file_alu_Mmux_mux_out51 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y42",
      INIT => X"FF00FFFFFF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => instruction_sig(5),
      ADR4 => U_CU_Mmux_alusrc11_7730,
      ADR5 => read_data2_13_0,
      O => ALUB_sig(13)
    );
  U_ALU_Mmux_result11101 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y42",
      INIT => X"AA00CC0FAA0FCCF0"
    )
    port map (
      ADR0 => read_data1(14),
      ADR1 => read_data1(12),
      ADR2 => read_data1(13),
      ADR3 => U_ALU_controller_alu_signal_3_2_7717,
      ADR4 => U_ALU_controller_alu_signal_4_2_7134,
      ADR5 => ALUB_sig(13),
      O => U_ALU_Mmux_result1110
    );
  U_input_port_MUX_Mmux_mux_out51_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y42",
      INIT => X"F0F0FF00F0F0FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U_input_port_output_sig(13),
      ADR3 => PC_increment_13_0,
      ADR4 => input_enable,
      ADR5 => J_link_sig,
      O => N117
    );
  U_datamemory_data_memory_10_3 : X_FF
    generic map(
      LOC => "SLICE_X14Y14",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_10_3_dpot_4106,
      O => U_datamemory_data_memory_10(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_10_3_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X14Y14",
      INIT => X"FF00FF00FF00BF80"
    )
    port map (
      ADR0 => read_data2_3_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112243,
      ADR3 => U_datamemory_data_memory_10(3),
      ADR4 => U_ALU_Mmux_result112044,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_10_3_dpot_4106
    );
  U_datamemory_data_memory_10_2 : X_FF
    generic map(
      LOC => "SLICE_X14Y14",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_10_2_dpot_4099,
      O => U_datamemory_data_memory_10(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_10_2_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X14Y14",
      INIT => X"FF00FF00FF00BF80"
    )
    port map (
      ADR0 => read_data2_2_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112243,
      ADR3 => U_datamemory_data_memory_10(2),
      ADR4 => U_ALU_Mmux_result112044,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_10_2_dpot_4099
    );
  U_datamemory_data_memory_10_1 : X_FF
    generic map(
      LOC => "SLICE_X14Y14",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_10_1_dpot_4116,
      O => U_datamemory_data_memory_10(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_10_1_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X14Y14",
      INIT => X"FF00FF00FF00BF80"
    )
    port map (
      ADR0 => read_data2_1_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112243,
      ADR3 => U_datamemory_data_memory_10(1),
      ADR4 => U_ALU_Mmux_result112044,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_10_1_dpot_4116
    );
  U_datamemory_data_memory_10_0 : X_FF
    generic map(
      LOC => "SLICE_X14Y14",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_10_0_dpot_4119,
      O => U_datamemory_data_memory_10(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_10_0_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X14Y14",
      INIT => X"FF00FF00FF00BF80"
    )
    port map (
      ADR0 => read_data2_0_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112243,
      ADR3 => U_datamemory_data_memory_10(0),
      ADR4 => U_ALU_Mmux_result112044,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_10_0_dpot_4119
    );
  U_REG_register_file_7_13 : X_FF
    generic map(
      LOC => "SLICE_X13Y41",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0093_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(13),
      O => U_REG_register_file_7(13),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_input_port_MUX_Mmux_mux_out52 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y41",
      INIT => X"CCCCF0CCCCF0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => N279,
      ADR2 => N278,
      ADR3 => U_ALU_Mmux_result1122410,
      ADR4 => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f74_0,
      ADR5 => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f74_0,
      O => write_data_level2(13)
    );
  U_REG_register_file_7_12 : X_FF
    generic map(
      LOC => "SLICE_X13Y41",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0093_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(12),
      O => U_REG_register_file_7(12),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_ALU_Mmux_result11104_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y41",
      INIT => X"FF15EA00FF11EE00"
    )
    port map (
      ADR0 => memread_sig,
      ADR1 => ALU_op_sig(2),
      ADR2 => ALU_op_sig(3),
      ADR3 => N116,
      ADR4 => N117,
      ADR5 => U_ALU_Mmux_result1110,
      O => N301
    );
  U_REG_register_file_7_11 : X_FF
    generic map(
      LOC => "SLICE_X13Y41",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0093_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(11),
      O => U_REG_register_file_7(11),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_ALU_Mmux_result11104_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y41",
      INIT => X"FF04FB00FF00FF00"
    )
    port map (
      ADR0 => memread_sig,
      ADR1 => ALU_op_sig(2),
      ADR2 => ALU_op_sig(3),
      ADR3 => N116,
      ADR4 => N117,
      ADR5 => U_ALU_Mmux_result1110,
      O => N302
    );
  U_REG_register_file_7_10 : X_FF
    generic map(
      LOC => "SLICE_X13Y41",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0093_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(10),
      O => U_REG_register_file_7(10),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_2_f8_3_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y41",
      INIT => X"FFFFF0CC0F330000"
    )
    port map (
      ADR0 => '1',
      ADR1 => N181,
      ADR2 => N182,
      ADR3 => U_ALU_Mmux_result1_split_13_0,
      ADR4 => N301,
      ADR5 => N302,
      O => N278
    );
  U_ALU_Mmux_result11204_13 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y20",
      INIT => X"4447000374773033"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => U_ALU_Mmux_result1_split_3_0,
      ADR3 => N77,
      ADR4 => U_ALU_Mmux_result1120,
      ADR5 => N78,
      O => U_ALU_Mmux_result1120412
    );
  U_ALU_Mmux_result11224_9 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y20",
      INIT => X"4073407340407373"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => U_ALU_Mmux_result1122,
      ADR3 => N75,
      ADR4 => N74,
      ADR5 => U_ALU_Mmux_result1_split_4_0,
      O => U_ALU_Mmux_result112248
    );
  U_REG_register_file_1_11 : X_FF
    generic map(
      LOC => "SLICE_X13Y30",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0069_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(11),
      O => U_REG_register_file_1(11),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_1_10 : X_FF
    generic map(
      LOC => "SLICE_X13Y30",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0069_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(10),
      O => U_REG_register_file_1(10),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_1_9 : X_FF
    generic map(
      LOC => "SLICE_X13Y30",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0069_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(9),
      O => U_REG_register_file_1(9),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_1_8 : X_FF
    generic map(
      LOC => "SLICE_X13Y30",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0069_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(8),
      O => U_REG_register_file_1(8),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_Mux_write_register_level_2_Mmux_mux_out11 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y39",
      INIT => X"FFFFFFFFFF00F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => instruction_sig(3),
      ADR3 => instruction_sig(6),
      ADR4 => regdst_sig_0,
      ADR5 => J_link_sig,
      O => write_register(0)
    );
  U_IR_Mram_instruction12112 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y40",
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => U_PC_output_sig(8),
      ADR1 => U_PC_output_sig(14),
      ADR2 => U_PC_output_sig(2),
      ADR3 => U_PC_output_sig(3),
      ADR4 => U_PC_output_sig(9),
      ADR5 => U_PC_output_sig(1),
      O => U_IR_Mram_instruction12111_7722
    );
  U_REG_register_file_3_11 : X_FF
    generic map(
      LOC => "SLICE_X14Y32",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0077_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(11),
      O => U_REG_register_file_3(11),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_input_port_MUX_Mmux_mux_out32 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y32",
      INIT => X"CCCCF0CCCCF0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => N273,
      ADR2 => N272,
      ADR3 => U_ALU_Mmux_result1122410,
      ADR4 => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f72_0,
      ADR5 => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f72_0,
      O => write_data_level2(11)
    );
  U_REG_register_file_3_10 : X_FF
    generic map(
      LOC => "SLICE_X14Y32",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0077_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(10),
      O => U_REG_register_file_3(10),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_ALU_Mmux_result1164_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y32",
      INIT => X"FF15EA00FF11EE00"
    )
    port map (
      ADR0 => memread_sig,
      ADR1 => ALU_op_sig(2),
      ADR2 => ALU_op_sig(3),
      ADR3 => N110,
      ADR4 => N111,
      ADR5 => U_ALU_Mmux_result116,
      O => N325
    );
  U_REG_register_file_3_9 : X_FF
    generic map(
      LOC => "SLICE_X14Y32",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0077_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(9),
      O => U_REG_register_file_3(9),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_ALU_Mmux_result1164_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y32",
      INIT => X"FF04FB00FF00FF00"
    )
    port map (
      ADR0 => memread_sig,
      ADR1 => ALU_op_sig(2),
      ADR2 => ALU_op_sig(3),
      ADR3 => N110,
      ADR4 => N111,
      ADR5 => U_ALU_Mmux_result116,
      O => N326
    );
  U_REG_register_file_3_8 : X_FF
    generic map(
      LOC => "SLICE_X14Y32",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0077_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(8),
      O => U_REG_register_file_3(8),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_2_f8_1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y32",
      INIT => X"FFFFF0CC0F330000"
    )
    port map (
      ADR0 => '1',
      ADR1 => N53,
      ADR2 => N54,
      ADR3 => U_ALU_Mmux_result1_split_11_0,
      ADR4 => N325,
      ADR5 => N326,
      O => N272
    );
  N80_N80_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f711,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f711_0
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f7_10 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y18"
    )
    port map (
      IA => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_522_4190,
      IB => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_411_4188,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f711,
      SEL => U_ALU_Mmux_result11204_7247
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_522 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y18",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_8(5),
      ADR1 => U_datamemory_data_memory_9(5),
      ADR2 => U_datamemory_data_memory_11(5),
      ADR3 => U_datamemory_data_memory_10(5),
      ADR4 => U_ALU_Mmux_result11164_7229,
      ADR5 => U_ALU_Mmux_result11184_7230,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_522_4190
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_411 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y18",
      INIT => X"F0F0CCCCFF00AAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_12(5),
      ADR1 => U_datamemory_data_memory_13(5),
      ADR2 => U_datamemory_data_memory_15(5),
      ADR3 => U_datamemory_data_memory_14(5),
      ADR4 => U_ALU_Mmux_result111841,
      ADR5 => U_ALU_Mmux_result111641,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_411_4188
    );
  U_ALU_Mmux_result11183_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y18",
      INIT => X"FFF30F3FFFF33FFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => read_data1_2_0,
      ADR2 => U_ALU_controller_alu_signal(3),
      ADR3 => U_ALU_controller_alu_signal(4),
      ADR4 => U_ALU_controller_alu_signal_1_1_7780,
      ADR5 => ALUB_sig(2),
      O => N80
    );
  U_ALU_Mmux_result11184_2 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y18",
      INIT => X"4073407340407373"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => U_ALU_Mmux_result1118,
      ADR3 => N81,
      ADR4 => N80,
      ADR5 => U_ALU_Mmux_result1_split_2_0,
      O => U_ALU_Mmux_result111841
    );
  U_output_port_output_10_U_output_port_output_10_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => read_data1_10_pack_3,
      O => read_data1(10)
    );
  U_REG_mux1_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y29"
    )
    port map (
      IA => U_REG_mux1_4_4268,
      IB => U_REG_mux1_3_4273,
      O => read_data1_10_pack_3,
      SEL => instruction_sig(11)
    );
  U_REG_mux1_4 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y29",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_0(10),
      ADR1 => U_REG_register_file_1(10),
      ADR2 => U_REG_register_file_3(10),
      ADR3 => U_REG_register_file_2(10),
      ADR4 => instruction_sig(9),
      ADR5 => instruction_sig(10),
      O => U_REG_mux1_4_4268
    );
  U_output_port_output_10 : X_FF
    generic map(
      LOC => "SLICE_X14Y29",
      INIT => '0'
    )
    port map (
      CE => output_enable,
      CLK => clock_BUFGP,
      I => read_data1_10_pack_3,
      O => U_output_port_output(10),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_mux1_3 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y29",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_4(10),
      ADR1 => U_REG_register_file_5(10),
      ADR2 => U_REG_register_file_7(10),
      ADR3 => U_REG_register_file_6(10),
      ADR4 => instruction_sig(9),
      ADR5 => instruction_sig(10),
      O => U_REG_mux1_3_4273
    );
  U_ALU_Mmux_result1143_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y29",
      INIT => X"CCCCCF0CCFCCFF0C"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_ALU_controller_alu_signal_1_11,
      ADR2 => read_data1(10),
      ADR3 => U_ALU_controller_alu_signal_3_2_7717,
      ADR4 => U_ALU_controller_alu_signal_4_2_7134,
      ADR5 => ALUB_sig(10),
      O => N57
    );
  U_ALU_Mmux_result11204_9 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y16",
      INIT => X"4447000374773033"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => U_ALU_Mmux_result1_split_3_0,
      ADR3 => N77,
      ADR4 => U_ALU_Mmux_result1120,
      ADR5 => N78,
      O => U_ALU_Mmux_result112048
    );
  U_ALU_Mmux_result11224_4 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y19",
      INIT => X"4073407340407373"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => U_ALU_Mmux_result1122,
      ADR3 => N75,
      ADR4 => N74,
      ADR5 => U_ALU_Mmux_result1_split_4_0,
      O => U_ALU_Mmux_result112243
    );
  U_ALU_Mmux_result11224_8 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y19",
      INIT => X"4073407340407373"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => U_ALU_Mmux_result1122,
      ADR3 => N75,
      ADR4 => N74,
      ADR5 => U_ALU_Mmux_result1_split_4_0,
      O => U_ALU_Mmux_result112247
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f710_U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f710_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f710,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f710_0
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f7_9 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y17"
    )
    port map (
      IA => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_520_4157,
      IB => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_410_4154,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f710,
      SEL => U_ALU_Mmux_result11204_7247
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_520 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y17",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_8(4),
      ADR1 => U_datamemory_data_memory_9(4),
      ADR2 => U_datamemory_data_memory_11(4),
      ADR3 => U_datamemory_data_memory_10(4),
      ADR4 => U_ALU_Mmux_result11164_7229,
      ADR5 => U_ALU_Mmux_result11184_7230,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_520_4157
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_410 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y17",
      INIT => X"F0F0CCCCFF00AAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_12(4),
      ADR1 => U_datamemory_data_memory_13(4),
      ADR2 => U_datamemory_data_memory_15(4),
      ADR3 => U_datamemory_data_memory_14(4),
      ADR4 => U_ALU_Mmux_result111841,
      ADR5 => U_ALU_Mmux_result111641,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_410_4154
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f78_U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f78_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f78,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f78_0
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f7_7 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y15"
    )
    port map (
      IA => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_516_4134,
      IB => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_48_4131,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f78,
      SEL => U_ALU_Mmux_result11204_7247
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_516 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y15",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_8(2),
      ADR1 => U_datamemory_data_memory_9(2),
      ADR2 => U_datamemory_data_memory_11(2),
      ADR3 => U_datamemory_data_memory_10(2),
      ADR4 => U_ALU_Mmux_result11164_7229,
      ADR5 => U_ALU_Mmux_result11184_7230,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_516_4134
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_48 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y15",
      INIT => X"F0F0CCCCFF00AAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_12(2),
      ADR1 => U_datamemory_data_memory_13(2),
      ADR2 => U_datamemory_data_memory_15(2),
      ADR3 => U_datamemory_data_memory_14(2),
      ADR4 => U_ALU_Mmux_result111841,
      ADR5 => U_ALU_Mmux_result111641,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_48_4131
    );
  read_data2_8_read_data2_8_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => read_data2(8),
      O => read_data2_8_0
    );
  U_REG_mux30_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y27"
    )
    port map (
      IA => U_REG_mux30_4_4235,
      IB => U_REG_mux30_3_4237,
      O => read_data2(8),
      SEL => instruction_sig(8)
    );
  U_REG_mux30_4 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y27",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_0(8),
      ADR1 => U_REG_register_file_1(8),
      ADR2 => U_REG_register_file_3(8),
      ADR3 => U_REG_register_file_2(8),
      ADR4 => instruction_sig(6),
      ADR5 => instruction_sig(7),
      O => U_REG_mux30_4_4235
    );
  U_REG_mux30_3 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y27",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_4(8),
      ADR1 => U_REG_register_file_5(8),
      ADR2 => U_REG_register_file_7(8),
      ADR3 => U_REG_register_file_6(8),
      ADR4 => instruction_sig(6),
      ADR5 => instruction_sig(7),
      O => U_REG_mux30_3_4237
    );
  U_Mux_branch_mux_control_INV_3_o2 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y33",
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => ALU_RESULT_6_Q,
      ADR1 => ALU_RESULT_7_Q,
      ADR2 => ALU_RESULT_8_Q,
      ADR3 => ALU_RESULT_9_Q,
      ADR4 => ALU_RESULT_10_Q,
      ADR5 => ALU_RESULT_11_Q,
      O => U_Mux_branch_mux_control_INV_3_o2_7656
    );
  U_ALU_Mmux_result1164 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y33",
      INIT => X"2277005527270505"
    )
    port map (
      ADR0 => ALU_op_sig(2),
      ADR1 => ALU_op_sig(3),
      ADR2 => N53,
      ADR3 => N54,
      ADR4 => U_ALU_Mmux_result116,
      ADR5 => U_ALU_Mmux_result1_split_11_0,
      O => ALU_RESULT_11_Q
    );
  U_ALU_Mmux_result1141 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y33",
      INIT => X"AACC000FAACC0FF0"
    )
    port map (
      ADR0 => read_data1(11),
      ADR1 => read_data1(9),
      ADR2 => read_data1(10),
      ADR3 => ALU_op_sig(0),
      ADR4 => ALU_op_sig(1),
      ADR5 => ALUB_sig(10),
      O => U_ALU_Mmux_result114
    );
  U_ALU_Mmux_result1144 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y33",
      INIT => X"2277005527270505"
    )
    port map (
      ADR0 => ALU_op_sig(2),
      ADR1 => ALU_op_sig(3),
      ADR2 => N56,
      ADR3 => N57,
      ADR4 => U_ALU_Mmux_result114,
      ADR5 => U_ALU_Mmux_result1_split_10_0,
      O => ALU_RESULT_10_Q
    );
  U_output_port_output_9_U_output_port_output_9_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => read_data1_9_pack_8,
      O => read_data1(9)
    );
  U_REG_mux15_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y31"
    )
    port map (
      IA => U_REG_mux15_4_4314,
      IB => U_REG_mux15_3_4316,
      O => read_data1_9_pack_8,
      SEL => instruction_sig(11)
    );
  U_REG_mux15_4 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y31",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_0(9),
      ADR1 => U_REG_register_file_1(9),
      ADR2 => U_REG_register_file_3(9),
      ADR3 => U_REG_register_file_2(9),
      ADR4 => instruction_sig(9),
      ADR5 => instruction_sig(10),
      O => U_REG_mux15_4_4314
    );
  U_output_port_output_9 : X_FF
    generic map(
      LOC => "SLICE_X14Y31",
      INIT => '0'
    )
    port map (
      CE => output_enable,
      CLK => clock_BUFGP,
      I => read_data1_9_pack_8,
      O => U_output_port_output(9),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_mux15_3 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y31",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_4(9),
      ADR1 => U_REG_register_file_5(9),
      ADR2 => U_REG_register_file_7(9),
      ADR3 => U_REG_register_file_6(9),
      ADR4 => instruction_sig(9),
      ADR5 => instruction_sig(10),
      O => U_REG_mux15_3_4316
    );
  U_ALU_Mmux_result11323_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y31",
      INIT => X"CCCCCF0CCFCCFF0C"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_ALU_controller_alu_signal_1_11,
      ADR2 => read_data1(9),
      ADR3 => U_ALU_controller_alu_signal_3_2_7717,
      ADR4 => U_ALU_controller_alu_signal_4_2_7134,
      ADR5 => ALUB_sig(9),
      O => N60
    );
  U_ALU_Mmux_result11323_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y31",
      INIT => X"CCFFCF3FCFFFFF3F"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_ALU_controller_alu_signal_1_11,
      ADR2 => read_data1(9),
      ADR3 => U_ALU_controller_alu_signal_3_2_7717,
      ADR4 => U_ALU_controller_alu_signal_4_2_7134,
      ADR5 => ALUB_sig(9),
      O => N59
    );
  read_data2_10_read_data2_10_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => read_data2(10),
      O => read_data2_10_0
    );
  U_REG_mux17_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y28"
    )
    port map (
      IA => U_REG_mux17_4_4251,
      IB => U_REG_mux17_3_4253,
      O => read_data2(10),
      SEL => instruction_sig(8)
    );
  U_REG_mux17_4 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y28",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_0(10),
      ADR1 => U_REG_register_file_1(10),
      ADR2 => U_REG_register_file_3(10),
      ADR3 => U_REG_register_file_2(10),
      ADR4 => instruction_sig(6),
      ADR5 => instruction_sig(7),
      O => U_REG_mux17_4_4251
    );
  U_REG_mux17_3 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y28",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_4(10),
      ADR1 => U_REG_register_file_5(10),
      ADR2 => U_REG_register_file_7(10),
      ADR3 => U_REG_register_file_6(10),
      ADR4 => instruction_sig(6),
      ADR5 => instruction_sig(7),
      O => U_REG_mux17_3_4253
    );
  U_datamemory_n0157_inv1_cepot : X_LUT6
    generic map(
      LOC => "SLICE_X14Y24",
      INIT => X"BB88FFCCB8B8FCFC"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => N80,
      ADR3 => N81,
      ADR4 => U_ALU_Mmux_result1118,
      ADR5 => U_ALU_Mmux_result1_split_2_0,
      O => U_datamemory_n0157_inv1_cepot_7699
    );
  U_ALU_Mmux_result11183_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y24",
      INIT => X"FFF30030FFF330F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => read_data1_2_0,
      ADR2 => U_ALU_controller_alu_signal(3),
      ADR3 => U_ALU_controller_alu_signal(4),
      ADR4 => U_ALU_controller_alu_signal_1_1_7780,
      ADR5 => ALUB_sig(2),
      O => N81
    );
  U_Mux_register_file_alu_Mmux_mux_out91 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y24",
      INIT => X"FF00FFFFFF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => instruction_sig(2),
      ADR4 => U_CU_Mmux_alusrc11_7730,
      ADR5 => read_data2_2_0,
      O => ALUB_sig(2)
    );
  U_ALU_Mmux_result11181 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y24",
      INIT => X"AA00CC0FAA0FCCF0"
    )
    port map (
      ADR0 => read_data1(3),
      ADR1 => read_data1_1_0,
      ADR2 => read_data1_2_0,
      ADR3 => U_ALU_controller_alu_signal(3),
      ADR4 => U_ALU_controller_alu_signal(4),
      ADR5 => ALUB_sig(2),
      O => U_ALU_Mmux_result1118
    );
  read_data2_9_read_data2_9_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => read_data2(9),
      O => read_data2_9_0
    );
  U_REG_mux31_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y30"
    )
    port map (
      IA => U_REG_mux31_4_4293,
      IB => U_REG_mux31_3_4295,
      O => read_data2(9),
      SEL => instruction_sig(8)
    );
  U_REG_mux31_4 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y30",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_0(9),
      ADR1 => U_REG_register_file_1(9),
      ADR2 => U_REG_register_file_3(9),
      ADR3 => U_REG_register_file_2(9),
      ADR4 => instruction_sig(6),
      ADR5 => instruction_sig(7),
      O => U_REG_mux31_4_4293
    );
  U_REG_mux31_3 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y30",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_4(9),
      ADR1 => U_REG_register_file_5(9),
      ADR2 => U_REG_register_file_7(9),
      ADR3 => U_REG_register_file_6(9),
      ADR4 => instruction_sig(6),
      ADR5 => instruction_sig(7),
      O => U_REG_mux31_3_4295
    );
  U_datamemory_data_memory_8_7 : X_FF
    generic map(
      LOC => "SLICE_X15Y17",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0153_inv1_cepot_7697,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_8_7_dpot_4629,
      O => U_datamemory_data_memory_8(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_8_7_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X15Y17",
      INIT => X"FF00FF00FF00BF80"
    )
    port map (
      ADR0 => read_data2_7_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112245,
      ADR3 => U_datamemory_data_memory_8(7),
      ADR4 => U_ALU_Mmux_result112047,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_8_7_dpot_4629
    );
  U_datamemory_data_memory_8_6 : X_FF
    generic map(
      LOC => "SLICE_X15Y17",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0153_inv1_cepot_7697,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_8_6_dpot_4622,
      O => U_datamemory_data_memory_8(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_8_6_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X15Y17",
      INIT => X"FF00FF00FF00BF80"
    )
    port map (
      ADR0 => read_data2_6_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112245,
      ADR3 => U_datamemory_data_memory_8(6),
      ADR4 => U_ALU_Mmux_result112047,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_8_6_dpot_4622
    );
  U_datamemory_data_memory_8_5 : X_FF
    generic map(
      LOC => "SLICE_X15Y17",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0153_inv1_cepot_7697,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_8_5_dpot_4639,
      O => U_datamemory_data_memory_8(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_8_5_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X15Y17",
      INIT => X"FF00FF00FF00BF80"
    )
    port map (
      ADR0 => read_data2_5_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112245,
      ADR3 => U_datamemory_data_memory_8(5),
      ADR4 => U_ALU_Mmux_result112047,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_8_5_dpot_4639
    );
  U_datamemory_data_memory_8_4 : X_FF
    generic map(
      LOC => "SLICE_X15Y17",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0153_inv1_cepot_7697,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_8_4_dpot_4642,
      O => U_datamemory_data_memory_8(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_8_4_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X15Y17",
      INIT => X"FF00FF00FF00BF80"
    )
    port map (
      ADR0 => read_data2_4_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112245,
      ADR3 => U_datamemory_data_memory_8(4),
      ADR4 => U_ALU_Mmux_result112047,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_8_4_dpot_4642
    );
  U_input_port_MUX_Mmux_mux_out71_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y44",
      INIT => X"F0F0FF00F0F0FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U_input_port_output_sig(15),
      ADR3 => PC_increment_15_0,
      ADR4 => input_enable,
      ADR5 => J_link_sig,
      O => N123
    );
  U_REG_register_file_4_15 : X_FF
    generic map(
      LOC => "SLICE_X14Y42",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0081_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(15),
      O => U_REG_register_file_4(15),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_4_14 : X_FF
    generic map(
      LOC => "SLICE_X14Y42",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0081_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(14),
      O => U_REG_register_file_4(14),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_4_13 : X_FF
    generic map(
      LOC => "SLICE_X14Y42",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0081_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(13),
      O => U_REG_register_file_4(13),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_4_12 : X_FF
    generic map(
      LOC => "SLICE_X14Y42",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0081_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(12),
      O => U_REG_register_file_4(12),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_Mux_branch_mux_control_INV_3_o4_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y42",
      INIT => X"FFFDBBFDFFB9BBB9"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(1),
      ADR2 => N51,
      ADR3 => ALU_op_sig(0),
      ADR4 => N296,
      ADR5 => N295,
      O => N227
    );
  U_datamemory_data_memory_8_3 : X_FF
    generic map(
      LOC => "SLICE_X15Y15",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0153_inv1_cepot_7697,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_8_3_dpot_4594,
      O => U_datamemory_data_memory_8(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_8_3_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X15Y15",
      INIT => X"FF00FF00FF00BF80"
    )
    port map (
      ADR0 => read_data2_3_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112245,
      ADR3 => U_datamemory_data_memory_8(3),
      ADR4 => U_ALU_Mmux_result112047,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_8_3_dpot_4594
    );
  U_datamemory_data_memory_8_2 : X_FF
    generic map(
      LOC => "SLICE_X15Y15",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0153_inv1_cepot_7697,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_8_2_dpot_4587,
      O => U_datamemory_data_memory_8(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_8_2_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X15Y15",
      INIT => X"FF00FF00FF00BF80"
    )
    port map (
      ADR0 => read_data2_2_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112245,
      ADR3 => U_datamemory_data_memory_8(2),
      ADR4 => U_ALU_Mmux_result112047,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_8_2_dpot_4587
    );
  U_datamemory_data_memory_8_1 : X_FF
    generic map(
      LOC => "SLICE_X15Y15",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0153_inv1_cepot_7697,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_8_1_dpot_4604,
      O => U_datamemory_data_memory_8(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_8_1_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X15Y15",
      INIT => X"FF00FF00FF00BF80"
    )
    port map (
      ADR0 => read_data2_1_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112245,
      ADR3 => U_datamemory_data_memory_8(1),
      ADR4 => U_ALU_Mmux_result112047,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_8_1_dpot_4604
    );
  U_datamemory_data_memory_8_0 : X_FF
    generic map(
      LOC => "SLICE_X15Y15",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0153_inv1_cepot_7697,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_8_0_dpot_4607,
      O => U_datamemory_data_memory_8(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_8_0_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X15Y15",
      INIT => X"FF00FF00FF00BF80"
    )
    port map (
      ADR0 => read_data2_0_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112245,
      ADR3 => U_datamemory_data_memory_8(0),
      ADR4 => U_ALU_Mmux_result112047,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_8_0_dpot_4607
    );
  U_datamemory_data_memory_11_3 : X_FF
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_11_3_dpot_4550,
      O => U_datamemory_data_memory_11(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_11_3_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => X"FF00BF80FF00FF00"
    )
    port map (
      ADR0 => read_data2_3_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112247,
      ADR3 => U_datamemory_data_memory_11(3),
      ADR4 => U_ALU_Mmux_result112048,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_11_3_dpot_4550
    );
  U_datamemory_data_memory_11_2 : X_FF
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_11_2_dpot_4569,
      O => U_datamemory_data_memory_11(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_11_2_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => X"FF00BF80FF00FF00"
    )
    port map (
      ADR0 => read_data2_2_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112247,
      ADR3 => U_datamemory_data_memory_11(2),
      ADR4 => U_ALU_Mmux_result112048,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_11_2_dpot_4569
    );
  U_datamemory_data_memory_11_1 : X_FF
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_11_1_dpot_4554,
      O => U_datamemory_data_memory_11(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_11_1_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => X"FF00BF80FF00FF00"
    )
    port map (
      ADR0 => read_data2_1_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112247,
      ADR3 => U_datamemory_data_memory_11(1),
      ADR4 => U_ALU_Mmux_result112048,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_11_1_dpot_4554
    );
  U_datamemory_data_memory_11_0 : X_FF
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_11_0_dpot_4571,
      O => U_datamemory_data_memory_11(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_11_0_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => X"FF00BF80FF00FF00"
    )
    port map (
      ADR0 => read_data2_0_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112247,
      ADR3 => U_datamemory_data_memory_11(0),
      ADR4 => U_ALU_Mmux_result112048,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_11_0_dpot_4571
    );
  U_ALU_Mmux_result11324_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y34",
      INIT => X"FFBF4000FFBB4400"
    )
    port map (
      ADR0 => memread_sig,
      ADR1 => ALU_op_sig(2),
      ADR2 => ALU_op_sig(3),
      ADR3 => N104,
      ADR4 => N105,
      ADR5 => U_ALU_Mmux_result1132,
      O => N340
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_2_f8_14_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y34",
      INIT => X"FFFF0F33F0CC0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => N59,
      ADR2 => N60,
      ADR3 => U_ALU_Mmux_result1_split_9_0,
      ADR4 => N341,
      ADR5 => N340,
      O => N261
    );
  U_ALU_Mmux_result11321 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y34",
      INIT => X"AA00CC0FAA0FCCF0"
    )
    port map (
      ADR0 => read_data1(10),
      ADR1 => read_data1(8),
      ADR2 => read_data1(9),
      ADR3 => U_ALU_controller_alu_signal_3_2_7717,
      ADR4 => U_ALU_controller_alu_signal_4_2_7134,
      ADR5 => ALUB_sig(9),
      O => U_ALU_Mmux_result1132
    );
  U_ALU_Mmux_result11324 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y34",
      INIT => X"2277005527270505"
    )
    port map (
      ADR0 => ALU_op_sig(2),
      ADR1 => ALU_op_sig(3),
      ADR2 => N59,
      ADR3 => N60,
      ADR4 => U_ALU_Mmux_result1132,
      ADR5 => U_ALU_Mmux_result1_split_9_0,
      O => ALU_RESULT_9_Q
    );
  U_REG_register_file_6_15 : X_FF
    generic map(
      LOC => "SLICE_X14Y40",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0089_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(15),
      O => U_REG_register_file_6(15),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_n0089_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y40",
      INIT => X"0F00000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => write_register(0),
      ADR3 => write_register(2),
      ADR4 => write_register(1),
      ADR5 => regwrite_sig,
      O => U_REG_n0089_inv
    );
  U_REG_register_file_6_14 : X_FF
    generic map(
      LOC => "SLICE_X14Y40",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0089_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(14),
      O => U_REG_register_file_6(14),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_n0097_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y40",
      INIT => X"0000000F00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => write_register(0),
      ADR3 => write_register(2),
      ADR4 => write_register(1),
      ADR5 => regwrite_sig,
      O => U_REG_n0097_inv
    );
  U_REG_register_file_6_13 : X_FF
    generic map(
      LOC => "SLICE_X14Y40",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0089_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(13),
      O => U_REG_register_file_6(13),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_n0085_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y40",
      INIT => X"0F00000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => write_register(1),
      ADR3 => write_register(2),
      ADR4 => write_register(0),
      ADR5 => regwrite_sig,
      O => U_REG_n0085_inv
    );
  U_REG_register_file_6_12 : X_FF
    generic map(
      LOC => "SLICE_X14Y40",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0089_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(12),
      O => U_REG_register_file_6(12),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_Mux_write_register_level_2_Mmux_mux_out21 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y40",
      INIT => X"FFFFFFFFFF00F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => instruction_sig(4),
      ADR3 => instruction_sig(7),
      ADR4 => regdst_sig_0,
      ADR5 => J_link_sig,
      O => write_register(1)
    );
  U_ALU_Mmux_result11144 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y43",
      INIT => X"44554545EEFFEFEF"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => U_ALU_Mmux_result1114,
      ADR2 => N187,
      ADR3 => N189,
      ADR4 => U_ALU_Mmux_result1_split_15_0,
      ADR5 => N188,
      O => ALU_RESULT_15_Q
    );
  U_ALU_Mmux_result11141 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y43",
      INIT => X"0A000A00FC00C000"
    )
    port map (
      ADR0 => read_data1(14),
      ADR1 => read_data1(15),
      ADR2 => ALU_op_sig(0),
      ADR3 => ALU_op_sig(1),
      ADR4 => ALUB_sig(15),
      ADR5 => ALU_op_sig(2),
      O => U_ALU_Mmux_result1114
    );
  U_output_port_output_13_U_output_port_output_13_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => read_data1_13_pack_9,
      O => read_data1(13)
    );
  U_REG_mux4_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y41"
    )
    port map (
      IA => U_REG_mux4_4_4491,
      IB => U_REG_mux4_3_4482,
      O => read_data1_13_pack_9,
      SEL => instruction_sig(11)
    );
  U_REG_mux4_4 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y41",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_0(13),
      ADR1 => U_REG_register_file_1(13),
      ADR2 => U_REG_register_file_3(13),
      ADR3 => U_REG_register_file_2(13),
      ADR4 => instruction_sig(9),
      ADR5 => instruction_sig(10),
      O => U_REG_mux4_4_4491
    );
  U_output_port_output_13 : X_FF
    generic map(
      LOC => "SLICE_X14Y41",
      INIT => '0'
    )
    port map (
      CE => output_enable,
      CLK => clock_BUFGP,
      I => read_data1_13_pack_9,
      O => U_output_port_output(13),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_mux4_3 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y41",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_4(13),
      ADR1 => U_REG_register_file_5(13),
      ADR2 => U_REG_register_file_7(13),
      ADR3 => U_REG_register_file_6(13),
      ADR4 => instruction_sig(9),
      ADR5 => instruction_sig(10),
      O => U_REG_mux4_3_4482
    );
  U_Mux_branch_mux_control_INV_3_o4_SW1_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y41",
      INIT => X"0000000000004447"
    )
    port map (
      ADR0 => instruction_sig(5),
      ADR1 => alusrc_sig,
      ADR2 => read_data2_13_0,
      ADR3 => read_data2_12_0,
      ADR4 => read_data1(12),
      ADR5 => read_data1(13),
      O => N296
    );
  U_Mux_branch_mux_control_INV_3_o4_SW1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y41",
      INIT => X"444744774747FFFF"
    )
    port map (
      ADR0 => instruction_sig(5),
      ADR1 => alusrc_sig,
      ADR2 => read_data2_12_0,
      ADR3 => read_data2_13_0,
      ADR4 => read_data1(12),
      ADR5 => read_data1(13),
      O => N295
    );
  regwrite_sig_regwrite_sig_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => regdst_sig,
      O => regdst_sig_0
    );
  U_CU_Mmux_regwrite11 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y39",
      INIT => X"1111000111110001"
    )
    port map (
      ADR0 => instruction_sig(15),
      ADR1 => reset_IBUF_0,
      ADR2 => instruction_sig(12),
      ADR3 => instruction_sig(13),
      ADR4 => instruction_sig(14),
      ADR5 => '1',
      O => regwrite_sig
    );
  U_CU_Mmux_regdst11 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y39",
      INIT => X"00020331"
    )
    port map (
      ADR0 => instruction_sig(15),
      ADR1 => reset_IBUF_0,
      ADR2 => instruction_sig(12),
      ADR3 => instruction_sig(13),
      ADR4 => instruction_sig(14),
      O => regdst_sig
    );
  U_REG_n0093_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y39",
      INIT => X"F000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => write_register(0),
      ADR3 => write_register(2),
      ADR4 => write_register(1),
      ADR5 => regwrite_sig,
      O => U_REG_n0093_inv
    );
  U_REG_register_file_4_11 : X_FF
    generic map(
      LOC => "SLICE_X15Y30",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0081_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(11),
      O => U_REG_register_file_4(11),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_input_port_MUX_Mmux_mux_out21_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y30",
      INIT => X"F0F0FF00F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U_input_port_output_sig(10),
      ADR3 => PC_increment_10_0,
      ADR4 => input_enable,
      ADR5 => J_link_sig,
      O => N107
    );
  U_REG_register_file_4_10 : X_FF
    generic map(
      LOC => "SLICE_X15Y30",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0081_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(10),
      O => U_REG_register_file_4(10),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_ALU_Mmux_result1144_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y30",
      INIT => X"FFAE5100FFAA5500"
    )
    port map (
      ADR0 => memread_sig,
      ADR1 => ALU_op_sig(2),
      ADR2 => ALU_op_sig(3),
      ADR3 => N107,
      ADR4 => N108,
      ADR5 => U_ALU_Mmux_result114,
      O => N335
    );
  U_REG_register_file_4_9 : X_FF
    generic map(
      LOC => "SLICE_X15Y30",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0081_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(9),
      O => U_REG_register_file_4(9),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_ALU_Mmux_result1144_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y30",
      INIT => X"FFBF4000FFBB4400"
    )
    port map (
      ADR0 => memread_sig,
      ADR1 => ALU_op_sig(2),
      ADR2 => ALU_op_sig(3),
      ADR3 => N107,
      ADR4 => N108,
      ADR5 => U_ALU_Mmux_result114,
      O => N334
    );
  U_REG_register_file_4_8 : X_FF
    generic map(
      LOC => "SLICE_X15Y30",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0081_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(8),
      O => U_REG_register_file_4(8),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_2_f8_0_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y30",
      INIT => X"FFFF0F33F0CC0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => N56,
      ADR2 => N57,
      ADR3 => U_ALU_Mmux_result1_split_10_0,
      ADR4 => N335,
      ADR5 => N334,
      O => N270
    );
  U_ALU_Mmux_result11224_13 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y26",
      INIT => X"4073407340407373"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => U_ALU_Mmux_result1122,
      ADR3 => N75,
      ADR4 => N74,
      ADR5 => U_ALU_Mmux_result1_split_4_0,
      O => U_ALU_Mmux_result1122412
    );
  U_datamemory_n0173_inv1_cepot : X_LUT6
    generic map(
      LOC => "SLICE_X15Y19",
      INIT => X"BB88FFCCB8B8FCFC"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => N80,
      ADR3 => N81,
      ADR4 => U_ALU_Mmux_result1118,
      ADR5 => U_ALU_Mmux_result1_split_2_0,
      O => U_datamemory_n0173_inv1_cepot_7705
    );
  U_ALU_Mmux_result11204_7 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y20",
      INIT => X"4447000374773033"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => U_ALU_Mmux_result1_split_3_0,
      ADR3 => N77,
      ADR4 => U_ALU_Mmux_result1120,
      ADR5 => N78,
      O => U_ALU_Mmux_result112046
    );
  U_datamemory_n0153_inv1_cepot : X_LUT6
    generic map(
      LOC => "SLICE_X15Y20",
      INIT => X"BB88FFCCB8B8FCFC"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => N80,
      ADR3 => N81,
      ADR4 => U_ALU_Mmux_result1118,
      ADR5 => U_ALU_Mmux_result1_split_2_0,
      O => U_datamemory_n0153_inv1_cepot_7697
    );
  U_datamemory_n0137_inv1_cepot : X_LUT6
    generic map(
      LOC => "SLICE_X15Y20",
      INIT => X"DFDF8ADFDF8A8A8A"
    )
    port map (
      ADR0 => ALU_op_sig(2),
      ADR1 => ALU_op_sig(3),
      ADR2 => U_ALU_Mmux_result1118,
      ADR3 => U_ALU_Mmux_result1_split_2_0,
      ADR4 => N81,
      ADR5 => N80,
      O => U_datamemory_n0137_inv1_cepot_7685
    );
  U_datamemory_data_memory_15_7 : X_FF
    generic map(
      LOC => "SLICE_X15Y18",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_15_7_dpot_4661,
      O => U_datamemory_data_memory_15(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_15_7_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X15Y18",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_7_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112246,
      ADR3 => U_datamemory_data_memory_15(7),
      ADR4 => U_ALU_Mmux_result112048,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_15_7_dpot_4661
    );
  U_datamemory_data_memory_15_6 : X_FF
    generic map(
      LOC => "SLICE_X15Y18",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_15_6_dpot_4678,
      O => U_datamemory_data_memory_15(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_15_6_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X15Y18",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_6_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112246,
      ADR3 => U_datamemory_data_memory_15(6),
      ADR4 => U_ALU_Mmux_result112048,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_15_6_dpot_4678
    );
  U_datamemory_data_memory_15_5 : X_FF
    generic map(
      LOC => "SLICE_X15Y18",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_15_5_dpot_4676,
      O => U_datamemory_data_memory_15(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_15_5_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X15Y18",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_5_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112246,
      ADR3 => U_datamemory_data_memory_15(5),
      ADR4 => U_ALU_Mmux_result112048,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_15_5_dpot_4676
    );
  U_datamemory_data_memory_15_4 : X_FF
    generic map(
      LOC => "SLICE_X15Y18",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_15_4_dpot_4682,
      O => U_datamemory_data_memory_15(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_15_4_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X15Y18",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_4_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112246,
      ADR3 => U_datamemory_data_memory_15(4),
      ADR4 => U_ALU_Mmux_result112048,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_15_4_dpot_4682
    );
  U_ALU_Mmux_result11224_2 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y21",
      INIT => X"4073407340407373"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => U_ALU_Mmux_result1122,
      ADR3 => N75,
      ADR4 => N74,
      ADR5 => U_ALU_Mmux_result1_split_4_0,
      O => U_ALU_Mmux_result112241
    );
  U_ALU_Mmux_result11224_5 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y22",
      INIT => X"4073407340407373"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => U_ALU_Mmux_result1122,
      ADR3 => N75,
      ADR4 => N74,
      ADR5 => U_ALU_Mmux_result1_split_4_0,
      O => U_ALU_Mmux_result112244
    );
  U_REG_register_file_6_11 : X_FF
    generic map(
      LOC => "SLICE_X15Y29",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0089_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(11),
      O => U_REG_register_file_6(11),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_6_10 : X_FF
    generic map(
      LOC => "SLICE_X15Y29",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0089_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(10),
      O => U_REG_register_file_6(10),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_6_9 : X_FF
    generic map(
      LOC => "SLICE_X15Y29",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0089_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(9),
      O => U_REG_register_file_6(9),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_input_port_MUX_Mmux_mux_out162 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y29",
      INIT => X"CCCCF0CCCCF0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => N261,
      ADR2 => N260,
      ADR3 => U_ALU_Mmux_result1122410,
      ADR4 => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f715_0,
      ADR5 => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f715_0,
      O => write_data_level2(9)
    );
  U_REG_register_file_6_8 : X_FF
    generic map(
      LOC => "SLICE_X15Y29",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0089_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(8),
      O => U_REG_register_file_6(8),
      RST => reset_IBUF_0,
      SET => GND
    );
  N84_N84_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f71,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f71_0
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f7_0 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y20"
    )
    port map (
      IA => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_52_5126,
      IB => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_41_5145,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f71,
      SEL => U_ALU_Mmux_result11204_7247
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_52 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y20",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_8(10),
      ADR1 => U_datamemory_data_memory_9(10),
      ADR2 => U_datamemory_data_memory_11(10),
      ADR3 => U_datamemory_data_memory_10(10),
      ADR4 => U_ALU_Mmux_result11164_7229,
      ADR5 => U_ALU_Mmux_result11184_7230,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_52_5126
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_41 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y20",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_12(10),
      ADR1 => U_datamemory_data_memory_13(10),
      ADR2 => U_datamemory_data_memory_15(10),
      ADR3 => U_datamemory_data_memory_14(10),
      ADR4 => U_ALU_Mmux_result11164_1_7261,
      ADR5 => U_ALU_Mmux_result11184_1_7262,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_41_5145
    );
  U_ALU_Mmux_result11163_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y20",
      INIT => X"FFF30030FFF330F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => read_data1_1_0,
      ADR2 => U_ALU_controller_alu_signal(3),
      ADR3 => U_ALU_controller_alu_signal(4),
      ADR4 => U_ALU_controller_alu_signal_1_1_7780,
      ADR5 => ALUB_sig(1),
      O => N84
    );
  U_ALU_Mmux_result11164_1 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y20",
      INIT => X"4073407340407373"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => U_ALU_Mmux_result1116,
      ADR3 => N84,
      ADR4 => N83,
      ADR5 => U_ALU_Mmux_result1_split_1_0,
      O => U_ALU_Mmux_result11164_7229
    );
  U_ALU_Mmux_result11204_3 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y22",
      INIT => X"4447000374773033"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => U_ALU_Mmux_result1_split_3_0,
      ADR3 => N77,
      ADR4 => U_ALU_Mmux_result1120,
      ADR5 => N78,
      O => U_ALU_Mmux_result112042
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f713_U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f713_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f713,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f713_0
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f7_12 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y17"
    )
    port map (
      IA => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_526_5070,
      IB => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_413_5067,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f713,
      SEL => U_ALU_Mmux_result11204_7247
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_526 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y17",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_8(7),
      ADR1 => U_datamemory_data_memory_9(7),
      ADR2 => U_datamemory_data_memory_11(7),
      ADR3 => U_datamemory_data_memory_10(7),
      ADR4 => U_ALU_Mmux_result11164_1_7261,
      ADR5 => U_ALU_Mmux_result11184_1_7262,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_526_5070
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_413 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y17",
      INIT => X"F0F0CCCCFF00AAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_12(7),
      ADR1 => U_datamemory_data_memory_13(7),
      ADR2 => U_datamemory_data_memory_15(7),
      ADR3 => U_datamemory_data_memory_14(7),
      ADR4 => U_ALU_Mmux_result111841,
      ADR5 => U_ALU_Mmux_result111641,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_413_5067
    );
  U_datamemory_n0169_inv1_cepot : X_LUT6
    generic map(
      LOC => "SLICE_X16Y26",
      INIT => X"BB88FFCCB8B8FCFC"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => N80,
      ADR3 => N81,
      ADR4 => U_ALU_Mmux_result1118,
      ADR5 => U_ALU_Mmux_result1_split_2_0,
      O => U_datamemory_n0169_inv1_cepot_7704
    );
  U_ALU_Mmux_result11204_4 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y26",
      INIT => X"4447000374773033"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => U_ALU_Mmux_result1_split_3_0,
      ADR3 => N77,
      ADR4 => U_ALU_Mmux_result1120,
      ADR5 => N78,
      O => U_ALU_Mmux_result112043
    );
  U_ALU_Mmux_result11224_3 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y26",
      INIT => X"4073407340407373"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => U_ALU_Mmux_result1122,
      ADR3 => N75,
      ADR4 => N74,
      ADR5 => U_ALU_Mmux_result1_split_4_0,
      O => U_ALU_Mmux_result112242
    );
  U_datamemory_data_memory_12_15 : X_FF
    generic map(
      LOC => "SLICE_X16Y26",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0169_inv1_cepot_7704,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_12_15_dpot_5226,
      O => U_datamemory_data_memory_12(15),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_12_15_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X16Y26",
      INIT => X"FF00FF00BF80FF00"
    )
    port map (
      ADR0 => read_data2(15),
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112242,
      ADR3 => U_datamemory_data_memory_12(15),
      ADR4 => U_ALU_Mmux_result112043,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_12_15_dpot_5226
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_519_U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_519_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f75,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f75_0
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f7_4 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y28"
    )
    port map (
      IA => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_65_5269,
      IB => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_511_5263,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f75,
      SEL => U_ALU_Mmux_result11204_11_7297
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_65 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y28",
      INIT => X"F0F0CCCCFF00AAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_0(14),
      ADR1 => U_datamemory_data_memory_1(14),
      ADR2 => U_datamemory_data_memory_3(14),
      ADR3 => U_datamemory_data_memory_2(14),
      ADR4 => U_ALU_Mmux_result11184_2_7302,
      ADR5 => U_ALU_Mmux_result111641,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_65_5269
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_511 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y28",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_4(14),
      ADR1 => U_datamemory_data_memory_5(14),
      ADR2 => U_datamemory_data_memory_7(14),
      ADR3 => U_datamemory_data_memory_6(14),
      ADR4 => U_ALU_Mmux_result111642,
      ADR5 => U_ALU_Mmux_result111842,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_511_5263
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_519 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y28",
      INIT => X"F0F0CCCCFF00AAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_4(3),
      ADR1 => U_datamemory_data_memory_5(3),
      ADR2 => U_datamemory_data_memory_7(3),
      ADR3 => U_datamemory_data_memory_6(3),
      ADR4 => U_ALU_Mmux_result11184_3_7735,
      ADR5 => U_ALU_Mmux_result111642,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_519_7241
    );
  U_ALU_Mmux_result11164_3 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y28",
      INIT => X"4073407340407373"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => U_ALU_Mmux_result1116,
      ADR3 => N84,
      ADR4 => N83,
      ADR5 => U_ALU_Mmux_result1_split_1_0,
      O => U_ALU_Mmux_result111642
    );
  U_datamemory_data_memory_14_15_U_datamemory_data_memory_14_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => memwrite_sig_pack_7,
      O => memwrite_sig
    );
  U_CU_Mmux_output_enable11 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y25",
      INIT => X"0000001000000010"
    )
    port map (
      ADR0 => reset_IBUF_0,
      ADR1 => instruction_sig(15),
      ADR2 => instruction_sig(13),
      ADR3 => instruction_sig(14),
      ADR4 => instruction_sig(12),
      ADR5 => '1',
      O => output_enable
    );
  U_CU_Mmux_memwrite11 : X_LUT5
    generic map(
      LOC => "SLICE_X16Y25",
      INIT => X"00000004"
    )
    port map (
      ADR0 => reset_IBUF_0,
      ADR1 => instruction_sig(15),
      ADR2 => instruction_sig(13),
      ADR3 => instruction_sig(14),
      ADR4 => instruction_sig(12),
      O => memwrite_sig_pack_7
    );
  U_datamemory_n0177_inv1_cepot : X_LUT6
    generic map(
      LOC => "SLICE_X16Y25",
      INIT => X"DFDF8ADFDF8A8A8A"
    )
    port map (
      ADR0 => ALU_op_sig(2),
      ADR1 => ALU_op_sig(3),
      ADR2 => U_ALU_Mmux_result1116,
      ADR3 => U_ALU_Mmux_result1_split_1_0,
      ADR4 => N84,
      ADR5 => N83,
      O => U_datamemory_n0177_inv1_cepot_7707
    );
  U_ALU_Mmux_result11204_2 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y25",
      INIT => X"4447000374773033"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => U_ALU_Mmux_result1_split_3_0,
      ADR3 => N77,
      ADR4 => U_ALU_Mmux_result1120,
      ADR5 => N78,
      O => U_ALU_Mmux_result112041
    );
  U_datamemory_data_memory_14_15 : X_FF
    generic map(
      LOC => "SLICE_X16Y25",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0177_inv1_cepot_7707,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_14_15_dpot_5206,
      O => U_datamemory_data_memory_14(15),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_14_15_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X16Y25",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2(15),
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result1122411,
      ADR3 => U_datamemory_data_memory_14(15),
      ADR4 => U_ALU_Mmux_result112041,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_14_15_dpot_5206
    );
  U_datamemory_data_memory_14_10 : X_FF
    generic map(
      LOC => "SLICE_X16Y19",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0177_inv1_cepot_7707,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_14_10_dpot_5097,
      O => U_datamemory_data_memory_14(10),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_14_10_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X16Y19",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_10_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result1122411,
      ADR3 => U_datamemory_data_memory_14(10),
      ADR4 => U_ALU_Mmux_result112041,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_14_10_dpot_5097
    );
  U_datamemory_data_memory_14_9 : X_FF
    generic map(
      LOC => "SLICE_X16Y19",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0177_inv1_cepot_7707,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_14_9_dpot_5114,
      O => U_datamemory_data_memory_14(9),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_14_9_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X16Y19",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_9_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result1122411,
      ADR3 => U_datamemory_data_memory_14(9),
      ADR4 => U_ALU_Mmux_result112041,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_14_9_dpot_5114
    );
  U_datamemory_data_memory_14_8 : X_FF
    generic map(
      LOC => "SLICE_X16Y19",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0177_inv1_cepot_7707,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_14_8_dpot_5112,
      O => U_datamemory_data_memory_14(8),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_14_8_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X16Y19",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_8_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result1122411,
      ADR3 => U_datamemory_data_memory_14(8),
      ADR4 => U_ALU_Mmux_result112041,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_14_8_dpot_5112
    );
  U_datamemory_data_memory_14_7 : X_FF
    generic map(
      LOC => "SLICE_X16Y19",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0177_inv1_cepot_7707,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_14_7_dpot_5118,
      O => U_datamemory_data_memory_14(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_14_7_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X16Y19",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_7_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result1122411,
      ADR3 => U_datamemory_data_memory_14(7),
      ADR4 => U_ALU_Mmux_result112041,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_14_7_dpot_5118
    );
  U_datamemory_data_memory_12_2 : X_FF
    generic map(
      LOC => "SLICE_X16Y21",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0169_inv1_cepot_7704,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_12_2_dpot_5158,
      O => U_datamemory_data_memory_12(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_12_2_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X16Y21",
      INIT => X"FF00FF00BF80FF00"
    )
    port map (
      ADR0 => read_data2_2_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112241,
      ADR3 => U_datamemory_data_memory_12(2),
      ADR4 => U_ALU_Mmux_result112042,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_12_2_dpot_5158
    );
  U_datamemory_data_memory_12_1 : X_FF
    generic map(
      LOC => "SLICE_X16Y21",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0169_inv1_cepot_7704,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_12_1_dpot_5163,
      O => U_datamemory_data_memory_12(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_12_1_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X16Y21",
      INIT => X"FF00FF00BF80FF00"
    )
    port map (
      ADR0 => read_data2_1_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112241,
      ADR3 => U_datamemory_data_memory_12(1),
      ADR4 => U_ALU_Mmux_result112042,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_12_1_dpot_5163
    );
  U_ALU_Mmux_result11164 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y21",
      INIT => X"4073407340407373"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => U_ALU_Mmux_result1116,
      ADR3 => N84,
      ADR4 => N83,
      ADR5 => U_ALU_Mmux_result1_split_1_0,
      O => ALU_RESULT_1_Q
    );
  U_datamemory_data_memory_12_0 : X_FF
    generic map(
      LOC => "SLICE_X16Y21",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0169_inv1_cepot_7704,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_12_0_dpot_5177,
      O => U_datamemory_data_memory_12(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_12_0_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X16Y21",
      INIT => X"FF00FF00BF80FF00"
    )
    port map (
      ADR0 => read_data2_0_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112241,
      ADR3 => U_datamemory_data_memory_12(0),
      ADR4 => U_ALU_Mmux_result112042,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_12_0_dpot_5177
    );
  U_REG_register_file_2_11 : X_FF
    generic map(
      LOC => "SLICE_X16Y29",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0073_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(11),
      O => U_REG_register_file_2(11),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_ALU_Mmux_result1144_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y29",
      INIT => X"FF15EA00FF11EE00"
    )
    port map (
      ADR0 => memread_sig,
      ADR1 => ALU_op_sig(2),
      ADR2 => ALU_op_sig(3),
      ADR3 => N107,
      ADR4 => N108,
      ADR5 => U_ALU_Mmux_result114,
      O => N331
    );
  U_REG_register_file_2_10 : X_FF
    generic map(
      LOC => "SLICE_X16Y29",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0073_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(10),
      O => U_REG_register_file_2(10),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_input_port_MUX_Mmux_mux_out22 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y29",
      INIT => X"CCCCF0CCCCF0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => N270,
      ADR2 => N269,
      ADR3 => U_ALU_Mmux_result1122410,
      ADR4 => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f71_0,
      ADR5 => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f71_0,
      O => write_data_level2(10)
    );
  U_REG_register_file_2_9 : X_FF
    generic map(
      LOC => "SLICE_X16Y29",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0073_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(9),
      O => U_REG_register_file_2(9),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_ALU_Mmux_result1144_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y29",
      INIT => X"FF04FB00FF00FF00"
    )
    port map (
      ADR0 => memread_sig,
      ADR1 => ALU_op_sig(2),
      ADR2 => ALU_op_sig(3),
      ADR3 => N107,
      ADR4 => N108,
      ADR5 => U_ALU_Mmux_result114,
      O => N332
    );
  U_REG_register_file_2_8 : X_FF
    generic map(
      LOC => "SLICE_X16Y29",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0073_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(8),
      O => U_REG_register_file_2(8),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_2_f8_0_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y29",
      INIT => X"FFFFF0CC0F330000"
    )
    port map (
      ADR0 => '1',
      ADR1 => N56,
      ADR2 => N57,
      ADR3 => U_ALU_Mmux_result1_split_10_0,
      ADR4 => N331,
      ADR5 => N332,
      O => N269
    );
  U_ALU_Mmux_result11204_8 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y18",
      INIT => X"4447000374773033"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => U_ALU_Mmux_result1_split_3_0,
      ADR3 => N77,
      ADR4 => U_ALU_Mmux_result1120,
      ADR5 => N78,
      O => U_ALU_Mmux_result112047
    );
  U_ALU_Mmux_result11204_5 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y16",
      INIT => X"4447000374773033"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => U_ALU_Mmux_result1_split_3_0,
      ADR3 => N77,
      ADR4 => U_ALU_Mmux_result1120,
      ADR5 => N78,
      O => U_ALU_Mmux_result112044
    );
  U_output_port_output_11_U_output_port_output_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => read_data1_11_pack_8,
      O => read_data1(11)
    );
  U_REG_mux2_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y32"
    )
    port map (
      IA => U_REG_mux2_4_5371,
      IB => U_REG_mux2_3_5361,
      O => read_data1_11_pack_8,
      SEL => instruction_sig(11)
    );
  U_REG_mux2_4 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y32",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_0(11),
      ADR1 => U_REG_register_file_1(11),
      ADR2 => U_REG_register_file_3(11),
      ADR3 => U_REG_register_file_2(11),
      ADR4 => instruction_sig(9),
      ADR5 => instruction_sig(10),
      O => U_REG_mux2_4_5371
    );
  U_output_port_output_11 : X_FF
    generic map(
      LOC => "SLICE_X16Y32",
      INIT => '0'
    )
    port map (
      CE => output_enable,
      CLK => clock_BUFGP,
      I => read_data1_11_pack_8,
      O => U_output_port_output(11),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_mux2_3 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y32",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_4(11),
      ADR1 => U_REG_register_file_5(11),
      ADR2 => U_REG_register_file_7(11),
      ADR3 => U_REG_register_file_6(11),
      ADR4 => instruction_sig(9),
      ADR5 => instruction_sig(10),
      O => U_REG_mux2_3_5361
    );
  U_ALU_Mmux_result1163_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y32",
      INIT => X"CCCFCC0CCFFFCC0C"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_ALU_controller_alu_signal_1_11,
      ADR2 => read_data1(11),
      ADR3 => ALU_op_sig(0),
      ADR4 => ALU_op_sig(1),
      ADR5 => ALUB_sig(11),
      O => N54
    );
  U_ALU_Mmux_result1163_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y32",
      INIT => X"CCCFFF3FCFFFFF3F"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_ALU_controller_alu_signal_1_11,
      ADR2 => read_data1(11),
      ADR3 => ALU_op_sig(0),
      ADR4 => ALU_op_sig(1),
      ADR5 => ALUB_sig(11),
      O => N53
    );
  read_data2_11_read_data2_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => read_data2(11),
      O => read_data2_11_0
    );
  U_REG_mux18_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y31"
    )
    port map (
      IA => U_REG_mux18_4_5340,
      IB => U_REG_mux18_3_5342,
      O => read_data2(11),
      SEL => instruction_sig(8)
    );
  U_REG_mux18_4 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y31",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_0(11),
      ADR1 => U_REG_register_file_1(11),
      ADR2 => U_REG_register_file_3(11),
      ADR3 => U_REG_register_file_2(11),
      ADR4 => instruction_sig(6),
      ADR5 => instruction_sig(7),
      O => U_REG_mux18_4_5340
    );
  U_REG_mux18_3 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y31",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_4(11),
      ADR1 => U_REG_register_file_5(11),
      ADR2 => U_REG_register_file_7(11),
      ADR3 => U_REG_register_file_6(11),
      ADR4 => instruction_sig(6),
      ADR5 => instruction_sig(7),
      O => U_REG_mux18_3_5342
    );
  N189_N189_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => read_data2_15_pack_4,
      O => read_data2(15)
    );
  U_REG_mux22_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y42"
    )
    port map (
      IA => U_REG_mux22_4_5417,
      IB => U_REG_mux22_3_5420,
      O => read_data2_15_pack_4,
      SEL => instruction_sig(8)
    );
  U_REG_mux22_4 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y42",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_0(15),
      ADR1 => U_REG_register_file_1(15),
      ADR2 => U_REG_register_file_3(15),
      ADR3 => U_REG_register_file_2(15),
      ADR4 => instruction_sig(6),
      ADR5 => instruction_sig(7),
      O => U_REG_mux22_4_5417
    );
  U_REG_mux22_3 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y42",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_4(15),
      ADR1 => U_REG_register_file_5(15),
      ADR2 => U_REG_register_file_7(15),
      ADR3 => U_REG_register_file_6(15),
      ADR4 => instruction_sig(6),
      ADR5 => instruction_sig(7),
      O => U_REG_mux22_3_5420
    );
  U_ALU_Mmux_result11143_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y42",
      INIT => X"FFFCFFC3FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => read_data1(15),
      ADR2 => ALU_op_sig(0),
      ADR3 => ALU_op_sig(1),
      ADR4 => ALUB_sig(15),
      ADR5 => ALU_op_sig(2),
      O => N189
    );
  U_Mux_register_file_alu_Mmux_mux_out71 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y42",
      INIT => X"FF00FFFFFF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => instruction_sig(5),
      ADR4 => alusrc_sig,
      ADR5 => read_data2(15),
      O => ALUB_sig(15)
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f74_U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f74_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f74,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f74_0
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f7_3 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y30"
    )
    port map (
      IA => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_64_5325,
      IB => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_59_5330,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f74,
      SEL => U_ALU_Mmux_result11204_11_7297
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_64 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y30",
      INIT => X"F0F0CCCCFF00AAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_0(13),
      ADR1 => U_datamemory_data_memory_1(13),
      ADR2 => U_datamemory_data_memory_3(13),
      ADR3 => U_datamemory_data_memory_2(13),
      ADR4 => U_ALU_Mmux_result11184_2_7302,
      ADR5 => U_ALU_Mmux_result111641,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_64_5325
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_59 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y30",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_4(13),
      ADR1 => U_datamemory_data_memory_5(13),
      ADR2 => U_datamemory_data_memory_7(13),
      ADR3 => U_datamemory_data_memory_6(13),
      ADR4 => U_ALU_Mmux_result111642,
      ADR5 => U_ALU_Mmux_result111842,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_59_5330
    );
  U_datamemory_data_memory_12_10 : X_FF
    generic map(
      LOC => "SLICE_X17Y18",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0169_inv1_cepot_7704,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_12_10_dpot_5541,
      O => U_datamemory_data_memory_12(10),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_12_10_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X17Y18",
      INIT => X"FF00FF00BF80FF00"
    )
    port map (
      ADR0 => read_data2_10_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112241,
      ADR3 => U_datamemory_data_memory_12(10),
      ADR4 => U_ALU_Mmux_result112042,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_12_10_dpot_5541
    );
  U_datamemory_data_memory_12_9 : X_FF
    generic map(
      LOC => "SLICE_X17Y18",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0169_inv1_cepot_7704,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_12_9_dpot_5523,
      O => U_datamemory_data_memory_12(9),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_12_9_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X17Y18",
      INIT => X"FF00FF00BF80FF00"
    )
    port map (
      ADR0 => read_data2_9_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112241,
      ADR3 => U_datamemory_data_memory_12(9),
      ADR4 => U_ALU_Mmux_result112042,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_12_9_dpot_5523
    );
  U_datamemory_data_memory_12_8 : X_FF
    generic map(
      LOC => "SLICE_X17Y18",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0169_inv1_cepot_7704,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_12_8_dpot_5529,
      O => U_datamemory_data_memory_12(8),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_12_8_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X17Y18",
      INIT => X"FF00FF00BF80FF00"
    )
    port map (
      ADR0 => read_data2_8_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112241,
      ADR3 => U_datamemory_data_memory_12(8),
      ADR4 => U_ALU_Mmux_result112042,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_12_8_dpot_5529
    );
  U_datamemory_data_memory_12_7 : X_FF
    generic map(
      LOC => "SLICE_X17Y18",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0169_inv1_cepot_7704,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_12_7_dpot_5552,
      O => U_datamemory_data_memory_12(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_12_7_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X17Y18",
      INIT => X"FF00FF00BF80FF00"
    )
    port map (
      ADR0 => read_data2_7_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112241,
      ADR3 => U_datamemory_data_memory_12(7),
      ADR4 => U_ALU_Mmux_result112042,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_12_7_dpot_5552
    );
  U_ALU_Mmux_result11164_4 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y20",
      INIT => X"4073407340407373"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => U_ALU_Mmux_result1116,
      ADR3 => N84,
      ADR4 => N83,
      ADR5 => U_ALU_Mmux_result1_split_1_0,
      O => U_ALU_Mmux_result11164_3_7736
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_49 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y20",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_12(3),
      ADR1 => U_datamemory_data_memory_13(3),
      ADR2 => U_datamemory_data_memory_15(3),
      ADR3 => U_datamemory_data_memory_14(3),
      ADR4 => U_ALU_Mmux_result11164_3_7736,
      ADR5 => U_ALU_Mmux_result11184_3_7735,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_49_7238
    );
  U_ALU_Mmux_result11184_4 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y20",
      INIT => X"4073407340407373"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => U_ALU_Mmux_result1118,
      ADR3 => N81,
      ADR4 => N80,
      ADR5 => U_ALU_Mmux_result1_split_2_0,
      O => U_ALU_Mmux_result11184_3_7735
    );
  read_data2_13_read_data2_13_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => read_data2(13),
      O => read_data2_13_0
    );
  U_REG_mux20_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y41"
    )
    port map (
      IA => U_REG_mux20_4_5388,
      IB => U_REG_mux20_3_5390,
      O => read_data2(13),
      SEL => instruction_sig(8)
    );
  U_REG_mux20_4 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y41",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_0(13),
      ADR1 => U_REG_register_file_1(13),
      ADR2 => U_REG_register_file_3(13),
      ADR3 => U_REG_register_file_2(13),
      ADR4 => instruction_sig(6),
      ADR5 => instruction_sig(7),
      O => U_REG_mux20_4_5388
    );
  U_REG_mux20_3 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y41",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_4(13),
      ADR1 => U_REG_register_file_5(13),
      ADR2 => U_REG_register_file_7(13),
      ADR3 => U_REG_register_file_6(13),
      ADR4 => instruction_sig(6),
      ADR5 => instruction_sig(7),
      O => U_REG_mux20_3_5390
    );
  U_ALU_Mmux_result11224_7 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y22",
      INIT => X"4073407340407373"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => U_ALU_Mmux_result1122,
      ADR3 => N75,
      ADR4 => N74,
      ADR5 => U_ALU_Mmux_result1_split_4_0,
      O => U_ALU_Mmux_result112246
    );
  U_input_port_MUX_Mmux_mux_out41_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y46",
      INIT => X"F0F0FF00F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U_input_port_output_sig(12),
      ADR3 => PC_increment_12_0,
      ADR4 => input_enable,
      ADR5 => J_link_sig,
      O => N113
    );
  U_ALU_Mmux_result1184_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y46",
      INIT => X"FF15EA00FF11EE00"
    )
    port map (
      ADR0 => memread_sig,
      ADR1 => ALU_op_sig(2),
      ADR2 => ALU_op_sig(3),
      ADR3 => N113,
      ADR4 => N114,
      ADR5 => U_ALU_Mmux_result118,
      O => N307
    );
  U_ALU_Mmux_result1184_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y46",
      INIT => X"FF04FB00FF00FF00"
    )
    port map (
      ADR0 => memread_sig,
      ADR1 => ALU_op_sig(2),
      ADR2 => ALU_op_sig(3),
      ADR3 => N113,
      ADR4 => N114,
      ADR5 => U_ALU_Mmux_result118,
      O => N308
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_2_f8_2_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y46",
      INIT => X"FFFFF0CC0F330000"
    )
    port map (
      ADR0 => '1',
      ADR1 => N184,
      ADR2 => N185,
      ADR3 => U_ALU_Mmux_result1_split_12_0,
      ADR4 => N307,
      ADR5 => N308,
      O => N275
    );
  U_datamemory_data_memory_13_3 : X_FF
    generic map(
      LOC => "SLICE_X17Y15",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0173_inv1_cepot_7705,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_13_3_dpot_5495,
      O => U_datamemory_data_memory_13(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_13_3_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X17Y15",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_3_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112242,
      ADR3 => U_datamemory_data_memory_13(3),
      ADR4 => U_ALU_Mmux_result112044,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_13_3_dpot_5495
    );
  U_datamemory_data_memory_13_2 : X_FF
    generic map(
      LOC => "SLICE_X17Y15",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0173_inv1_cepot_7705,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_13_2_dpot_5512,
      O => U_datamemory_data_memory_13(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_13_2_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X17Y15",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_2_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112242,
      ADR3 => U_datamemory_data_memory_13(2),
      ADR4 => U_ALU_Mmux_result112044,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_13_2_dpot_5512
    );
  U_datamemory_data_memory_13_1 : X_FF
    generic map(
      LOC => "SLICE_X17Y15",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0173_inv1_cepot_7705,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_13_1_dpot_5510,
      O => U_datamemory_data_memory_13(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_13_1_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X17Y15",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_1_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112242,
      ADR3 => U_datamemory_data_memory_13(1),
      ADR4 => U_ALU_Mmux_result112044,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_13_1_dpot_5510
    );
  U_datamemory_data_memory_13_0 : X_FF
    generic map(
      LOC => "SLICE_X17Y15",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0173_inv1_cepot_7705,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_13_0_dpot_5516,
      O => U_datamemory_data_memory_13(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_13_0_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X17Y15",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_0_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112242,
      ADR3 => U_datamemory_data_memory_13(0),
      ADR4 => U_ALU_Mmux_result112044,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_13_0_dpot_5516
    );
  U_output_port_output_15_U_output_port_output_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => read_data1_15_pack_4,
      O => read_data1(15)
    );
  U_REG_mux6_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y43"
    )
    port map (
      IA => U_REG_mux6_4_5432,
      IB => U_REG_mux6_3_5437,
      O => read_data1_15_pack_4,
      SEL => instruction_sig(11)
    );
  U_REG_mux6_4 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y43",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_0(15),
      ADR1 => U_REG_register_file_1(15),
      ADR2 => U_REG_register_file_3(15),
      ADR3 => U_REG_register_file_2(15),
      ADR4 => instruction_sig(9),
      ADR5 => instruction_sig(10),
      O => U_REG_mux6_4_5432
    );
  U_output_port_output_15 : X_FF
    generic map(
      LOC => "SLICE_X16Y43",
      INIT => '0'
    )
    port map (
      CE => output_enable,
      CLK => clock_BUFGP,
      I => read_data1_15_pack_4,
      O => U_output_port_output(15),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_mux6_3 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y43",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_REG_register_file_4(15),
      ADR1 => U_REG_register_file_5(15),
      ADR2 => U_REG_register_file_7(15),
      ADR3 => U_REG_register_file_6(15),
      ADR4 => instruction_sig(9),
      ADR5 => instruction_sig(10),
      O => U_REG_mux6_3_5437
    );
  U_ALU_Mmux_result11143_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y43",
      INIT => X"FFFFFFFFFFFFFF0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => read_data1(15),
      ADR3 => ALU_op_sig(0),
      ADR4 => ALU_op_sig(1),
      ADR5 => ALU_op_sig(2),
      O => N188
    );
  U_ALU_Mmux_result11144_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y43",
      INIT => X"FF03FC00FF33CC00"
    )
    port map (
      ADR0 => '1',
      ADR1 => memread_sig,
      ADR2 => ALU_op_sig(3),
      ADR3 => N122,
      ADR4 => N123,
      ADR5 => N188,
      O => N313
    );
  U_datamemory_data_memory_0_15 : X_FF
    generic map(
      LOC => "SLICE_X17Y28",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0185_inv1_cepot_7672,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_0_15_dpot_5609,
      O => U_datamemory_data_memory_0(15),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_0_15_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X17Y28",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2(15),
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112241,
      ADR3 => U_datamemory_data_memory_0(15),
      ADR4 => ALU_RESULT_1_Q,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_0_15_dpot_5609
    );
  U_datamemory_data_memory_0_14 : X_FF
    generic map(
      LOC => "SLICE_X17Y28",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0185_inv1_cepot_7672,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_0_14_dpot_5608,
      O => U_datamemory_data_memory_0(14),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_0_14_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X17Y28",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2(14),
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112241,
      ADR3 => U_datamemory_data_memory_0(14),
      ADR4 => ALU_RESULT_1_Q,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_0_14_dpot_5608
    );
  U_datamemory_data_memory_0_13 : X_FF
    generic map(
      LOC => "SLICE_X17Y28",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0185_inv1_cepot_7672,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_0_13_dpot_5611,
      O => U_datamemory_data_memory_0(13),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_0_13_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X17Y28",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2_13_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112241,
      ADR3 => U_datamemory_data_memory_0(13),
      ADR4 => ALU_RESULT_1_Q,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_0_13_dpot_5611
    );
  U_datamemory_data_memory_0_12 : X_FF
    generic map(
      LOC => "SLICE_X17Y28",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0185_inv1_cepot_7672,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_0_12_dpot_5620,
      O => U_datamemory_data_memory_0(12),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_0_12_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X17Y28",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2_12_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112241,
      ADR3 => U_datamemory_data_memory_0(12),
      ADR4 => ALU_RESULT_1_Q,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_0_12_dpot_5620
    );
  U_ALU_Mmux_result1183_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y44",
      INIT => X"F3FFF030F0F3F030"
    )
    port map (
      ADR0 => '1',
      ADR1 => read_data1(12),
      ADR2 => ALU_op_sig(3),
      ADR3 => ALU_op_sig(0),
      ADR4 => ALU_op_sig(1),
      ADR5 => N291,
      O => N185
    );
  U_ALU_Mmux_result1182_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y44",
      INIT => X"00FF000000FFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => instruction_sig(5),
      ADR4 => alusrc_sig,
      ADR5 => read_data2_12_0,
      O => N291
    );
  U_ALU_Mmux_result1183_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y44",
      INIT => X"F3FFFF3FF0F3FF3F"
    )
    port map (
      ADR0 => '1',
      ADR1 => read_data1(12),
      ADR2 => ALU_op_sig(3),
      ADR3 => ALU_op_sig(0),
      ADR4 => ALU_op_sig(1),
      ADR5 => N291,
      O => N184
    );
  U_datamemory_data_memory_7_11 : X_FF
    generic map(
      LOC => "SLICE_X18Y21",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_7_11_dpot_5770,
      O => U_datamemory_data_memory_7(11),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_7_11_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X18Y21",
      INIT => X"FB08FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_11_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112249,
      ADR3 => U_datamemory_data_memory_7(11),
      ADR4 => U_ALU_Mmux_result1120411,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_7_11_dpot_5770
    );
  U_datamemory_data_memory_7_10 : X_FF
    generic map(
      LOC => "SLICE_X18Y21",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_7_10_dpot_5767,
      O => U_datamemory_data_memory_7(10),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_7_10_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X18Y21",
      INIT => X"FB08FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_10_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112249,
      ADR3 => U_datamemory_data_memory_7(10),
      ADR4 => U_ALU_Mmux_result1120411,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_7_10_dpot_5767
    );
  U_datamemory_data_memory_7_9 : X_FF
    generic map(
      LOC => "SLICE_X18Y21",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_7_9_dpot_5753,
      O => U_datamemory_data_memory_7(9),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_7_9_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X18Y21",
      INIT => X"FB08FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_9_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112249,
      ADR3 => U_datamemory_data_memory_7(9),
      ADR4 => U_ALU_Mmux_result1120411,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_7_9_dpot_5753
    );
  U_datamemory_data_memory_7_8 : X_FF
    generic map(
      LOC => "SLICE_X18Y21",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_7_8_dpot_5778,
      O => U_datamemory_data_memory_7(8),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_7_8_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X18Y21",
      INIT => X"FB08FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_8_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112249,
      ADR3 => U_datamemory_data_memory_7(8),
      ADR4 => U_ALU_Mmux_result1120411,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_7_8_dpot_5778
    );
  U_input_port_MUX_Mmux_mux_out41_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y46",
      INIT => X"F0F0FF00F0F0FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U_input_port_output_sig(12),
      ADR3 => PC_increment_12_0,
      ADR4 => input_enable,
      ADR5 => J_link_sig,
      O => N114
    );
  U_ALU_Mmux_result1184_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y46",
      INIT => X"FFAE5100FFAA5500"
    )
    port map (
      ADR0 => memread_sig,
      ADR1 => ALU_op_sig(2),
      ADR2 => ALU_op_sig(3),
      ADR3 => N113,
      ADR4 => N114,
      ADR5 => U_ALU_Mmux_result118,
      O => N311
    );
  U_ALU_Mmux_result1184_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y46",
      INIT => X"FFBF4000FFBB4400"
    )
    port map (
      ADR0 => memread_sig,
      ADR1 => ALU_op_sig(2),
      ADR2 => ALU_op_sig(3),
      ADR3 => N113,
      ADR4 => N114,
      ADR5 => U_ALU_Mmux_result118,
      O => N310
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_2_f8_2_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y46",
      INIT => X"FFFF0F33F0CC0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => N184,
      ADR2 => N185,
      ADR3 => U_ALU_Mmux_result1_split_12_0,
      ADR4 => N311,
      ADR5 => N310,
      O => N276
    );
  U_REG_register_file_0_11 : X_FF
    generic map(
      LOC => "SLICE_X17Y30",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0097_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(11),
      O => U_REG_register_file_0(11),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_0_10 : X_FF
    generic map(
      LOC => "SLICE_X17Y30",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0097_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(10),
      O => U_REG_register_file_0(10),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_0_9 : X_FF
    generic map(
      LOC => "SLICE_X17Y30",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0097_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(9),
      O => U_REG_register_file_0(9),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_REG_register_file_0_8 : X_FF
    generic map(
      LOC => "SLICE_X17Y30",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0097_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(8),
      O => U_REG_register_file_0(8),
      RST => reset_IBUF_0,
      SET => GND
    );
  N264_N264_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f75,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f75_0
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f7_4 : X_MUX2
    generic map(
      LOC => "SLICE_X18Y26"
    )
    port map (
      IA => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_510_5833,
      IB => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_45_5842,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f75,
      SEL => U_ALU_Mmux_result11204_7247
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_510 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y26",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_8(14),
      ADR1 => U_datamemory_data_memory_9(14),
      ADR2 => U_datamemory_data_memory_11(14),
      ADR3 => U_datamemory_data_memory_10(14),
      ADR4 => U_ALU_Mmux_result11164_7229,
      ADR5 => U_ALU_Mmux_result11184_7230,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_510_5833
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_45 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y26",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_12(14),
      ADR1 => U_datamemory_data_memory_13(14),
      ADR2 => U_datamemory_data_memory_15(14),
      ADR3 => U_datamemory_data_memory_14(14),
      ADR4 => U_ALU_Mmux_result11164_1_7261,
      ADR5 => U_ALU_Mmux_result11184_1_7262,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_45_5842
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_2_f8_6_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y26",
      INIT => X"FFFF0000FFF00F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => memread_sig,
      ADR3 => N125,
      ADR4 => N126,
      ADR5 => U_ALU_Mmux_result11164_1_7261,
      O => N264
    );
  U_ALU_Mmux_result11164_5 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y26",
      INIT => X"4073407340407373"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => U_ALU_Mmux_result1116,
      ADR3 => N84,
      ADR4 => N83,
      ADR5 => U_ALU_Mmux_result1_split_1_0,
      O => U_ALU_Mmux_result11164_1_7261
    );
  U_datamemory_data_memory_1_15 : X_FF
    generic map(
      LOC => "SLICE_X17Y29",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_1_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_1_15_dpot_5644,
      O => U_datamemory_data_memory_1(15),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_1_15_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X17Y29",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2(15),
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result1122412,
      ADR3 => U_datamemory_data_memory_1(15),
      ADR4 => U_ALU_Mmux_result112042,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_1_15_dpot_5644
    );
  U_datamemory_data_memory_1_14 : X_FF
    generic map(
      LOC => "SLICE_X17Y29",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_1_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_1_14_dpot_5643,
      O => U_datamemory_data_memory_1(14),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_1_14_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X17Y29",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2(14),
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result1122412,
      ADR3 => U_datamemory_data_memory_1(14),
      ADR4 => U_ALU_Mmux_result112042,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_1_14_dpot_5643
    );
  U_datamemory_data_memory_1_13 : X_FF
    generic map(
      LOC => "SLICE_X17Y29",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_1_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_1_13_dpot_5646,
      O => U_datamemory_data_memory_1(13),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_1_13_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X17Y29",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2_13_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result1122412,
      ADR3 => U_datamemory_data_memory_1(13),
      ADR4 => U_ALU_Mmux_result112042,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_1_13_dpot_5646
    );
  U_datamemory_data_memory_1_12 : X_FF
    generic map(
      LOC => "SLICE_X17Y29",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_1_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_1_12_dpot_5655,
      O => U_datamemory_data_memory_1(12),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_1_12_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X17Y29",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2_12_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result1122412,
      ADR3 => U_datamemory_data_memory_1(12),
      ADR4 => U_ALU_Mmux_result112042,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_1_12_dpot_5655
    );
  U_Mux_register_file_alu_Mmux_mux_out81 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y24",
      INIT => X"FF00FFFFFF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => instruction_sig(1),
      ADR4 => U_CU_Mmux_alusrc11_7730,
      ADR5 => read_data2_1_0,
      O => ALUB_sig(1)
    );
  U_ALU_Mmux_result11161 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y24",
      INIT => X"CC00AA0FCC0FAAF0"
    )
    port map (
      ADR0 => read_data1_0_0,
      ADR1 => read_data1_2_0,
      ADR2 => read_data1_1_0,
      ADR3 => U_ALU_controller_alu_signal(3),
      ADR4 => U_ALU_controller_alu_signal(4),
      ADR5 => ALUB_sig(1),
      O => U_ALU_Mmux_result1116
    );
  U_REG_register_file_0_15 : X_FF
    generic map(
      LOC => "SLICE_X17Y43",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0097_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(15),
      O => U_REG_register_file_0(15),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_input_port_MUX_Mmux_mux_out72 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y43",
      INIT => X"F0F0FC30F3C0FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => U_ALU_Mmux_result1122411,
      ADR2 => N285,
      ADR3 => N284,
      ADR4 => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f76_0,
      ADR5 => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f76_0,
      O => write_data_level2(15)
    );
  U_REG_register_file_0_14 : X_FF
    generic map(
      LOC => "SLICE_X17Y43",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0097_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(14),
      O => U_REG_register_file_0(14),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_2_f8_5_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y43",
      INIT => X"FFFF2230DDCF0000"
    )
    port map (
      ADR0 => N189,
      ADR1 => U_ALU_Mmux_result1114,
      ADR2 => N187,
      ADR3 => U_ALU_Mmux_result1_split_15_0,
      ADR4 => N313,
      ADR5 => N314,
      O => N284
    );
  U_REG_register_file_0_13 : X_FF
    generic map(
      LOC => "SLICE_X17Y43",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0097_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(13),
      O => U_REG_register_file_0(13),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_ALU_Mmux_result11144_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y43",
      INIT => X"FF00FF00FF30CF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => memread_sig,
      ADR2 => ALU_op_sig(3),
      ADR3 => N122,
      ADR4 => N123,
      ADR5 => N188,
      O => N314
    );
  U_REG_register_file_0_12 : X_FF
    generic map(
      LOC => "SLICE_X17Y43",
      INIT => '0'
    )
    port map (
      CE => U_REG_n0097_inv,
      CLK => clock_BUFGP,
      I => write_data_level2(12),
      O => U_REG_register_file_0(12),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_input_port_MUX_Mmux_mux_out42 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y43",
      INIT => X"CCCCF0CCCCF0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => N276,
      ADR2 => N275,
      ADR3 => U_ALU_Mmux_result1122410,
      ADR4 => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f73_0,
      ADR5 => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f73_0,
      O => write_data_level2(12)
    );
  N83_N83_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f76,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f76_0
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f7_5 : X_MUX2
    generic map(
      LOC => "SLICE_X18Y25"
    )
    port map (
      IA => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_512_5808,
      IB => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_46_5806,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f76,
      SEL => U_ALU_Mmux_result11204_7247
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_512 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y25",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_8(15),
      ADR1 => U_datamemory_data_memory_9(15),
      ADR2 => U_datamemory_data_memory_11(15),
      ADR3 => U_datamemory_data_memory_10(15),
      ADR4 => U_ALU_Mmux_result11164_7229,
      ADR5 => U_ALU_Mmux_result11184_7230,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_512_5808
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_46 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y25",
      INIT => X"F0F0CCCCFF00AAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_12(15),
      ADR1 => U_datamemory_data_memory_13(15),
      ADR2 => U_datamemory_data_memory_15(15),
      ADR3 => U_datamemory_data_memory_14(15),
      ADR4 => U_ALU_Mmux_result11184_1_7262,
      ADR5 => U_ALU_Mmux_result111641,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_46_5806
    );
  U_ALU_Mmux_result11163_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y25",
      INIT => X"FFF30F3FFFF33FFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => read_data1_1_0,
      ADR2 => U_ALU_controller_alu_signal(3),
      ADR3 => U_ALU_controller_alu_signal(4),
      ADR4 => U_ALU_controller_alu_signal_1_1_7780,
      ADR5 => ALUB_sig(1),
      O => N83
    );
  U_ALU_Mmux_result11164_2 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y25",
      INIT => X"4073407340407373"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => U_ALU_Mmux_result1116,
      ADR3 => N84,
      ADR4 => N83,
      ADR5 => U_ALU_Mmux_result1_split_1_0,
      O => U_ALU_Mmux_result111641
    );
  U_datamemory_data_memory_3_15 : X_FF
    generic map(
      LOC => "SLICE_X19Y30",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_3_15_dpot_6052,
      O => U_datamemory_data_memory_3(15),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_3_15_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X19Y30",
      INIT => X"FF00FB08FF00FF00"
    )
    port map (
      ADR0 => read_data2(15),
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112242,
      ADR3 => U_datamemory_data_memory_3(15),
      ADR4 => U_ALU_Mmux_result112043,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_3_15_dpot_6052
    );
  U_datamemory_data_memory_3_14 : X_FF
    generic map(
      LOC => "SLICE_X19Y30",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_3_14_dpot_6051,
      O => U_datamemory_data_memory_3(14),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_3_14_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X19Y30",
      INIT => X"FF00FB08FF00FF00"
    )
    port map (
      ADR0 => read_data2(14),
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112242,
      ADR3 => U_datamemory_data_memory_3(14),
      ADR4 => U_ALU_Mmux_result112043,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_3_14_dpot_6051
    );
  U_datamemory_data_memory_3_13 : X_FF
    generic map(
      LOC => "SLICE_X19Y30",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_3_13_dpot_6061,
      O => U_datamemory_data_memory_3(13),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_3_13_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X19Y30",
      INIT => X"FF00FB08FF00FF00"
    )
    port map (
      ADR0 => read_data2_13_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112242,
      ADR3 => U_datamemory_data_memory_3(13),
      ADR4 => U_ALU_Mmux_result112043,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_3_13_dpot_6061
    );
  U_datamemory_data_memory_3_12 : X_FF
    generic map(
      LOC => "SLICE_X19Y30",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_3_12_dpot_6068,
      O => U_datamemory_data_memory_3(12),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_3_12_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X19Y30",
      INIT => X"FF00FB08FF00FF00"
    )
    port map (
      ADR0 => read_data2_12_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112242,
      ADR3 => U_datamemory_data_memory_3(12),
      ADR4 => U_ALU_Mmux_result112043,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_3_12_dpot_6068
    );
  U_datamemory_data_memory_2_15 : X_FF
    generic map(
      LOC => "SLICE_X19Y28",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_2_15_dpot_5992,
      O => U_datamemory_data_memory_2(15),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_2_15_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X19Y28",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2(15),
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112245,
      ADR3 => U_datamemory_data_memory_2(15),
      ADR4 => U_ALU_Mmux_result112047,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_2_15_dpot_5992
    );
  U_datamemory_data_memory_2_14 : X_FF
    generic map(
      LOC => "SLICE_X19Y28",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_2_14_dpot_5991,
      O => U_datamemory_data_memory_2(14),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_2_14_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X19Y28",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2(14),
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112245,
      ADR3 => U_datamemory_data_memory_2(14),
      ADR4 => U_ALU_Mmux_result112047,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_2_14_dpot_5991
    );
  U_datamemory_data_memory_2_13 : X_FF
    generic map(
      LOC => "SLICE_X19Y28",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_2_13_dpot_5994,
      O => U_datamemory_data_memory_2(13),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_2_13_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X19Y28",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2_13_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112245,
      ADR3 => U_datamemory_data_memory_2(13),
      ADR4 => U_ALU_Mmux_result112047,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_2_13_dpot_5994
    );
  U_datamemory_data_memory_2_12 : X_FF
    generic map(
      LOC => "SLICE_X19Y28",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_2_12_dpot_6003,
      O => U_datamemory_data_memory_2(12),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_2_12_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X19Y28",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2_12_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112245,
      ADR3 => U_datamemory_data_memory_2(12),
      ADR4 => U_ALU_Mmux_result112047,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_2_12_dpot_6003
    );
  U_datamemory_data_memory_5_15 : X_FF
    generic map(
      LOC => "SLICE_X19Y29",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0141_inv1_cepot_7689,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_5_15_dpot_6032,
      O => U_datamemory_data_memory_5(15),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_5_15_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X19Y29",
      INIT => X"FB08FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2(15),
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result1122410,
      ADR3 => U_datamemory_data_memory_5(15),
      ADR4 => U_ALU_Mmux_result1120412,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_5_15_dpot_6032
    );
  U_datamemory_data_memory_5_14 : X_FF
    generic map(
      LOC => "SLICE_X19Y29",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0141_inv1_cepot_7689,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_5_14_dpot_6029,
      O => U_datamemory_data_memory_5(14),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_5_14_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X19Y29",
      INIT => X"FB08FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2(14),
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result1122410,
      ADR3 => U_datamemory_data_memory_5(14),
      ADR4 => U_ALU_Mmux_result1120412,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_5_14_dpot_6029
    );
  U_datamemory_data_memory_5_13 : X_FF
    generic map(
      LOC => "SLICE_X19Y29",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0141_inv1_cepot_7689,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_5_13_dpot_6015,
      O => U_datamemory_data_memory_5(13),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_5_13_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X19Y29",
      INIT => X"FB08FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_13_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result1122410,
      ADR3 => U_datamemory_data_memory_5(13),
      ADR4 => U_ALU_Mmux_result1120412,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_5_13_dpot_6015
    );
  U_datamemory_data_memory_5_12 : X_FF
    generic map(
      LOC => "SLICE_X19Y29",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0141_inv1_cepot_7689,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_5_12_dpot_6040,
      O => U_datamemory_data_memory_5(12),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_5_12_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X19Y29",
      INIT => X"FB08FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_12_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result1122410,
      ADR3 => U_datamemory_data_memory_5(12),
      ADR4 => U_ALU_Mmux_result1120412,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_5_12_dpot_6040
    );
  U_datamemory_data_memory_4_15 : X_FF
    generic map(
      LOC => "SLICE_X18Y30",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0137_inv1_cepot_7685,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_4_15_dpot_5910,
      O => U_datamemory_data_memory_4(15),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_4_15_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X18Y30",
      INIT => X"FF00FF00FB08FF00"
    )
    port map (
      ADR0 => read_data2(15),
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112249,
      ADR3 => U_datamemory_data_memory_4(15),
      ADR4 => U_ALU_Mmux_result1120411,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_4_15_dpot_5910
    );
  U_datamemory_data_memory_4_14 : X_FF
    generic map(
      LOC => "SLICE_X18Y30",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0137_inv1_cepot_7685,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_4_14_dpot_5930,
      O => U_datamemory_data_memory_4(14),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_4_14_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X18Y30",
      INIT => X"FF00FF00FB08FF00"
    )
    port map (
      ADR0 => read_data2(14),
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112249,
      ADR3 => U_datamemory_data_memory_4(14),
      ADR4 => U_ALU_Mmux_result1120411,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_4_14_dpot_5930
    );
  U_datamemory_data_memory_4_13 : X_FF
    generic map(
      LOC => "SLICE_X18Y30",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0137_inv1_cepot_7685,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_4_13_dpot_5912,
      O => U_datamemory_data_memory_4(13),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_4_13_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X18Y30",
      INIT => X"FF00FF00FB08FF00"
    )
    port map (
      ADR0 => read_data2_13_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112248,
      ADR3 => U_datamemory_data_memory_4(13),
      ADR4 => U_ALU_Mmux_result1120411,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_4_13_dpot_5912
    );
  U_datamemory_data_memory_4_12 : X_FF
    generic map(
      LOC => "SLICE_X18Y30",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0137_inv1_cepot_7685,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_4_12_dpot_5931,
      O => U_datamemory_data_memory_4(12),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_4_12_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X18Y30",
      INIT => X"FF00FF00FB08FF00"
    )
    port map (
      ADR0 => read_data2_12_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112248,
      ADR3 => U_datamemory_data_memory_4(12),
      ADR4 => U_ALU_Mmux_result1120411,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_4_12_dpot_5931
    );
  U_datamemory_data_memory_7_15 : X_FF
    generic map(
      LOC => "SLICE_X19Y31",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_7_15_dpot_6102,
      O => U_datamemory_data_memory_7(15),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_7_15_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X19Y31",
      INIT => X"FB08FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2(15),
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112249,
      ADR3 => U_datamemory_data_memory_7(15),
      ADR4 => U_ALU_Mmux_result1120411,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_7_15_dpot_6102
    );
  U_datamemory_data_memory_7_14 : X_FF
    generic map(
      LOC => "SLICE_X19Y31",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_7_14_dpot_6099,
      O => U_datamemory_data_memory_7(14),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_7_14_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X19Y31",
      INIT => X"FB08FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2(14),
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112249,
      ADR3 => U_datamemory_data_memory_7(14),
      ADR4 => U_ALU_Mmux_result1120411,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_7_14_dpot_6099
    );
  U_datamemory_data_memory_7_13 : X_FF
    generic map(
      LOC => "SLICE_X19Y31",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_7_13_dpot_6085,
      O => U_datamemory_data_memory_7(13),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_7_13_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X19Y31",
      INIT => X"FB08FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_13_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112249,
      ADR3 => U_datamemory_data_memory_7(13),
      ADR4 => U_ALU_Mmux_result1120411,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_7_13_dpot_6085
    );
  U_datamemory_data_memory_7_12 : X_FF
    generic map(
      LOC => "SLICE_X19Y31",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_7_12_dpot_6110,
      O => U_datamemory_data_memory_7(12),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_7_12_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X19Y31",
      INIT => X"FB08FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_12_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112249,
      ADR3 => U_datamemory_data_memory_7(12),
      ADR4 => U_ALU_Mmux_result1120411,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_7_12_dpot_6110
    );
  U_ALU_Mmux_result11184_2_U_ALU_Mmux_result11184_2_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f76,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f76_0
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f7_5 : X_MUX2
    generic map(
      LOC => "SLICE_X18Y29"
    )
    port map (
      IA => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_66_5896,
      IB => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_513_5903,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f76,
      SEL => U_ALU_Mmux_result11204_11_7297
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_66 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y29",
      INIT => X"F0F0CCCCFF00AAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_0(15),
      ADR1 => U_datamemory_data_memory_1(15),
      ADR2 => U_datamemory_data_memory_3(15),
      ADR3 => U_datamemory_data_memory_2(15),
      ADR4 => U_ALU_Mmux_result11184_2_7302,
      ADR5 => U_ALU_Mmux_result111641,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_66_5896
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_513 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y29",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_4(15),
      ADR1 => U_datamemory_data_memory_5(15),
      ADR2 => U_datamemory_data_memory_7(15),
      ADR3 => U_datamemory_data_memory_6(15),
      ADR4 => U_ALU_Mmux_result111642,
      ADR5 => U_ALU_Mmux_result111842,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_513_5903
    );
  U_ALU_Mmux_result11184_5 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y29",
      INIT => X"4073407340407373"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => U_ALU_Mmux_result1118,
      ADR3 => N81,
      ADR4 => N80,
      ADR5 => U_ALU_Mmux_result1_split_2_0,
      O => U_ALU_Mmux_result11184_2_7302
    );
  U_ALU_Mmux_result11204_15 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y29",
      INIT => X"4447000374773033"
    )
    port map (
      ADR0 => ALU_op_sig(3),
      ADR1 => ALU_op_sig(2),
      ADR2 => U_ALU_Mmux_result1_split_3_0,
      ADR3 => N77,
      ADR4 => U_ALU_Mmux_result1120,
      ADR5 => N78,
      O => U_ALU_Mmux_result11204_11_7297
    );
  U_datamemory_data_memory_9_15 : X_FF
    generic map(
      LOC => "SLICE_X19Y26",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0157_inv1_cepot_7699,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_9_15_dpot_5946,
      O => U_datamemory_data_memory_9(15),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_9_15_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X19Y26",
      INIT => X"FF00BF80FF00FF00"
    )
    port map (
      ADR0 => read_data2(15),
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112248,
      ADR3 => U_datamemory_data_memory_9(15),
      ADR4 => U_ALU_Mmux_result1120410,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_9_15_dpot_5946
    );
  U_datamemory_data_memory_9_14 : X_FF
    generic map(
      LOC => "SLICE_X19Y26",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0157_inv1_cepot_7699,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_9_14_dpot_5965,
      O => U_datamemory_data_memory_9(14),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_9_14_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X19Y26",
      INIT => X"FF00BF80FF00FF00"
    )
    port map (
      ADR0 => read_data2(14),
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112248,
      ADR3 => U_datamemory_data_memory_9(14),
      ADR4 => U_ALU_Mmux_result1120410,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_9_14_dpot_5965
    );
  U_datamemory_data_memory_9_13 : X_FF
    generic map(
      LOC => "SLICE_X19Y26",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0157_inv1_cepot_7699,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_9_13_dpot_5950,
      O => U_datamemory_data_memory_9(13),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_9_13_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X19Y26",
      INIT => X"FF00BF80FF00FF00"
    )
    port map (
      ADR0 => read_data2_13_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112248,
      ADR3 => U_datamemory_data_memory_9(13),
      ADR4 => U_ALU_Mmux_result1120410,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_9_13_dpot_5950
    );
  U_datamemory_data_memory_9_12 : X_FF
    generic map(
      LOC => "SLICE_X19Y26",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0157_inv1_cepot_7699,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_9_12_dpot_5967,
      O => U_datamemory_data_memory_9(12),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_9_12_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X19Y26",
      INIT => X"FF00BF80FF00FF00"
    )
    port map (
      ADR0 => read_data2_12_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112248,
      ADR3 => U_datamemory_data_memory_9(12),
      ADR4 => U_ALU_Mmux_result1120410,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_9_12_dpot_5967
    );
  U_datamemory_data_memory_15_15 : X_FF
    generic map(
      LOC => "SLICE_X18Y27",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_15_15_dpot_5852,
      O => U_datamemory_data_memory_15(15),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_15_15_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X18Y27",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2(15),
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112246,
      ADR3 => U_datamemory_data_memory_15(15),
      ADR4 => U_ALU_Mmux_result112048,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_15_15_dpot_5852
    );
  U_datamemory_data_memory_15_14 : X_FF
    generic map(
      LOC => "SLICE_X18Y27",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_15_14_dpot_5869,
      O => U_datamemory_data_memory_15(14),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_15_14_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X18Y27",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2(14),
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112246,
      ADR3 => U_datamemory_data_memory_15(14),
      ADR4 => U_ALU_Mmux_result112048,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_15_14_dpot_5869
    );
  U_datamemory_data_memory_15_13 : X_FF
    generic map(
      LOC => "SLICE_X18Y27",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_15_13_dpot_5867,
      O => U_datamemory_data_memory_15(13),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_15_13_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X18Y27",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_13_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112246,
      ADR3 => U_datamemory_data_memory_15(13),
      ADR4 => U_ALU_Mmux_result112048,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_15_13_dpot_5867
    );
  U_datamemory_data_memory_15_12 : X_FF
    generic map(
      LOC => "SLICE_X18Y27",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_15_12_dpot_5873,
      O => U_datamemory_data_memory_15(12),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_15_12_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X18Y27",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_12_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112246,
      ADR3 => U_datamemory_data_memory_15(12),
      ADR4 => U_ALU_Mmux_result112048,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_15_12_dpot_5873
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f714_U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f714_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f714,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f714_0
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f7_13 : X_MUX2
    generic map(
      LOC => "SLICE_X20Y19"
    )
    port map (
      IA => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_528_6209,
      IB => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_414_6206,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f714,
      SEL => U_ALU_Mmux_result11204_7247
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_528 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y19",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_8(8),
      ADR1 => U_datamemory_data_memory_9(8),
      ADR2 => U_datamemory_data_memory_11(8),
      ADR3 => U_datamemory_data_memory_10(8),
      ADR4 => U_ALU_Mmux_result11164_1_7261,
      ADR5 => U_ALU_Mmux_result11184_1_7262,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_528_6209
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_414 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y19",
      INIT => X"F0F0CCCCFF00AAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_12(8),
      ADR1 => U_datamemory_data_memory_13(8),
      ADR2 => U_datamemory_data_memory_15(8),
      ADR3 => U_datamemory_data_memory_14(8),
      ADR4 => U_ALU_Mmux_result111841,
      ADR5 => U_ALU_Mmux_result111641,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_414_6206
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f72_U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f72_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f72,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f72_0
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f7_1 : X_MUX2
    generic map(
      LOC => "SLICE_X20Y20"
    )
    port map (
      IA => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_54_6220,
      IB => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_42_6222,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f72,
      SEL => U_ALU_Mmux_result11204_7247
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_54 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y20",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_8(11),
      ADR1 => U_datamemory_data_memory_9(11),
      ADR2 => U_datamemory_data_memory_11(11),
      ADR3 => U_datamemory_data_memory_10(11),
      ADR4 => U_ALU_Mmux_result11164_7229,
      ADR5 => U_ALU_Mmux_result11184_7230,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_54_6220
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_42 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y20",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_12(11),
      ADR1 => U_datamemory_data_memory_13(11),
      ADR2 => U_datamemory_data_memory_15(11),
      ADR3 => U_datamemory_data_memory_14(11),
      ADR4 => U_ALU_Mmux_result11164_1_7261,
      ADR5 => U_ALU_Mmux_result11184_1_7262,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_42_6222
    );
  U_datamemory_data_memory_8_11 : X_FF
    generic map(
      LOC => "SLICE_X20Y16",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0153_inv1_cepot_7697,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_8_11_dpot_6130,
      O => U_datamemory_data_memory_8(11),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_8_11_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X20Y16",
      INIT => X"FF00FF00FF00BF80"
    )
    port map (
      ADR0 => read_data2_11_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112246,
      ADR3 => U_datamemory_data_memory_8(11),
      ADR4 => U_ALU_Mmux_result112047,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_8_11_dpot_6130
    );
  U_datamemory_data_memory_8_10 : X_FF
    generic map(
      LOC => "SLICE_X20Y16",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0153_inv1_cepot_7697,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_8_10_dpot_6123,
      O => U_datamemory_data_memory_8(10),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_8_10_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X20Y16",
      INIT => X"FF00FF00FF00BF80"
    )
    port map (
      ADR0 => read_data2_10_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112246,
      ADR3 => U_datamemory_data_memory_8(10),
      ADR4 => U_ALU_Mmux_result112047,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_8_10_dpot_6123
    );
  U_datamemory_data_memory_8_9 : X_FF
    generic map(
      LOC => "SLICE_X20Y16",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0153_inv1_cepot_7697,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_8_9_dpot_6140,
      O => U_datamemory_data_memory_8(9),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_8_9_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X20Y16",
      INIT => X"FF00FF00FF00BF80"
    )
    port map (
      ADR0 => read_data2_9_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112246,
      ADR3 => U_datamemory_data_memory_8(9),
      ADR4 => U_ALU_Mmux_result112047,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_8_9_dpot_6140
    );
  U_datamemory_data_memory_8_8 : X_FF
    generic map(
      LOC => "SLICE_X20Y16",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0153_inv1_cepot_7697,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_8_8_dpot_6143,
      O => U_datamemory_data_memory_8(8),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_8_8_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X20Y16",
      INIT => X"FF00FF00FF00BF80"
    )
    port map (
      ADR0 => read_data2_8_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112245,
      ADR3 => U_datamemory_data_memory_8(8),
      ADR4 => U_ALU_Mmux_result112047,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_8_8_dpot_6143
    );
  U_datamemory_data_memory_10_11 : X_FF
    generic map(
      LOC => "SLICE_X20Y17",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_10_11_dpot_6165,
      O => U_datamemory_data_memory_10(11),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_10_11_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X20Y17",
      INIT => X"FF00FF00FF00BF80"
    )
    port map (
      ADR0 => read_data2_11_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112244,
      ADR3 => U_datamemory_data_memory_10(11),
      ADR4 => U_ALU_Mmux_result112045,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_10_11_dpot_6165
    );
  U_datamemory_data_memory_10_10 : X_FF
    generic map(
      LOC => "SLICE_X20Y17",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_10_10_dpot_6158,
      O => U_datamemory_data_memory_10(10),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_10_10_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X20Y17",
      INIT => X"FF00FF00FF00BF80"
    )
    port map (
      ADR0 => read_data2_10_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112243,
      ADR3 => U_datamemory_data_memory_10(10),
      ADR4 => U_ALU_Mmux_result112045,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_10_10_dpot_6158
    );
  U_datamemory_data_memory_10_9 : X_FF
    generic map(
      LOC => "SLICE_X20Y17",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_10_9_dpot_6175,
      O => U_datamemory_data_memory_10(9),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_10_9_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X20Y17",
      INIT => X"FF00FF00FF00BF80"
    )
    port map (
      ADR0 => read_data2_9_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112243,
      ADR3 => U_datamemory_data_memory_10(9),
      ADR4 => U_ALU_Mmux_result112045,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_10_9_dpot_6175
    );
  U_datamemory_data_memory_10_8 : X_FF
    generic map(
      LOC => "SLICE_X20Y17",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_10_8_dpot_6178,
      O => U_datamemory_data_memory_10(8),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_10_8_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X20Y17",
      INIT => X"FF00FF00FF00BF80"
    )
    port map (
      ADR0 => read_data2_8_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112243,
      ADR3 => U_datamemory_data_memory_10(8),
      ADR4 => U_ALU_Mmux_result112045,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_10_8_dpot_6178
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f715_U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f715_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f715,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f715_0
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f7_14 : X_MUX2
    generic map(
      LOC => "SLICE_X20Y18"
    )
    port map (
      IA => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_530_6193,
      IB => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_415_6190,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f715,
      SEL => U_ALU_Mmux_result11204_7247
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_530 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y18",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_8(9),
      ADR1 => U_datamemory_data_memory_9(9),
      ADR2 => U_datamemory_data_memory_11(9),
      ADR3 => U_datamemory_data_memory_10(9),
      ADR4 => U_ALU_Mmux_result11164_1_7261,
      ADR5 => U_ALU_Mmux_result11184_1_7262,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_530_6193
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_415 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y18",
      INIT => X"F0F0CCCCFF00AAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_12(9),
      ADR1 => U_datamemory_data_memory_13(9),
      ADR2 => U_datamemory_data_memory_15(9),
      ADR3 => U_datamemory_data_memory_14(9),
      ADR4 => U_ALU_Mmux_result111841,
      ADR5 => U_ALU_Mmux_result111641,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_415_6190
    );
  U_datamemory_data_memory_15_11 : X_FF
    generic map(
      LOC => "SLICE_X21Y18",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_15_11_dpot_6360,
      O => U_datamemory_data_memory_15(11),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_15_11_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y18",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_11_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112246,
      ADR3 => U_datamemory_data_memory_15(11),
      ADR4 => U_ALU_Mmux_result112048,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_15_11_dpot_6360
    );
  U_datamemory_data_memory_15_10 : X_FF
    generic map(
      LOC => "SLICE_X21Y18",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_15_10_dpot_6377,
      O => U_datamemory_data_memory_15(10),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_15_10_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y18",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_10_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112246,
      ADR3 => U_datamemory_data_memory_15(10),
      ADR4 => U_ALU_Mmux_result112048,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_15_10_dpot_6377
    );
  U_datamemory_data_memory_15_9 : X_FF
    generic map(
      LOC => "SLICE_X21Y18",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_15_9_dpot_6375,
      O => U_datamemory_data_memory_15(9),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_15_9_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y18",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_9_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112246,
      ADR3 => U_datamemory_data_memory_15(9),
      ADR4 => U_ALU_Mmux_result112048,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_15_9_dpot_6375
    );
  U_datamemory_data_memory_15_8 : X_FF
    generic map(
      LOC => "SLICE_X21Y18",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_15_8_dpot_6381,
      O => U_datamemory_data_memory_15(8),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_15_8_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y18",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_8_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112246,
      ADR3 => U_datamemory_data_memory_15(8),
      ADR4 => U_ALU_Mmux_result112048,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_15_8_dpot_6381
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f714_U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f714_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f714,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f714_0
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f7_13 : X_MUX2
    generic map(
      LOC => "SLICE_X20Y22"
    )
    port map (
      IA => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_614_6252,
      IB => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_529_6254,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f714,
      SEL => U_ALU_Mmux_result11204_11_7297
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_614 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y22",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_0(8),
      ADR1 => U_datamemory_data_memory_1(8),
      ADR2 => U_datamemory_data_memory_3(8),
      ADR3 => U_datamemory_data_memory_2(8),
      ADR4 => U_ALU_Mmux_result111642,
      ADR5 => U_ALU_Mmux_result111842,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_614_6252
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_529 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y22",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_4(8),
      ADR1 => U_datamemory_data_memory_5(8),
      ADR2 => U_datamemory_data_memory_7(8),
      ADR3 => U_datamemory_data_memory_6(8),
      ADR4 => U_ALU_Mmux_result111642,
      ADR5 => U_ALU_Mmux_result111842,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_529_6254
    );
  U_datamemory_data_memory_9_11 : X_FF
    generic map(
      LOC => "SLICE_X21Y19",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0157_inv1_cepot_7699,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_9_11_dpot_6389,
      O => U_datamemory_data_memory_9(11),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_9_11_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y19",
      INIT => X"FF00BF80FF00FF00"
    )
    port map (
      ADR0 => read_data2_11_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112248,
      ADR3 => U_datamemory_data_memory_9(11),
      ADR4 => U_ALU_Mmux_result1120410,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_9_11_dpot_6389
    );
  U_datamemory_data_memory_9_10 : X_FF
    generic map(
      LOC => "SLICE_X21Y19",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0157_inv1_cepot_7699,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_9_10_dpot_6408,
      O => U_datamemory_data_memory_9(10),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_9_10_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y19",
      INIT => X"FF00BF80FF00FF00"
    )
    port map (
      ADR0 => read_data2_10_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112248,
      ADR3 => U_datamemory_data_memory_9(10),
      ADR4 => U_ALU_Mmux_result1120410,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_9_10_dpot_6408
    );
  U_datamemory_data_memory_9_9 : X_FF
    generic map(
      LOC => "SLICE_X21Y19",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0157_inv1_cepot_7699,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_9_9_dpot_6393,
      O => U_datamemory_data_memory_9(9),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_9_9_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y19",
      INIT => X"FF00BF80FF00FF00"
    )
    port map (
      ADR0 => read_data2_9_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112248,
      ADR3 => U_datamemory_data_memory_9(9),
      ADR4 => U_ALU_Mmux_result1120410,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_9_9_dpot_6393
    );
  U_datamemory_data_memory_9_8 : X_FF
    generic map(
      LOC => "SLICE_X21Y19",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0157_inv1_cepot_7699,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_9_8_dpot_6410,
      O => U_datamemory_data_memory_9(8),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_9_8_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y19",
      INIT => X"FF00BF80FF00FF00"
    )
    port map (
      ADR0 => read_data2_8_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112248,
      ADR3 => U_datamemory_data_memory_9(8),
      ADR4 => U_ALU_Mmux_result1120410,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_9_8_dpot_6410
    );
  U_datamemory_data_memory_14_14 : X_FF
    generic map(
      LOC => "SLICE_X20Y26",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0177_inv1_cepot_7707,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_14_14_dpot_6293,
      O => U_datamemory_data_memory_14(14),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_14_14_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X20Y26",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2(14),
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result1122411,
      ADR3 => U_datamemory_data_memory_14(14),
      ADR4 => U_ALU_Mmux_result112041,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_14_14_dpot_6293
    );
  U_datamemory_data_memory_14_13 : X_FF
    generic map(
      LOC => "SLICE_X20Y26",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0177_inv1_cepot_7707,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_14_13_dpot_6310,
      O => U_datamemory_data_memory_14(13),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_14_13_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X20Y26",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_13_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result1122411,
      ADR3 => U_datamemory_data_memory_14(13),
      ADR4 => U_ALU_Mmux_result112041,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_14_13_dpot_6310
    );
  U_datamemory_data_memory_14_12 : X_FF
    generic map(
      LOC => "SLICE_X20Y26",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0177_inv1_cepot_7707,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_14_12_dpot_6308,
      O => U_datamemory_data_memory_14(12),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_14_12_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X20Y26",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_12_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result1122411,
      ADR3 => U_datamemory_data_memory_14(12),
      ADR4 => U_ALU_Mmux_result112041,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_14_12_dpot_6308
    );
  U_datamemory_data_memory_14_11 : X_FF
    generic map(
      LOC => "SLICE_X20Y26",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0177_inv1_cepot_7707,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_14_11_dpot_6314,
      O => U_datamemory_data_memory_14(11),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_14_11_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X20Y26",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_11_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result1122411,
      ADR3 => U_datamemory_data_memory_14(11),
      ADR4 => U_ALU_Mmux_result112041,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_14_11_dpot_6314
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f73_U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f73_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f73,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f73_0
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f7_2 : X_MUX2
    generic map(
      LOC => "SLICE_X20Y29"
    )
    port map (
      IA => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_63_6336,
      IB => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_57_6341,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f73,
      SEL => U_ALU_Mmux_result11204_11_7297
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_63 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y29",
      INIT => X"F0F0CCCCFF00AAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_0(12),
      ADR1 => U_datamemory_data_memory_1(12),
      ADR2 => U_datamemory_data_memory_3(12),
      ADR3 => U_datamemory_data_memory_2(12),
      ADR4 => U_ALU_Mmux_result11184_2_7302,
      ADR5 => U_ALU_Mmux_result111641,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_63_6336
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_57 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y29",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_4(12),
      ADR1 => U_datamemory_data_memory_5(12),
      ADR2 => U_datamemory_data_memory_7(12),
      ADR3 => U_datamemory_data_memory_6(12),
      ADR4 => U_ALU_Mmux_result111642,
      ADR5 => U_ALU_Mmux_result111842,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_57_6341
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f72_U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f72_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f72,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f72_0
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f7_1 : X_MUX2
    generic map(
      LOC => "SLICE_X20Y23"
    )
    port map (
      IA => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_62_6269,
      IB => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_55_6274,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f72,
      SEL => U_ALU_Mmux_result11204_11_7297
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_62 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y23",
      INIT => X"F0F0CCCCFF00AAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_0(11),
      ADR1 => U_datamemory_data_memory_1(11),
      ADR2 => U_datamemory_data_memory_3(11),
      ADR3 => U_datamemory_data_memory_2(11),
      ADR4 => U_ALU_Mmux_result11184_2_7302,
      ADR5 => U_ALU_Mmux_result111641,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_62_6269
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_55 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y23",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_4(11),
      ADR1 => U_datamemory_data_memory_5(11),
      ADR2 => U_datamemory_data_memory_7(11),
      ADR3 => U_datamemory_data_memory_6(11),
      ADR4 => U_ALU_Mmux_result111642,
      ADR5 => U_ALU_Mmux_result111842,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_55_6274
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f74_U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f74_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f74,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f74_0
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f7_3 : X_MUX2
    generic map(
      LOC => "SLICE_X20Y27"
    )
    port map (
      IA => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_58_6319,
      IB => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_44_6321,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f74,
      SEL => U_ALU_Mmux_result11204_7247
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_58 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y27",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_8(13),
      ADR1 => U_datamemory_data_memory_9(13),
      ADR2 => U_datamemory_data_memory_11(13),
      ADR3 => U_datamemory_data_memory_10(13),
      ADR4 => U_ALU_Mmux_result11164_7229,
      ADR5 => U_ALU_Mmux_result11184_7230,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_58_6319
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_44 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y27",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_12(13),
      ADR1 => U_datamemory_data_memory_13(13),
      ADR2 => U_datamemory_data_memory_15(13),
      ADR3 => U_datamemory_data_memory_14(13),
      ADR4 => U_ALU_Mmux_result11164_1_7261,
      ADR5 => U_ALU_Mmux_result11184_1_7262,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_44_6321
    );
  U_datamemory_data_memory_11_11 : X_FF
    generic map(
      LOC => "SLICE_X21Y20",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_11_11_dpot_6424,
      O => U_datamemory_data_memory_11(11),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_11_11_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y20",
      INIT => X"FF00BF80FF00FF00"
    )
    port map (
      ADR0 => read_data2_11_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112247,
      ADR3 => U_datamemory_data_memory_11(11),
      ADR4 => U_ALU_Mmux_result112049,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_11_11_dpot_6424
    );
  U_datamemory_data_memory_11_10 : X_FF
    generic map(
      LOC => "SLICE_X21Y20",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_11_10_dpot_6443,
      O => U_datamemory_data_memory_11(10),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_11_10_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y20",
      INIT => X"FF00BF80FF00FF00"
    )
    port map (
      ADR0 => read_data2_10_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112247,
      ADR3 => U_datamemory_data_memory_11(10),
      ADR4 => U_ALU_Mmux_result112049,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_11_10_dpot_6443
    );
  U_datamemory_data_memory_11_9 : X_FF
    generic map(
      LOC => "SLICE_X21Y20",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_11_9_dpot_6428,
      O => U_datamemory_data_memory_11(9),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_11_9_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y20",
      INIT => X"FF00BF80FF00FF00"
    )
    port map (
      ADR0 => read_data2_9_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112247,
      ADR3 => U_datamemory_data_memory_11(9),
      ADR4 => U_ALU_Mmux_result112049,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_11_9_dpot_6428
    );
  U_datamemory_data_memory_11_8 : X_FF
    generic map(
      LOC => "SLICE_X21Y20",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_11_8_dpot_6445,
      O => U_datamemory_data_memory_11(8),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_11_8_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y20",
      INIT => X"FF00BF80FF00FF00"
    )
    port map (
      ADR0 => read_data2_8_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112247,
      ADR3 => U_datamemory_data_memory_11(8),
      ADR4 => U_ALU_Mmux_result112049,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_11_8_dpot_6445
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f71_U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f71_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f71,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f71_0
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f7_0 : X_MUX2
    generic map(
      LOC => "SLICE_X20Y21"
    )
    port map (
      IA => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_61_6237,
      IB => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_53_6242,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f71,
      SEL => U_ALU_Mmux_result11204_11_7297
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_61 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y21",
      INIT => X"F0F0CCCCFF00AAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_0(10),
      ADR1 => U_datamemory_data_memory_1(10),
      ADR2 => U_datamemory_data_memory_3(10),
      ADR3 => U_datamemory_data_memory_2(10),
      ADR4 => U_ALU_Mmux_result111841,
      ADR5 => U_ALU_Mmux_result111641,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_61_6237
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_53 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y21",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_4(10),
      ADR1 => U_datamemory_data_memory_5(10),
      ADR2 => U_datamemory_data_memory_7(10),
      ADR3 => U_datamemory_data_memory_6(10),
      ADR4 => U_ALU_Mmux_result111642,
      ADR5 => U_ALU_Mmux_result111842,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_53_6242
    );
  U_datamemory_data_memory_0_11 : X_FF
    generic map(
      LOC => "SLICE_X21Y21",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0185_inv1_cepot_7672,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_0_11_dpot_6470,
      O => U_datamemory_data_memory_0(11),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_0_11_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y21",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2_11_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112241,
      ADR3 => U_datamemory_data_memory_0(11),
      ADR4 => ALU_RESULT_1_Q,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_0_11_dpot_6470
    );
  U_datamemory_data_memory_0_10 : X_FF
    generic map(
      LOC => "SLICE_X21Y21",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0185_inv1_cepot_7672,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_0_10_dpot_6469,
      O => U_datamemory_data_memory_0(10),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_0_10_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y21",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2_10_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112241,
      ADR3 => U_datamemory_data_memory_0(10),
      ADR4 => ALU_RESULT_1_Q,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_0_10_dpot_6469
    );
  U_datamemory_data_memory_0_9 : X_FF
    generic map(
      LOC => "SLICE_X21Y21",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0185_inv1_cepot_7672,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_0_9_dpot_6472,
      O => U_datamemory_data_memory_0(9),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_0_9_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y21",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2_9_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112241,
      ADR3 => U_datamemory_data_memory_0(9),
      ADR4 => ALU_RESULT_1_Q,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_0_9_dpot_6472
    );
  U_datamemory_data_memory_0_8 : X_FF
    generic map(
      LOC => "SLICE_X21Y21",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0185_inv1_cepot_7672,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_0_8_dpot_6481,
      O => U_datamemory_data_memory_0(8),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_0_8_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y21",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2_8_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112241,
      ADR3 => U_datamemory_data_memory_0(8),
      ADR4 => ALU_RESULT_1_Q,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_0_8_dpot_6481
    );
  U_datamemory_data_memory_10_15 : X_FF
    generic map(
      LOC => "SLICE_X21Y25",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_10_15_dpot_6573,
      O => U_datamemory_data_memory_10(15),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_10_15_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y25",
      INIT => X"FF00FF00FF00BF80"
    )
    port map (
      ADR0 => read_data2(15),
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112244,
      ADR3 => U_datamemory_data_memory_10(15),
      ADR4 => U_ALU_Mmux_result112045,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_10_15_dpot_6573
    );
  U_datamemory_data_memory_10_14 : X_FF
    generic map(
      LOC => "SLICE_X21Y25",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_10_14_dpot_6566,
      O => U_datamemory_data_memory_10(14),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_10_14_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y25",
      INIT => X"FF00FF00FF00BF80"
    )
    port map (
      ADR0 => read_data2(14),
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112244,
      ADR3 => U_datamemory_data_memory_10(14),
      ADR4 => U_ALU_Mmux_result112045,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_10_14_dpot_6566
    );
  U_datamemory_data_memory_10_13 : X_FF
    generic map(
      LOC => "SLICE_X21Y25",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_10_13_dpot_6583,
      O => U_datamemory_data_memory_10(13),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_10_13_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y25",
      INIT => X"FF00FF00FF00BF80"
    )
    port map (
      ADR0 => read_data2_13_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112244,
      ADR3 => U_datamemory_data_memory_10(13),
      ADR4 => U_ALU_Mmux_result112045,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_10_13_dpot_6583
    );
  U_datamemory_data_memory_10_12 : X_FF
    generic map(
      LOC => "SLICE_X21Y25",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_10_12_dpot_6586,
      O => U_datamemory_data_memory_10(12),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_10_12_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y25",
      INIT => X"FF00FF00FF00BF80"
    )
    port map (
      ADR0 => read_data2_12_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112244,
      ADR3 => U_datamemory_data_memory_10(12),
      ADR4 => U_ALU_Mmux_result112045,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_10_12_dpot_6586
    );
  U_datamemory_data_memory_13_11 : X_FF
    generic map(
      LOC => "SLICE_X22Y19",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0173_inv1_cepot_7705,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_13_11_dpot_6710,
      O => U_datamemory_data_memory_13(11),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_13_11_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X22Y19",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_11_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112243,
      ADR3 => U_datamemory_data_memory_13(11),
      ADR4 => U_ALU_Mmux_result112044,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_13_11_dpot_6710
    );
  U_datamemory_data_memory_13_10 : X_FF
    generic map(
      LOC => "SLICE_X22Y19",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0173_inv1_cepot_7705,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_13_10_dpot_6727,
      O => U_datamemory_data_memory_13(10),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_13_10_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X22Y19",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_10_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112243,
      ADR3 => U_datamemory_data_memory_13(10),
      ADR4 => U_ALU_Mmux_result112044,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_13_10_dpot_6727
    );
  U_datamemory_data_memory_13_9 : X_FF
    generic map(
      LOC => "SLICE_X22Y19",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0173_inv1_cepot_7705,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_13_9_dpot_6725,
      O => U_datamemory_data_memory_13(9),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_13_9_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X22Y19",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_9_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112243,
      ADR3 => U_datamemory_data_memory_13(9),
      ADR4 => U_ALU_Mmux_result112044,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_13_9_dpot_6725
    );
  U_datamemory_data_memory_13_8 : X_FF
    generic map(
      LOC => "SLICE_X22Y19",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0173_inv1_cepot_7705,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_13_8_dpot_6731,
      O => U_datamemory_data_memory_13(8),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_13_8_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X22Y19",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_8_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112243,
      ADR3 => U_datamemory_data_memory_13(8),
      ADR4 => U_ALU_Mmux_result112044,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_13_8_dpot_6731
    );
  U_datamemory_data_memory_6_15 : X_FF
    generic map(
      LOC => "SLICE_X21Y29",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_6_15_dpot_6668,
      O => U_datamemory_data_memory_6(15),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_6_15_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y29",
      INIT => X"FF00FF00FB08FF00"
    )
    port map (
      ADR0 => read_data2(15),
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112244,
      ADR3 => U_datamemory_data_memory_6(15),
      ADR4 => U_ALU_Mmux_result112046,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_6_15_dpot_6668
    );
  U_datamemory_data_memory_6_14 : X_FF
    generic map(
      LOC => "SLICE_X21Y29",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_6_14_dpot_6688,
      O => U_datamemory_data_memory_6(14),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_6_14_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y29",
      INIT => X"FF00FF00FB08FF00"
    )
    port map (
      ADR0 => read_data2(14),
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112244,
      ADR3 => U_datamemory_data_memory_6(14),
      ADR4 => U_ALU_Mmux_result112046,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_6_14_dpot_6688
    );
  U_datamemory_data_memory_6_13 : X_FF
    generic map(
      LOC => "SLICE_X21Y29",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_6_13_dpot_6670,
      O => U_datamemory_data_memory_6(13),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_6_13_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y29",
      INIT => X"FF00FF00FB08FF00"
    )
    port map (
      ADR0 => read_data2_13_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112244,
      ADR3 => U_datamemory_data_memory_6(13),
      ADR4 => U_ALU_Mmux_result112046,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_6_13_dpot_6670
    );
  U_datamemory_data_memory_6_12 : X_FF
    generic map(
      LOC => "SLICE_X21Y29",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_6_12_dpot_6689,
      O => U_datamemory_data_memory_6(12),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_6_12_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y29",
      INIT => X"FF00FF00FB08FF00"
    )
    port map (
      ADR0 => read_data2_12_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112244,
      ADR3 => U_datamemory_data_memory_6(12),
      ADR4 => U_ALU_Mmux_result112046,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_6_12_dpot_6689
    );
  U_datamemory_data_memory_12_14 : X_FF
    generic map(
      LOC => "SLICE_X21Y27",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0169_inv1_cepot_7704,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_12_14_dpot_6651,
      O => U_datamemory_data_memory_12(14),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_12_14_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y27",
      INIT => X"FF00FF00BF80FF00"
    )
    port map (
      ADR0 => read_data2(14),
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112242,
      ADR3 => U_datamemory_data_memory_12(14),
      ADR4 => U_ALU_Mmux_result112043,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_12_14_dpot_6651
    );
  U_datamemory_data_memory_12_13 : X_FF
    generic map(
      LOC => "SLICE_X21Y27",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0169_inv1_cepot_7704,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_12_13_dpot_6633,
      O => U_datamemory_data_memory_12(13),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_12_13_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y27",
      INIT => X"FF00FF00BF80FF00"
    )
    port map (
      ADR0 => read_data2_13_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112242,
      ADR3 => U_datamemory_data_memory_12(13),
      ADR4 => U_ALU_Mmux_result112043,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_12_13_dpot_6633
    );
  U_datamemory_data_memory_12_12 : X_FF
    generic map(
      LOC => "SLICE_X21Y27",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0169_inv1_cepot_7704,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_12_12_dpot_6639,
      O => U_datamemory_data_memory_12(12),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_12_12_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y27",
      INIT => X"FF00FF00BF80FF00"
    )
    port map (
      ADR0 => read_data2_12_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112241,
      ADR3 => U_datamemory_data_memory_12(12),
      ADR4 => U_ALU_Mmux_result112043,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_12_12_dpot_6639
    );
  U_datamemory_data_memory_12_11 : X_FF
    generic map(
      LOC => "SLICE_X21Y27",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0169_inv1_cepot_7704,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_12_11_dpot_6662,
      O => U_datamemory_data_memory_12(11),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_12_11_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y27",
      INIT => X"FF00FF00BF80FF00"
    )
    port map (
      ADR0 => read_data2_11_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112241,
      ADR3 => U_datamemory_data_memory_12(11),
      ADR4 => U_ALU_Mmux_result112042,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_12_11_dpot_6662
    );
  U_datamemory_data_memory_5_11 : X_FF
    generic map(
      LOC => "SLICE_X21Y22",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0141_inv1_cepot_7689,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_5_11_dpot_6510,
      O => U_datamemory_data_memory_5(11),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_5_11_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y22",
      INIT => X"FB08FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_11_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result1122410,
      ADR3 => U_datamemory_data_memory_5(11),
      ADR4 => U_ALU_Mmux_result1120412,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_5_11_dpot_6510
    );
  U_datamemory_data_memory_5_10 : X_FF
    generic map(
      LOC => "SLICE_X21Y22",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0141_inv1_cepot_7689,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_5_10_dpot_6507,
      O => U_datamemory_data_memory_5(10),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_5_10_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y22",
      INIT => X"FB08FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_10_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result1122410,
      ADR3 => U_datamemory_data_memory_5(10),
      ADR4 => U_ALU_Mmux_result1120412,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_5_10_dpot_6507
    );
  U_datamemory_data_memory_5_9 : X_FF
    generic map(
      LOC => "SLICE_X21Y22",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0141_inv1_cepot_7689,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_5_9_dpot_6493,
      O => U_datamemory_data_memory_5(9),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_5_9_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y22",
      INIT => X"FB08FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_9_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result1122410,
      ADR3 => U_datamemory_data_memory_5(9),
      ADR4 => U_ALU_Mmux_result1120412,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_5_9_dpot_6493
    );
  U_datamemory_data_memory_5_8 : X_FF
    generic map(
      LOC => "SLICE_X21Y22",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0141_inv1_cepot_7689,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_5_8_dpot_6518,
      O => U_datamemory_data_memory_5(8),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_5_8_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y22",
      INIT => X"FB08FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_8_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result1122410,
      ADR3 => U_datamemory_data_memory_5(8),
      ADR4 => U_ALU_Mmux_result1120412,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_5_8_dpot_6518
    );
  U_datamemory_data_memory_4_11 : X_FF
    generic map(
      LOC => "SLICE_X21Y23",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0137_inv1_cepot_7685,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_4_11_dpot_6528,
      O => U_datamemory_data_memory_4(11),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_4_11_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y23",
      INIT => X"FF00FF00FB08FF00"
    )
    port map (
      ADR0 => read_data2_11_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112248,
      ADR3 => U_datamemory_data_memory_4(11),
      ADR4 => U_ALU_Mmux_result1120410,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_4_11_dpot_6528
    );
  U_datamemory_data_memory_4_10 : X_FF
    generic map(
      LOC => "SLICE_X21Y23",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0137_inv1_cepot_7685,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_4_10_dpot_6548,
      O => U_datamemory_data_memory_4(10),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_4_10_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y23",
      INIT => X"FF00FF00FB08FF00"
    )
    port map (
      ADR0 => read_data2_10_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112248,
      ADR3 => U_datamemory_data_memory_4(10),
      ADR4 => U_ALU_Mmux_result1120410,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_4_10_dpot_6548
    );
  U_datamemory_data_memory_4_9 : X_FF
    generic map(
      LOC => "SLICE_X21Y23",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0137_inv1_cepot_7685,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_4_9_dpot_6530,
      O => U_datamemory_data_memory_4(9),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_4_9_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y23",
      INIT => X"FF00FF00FB08FF00"
    )
    port map (
      ADR0 => read_data2_9_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112248,
      ADR3 => U_datamemory_data_memory_4(9),
      ADR4 => U_ALU_Mmux_result1120410,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_4_9_dpot_6530
    );
  U_datamemory_data_memory_4_8 : X_FF
    generic map(
      LOC => "SLICE_X21Y23",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0137_inv1_cepot_7685,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_4_8_dpot_6549,
      O => U_datamemory_data_memory_4(8),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_4_8_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y23",
      INIT => X"FF00FF00FB08FF00"
    )
    port map (
      ADR0 => read_data2_8_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112248,
      ADR3 => U_datamemory_data_memory_4(8),
      ADR4 => U_ALU_Mmux_result1120410,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_4_8_dpot_6549
    );
  U_datamemory_data_memory_8_15 : X_FF
    generic map(
      LOC => "SLICE_X21Y26",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0153_inv1_cepot_7697,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_8_15_dpot_6608,
      O => U_datamemory_data_memory_8(15),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_8_15_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y26",
      INIT => X"FF00FF00FF00BF80"
    )
    port map (
      ADR0 => read_data2(15),
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112246,
      ADR3 => U_datamemory_data_memory_8(15),
      ADR4 => U_ALU_Mmux_result112047,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_8_15_dpot_6608
    );
  U_datamemory_data_memory_8_14 : X_FF
    generic map(
      LOC => "SLICE_X21Y26",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0153_inv1_cepot_7697,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_8_14_dpot_6601,
      O => U_datamemory_data_memory_8(14),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_8_14_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y26",
      INIT => X"FF00FF00FF00BF80"
    )
    port map (
      ADR0 => read_data2(14),
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112246,
      ADR3 => U_datamemory_data_memory_8(14),
      ADR4 => U_ALU_Mmux_result112047,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_8_14_dpot_6601
    );
  U_datamemory_data_memory_8_13 : X_FF
    generic map(
      LOC => "SLICE_X21Y26",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0153_inv1_cepot_7697,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_8_13_dpot_6618,
      O => U_datamemory_data_memory_8(13),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_8_13_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y26",
      INIT => X"FF00FF00FF00BF80"
    )
    port map (
      ADR0 => read_data2_13_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112246,
      ADR3 => U_datamemory_data_memory_8(13),
      ADR4 => U_ALU_Mmux_result112047,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_8_13_dpot_6618
    );
  U_datamemory_data_memory_8_12 : X_FF
    generic map(
      LOC => "SLICE_X21Y26",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0153_inv1_cepot_7697,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_8_12_dpot_6621,
      O => U_datamemory_data_memory_8(12),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_8_12_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y26",
      INIT => X"FF00FF00FF00BF80"
    )
    port map (
      ADR0 => read_data2_12_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112246,
      ADR3 => U_datamemory_data_memory_8(12),
      ADR4 => U_ALU_Mmux_result112047,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_8_12_dpot_6621
    );
  U_datamemory_data_memory_1_11 : X_FF
    generic map(
      LOC => "SLICE_X23Y22",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_1_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_1_11_dpot_6922,
      O => U_datamemory_data_memory_1(11),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_1_11_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y22",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2_11_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result1122412,
      ADR3 => U_datamemory_data_memory_1(11),
      ADR4 => U_ALU_Mmux_result112042,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_1_11_dpot_6922
    );
  U_datamemory_data_memory_1_10 : X_FF
    generic map(
      LOC => "SLICE_X23Y22",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_1_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_1_10_dpot_6921,
      O => U_datamemory_data_memory_1(10),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_1_10_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y22",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2_10_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result1122412,
      ADR3 => U_datamemory_data_memory_1(10),
      ADR4 => U_ALU_Mmux_result112042,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_1_10_dpot_6921
    );
  U_datamemory_data_memory_1_9 : X_FF
    generic map(
      LOC => "SLICE_X23Y22",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_1_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_1_9_dpot_6924,
      O => U_datamemory_data_memory_1(9),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_1_9_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y22",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2_9_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result1122412,
      ADR3 => U_datamemory_data_memory_1(9),
      ADR4 => U_ALU_Mmux_result112042,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_1_9_dpot_6924
    );
  U_datamemory_data_memory_1_8 : X_FF
    generic map(
      LOC => "SLICE_X23Y22",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_1_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_1_8_dpot_6933,
      O => U_datamemory_data_memory_1(8),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_1_8_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y22",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2_8_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result1122412,
      ADR3 => U_datamemory_data_memory_1(8),
      ADR4 => U_ALU_Mmux_result112042,
      ADR5 => ALU_RESULT_2_Q,
      O => U_datamemory_data_memory_1_8_dpot_6933
    );
  U_datamemory_data_memory_13_15 : X_FF
    generic map(
      LOC => "SLICE_X23Y26",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0173_inv1_cepot_7705,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_13_15_dpot_6952,
      O => U_datamemory_data_memory_13(15),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_13_15_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y26",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2(15),
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112243,
      ADR3 => U_datamemory_data_memory_13(15),
      ADR4 => U_ALU_Mmux_result112044,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_13_15_dpot_6952
    );
  U_datamemory_data_memory_13_14 : X_FF
    generic map(
      LOC => "SLICE_X23Y26",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0173_inv1_cepot_7705,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_13_14_dpot_6969,
      O => U_datamemory_data_memory_13(14),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_13_14_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y26",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2(14),
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112243,
      ADR3 => U_datamemory_data_memory_13(14),
      ADR4 => U_ALU_Mmux_result112044,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_13_14_dpot_6969
    );
  U_datamemory_data_memory_13_13 : X_FF
    generic map(
      LOC => "SLICE_X23Y26",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0173_inv1_cepot_7705,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_13_13_dpot_6967,
      O => U_datamemory_data_memory_13(13),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_13_13_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y26",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_13_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112243,
      ADR3 => U_datamemory_data_memory_13(13),
      ADR4 => U_ALU_Mmux_result112044,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_13_13_dpot_6967
    );
  U_datamemory_data_memory_13_12 : X_FF
    generic map(
      LOC => "SLICE_X23Y26",
      INIT => '0'
    )
    port map (
      CE => U_datamemory_n0173_inv1_cepot_7705,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_13_12_dpot_6973,
      O => U_datamemory_data_memory_13(12),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_13_12_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y26",
      INIT => X"BF80FF00FF00FF00"
    )
    port map (
      ADR0 => read_data2_12_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112243,
      ADR3 => U_datamemory_data_memory_13(12),
      ADR4 => U_ALU_Mmux_result112044,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_13_12_dpot_6973
    );
  U_datamemory_data_memory_2_11 : X_FF
    generic map(
      LOC => "SLICE_X22Y23",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_2_11_dpot_6801,
      O => U_datamemory_data_memory_2(11),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_2_11_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X22Y23",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2_11_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112245,
      ADR3 => U_datamemory_data_memory_2(11),
      ADR4 => U_ALU_Mmux_result112046,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_2_11_dpot_6801
    );
  U_datamemory_data_memory_2_10 : X_FF
    generic map(
      LOC => "SLICE_X22Y23",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_2_10_dpot_6800,
      O => U_datamemory_data_memory_2(10),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_2_10_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X22Y23",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2_10_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112245,
      ADR3 => U_datamemory_data_memory_2(10),
      ADR4 => U_ALU_Mmux_result112046,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_2_10_dpot_6800
    );
  U_datamemory_data_memory_2_9 : X_FF
    generic map(
      LOC => "SLICE_X22Y23",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_2_9_dpot_6803,
      O => U_datamemory_data_memory_2(9),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_2_9_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X22Y23",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2_9_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112245,
      ADR3 => U_datamemory_data_memory_2(9),
      ADR4 => U_ALU_Mmux_result112046,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_2_9_dpot_6803
    );
  U_datamemory_data_memory_2_8 : X_FF
    generic map(
      LOC => "SLICE_X22Y23",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_2_8_dpot_6812,
      O => U_datamemory_data_memory_2(8),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_2_8_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X22Y23",
      INIT => X"FF00FF00FF00FB08"
    )
    port map (
      ADR0 => read_data2_8_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112245,
      ADR3 => U_datamemory_data_memory_2(8),
      ADR4 => U_ALU_Mmux_result112046,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_2_8_dpot_6812
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f715_U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f715_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f715,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f715_0
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f7_14 : X_MUX2
    generic map(
      LOC => "SLICE_X22Y21"
    )
    port map (
      IA => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_615_6736,
      IB => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_531_6738,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_4_f715,
      SEL => U_ALU_Mmux_result11204_11_7297
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_615 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y21",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_0(9),
      ADR1 => U_datamemory_data_memory_1(9),
      ADR2 => U_datamemory_data_memory_3(9),
      ADR3 => U_datamemory_data_memory_2(9),
      ADR4 => U_ALU_Mmux_result111642,
      ADR5 => U_ALU_Mmux_result111842,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_615_6736
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_531 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y21",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_4(9),
      ADR1 => U_datamemory_data_memory_5(9),
      ADR2 => U_datamemory_data_memory_7(9),
      ADR3 => U_datamemory_data_memory_6(9),
      ADR4 => U_ALU_Mmux_result111642,
      ADR5 => U_ALU_Mmux_result111842,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_531_6738
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f73_U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f73_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f73,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f73_0
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f7_2 : X_MUX2
    generic map(
      LOC => "SLICE_X22Y27"
    )
    port map (
      IA => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_56_6857,
      IB => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_43_6859,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_3_f73,
      SEL => U_ALU_Mmux_result11204_7247
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_56 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y27",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_8(12),
      ADR1 => U_datamemory_data_memory_9(12),
      ADR2 => U_datamemory_data_memory_11(12),
      ADR3 => U_datamemory_data_memory_10(12),
      ADR4 => U_ALU_Mmux_result11164_7229,
      ADR5 => U_ALU_Mmux_result11184_7230,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_56_6857
    );
  U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_43 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y27",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => U_datamemory_data_memory_12(12),
      ADR1 => U_datamemory_data_memory_13(12),
      ADR2 => U_datamemory_data_memory_15(12),
      ADR3 => U_datamemory_data_memory_14(12),
      ADR4 => U_ALU_Mmux_result11164_1_7261,
      ADR5 => U_ALU_Mmux_result11184_1_7262,
      O => U_datamemory_Mmux_address_15_data_memory_15_15_wide_mux_51_OUT_43_6859
    );
  U_datamemory_data_memory_6_11 : X_FF
    generic map(
      LOC => "SLICE_X23Y21",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_6_11_dpot_6875,
      O => U_datamemory_data_memory_6(11),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_6_11_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y21",
      INIT => X"FF00FF00FB08FF00"
    )
    port map (
      ADR0 => read_data2_11_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112244,
      ADR3 => U_datamemory_data_memory_6(11),
      ADR4 => U_ALU_Mmux_result112046,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_6_11_dpot_6875
    );
  U_datamemory_data_memory_6_10 : X_FF
    generic map(
      LOC => "SLICE_X23Y21",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_6_10_dpot_6895,
      O => U_datamemory_data_memory_6(10),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_6_10_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y21",
      INIT => X"FF00FF00FB08FF00"
    )
    port map (
      ADR0 => read_data2_10_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112244,
      ADR3 => U_datamemory_data_memory_6(10),
      ADR4 => U_ALU_Mmux_result112046,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_6_10_dpot_6895
    );
  U_datamemory_data_memory_6_9 : X_FF
    generic map(
      LOC => "SLICE_X23Y21",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_6_9_dpot_6877,
      O => U_datamemory_data_memory_6(9),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_6_9_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y21",
      INIT => X"FF00FF00FB08FF00"
    )
    port map (
      ADR0 => read_data2_9_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112244,
      ADR3 => U_datamemory_data_memory_6(9),
      ADR4 => U_ALU_Mmux_result112046,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_6_9_dpot_6877
    );
  U_datamemory_data_memory_6_8 : X_FF
    generic map(
      LOC => "SLICE_X23Y21",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_6_8_dpot_6896,
      O => U_datamemory_data_memory_6(8),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_6_8_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y21",
      INIT => X"FF00FF00FB08FF00"
    )
    port map (
      ADR0 => read_data2_8_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112244,
      ADR3 => U_datamemory_data_memory_6(8),
      ADR4 => U_ALU_Mmux_result112046,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_6_8_dpot_6896
    );
  U_datamemory_data_memory_11_15 : X_FF
    generic map(
      LOC => "SLICE_X22Y26",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_11_15_dpot_6825,
      O => U_datamemory_data_memory_11(15),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_11_15_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X22Y26",
      INIT => X"FF00BF80FF00FF00"
    )
    port map (
      ADR0 => read_data2(15),
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112247,
      ADR3 => U_datamemory_data_memory_11(15),
      ADR4 => U_ALU_Mmux_result112049,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_11_15_dpot_6825
    );
  U_datamemory_data_memory_11_14 : X_FF
    generic map(
      LOC => "SLICE_X22Y26",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_11_14_dpot_6844,
      O => U_datamemory_data_memory_11(14),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_11_14_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X22Y26",
      INIT => X"FF00BF80FF00FF00"
    )
    port map (
      ADR0 => read_data2(14),
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112247,
      ADR3 => U_datamemory_data_memory_11(14),
      ADR4 => U_ALU_Mmux_result112049,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_11_14_dpot_6844
    );
  U_datamemory_data_memory_11_13 : X_FF
    generic map(
      LOC => "SLICE_X22Y26",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_11_13_dpot_6829,
      O => U_datamemory_data_memory_11(13),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_11_13_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X22Y26",
      INIT => X"FF00BF80FF00FF00"
    )
    port map (
      ADR0 => read_data2_13_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112247,
      ADR3 => U_datamemory_data_memory_11(13),
      ADR4 => U_ALU_Mmux_result112049,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_11_13_dpot_6829
    );
  U_datamemory_data_memory_11_12 : X_FF
    generic map(
      LOC => "SLICE_X22Y26",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_11_12_dpot_6846,
      O => U_datamemory_data_memory_11(12),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_11_12_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X22Y26",
      INIT => X"FF00BF80FF00FF00"
    )
    port map (
      ADR0 => read_data2_12_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112247,
      ADR3 => U_datamemory_data_memory_11(12),
      ADR4 => U_ALU_Mmux_result112049,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_11_12_dpot_6846
    );
  U_datamemory_data_memory_3_11 : X_FF
    generic map(
      LOC => "SLICE_X22Y22",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_3_11_dpot_6756,
      O => U_datamemory_data_memory_3(11),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_3_11_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X22Y22",
      INIT => X"FF00FB08FF00FF00"
    )
    port map (
      ADR0 => read_data2_11_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112242,
      ADR3 => U_datamemory_data_memory_3(11),
      ADR4 => U_ALU_Mmux_result112043,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_3_11_dpot_6756
    );
  U_datamemory_data_memory_3_10 : X_FF
    generic map(
      LOC => "SLICE_X22Y22",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_3_10_dpot_6755,
      O => U_datamemory_data_memory_3(10),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_3_10_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X22Y22",
      INIT => X"FF00FB08FF00FF00"
    )
    port map (
      ADR0 => read_data2_10_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112242,
      ADR3 => U_datamemory_data_memory_3(10),
      ADR4 => U_ALU_Mmux_result112043,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_3_10_dpot_6755
    );
  U_datamemory_data_memory_3_9 : X_FF
    generic map(
      LOC => "SLICE_X22Y22",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_3_9_dpot_6765,
      O => U_datamemory_data_memory_3(9),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_3_9_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X22Y22",
      INIT => X"FF00FB08FF00FF00"
    )
    port map (
      ADR0 => read_data2_9_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112242,
      ADR3 => U_datamemory_data_memory_3(9),
      ADR4 => U_ALU_Mmux_result112043,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_3_9_dpot_6765
    );
  U_datamemory_data_memory_3_8 : X_FF
    generic map(
      LOC => "SLICE_X22Y22",
      INIT => '0'
    )
    port map (
      CE => ALU_RESULT_2_Q,
      CLK => clock_BUFGP,
      I => U_datamemory_data_memory_3_8_dpot_6772,
      O => U_datamemory_data_memory_3(8),
      RST => reset_IBUF_0,
      SET => GND
    );
  U_datamemory_data_memory_3_8_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X22Y22",
      INIT => X"FF00FB08FF00FF00"
    )
    port map (
      ADR0 => read_data2_8_0,
      ADR1 => memwrite_sig,
      ADR2 => U_ALU_Mmux_result112242,
      ADR3 => U_datamemory_data_memory_3(8),
      ADR4 => U_ALU_Mmux_result112043,
      ADR5 => ALU_RESULT_1_Q,
      O => U_datamemory_data_memory_3_8_dpot_6772
    );
  NlwBlock_MIPS_design_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_MIPS_design_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

