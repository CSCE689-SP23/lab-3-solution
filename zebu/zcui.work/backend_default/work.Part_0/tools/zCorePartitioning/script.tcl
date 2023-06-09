# Generated by zCoreBuild
#
set ZEBU_CORE_NAME Part_0

read_zbtf tools/zCorePartitioning/netlist.zbtf

source $env(ZEBU_ROOT)/etc/zcorepartitioning/zCorePartitioning.tcl

# qiwc
set_module_resource zfwc_qiwc* REG 0.1
set_module_resource zfwc_qiwc* LUT 0.3
set_module_resource zfwc_qiwc* LUT6 0.3
# target filling rate (max + overflow) -- zCoreXClustering
set fpga_filling_rate_lut     55
set fpga_filling_rate_reg     27
set fpga_filling_rate_ram     55
set fpga_filling_rate_dsp     50
set fpga_filling_rate_ramlut  50
set fpga_filling_rate_lut6    28
set fpga_filling_rate_fwcip_num  85
set fpga_filling_rate_fwcip_bits 18
set fpga_filling_rate_qiwc_bits 45
set fpga_filling_rate_read_port_ips 100
set fpga_filling_rate_read_port_bits 100
set fpga_filling_rate_write_port_ips 100
set fpga_filling_rate_write_port_bits 100
set fpga_filling_rate_zc_trace_bit 100
set fpga_filling_rate_zview 100
set fpga_filling_rate_zcei_message_in 95
set fpga_filling_rate_zcei_message_out 95
set fpga_filling_rate_fw_resources 100
set fpga_filling_rate_zprd_bb 100

# target filling rate (max + overflow)
set_filling_rate -max LUT     55
set_filling_rate -max REG     27
set_filling_rate -max RAM     55
set_filling_rate -max DSP     50
set_filling_rate -max RAMLUT  50
set_filling_rate -max LUT6    28
set_filling_rate -max FWC_IP_NUM  85
set_filling_rate -max FWC_IP_BITS 18
set_filling_rate -max QIWC_IP_BITS 45
set_filling_rate -max READ_PORT_IPS 100
set_filling_rate -max READ_PORT_BITS 100
set_filling_rate -max WRITE_PORT_IPS 100
set_filling_rate -max WRITE_PORT_BITS 100
set_filling_rate -max ZC_TRACE_BIT 100
set_filling_rate -max ZVIEW 100
set_filling_rate -max ZCEI_MESSAGE_INPUT 95
set_filling_rate -max ZCEI_MESSAGE_OUTPUT 95
set_filling_rate -max FW_RESOURCES 100
set_filling_rate -max ZPRD_BB 100
set_filling_rate -max ZFORCE 100
set_filling_rate -max ZVIEW 100

set_nb_bits_per_fwc_ip 384

# filling rate for extra overflow
set_filling_rate -overflow LUT     0
set_filling_rate -overflow REG     0
set_filling_rate -overflow RAM     0
set_filling_rate -overflow DSP     0
set_filling_rate -overflow RAMLUT  0
set_filling_rate -overflow LUT6    0
set_filling_rate -overflow FWC_IP_NUM  0
set_filling_rate -overflow FWC_IP_BITS 0
set_filling_rate -overflow QIWC_IP_BITS 0
set_filling_rate -overflow READ_PORT_IPS 0
set_filling_rate -overflow READ_PORT_BITS 0
set_filling_rate -overflow WRITE_PORT_IPS 0
set_filling_rate -overflow WRITE_PORT_BITS 0
set_filling_rate -overflow ZC_TRACE_BIT 0
set_filling_rate -overflow ZVIEW 0
set_filling_rate -overflow ZCEI_MESSAGE_INPUT 0
set_filling_rate -overflow ZCEI_MESSAGE_OUTPUT 0
set_filling_rate -overflow FW_RESOURCES 0
set_filling_rate -overflow ZPRD_BB 0
set_filling_rate -overflow ZFORCE 0
set_filling_rate -overflow ZVIEW 0

use_fpga U0_M0_F00
use_fpga U0_M0_F01
use_fpga U0_M0_F02
use_fpga U0_M0_F03
use_fpga U0_M0_F04
use_fpga U0_M0_F05
use_fpga U0_M0_F06
use_fpga U0_M0_F07
use_fpga U0_M0_F08
# false paths

set_lut_weighting 1 0.0

save_defmapping zCoreBuild_AC_defmapping.tcl

enable xdraware 
source {tools/zCorePartitioning/constraints.tcl}

# Defgroup commands

# Defmapping commands



save_defmapping zCoreBuild_AC_incremental_defmapping.tcl -incremental -block zCoreBuild_AC_incremental_interco.txt 
set_arch -product zse -fpga V7
zrm_partitioning -algo min_port -perf_mode on -tgt_freq 10.000000 -mcp 2 -group_zrm_with_controllers off
