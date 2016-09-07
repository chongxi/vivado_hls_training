proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  set_param simulator.questaInstallPath C:/questasim64_10.4b/win64
  create_project -in_memory -part xc7k325tffg900-2
  set_property board_part xilinx.com:kc705:part0:1.3 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir C:/training/hls/labs/hlx_flow/KC705/fir/system.cache/wt [current_project]
  set_property parent.project_path C:/training/hls/labs/hlx_flow/KC705/fir/system.xpr [current_project]
  set_property ip_repo_paths {
  c:/training/hls/labs/hlx_flow/KC705/fir/system.cache/ip
  C:/training/hls/labs/hlx_flow/KC705/fir/fir_prj/solution1/impl/ip
} [current_project]
  set_property ip_output_repo c:/training/hls/labs/hlx_flow/KC705/fir/system.cache/ip [current_project]
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  add_files -quiet C:/training/hls/labs/hlx_flow/KC705/fir/system.runs/synth_1/microblaze_design_wrapper.dcp
  add_files C:/training/hls/labs/hlx_flow/KC705/fir/system.srcs/sources_1/bd/microblaze_design/microblaze_design.bmm
  set_property SCOPED_TO_REF microblaze_design [get_files -all C:/training/hls/labs/hlx_flow/KC705/fir/system.srcs/sources_1/bd/microblaze_design/microblaze_design.bmm]
  add_files c:/training/hls/labs/hlx_flow/KC705/fir/system.srcs/sources_1/bd/microblaze_design/ip/microblaze_design_microblaze_0_0/data/mb_bootloop_le.elf
  set_property SCOPED_TO_REF microblaze_design [get_files -all c:/training/hls/labs/hlx_flow/KC705/fir/system.srcs/sources_1/bd/microblaze_design/ip/microblaze_design_microblaze_0_0/data/mb_bootloop_le.elf]
  set_property SCOPED_TO_CELLS microblaze_0 [get_files -all c:/training/hls/labs/hlx_flow/KC705/fir/system.srcs/sources_1/bd/microblaze_design/ip/microblaze_design_microblaze_0_0/data/mb_bootloop_le.elf]
  read_xdc -ref microblaze_design_microblaze_0_0 -cells U0 c:/training/hls/labs/hlx_flow/KC705/fir/system.srcs/sources_1/bd/microblaze_design/ip/microblaze_design_microblaze_0_0/microblaze_design_microblaze_0_0.xdc
  set_property processing_order EARLY [get_files c:/training/hls/labs/hlx_flow/KC705/fir/system.srcs/sources_1/bd/microblaze_design/ip/microblaze_design_microblaze_0_0/microblaze_design_microblaze_0_0.xdc]
  read_xdc -ref microblaze_design_dlmb_v10_0 -cells U0 c:/training/hls/labs/hlx_flow/KC705/fir/system.srcs/sources_1/bd/microblaze_design/ip/microblaze_design_dlmb_v10_0/microblaze_design_dlmb_v10_0.xdc
  set_property processing_order EARLY [get_files c:/training/hls/labs/hlx_flow/KC705/fir/system.srcs/sources_1/bd/microblaze_design/ip/microblaze_design_dlmb_v10_0/microblaze_design_dlmb_v10_0.xdc]
  read_xdc -ref microblaze_design_ilmb_v10_0 -cells U0 c:/training/hls/labs/hlx_flow/KC705/fir/system.srcs/sources_1/bd/microblaze_design/ip/microblaze_design_ilmb_v10_0/microblaze_design_ilmb_v10_0.xdc
  set_property processing_order EARLY [get_files c:/training/hls/labs/hlx_flow/KC705/fir/system.srcs/sources_1/bd/microblaze_design/ip/microblaze_design_ilmb_v10_0/microblaze_design_ilmb_v10_0.xdc]
  read_xdc -ref microblaze_design_microblaze_0_axi_intc_0 -cells U0 c:/training/hls/labs/hlx_flow/KC705/fir/system.srcs/sources_1/bd/microblaze_design/ip/microblaze_design_microblaze_0_axi_intc_0/microblaze_design_microblaze_0_axi_intc_0.xdc
  set_property processing_order EARLY [get_files c:/training/hls/labs/hlx_flow/KC705/fir/system.srcs/sources_1/bd/microblaze_design/ip/microblaze_design_microblaze_0_axi_intc_0/microblaze_design_microblaze_0_axi_intc_0.xdc]
  read_xdc -ref microblaze_design_mdm_1_0 -cells U0 c:/training/hls/labs/hlx_flow/KC705/fir/system.srcs/sources_1/bd/microblaze_design/ip/microblaze_design_mdm_1_0/microblaze_design_mdm_1_0.xdc
  set_property processing_order EARLY [get_files c:/training/hls/labs/hlx_flow/KC705/fir/system.srcs/sources_1/bd/microblaze_design/ip/microblaze_design_mdm_1_0/microblaze_design_mdm_1_0.xdc]
  read_xdc -prop_thru_buffers -ref microblaze_design_clk_wiz_1_0 -cells inst c:/training/hls/labs/hlx_flow/KC705/fir/system.srcs/sources_1/bd/microblaze_design/ip/microblaze_design_clk_wiz_1_0/microblaze_design_clk_wiz_1_0_board.xdc
  set_property processing_order EARLY [get_files c:/training/hls/labs/hlx_flow/KC705/fir/system.srcs/sources_1/bd/microblaze_design/ip/microblaze_design_clk_wiz_1_0/microblaze_design_clk_wiz_1_0_board.xdc]
  read_xdc -ref microblaze_design_clk_wiz_1_0 -cells inst c:/training/hls/labs/hlx_flow/KC705/fir/system.srcs/sources_1/bd/microblaze_design/ip/microblaze_design_clk_wiz_1_0/microblaze_design_clk_wiz_1_0.xdc
  set_property processing_order EARLY [get_files c:/training/hls/labs/hlx_flow/KC705/fir/system.srcs/sources_1/bd/microblaze_design/ip/microblaze_design_clk_wiz_1_0/microblaze_design_clk_wiz_1_0.xdc]
  read_xdc -prop_thru_buffers -ref microblaze_design_rst_clk_wiz_1_100M_0 -cells U0 c:/training/hls/labs/hlx_flow/KC705/fir/system.srcs/sources_1/bd/microblaze_design/ip/microblaze_design_rst_clk_wiz_1_100M_0/microblaze_design_rst_clk_wiz_1_100M_0_board.xdc
  set_property processing_order EARLY [get_files c:/training/hls/labs/hlx_flow/KC705/fir/system.srcs/sources_1/bd/microblaze_design/ip/microblaze_design_rst_clk_wiz_1_100M_0/microblaze_design_rst_clk_wiz_1_100M_0_board.xdc]
  read_xdc -ref microblaze_design_rst_clk_wiz_1_100M_0 -cells U0 c:/training/hls/labs/hlx_flow/KC705/fir/system.srcs/sources_1/bd/microblaze_design/ip/microblaze_design_rst_clk_wiz_1_100M_0/microblaze_design_rst_clk_wiz_1_100M_0.xdc
  set_property processing_order EARLY [get_files c:/training/hls/labs/hlx_flow/KC705/fir/system.srcs/sources_1/bd/microblaze_design/ip/microblaze_design_rst_clk_wiz_1_100M_0/microblaze_design_rst_clk_wiz_1_100M_0.xdc]
  read_xdc -prop_thru_buffers -ref microblaze_design_axi_uartlite_0_0 -cells U0 c:/training/hls/labs/hlx_flow/KC705/fir/system.srcs/sources_1/bd/microblaze_design/ip/microblaze_design_axi_uartlite_0_0/microblaze_design_axi_uartlite_0_0_board.xdc
  set_property processing_order EARLY [get_files c:/training/hls/labs/hlx_flow/KC705/fir/system.srcs/sources_1/bd/microblaze_design/ip/microblaze_design_axi_uartlite_0_0/microblaze_design_axi_uartlite_0_0_board.xdc]
  read_xdc -ref microblaze_design_axi_uartlite_0_0 -cells U0 c:/training/hls/labs/hlx_flow/KC705/fir/system.srcs/sources_1/bd/microblaze_design/ip/microblaze_design_axi_uartlite_0_0/microblaze_design_axi_uartlite_0_0.xdc
  set_property processing_order EARLY [get_files c:/training/hls/labs/hlx_flow/KC705/fir/system.srcs/sources_1/bd/microblaze_design/ip/microblaze_design_axi_uartlite_0_0/microblaze_design_axi_uartlite_0_0.xdc]
  read_xdc -ref microblaze_design_microblaze_0_axi_intc_0 -cells U0 c:/training/hls/labs/hlx_flow/KC705/fir/system.srcs/sources_1/bd/microblaze_design/ip/microblaze_design_microblaze_0_axi_intc_0/microblaze_design_microblaze_0_axi_intc_0_clocks.xdc
  set_property processing_order LATE [get_files c:/training/hls/labs/hlx_flow/KC705/fir/system.srcs/sources_1/bd/microblaze_design/ip/microblaze_design_microblaze_0_axi_intc_0/microblaze_design_microblaze_0_axi_intc_0_clocks.xdc]
  link_design -top microblaze_design_wrapper -part xc7k325tffg900-2
  write_hwdef -file microblaze_design_wrapper.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force microblaze_design_wrapper_opt.dcp
  report_drc -file microblaze_design_wrapper_drc_opted.rpt
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force microblaze_design_wrapper_placed.dcp
  report_io -file microblaze_design_wrapper_io_placed.rpt
  report_utilization -file microblaze_design_wrapper_utilization_placed.rpt -pb microblaze_design_wrapper_utilization_placed.pb
  report_control_sets -verbose -file microblaze_design_wrapper_control_sets_placed.rpt
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force microblaze_design_wrapper_routed.dcp
  report_drc -file microblaze_design_wrapper_drc_routed.rpt -pb microblaze_design_wrapper_drc_routed.pb
  report_timing_summary -warn_on_violation -max_paths 10 -file microblaze_design_wrapper_timing_summary_routed.rpt -rpx microblaze_design_wrapper_timing_summary_routed.rpx
  report_power -file microblaze_design_wrapper_power_routed.rpt -pb microblaze_design_wrapper_power_summary_routed.pb -rpx microblaze_design_wrapper_power_routed.rpx
  report_route_status -file microblaze_design_wrapper_route_status.rpt -pb microblaze_design_wrapper_route_status.pb
  report_clock_utilization -file microblaze_design_wrapper_clock_utilization_routed.rpt
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  catch { write_mem_info -force microblaze_design_wrapper.mmi }
  catch { write_bmm -force microblaze_design_wrapper_bd.bmm }
  write_bitstream -force microblaze_design_wrapper.bit 
  catch { write_sysdef -hwdef microblaze_design_wrapper.hwdef -bitfile microblaze_design_wrapper.bit -meminfo microblaze_design_wrapper.mmi -file microblaze_design_wrapper.sysdef }
  catch {write_debug_probes -quiet -force debug_nets}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

