# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xczu7ev-ffvc1156-2-e

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir {D:/Ahmad Abusaif/4th year/2nd Term/3-VLSI/Course Project/FFT32_VLSI/FFT32_VLSI.cache/wt} [current_project]
set_property parent.project_path {D:/Ahmad Abusaif/4th year/2nd Term/3-VLSI/Course Project/FFT32_VLSI/FFT32_VLSI.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part xilinx.com:zcu104:part0:1.1 [current_project]
set_property ip_output_repo {d:/Ahmad Abusaif/4th year/2nd Term/3-VLSI/Course Project/FFT32_VLSI/FFT32_VLSI.cache/ip} [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  {D:/Ahmad Abusaif/4th year/2nd Term/3-VLSI/Course Project/FFT32_VLSI/FFT32_VLSI.srcs/sources_1/new/Complex_Multiplier.v}
  {D:/Ahmad Abusaif/4th year/2nd Term/3-VLSI/Course Project/FFT32_VLSI/FFT32_VLSI.srcs/sources_1/new/DECODER.v}
  {D:/Ahmad Abusaif/4th year/2nd Term/3-VLSI/Course Project/FFT32_VLSI/FFT32_VLSI.srcs/sources_1/new/MAC2_Controlled.v}
  {D:/Ahmad Abusaif/4th year/2nd Term/3-VLSI/Course Project/FFT32_VLSI/FFT32_VLSI.srcs/sources_1/new/MAC_2.v}
  {D:/Ahmad Abusaif/4th year/2nd Term/3-VLSI/Course Project/FFT32_VLSI/FFT32_VLSI.srcs/sources_1/new/MUX_4x1.v}
  {D:/Ahmad Abusaif/4th year/2nd Term/3-VLSI/Course Project/FFT32_VLSI/FFT32_VLSI.srcs/sources_1/new/Register_Bank.v}
  {D:/Ahmad Abusaif/4th year/2nd Term/3-VLSI/Course Project/FFT32_VLSI/FFT32_VLSI.srcs/sources_1/new/Register_file.v}
  {D:/Ahmad Abusaif/4th year/2nd Term/3-VLSI/Course Project/FFT32_VLSI/FFT32_VLSI.srcs/sources_1/new/counter.v}
  {D:/Ahmad Abusaif/4th year/2nd Term/3-VLSI/Course Project/FFT32_VLSI/FFT32_VLSI.srcs/sources_1/new/TOP.v}
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc {{D:/Ahmad Abusaif/4th year/2nd Term/3-VLSI/Course Project/FFT32_VLSI/FFT32_VLSI.srcs/constrs_1/new/Constraints.xdc}}
set_property used_in_implementation false [get_files {{D:/Ahmad Abusaif/4th year/2nd Term/3-VLSI/Course Project/FFT32_VLSI/FFT32_VLSI.srcs/constrs_1/new/Constraints.xdc}}]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top TOP -part xczu7ev-ffvc1156-2-e


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef TOP.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file TOP_utilization_synth.rpt -pb TOP_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
