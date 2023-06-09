################################################################################
#                                                                              #
# ZeBu (R) - Copyright (c) 2003 - 2017 by Synopsys, Inc                        #
# -------------------------------------------------------                      #
#                                                                              #
#   Sets global and local variables for zPar.                                  #
#   Global variable are in this script whereas local variable are sourced      #
# from each core execution                                                     #
#   This file has been generated by zTopBuild.                                 #
#                                                                              #
################################################################################

puts "Commands for zPar from zCoreBuild, core: Part_0."
source work.Part_0/zPar_cmds.tcl
System zpar_fpga_current_stats_file work.Part_0/zPar_fpga_stats
System zpar_fpga_previous_stats_file work.Part_0/zPar_fpga_stats_hist_0

# Set variables for zPar

# Advanced Incremental Compilation Mode
System incremental true
System incrementalPlace true
System set_timing_task_file ../timing.data
#Command for vivado_constraints flow support
System vivado_constraints -mode=disabled -vivadoPlacerResponse=all -dryRun -maxTotalGates=10000000
System pinAssignmentEffort zap
System sdfRequestType PRIO
set zpar_timing_args "-zTime_mode"
set zpar_extra_cmds "zPar_extra_cmds.tcl"


#Commands for zPar

System xclkFrequency 450000
System driverFrequencyZtopBuild 0
set samplingFrequency 50000
System remapTristateArgs "-tristate_type pullup -conflict_type WAND -keeper_clock z_dclk_delay2 -keeper_edge falling"

puts "Other commands for zPar."

relocate_mezzanine U0.M0 { U0.M0 U0.M1 U0.M2 U0.M3 U0.M4 }

# DO NOT ADD ANY COMMAND AFTER THIS LINE
# Execute zPar script
if { ![info exist zcui_main] } {
 source $env(ZEBU_ROOT)/etc/zpar/zPar_script.tcl
}
