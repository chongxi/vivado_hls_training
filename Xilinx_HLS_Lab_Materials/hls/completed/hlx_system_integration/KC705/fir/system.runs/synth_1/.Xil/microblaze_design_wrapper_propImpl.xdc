set_property SRC_FILE_INFO {cfile:c:/training/hls/labs/hlx_flow/KC705/fir/system.srcs/sources_1/bd/microblaze_design/ip/microblaze_design_microblaze_0_0/microblaze_design_microblaze_0_0.xdc rfile:../../../system.srcs/sources_1/bd/microblaze_design/ip/microblaze_design_microblaze_0_0/microblaze_design_microblaze_0_0.xdc id:1 order:EARLY scoped_inst:microblaze_design_i/microblaze_0/U0} [current_design]
set_property SRC_FILE_INFO {cfile:c:/training/hls/labs/hlx_flow/KC705/fir/system.srcs/sources_1/bd/microblaze_design/ip/microblaze_design_mdm_1_0/microblaze_design_mdm_1_0.xdc rfile:../../../system.srcs/sources_1/bd/microblaze_design/ip/microblaze_design_mdm_1_0/microblaze_design_mdm_1_0.xdc id:2 order:EARLY scoped_inst:microblaze_design_i/mdm_1/U0} [current_design]
set_property SRC_FILE_INFO {cfile:c:/training/hls/labs/hlx_flow/KC705/fir/system.srcs/sources_1/bd/microblaze_design/ip/microblaze_design_clk_wiz_1_0/microblaze_design_clk_wiz_1_0.xdc rfile:../../../system.srcs/sources_1/bd/microblaze_design/ip/microblaze_design_clk_wiz_1_0/microblaze_design_clk_wiz_1_0.xdc id:3 order:EARLY scoped_inst:microblaze_design_i/clk_wiz_1/inst} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
set_ip_msg_config -idlist { DPOP-3 PDCN-1569 CDC-1 CDC-4 CDC-7 TIMING-9 TIMING-10 }
set_property src_info {type:SCOPED_XDC file:2 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_ip_msg_config -idlist { CDC-1 CDCM-1 REQP-1851 TIMING-2 TIMING-4 TIMING-9 TIMING-10 TIMING-14 }
set_property src_info {type:SCOPED_XDC file:3 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1_p]] 0.05
