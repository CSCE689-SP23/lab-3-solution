#written by FrontEndBackEndLink
set is_mip_flow false
set backend_default_dir ./
set ipname {top}
source gridjob_profiling_parameters.tcl
source $env(ZEBU_ROOT)/etc/ztopbuild/zTopBuild_from_zcui.tcl
#netlist inputs
source {edifListScript.tcl}
append_href_file {../design/synth_Default_RTL_Group/zconnectnew.be.script}
set_top {top}
set_prepare_netlist_file {/home/faculty/d/davidkebo/davidkebo/csce689/labs/lab3-davidkebo/zebu/zcui.work/utf_generatefiles/zTopBuild_netlist_config.tcl}
#environnement inputs
read_dve {../vcs_splitter/vcs.dve}
source {/mnt/quinn_zebu/ZEBU_SYSTEM_DIR/config/zse_configuration.tcl}
#clustering inputs
cluster set -max_fill_lut6 20
cluster set -max_fill_type safe -dsp 40 -bram 50 -ramlut 40 -reg 15 -lut 40 -fwc_ip 0 -fwc_bit 10 -qiwc_bit 30
cluster set -max_fill_type standard -dsp 50 -bram 50 -ramlut 40 -reg 22 -lut 50 -fwc_ip 0 -fwc_bit 18 -qiwc_bit 40
cluster set -max_fill_type aggressive -dsp 90 -bram 90 -ramlut 55 -reg 30 -lut 55 -fwc_ip 0 -fwc_bit 25 -qiwc_bit 50
cluster set -mode=customized
cluster auto
cluster set -max_fill_default standard
cluster set -max_fill_dsp 50
cluster set -max_fill_bram 50
cluster set -max_fill_ramlut 40
cluster set -max_fill_reg 22
cluster set -max_fill_lut 50
cluster set -max_fill_fwc_bit 18
cluster set -max_fill_qiwc_bit 40
DOP_enable_adaptative_filling_rate true
# clock handling inputs
set_clock_handling_clock_counter false
set_clock_handling_skew_offset true
set_clock_handling_skew_offset_mode synchronous
set_clock_handling_localize_clock_core true
set_clock_handling_localize_clock true
set_clock_handling_glitch_mode {filter_glitches}
set_clock_localization_mode
# debugging inputs
set_manipulate_bram_for_sw_rw false
set_dyn_probe_top true
# clock declaration
# SystemVerilog assertion inputs
#UC mode
config_uc_mode {uc_no_zfe}
#Offline debugger
zoffline_debug -enable yes -probe_outputs yes
#Accessibility
#RTL DB
rtlDB -path RTLDB
update_bufg_info
set perfFlowCommand [list]
#Additional Command File
source {/home/faculty/d/davidkebo/davidkebo/csce689/labs/lab3-davidkebo/zebu/zcui.work/utf_generatefiles/zTopBuild_config.tcl}
foreach cmd $perfFlowCommand {
    puts "perf flow command: $cmd"
    eval $cmd
}
source {incremental_compile.tcl}
