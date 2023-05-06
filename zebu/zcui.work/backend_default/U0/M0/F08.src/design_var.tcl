#  SYNOPSYS EMULATION and VERIFICATION (c) - 2002-2014
# -----------------------------------------------------
#            Variables for fpga compilation            

set znetgen_mode zpar
set top_name design
lappend edif_list wrapper.edf.gz
set fpga_part 7vlx2000tff1925
set fpga_family V7
set post_process vivado
set zpar_fw_macro zse_xc7v_8c_v1
set zpar_fpga_name F08
set zpar_fpga_index 8
set zpar_module_index 0
set zpar_unit_index 0
# using zdb FPGA & dev indexes:
set zpar_mudb_zdb_fpga 14
set zpar_mudb_zdb_dev  37

set zpar_zxtor_filename undefined_xtorlib
set zpar_smartzice_filename undefined_smartZicelib
set zpar_zice_filename undefined_zicelib
set zpar_zclkmem_filename zse_hw_zrm.edf.gz
set zpar_zclkmem_freq 15000
set remap_tristate_args {-tristate_type pullup -conflict_type WAND -keeper_clock z_dclk_delay2 -keeper_edge falling}
set target_multi_die no
set zpar_target_orionpp 0
set fetch_mode false
set fetch_mode_pclk_opt false
set cluster_split_args { -coreDirectory work.Part_0/ -mdtmxSGMode default}
set zpar_fwc_ip_zplug {zplug zplwc_ip}
set zpar_fwc_ip_report "true"

# Set variables for zNetgen from zPar.
set timing_analyze_args {TRISTATE_PATH ZFILTER_ASYNC_SET_RESET_PATH ZFILTER_FETCH_FEEDBACK }
set sdf_mode true
set advanced_incremental_mode true
