# Set the technology
set DESIGN top
set_host_options -max_cores 16
set search_path "/afs/andrew.cmu.edu/course/18/743/backend/45nm_Nangate/pdk_v1.3_v2010_12/NangateOpenCellLibrary_PDKv1_3_v2010_12/Front_End/Liberty/NLDM/
				/afs/ece/support/synopsys/synopsys.release/syn-vJ-2014.09-SP4/libraries/syn 
				/afs/ece/support/synopsys/2002.09/share/image/usr/local/synopsys/2002.09/libraries/syn/ 
				../../src/";

set target_library "NangateOpenCellLibrary_typical.db";
#set symbol_library "cmulib18.sdb";
set synthetic_library {standard.sldb dw_foundation.sldb}
set link_library {"*" NangateOpenCellLibrary_typical.db dw_foundation.sldb}
set synlib_wait_for_design_license {DesignWare-Foundation}

# generate reports and save them to a file
set OUT_DIR ./out
set REP_DIR ./rep
set RTL_DIR ../src/
set AREA_RPT $REP_DIR/${DESIGN}_area.rpt
set TIME_RPT $REP_DIR/${DESIGN}_time.rpt
set POWER_RPT $REP_DIR/${DESIGN}_power.rpt

set top_mdl $DESIGN
define_design_lib WORK -path "./work"

#set_dont_touch [get_cells {neuron_snl_grl}]

# Small loop to read in several files
set all_files { ../../src/neuron.sv ../../src/less_equal.sv ../../src/pulse2edge.sv ../../src/wta.sv ../../src/stdp.sv ../../src/adder.sv
../../src/edge2pulse.sv ../../src/fsm_synapse.sv ../../src/pac.sv ../../src/stdp_case_gen.sv ../../src/fsm_convert.sv ../../src/incdec.sv ../../src/neuron_body.sv ../../src/stabilize_func.sv ../../src/control.sv
../../src/lib.sv ../../src/top.sv} 
foreach file $all_files {
 set module_source "$file"
 set both "{$module_source}"
 read_file -f sverilog $both
 analyze -format sverilog $both 
}

set_dont_touch [get_ports {output_spikes}]

elaborate $top_mdl
link
uniquify

set_wire_load_model -name 5K_hvratio_1_1

# to avoid 'assign' statements
set_fix_multiple_port_nets -all -buffer_constants [get_designs *]

#Specify clock constraints
#source ../../tcl/snl_time.tcl
set_max_fanout 50 [get_designs $top_mdl]
# Uniquify (optional) and compile
check_design
compile -map_effort low
#compile -map_effortt high -boundary_optimization
#compile -ungroup_all -map_effort low

#remove_unconnected_ports -blast_buses [get_cells -hierarchical *]

# change naming rules
set bus_inference_style {%s[%d]} 
set bus_naming_style {%s[%d]}
set hdlout_internal_busses true
change_names -hierarchy -rule verilog
define_name_rules name_rule -allowed "A-Z a-z 0-9 _" -max_length 255 -type cell 
define_name_rules name_rule -allowed "A-Z a-z 0-9 _[]" -max_length 255 -type net
define_name_rules name_rule -map {{"\\*cell\\*""cell"}}
define_name_rules name_rule -case_insensitive
change_names -hierarchy -rules name_rule

# Outputs

if {![file exists ${OUT_DIR}]} {
  file mkdir ${OUT_DIR}
  puts "Creating directory ${OUT_DIR}"
}

if {![file exists ${REP_DIR}]} {
  file mkdir ${REP_DIR}
  puts "Creating directory ${REP_DIR}"
}

write -format verilog -hierarchy -output $OUT_DIR/{$top_mdl}_netlist.v
write_sdf -version 1.0 $OUT_DIR/{$top_mdl}.sdf
redirect $AREA_RPT { report_area -hierarchy }
# type 'man report_timing' withing DC shell to see what these options mean
#redirect $TIME_RPT { report_timing -path full -delay max -max_paths 1 -nworst 1 -true }
redirect $TIME_RPT { report_timing -path full -delay_type max -max_paths 100 -nworst 100 }
redirect $POWER_RPT { report_power }

