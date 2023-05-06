
####################################################################################
# Generated by Vivado 2019.1_EP06_159265 built on 'Fri Oct 11 16:37:07 PDT 2019' by 'stepheny'
# Command Used: write_xdc -force ./fpga_reports/triton/design_triton.xdc
####################################################################################


####################################################################################
# Constraints from file : 'no_dont_touch.xdc'
####################################################################################



####################################################################################
# Constraints from file : 'dont_touch.xdc'
####################################################################################



# User Generated physical constraints 

create_pblock SLR0
resize_pblock [get_pblocks SLR0] -add {CLOCKREGION_X0Y0:CLOCKREGION_X1Y2}
create_pblock SLR1
resize_pblock [get_pblocks SLR1] -add {CLOCKREGION_X0Y3:CLOCKREGION_X1Y5}
create_pblock SLR2
resize_pblock [get_pblocks SLR2] -add {CLOCKREGION_X0Y6:CLOCKREGION_X1Y8}
create_pblock SLR3
resize_pblock [get_pblocks SLR3] -add {CLOCKREGION_X0Y9:CLOCKREGION_X1Y11}

####################################################################################
# Constraints from file : 'design.xdc'
####################################################################################

# File generated by xdc_sorter v3.3 (Wed Apr 19 01:06:08 CDT 2023)


########## settings :


########## clock :
#XDC=design_zpar.zdc
#xdc_lib lib_zse_xc7v_8c_v1_xdc:if_if_macro
create_clock -period 9.000 -name CLK_RTB_zins_fp_ctrl_wrapper_fib_bridge_rx_u_xst_wrapper_0_socket_lvds_sys_slave_0_u_xst_wrapper_0_socket_lvds_gp_in_0_u_xst_wrapper_0_clki_dv [get_pins RTB/zins_fp_ctrl/wrapper/fib_bridge_rx/u_xst_wrapper_0/socket_lvds_sys_slave_0/u_xst_wrapper_0/socket_lvds_gp_in_0/u_xst_wrapper_0/bufr_0/O]
create_clock -period 4.5 -name CLK_sys_idel_clk [get_pins RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/sysclk_idly_0/bufg_0/O]
create_clock -period 9.0 -name CLK_fib_clk [get_pins RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/sysclk_bus_dut_0/fib_clk]
create_clock -period 3.000 -name CLK_fib_clk_hs [get_pins RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/sysclk_bus_dut_0/fib_clk_hs]
create_clock -period 100.000 -name CLK_srb_clk [get_pins RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/sysclk_bus_dut_0/srb_clk]
create_clock -period 20.000 -name CLK_sys_mclk [get_pins RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/sys_mclk]
create_clock -period 100.000 -name CLK_sys_pclk [get_pins RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/sys_pclk]
create_clock -period 2.222 -name CLK_sys_xclk [get_pins RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/sysclk_xclk_0/sys_xclk]
create_clock -period 7.9992 -name CLK_sys_xclk_dv4 [get_pins RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/sysclk_xclk_0/sys_xclk_dv4]


########## gen_clock :
#XDC=design_zpar.zdc
#xdc_lib lib_zse_xc7v_8c_v1_xdc:if_if_macro
create_generated_clock -name CLK_sys_idel_clk_dv2 -source [get_pins RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/sys_idel_clk] -divide_by 2 [get_pins RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/sys_idel_clk_dv2]
create_generated_clock -name CLK_sys_idel_clk_dv4 -source [get_pins RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/sys_idel_clk] -divide_by 4 [get_pins RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/sys_idel_clk_dv4]
create_generated_clock -name CLK_sys_idel_clk_dv8 -source [get_pins RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/sys_idel_clk] -divide_by 8 [get_pins RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/sys_idel_clk_dv8]


########## gen_clock_2 :


########## rename_gen_clock :


########## clock_uncertainty :


########## async :
#XDC=design_zpar.zdc
#xdc_lib lib_zse_xc7v_8c_v1_xdc:if_if_macro
set_clock_groups -name GRP_RTB_zins_fp_ctrl_wrapper_fib_bridge_rx_u_xst_wrapper_0_socket_lvds_sys_slave_0_u_xst_wrapper_0_socket_lvds_gp_in_0_u_xst_wrapper_0_clki_dv -asynchronous -group [get_clocks CLK_RTB_zins_fp_ctrl_wrapper_fib_bridge_rx_u_xst_wrapper_0_socket_lvds_sys_slave_0_u_xst_wrapper_0_socket_lvds_gp_in_0_u_xst_wrapper_0_clki_dv]
set_clock_groups -name GRP_sys_idel_clk -asynchronous -group [get_clocks CLK_sys_idel_clk]
set_clock_groups -name GRP_sys_idel_clk_dv -asynchronous -group [get_clocks -include_generated_clocks {CLK_sys_idel_clk_dv2 CLK_sys_idel_clk_dv4 CLK_sys_idel_clk_dv8}]
set_clock_groups -name GRP_fib_clk -asynchronous -group [get_clocks -include_generated_clocks CLK_fib_clk]
set_clock_groups -name GRP_fib_clk_hs -asynchronous -group [get_clocks -include_generated_clocks CLK_fib_clk_hs]
set_clock_groups -name GRP_srb_clk -asynchronous -group [get_clocks -include_generated_clocks CLK_srb_clk]
set_clock_groups -name GRP_sys_mclk -asynchronous -group [get_clocks -include_generated_clocks CLK_sys_mclk]
set_clock_groups -name GRP_sys_pclk -asynchronous -group [get_clocks -include_generated_clocks [list [get_clocks -include_generated_clocks CLK_sys_pclk] [get_clocks CLK_loopback_*]]]
set_clock_groups -name GRP_sys_xclk -asynchronous -group [get_clocks -include_generated_clocks {CLK_sys_xclk CLK_sys_xclk_dv4}]


########## group :


########## delay :
#XDC=design_zpar.zdc
#xdc_lib lib_xdc:clockgen2
set_max_delay -from [get_clocks CLK_sys_pclk] -through [get_nets {{FK/zuf_clockgen/wrapper/dclk_posedge_en_int[*]} {FK/zuf_clockgen/wrapper/dclk_negedge_en_int[*]}}] -to [get_clocks CLK_sys_mclk] 90.000
#xdc_lib lib_zse_xc7v_8c_v1_xdc:if_if_macro
set_max_delay -from [get_clocks CLK_sys_pclk] -through [get_nets {{RTB/zins_fp_ctrl/wrapper/synchronous_readback/dclk_posedge_next[*]} {RTB/zins_fp_ctrl/wrapper/synchronous_readback/dclk_negedge_next[*]}}] -to [get_clocks CLK_sys_mclk] 90.000
set_max_delay -datapath_only -from [get_pins RTB/zins_fp_ctrl/wrapper/srb_bridge/srb_bridge_srb_0/srb_data_rd_buf_*/Q] -to [get_clocks CLK_fib_clk] 100.000
set_max_delay -through [get_pins {RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/sock_ce[*]}] 100.000
set_max_delay -through [get_pins {RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/sock_sr[*]}] 100.000
set_max_delay -through [get_pins {RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/sock_clko_en[*]}] 100.000
set_max_delay -through [get_nets RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/sysclk_xclk_0/bufgctrl_en] 100.000
set_max_delay -through [get_nets RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/sysclk_xclk2_0/bufgctrl_en] 100.000
set_max_delay -from [get_clocks CLK_sys_mclk] -to [get_clocks CLK_sys_pclk] 10.000


########## false_path :
#XDC=design_zpar.zdc
#xdc_lib lib_xdc:clockgen2
set_false_path -through [get_pins FK/zuf_clockgen/wrapper/clockgen_reset_0/dut_dreset]


########## multicycle_path_setup :


########## multicycle_path_hold :


########## pblock :


########## clock_dedicated_route :
#XDC=design_zpar.zdc
#xdc_lib lib_zse_xc7v_8c_v1_xdc:if_if_macro
set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets RTB/zins_fp_ctrl/mxfcmxif_sys_xclk2_zpt_xbuf]


########## loc :
#XDC=design_zpar.zdc
#xdc_lib lib_xdc:clockgen2
create_pblock pblock_clockgen
add_cells_to_pblock [get_pblocks pblock_clockgen] [get_cells [list FK/zuf_clockgen]]
resize_pblock [get_pblocks pblock_clockgen] -add {CLOCKREGION_X0Y3:CLOCKREGION_X1Y5}
#xdc_lib lib_zse_xc7v_8c_v1_xdc:if_if_macro
set_property PARENT SLR0 [get_pblocks pblock_ifmacro]
create_pblock pblock_ifmacro
add_cells_to_pblock [get_pblocks pblock_ifmacro] [get_cells {RTB/zins_fp_ctrl/wrapper/fib* RTB/zins_fp_ctrl/wrapper/srb*}]
resize_pblock [get_pblocks pblock_ifmacro] -add {CLOCKREGION_X1Y0:CLOCKREGION_X1Y1}
create_pblock pblock_fx_macro_slr
resize_pblock [get_pblocks pblock_fx_macro_slr] -add {CLOCKREGION_X0Y0:CLOCKREGION_X1Y2}
set_property LOC MMCME2_ADV_X0Y5 [get_cells RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/sysclk_xclk_0/series7_pll_xclk]
set_property LOC MMCME2_ADV_X0Y4 [get_cells RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/sysclk_xclk2_0/series7_pll_xclk]
set_property LOC BUFGCTRL_X0Y34 [get_cells RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/ckpadgc_mclk_in/bufg_0]
set_property LOC BUFGCTRL_X0Y73 [get_cells RTB/zins_fp_ctrl/wrapper/sysclk_mxif/u_xst_wrapper_0/ckpadgc_pclk_in/bufg_0]


########## init :


########## default :



# Vivado Generated miscellaneous constraints 

#revert back to original instance
current_instance -quiet
#
# zproc_GetFxMacro_slr #
# END #

set_false_path -from [get_ports zrdn_*] -to [get_clocks *]
