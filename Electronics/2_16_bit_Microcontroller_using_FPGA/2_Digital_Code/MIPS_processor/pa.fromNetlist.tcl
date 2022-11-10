
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name MIPS_processor -dir "E:/MIPS_final_project_edited/MIPS_final_project/MIPS_processor/planAhead_run_2" -part xc6slx9tqg144-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "E:/MIPS_final_project_edited/MIPS_final_project/MIPS_processor/MIPS_design.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {E:/MIPS_final_project_edited/MIPS_final_project/MIPS_processor} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "MIPS_design.ucf" [current_fileset -constrset]
add_files [list {MIPS_design.ucf}] -fileset [get_property constrset [current_run]]
link_design
