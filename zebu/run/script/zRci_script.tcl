# © 2015-2019 Synopsys, Inc.
# This Synopsys ZeBu Lab source code and all associated documentation are proprietary and
# confidential to Synopsys, Inc. and may only be used pursuant to the terms and conditions
# of a written license agreement with Synopsys, Inc. All other use, reproduction,
# modification, or distribution of the Synopsys ZeBu Lab source code or the associated
# documentation is strictly prohibited.

##################################################################
# zRci Script for ZeBu Basic Labs
##################################################################


##################################################################
#     Procedure to compute read & write frequency in testbench
proc proba2hex {p} {
  set p100 [expr $p * 1023 / 100]
  set pstr [format %03X $p100]
  return $pstr
}
##################################################################


###############################
#     Main

#----------------------------------------
# Section for Basic Run & all features
#----------------------------------------
# Initializing Emulation

# Delete the runtime_output directory
set dir "./runtime_output"
if {[file exists $dir] && [file isdirectory $dir]} {
    file delete -force $dir
    puts "The directory $dir has been deleted.\n"
} else {
    puts "Error: $dir does not exist or is not a directory.\n"
}

start_zebu runtime_output

# Initializing memory
memory -load top.u_stb.u_rom.mem -file ../memories/rom.hex

#----------------------------------------
# Section for SVAs only - activation
#----------------------------------------
# SVA callback signature
proc sva_callback {success severity message filename line scope start_time end_time} {
} 

# Start SVA processing
if {[sva -has_assertions] == 1} { 
sva -start -clock top.u_stb.clk0 -action sva_callback 
sva -enable -report
} 
#------------END OF SECTION for SVA ---------------

#----------------------------------------
# Section for DPI only - activation
#----------------------------------------
# Load DPI dynamic library 
ccall -load ../libDPI/libDPI.so 

# Set the sampling clock
ccall -sampling_clock -expression "top.u_stb.clk0" 

# Enable the DPI
ccall -enable

#------------END OF SECTION for DPI ---------------


#-------------------------------------------------------------
# Section for Waveforms with Dynamic-Probes only - activation
#-------------------------------------------------------------
# Start dump - Dynamic Probes
set dp_fid [dump -file "dynprobes_dump" -dynamic_probe]
dump -fid $dp_fid -load_selection ../../zcui.work/zebu.work/zrdb/csa_supports.zrdb
dump -enable -fid $dp_fid
# Section for Waveforms with Dynamic-Probes only - activation
#------------END OF SECTION for Dynamic-Probes ---------------


#-------------------------------------------------------------
# Section for Waveforms with FWC only - activation
#-------------------------------------------------------------
# Start FWC dump
set fwc_fid [dump -file "fwc_dump" -fwc]
dump -fid $fwc_fid -add_value_set fwc_essential_signals fwc_fifo_ports
dump -enable -fid $fwc_fid
#------------END OF SECTION for FWC ---------------

#----------------------------------------
# Section for Basic Run & all features
#----------------------------------------
puts "#############################################"
puts "# Forcing signals: ( wr : 30 % , rd : 30 % )"
# Forcing signals to set parameters - Program probability for write and read
force top.u_stb.proba_rd\[9:0\] [proba2hex 30] -radix hexa -freeze
force top.u_stb.proba_wr\[9:0\] [proba2hex 30] -radix hexa -freeze

puts "# Resetting design during 10 clock cycles" 
# Write rstn signal to enable reset
force top.u_stb.rstn 0 -freeze
# Running 10 cycles
run 10
# Disabling reset
force top.u_stb.rstn 1 -freeze
puts "# Running 1000 cycles"
# Running 1000 cycles
run 1000
# Displaying signals value in decimal format
puts "# Number of errors detected:"
puts "# on input : [get top.u_stb.cnt_error_in -radix dec]"
puts "# on output: [get top.u_stb.cnt_error_out -radix dec]"

puts "# Storing ram memory content to memdump.hex file"
# Dumping result memory content to an hexadecimal text file
memory -store top.u_stb.u_ram.mem -file memdump.hex
puts "#############################################"
  
#-------------------------------------------------------------
# Section for Waveforms with Dynamic-Probes only - closing
#-------------------------------------------------------------
# Stop dump - Dynamic Probes
dump -close -fid $dp_fid
#------------END OF SECTION for Dynamic-Probes -------------------

#-------------------------------------------------------------
# Section for Waveforms with FWC only - closing
#-------------------------------------------------------------
# Stop FWC dump
dump -close -fid $fwc_fid
#------------END OF SECTION for FWC ---------------------------

#----------------------------------------------------------------
# Closing Emulation - Last command of script, for all scenarios
#----------------------------------------------------------------

exit
