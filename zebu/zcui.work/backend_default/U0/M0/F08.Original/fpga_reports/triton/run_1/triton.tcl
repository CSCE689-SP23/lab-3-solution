#triton internal param
config internal num_threads 4
config internal target_util 10
config internal prepack_mode 2
config internal pack_mode util2
config internal partition_safe_util_choice 1
config internal partition_max_allowed 13700
config internal pack_lut6_limit 2
config internal pack_target_util 80

setpart xc7v2000tflg1925-1
load design ./fpga_reports/triton/design_triton.edf
load xdc ioclock.xdc
load xdc ./fpga_reports/triton/design_triton.xdc
setfile -sdc ./fpga_reports/triton/design_triton.xdc
load sdc ./fpga_reports/triton/design_triton.xdc
place all
report timing path
write output -integration -placecell  -gzip 
