set C_TypeInfoList {{ 
"dct" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"input": [[], {"array": [ {"scalar": "short"}, [64]]}] }, {"output": [[], {"array": [ {"scalar": "short"}, [64]]}] }],[],""]
}}
set moduleName dct
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {dct}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_r int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ output_r int 16 regular {array 64 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_r", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "input","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 63,"step" : 1}]}]}]} , 
 	{ "Name" : "output_r", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "output","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 63,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_r_address0 sc_out sc_lv 6 signal 0 } 
	{ input_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_r_q0 sc_in sc_lv 16 signal 0 } 
	{ output_r_address0 sc_out sc_lv 6 signal 1 } 
	{ output_r_ce0 sc_out sc_logic 1 signal 1 } 
	{ output_r_we0 sc_out sc_logic 1 signal 1 } 
	{ output_r_d0 sc_out sc_lv 16 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "input_r", "role": "address0" }} , 
 	{ "name": "input_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "ce0" }} , 
 	{ "name": "input_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_r", "role": "q0" }} , 
 	{ "name": "output_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "output_r", "role": "address0" }} , 
 	{ "name": "output_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce0" }} , 
 	{ "name": "output_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we0" }} , 
 	{ "name": "output_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_r", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"], "CDFG" : "dct", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "input_r", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "dct_coeff_table_0", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dct_dct_2d_fu_200", "Port" : "dct_coeff_table_0"}]}, 
		{"Name" : "dct_coeff_table_1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dct_dct_2d_fu_200", "Port" : "dct_coeff_table_1"}]}, 
		{"Name" : "dct_coeff_table_2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dct_dct_2d_fu_200", "Port" : "dct_coeff_table_2"}]}, 
		{"Name" : "dct_coeff_table_3", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dct_dct_2d_fu_200", "Port" : "dct_coeff_table_3"}]}, 
		{"Name" : "dct_coeff_table_4", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dct_dct_2d_fu_200", "Port" : "dct_coeff_table_4"}]}, 
		{"Name" : "dct_coeff_table_5", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dct_dct_2d_fu_200", "Port" : "dct_coeff_table_5"}]}, 
		{"Name" : "dct_coeff_table_6", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dct_dct_2d_fu_200", "Port" : "dct_coeff_table_6"}]}, 
		{"Name" : "dct_coeff_table_7", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dct_dct_2d_fu_200", "Port" : "dct_coeff_table_7"}]}],
		"WaitState" : [
		{"State" : "ap_ST_st5_fsm_3", "FSM" : "ap_CS_fsm", "SubInst" : "grp_dct_dct_2d_fu_200"}],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dct_dct_2d_fu_200", "Parent" : "0", "Child" : ["4", "5", "6", "7"], "CDFG" : "dct_dct_2d", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "in_block", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dct_dct_1d2_fu_225", "Port" : "src"}]}, 
		{"Name" : "out_block", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "dct_coeff_table_0", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dct_dct_1d2_fu_225", "Port" : "dct_coeff_table_0"}]}, 
		{"Name" : "dct_coeff_table_1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dct_dct_1d2_fu_225", "Port" : "dct_coeff_table_1"}]}, 
		{"Name" : "dct_coeff_table_2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dct_dct_1d2_fu_225", "Port" : "dct_coeff_table_2"}]}, 
		{"Name" : "dct_coeff_table_3", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dct_dct_1d2_fu_225", "Port" : "dct_coeff_table_3"}]}, 
		{"Name" : "dct_coeff_table_4", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dct_dct_1d2_fu_225", "Port" : "dct_coeff_table_4"}]}, 
		{"Name" : "dct_coeff_table_5", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dct_dct_1d2_fu_225", "Port" : "dct_coeff_table_5"}]}, 
		{"Name" : "dct_coeff_table_6", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dct_dct_1d2_fu_225", "Port" : "dct_coeff_table_6"}]}, 
		{"Name" : "dct_coeff_table_7", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dct_dct_1d2_fu_225", "Port" : "dct_coeff_table_7"}]}],
		"WaitState" : [
		{"State" : "ap_ST_st3_fsm_2", "FSM" : "ap_CS_fsm", "SubInst" : "grp_dct_dct_1d2_fu_225"},
		{"State" : "ap_ST_st7_fsm_5", "FSM" : "ap_CS_fsm", "SubInst" : "grp_dct_dct_1d2_fu_225"}],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_dct_2d_fu_200.row_outbuf_U", "Parent" : "3", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_dct_2d_fu_200.col_outbuf_U", "Parent" : "3", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_dct_2d_fu_200.col_inbuf_U", "Parent" : "3", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_dct_2d_fu_200.grp_dct_dct_1d2_fu_225", "Parent" : "3", "Child" : ["8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23"], "CDFG" : "dct_dct_1d2", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "src", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "tmp_2", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "dst", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "tmp_21", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "dct_coeff_table_0", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "dct_coeff_table_1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "dct_coeff_table_2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "dct_coeff_table_3", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "dct_coeff_table_4", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "dct_coeff_table_5", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "dct_coeff_table_6", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "dct_coeff_table_7", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_dct_2d_fu_200.grp_dct_dct_1d2_fu_225.dct_coeff_table_0_U", "Parent" : "7", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_dct_2d_fu_200.grp_dct_dct_1d2_fu_225.dct_coeff_table_1_U", "Parent" : "7", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_dct_2d_fu_200.grp_dct_dct_1d2_fu_225.dct_coeff_table_2_U", "Parent" : "7", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_dct_2d_fu_200.grp_dct_dct_1d2_fu_225.dct_coeff_table_3_U", "Parent" : "7", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_dct_2d_fu_200.grp_dct_dct_1d2_fu_225.dct_coeff_table_4_U", "Parent" : "7", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_dct_2d_fu_200.grp_dct_dct_1d2_fu_225.dct_coeff_table_5_U", "Parent" : "7", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_dct_2d_fu_200.grp_dct_dct_1d2_fu_225.dct_coeff_table_6_U", "Parent" : "7", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_dct_2d_fu_200.grp_dct_dct_1d2_fu_225.dct_coeff_table_7_U", "Parent" : "7", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_dct_2d_fu_200.grp_dct_dct_1d2_fu_225.dct_mac_muladd_16s_15s_29s_29_1_U0", "Parent" : "7", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_dct_2d_fu_200.grp_dct_dct_1d2_fu_225.dct_mac_muladd_16s_15s_14ns_29_1_U1", "Parent" : "7", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_dct_2d_fu_200.grp_dct_dct_1d2_fu_225.dct_mac_muladd_16s_15s_29s_29_1_U2", "Parent" : "7", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_dct_2d_fu_200.grp_dct_dct_1d2_fu_225.dct_mac_muladd_16s_15s_29s_29_1_U3", "Parent" : "7", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_dct_2d_fu_200.grp_dct_dct_1d2_fu_225.dct_mac_muladd_16s_14ns_29s_29_1_U4", "Parent" : "7", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_dct_2d_fu_200.grp_dct_dct_1d2_fu_225.dct_mul_mul_16s_15s_29_1_U5", "Parent" : "7", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_dct_2d_fu_200.grp_dct_dct_1d2_fu_225.dct_mul_mul_16s_15s_29_1_U6", "Parent" : "7", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_dct_2d_fu_200.grp_dct_dct_1d2_fu_225.dct_mul_mul_16s_15s_29_1_U7", "Parent" : "7", "Child" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "874", "Max" : "874"}
	, {"Name" : "Interval", "Min" : "875", "Max" : "875"}
]}

set Spec2ImplPortList { 
	input_r { ap_memory {  { input_r_address0 mem_address 1 6 }  { input_r_ce0 mem_ce 1 1 }  { input_r_q0 mem_dout 0 16 } } }
	output_r { ap_memory {  { output_r_address0 mem_address 1 6 }  { output_r_ce0 mem_ce 1 1 }  { output_r_we0 mem_we 1 1 }  { output_r_d0 mem_din 1 16 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
