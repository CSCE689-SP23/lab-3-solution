################################################################################
#                                                                              #
# ZeBu (R) - Copyright (c) 2003 - 2017 by Synopsys, Inc                        #
# -------------------------------------------------------                      #
#                                                                              #
#   Script for zCoreBuild. This file defines:                                  #
#     - zCoreBuild input netlist(s)                                            #
#     - zCoreBuild netlist top                                                 #
#     - zCoreBuild placement constraints on the target in term of fpga.        #
# from each core execution                                                     #
#     - Useful information from global netlist.                                #
#     - Some other Tcl commands to be applied by zCoreBuild.                   #
#                                                                              #
################################################################################


puts "Core name is Part_0 and can be used through tcl variable ZEBU_CORE_NAME."
set ZEBU_CORE_NAME Part_0
set_core_name {Part_0}

puts "Defining input edif files."
add -edif {../tools/zTopBuild/global_ztb_top.edf.gz}

puts "Defining netlist top."
set_top top -libname zsplit_lib_Part_0

add -dve ../../vcs_splitter/vcs.dve

# ----------------------------------------------------------------------
# source target configuration script:
source "../zPar_target_conf.tcl"
# ----------------------------------------------------------------------

puts "Defining allowed fpgas for this instance of zCoreBuild."
use_fpga UNIT0.MOD0.F0
use_fpga UNIT0.MOD0.F1
use_fpga UNIT0.MOD0.F2
use_fpga UNIT0.MOD0.F3
use_fpga UNIT0.MOD0.F4
use_fpga UNIT0.MOD0.F5
use_fpga UNIT0.MOD0.F6
use_fpga UNIT0.MOD0.F7
use_fpga UNIT0.MOD0.F8


puts "Other commands for zCoreBuild."
clock_localization -strategy=AUTO -max_io_cut=15000 -max_io_cut_dib=7000 -overflow_io_cut=3000 -max_io_cut_type=GLOBAL -overflow_io_cut_dib=3000 -max_reg_overflow=10 -max_lut_overflow=10 -stop_at_latch_input=yes -stop_at_async_set_reset=no -check_paths_to_preserve=yes -localize_clock_core_output=no -extend_clock_cone=yes -localize_clock_of_composite_dut=no
synchro -filter_glitches synchronous
synchro -no_clock_counter U*
cluster auto
cluster set mode=customized
cluster set max_fill_lut=50
cluster set max_fill_ramlut=40
cluster set max_fill_lut6=20
cluster set max_fill_muxcy=30
cluster set max_fill_reg=22
cluster set max_fill_memsize=50
cluster set max_fill_dsp=50
cluster set max_fill_qiwc_bit=40
cluster accept_overflow -lut=5 -ramlut=10 -lut6=8 -muxcy=3 -reg=5 -dsp=0 -bram=5 -fwc_ip=5 -fwc_bit=0 -qiwc_bit=5
cluster set max_fill_bram=50
cluster set max_fill_fwc_bit=18
cluster set max_fill_fwc_ip=80
cluster set max_fill_sabre_ff_bit=30
cluster set max_fill_sabre_pi_bit=100
cluster set -lut_weighting {1 0.000000}
cluster  disable bridge_fpga
set_fast_waveform_capture -optimize area -no_sampling
disable manipulate_bram_for_sw_rw
disable zrm_transactional_mode
disable zrm_performance_mode
enable techmap_V6_registers
disable ztime_uses_maa
disable rtl_names_save_all
disable rtl_names_allow_inaccurate
disable spare_latches_zdelay
disable spare_latches_zdelay_inform_partitioner
enable zmem_clock_domain_instrument
disable print_zmem_clock_domain_diagnostics
disable zmem_immediate_async_read
disable run_man_use_fw_bb
disable use_gen_xtor_for_monitor
zsva -never_fatal -reg_init 0 -trace_start no -trace_end no -trace_success no -trace_busy no -trace_failure yes -lite no
data_localization -strategy=AUTO -io_cut_count=FANOUT -io_compare=GLOBAL -max_io_cut=15000 -overflow_io_cut=3000 -max_reg_overflow=10 -max_lut_overflow=10 -tristates
set_logic_opt -no_multi_driver yes
set_logic_opt -use_init_x_xlnx_compat yes
set_logic_opt -max_depth 4
set_logic_opt -max_node 5000
set_logic_opt -propagate_tri no
set_logic_opt -propagate_thru_low_power_inst force_assign_no_power_pass_through
set_logic_opt -threshold_for_caching_hw 100
set_logic_opt -trace_po yes
set_logic_opt -trace_sync no
set_logic_opt -drop_write_only no
set_logic_opt -drop_optimizable_waveform_capture no
set_logic_opt -delete_stuck_at_z no
set_logic_opt -fatal_on_non_observable_injectable_seq no
set_logic_opt -drive_undriven_ports 0
set_logic_opt -enable_optimize yes
vivado_constraints -type=disabled
zrm_partitioning -algo min_port -group_zrm_with_controllers off
enable advanced_incremental_mode

# List of zTopBuild commands transmitted to zCoreBuild :
winding_path optimize_laces -mode=manual -depth=1 -max_cut=1
 cluster enable -accept_changes_on_user_max_fill_constraints 
enable replicate_zprd_disable
partitioning auto  -xdraware

source $env(ZEBU_ROOT)/etc/zcorebuild/zCoreBuild_script.tcl

source ../incremental_compile.tcl

