# target 
disable ztime_uses_rtl_names
enable advanced_incremental_mode
set_perf_flow_patch 2020.03-2
set_perf_flow_patch_list {2020.03 2020.03-1 2020.03-2 2020.03-LCA 2020.03-SP1-1-LCA}
set_perf_flow_internal flow1
design_size  -auto
set_logic_opt -drop_optimizable_waveform_capture yes
set_logic_opt -drop_write_only no
zforce -mode {dynamic} -object_not_found {fatal} -rtlname {{top.u_stb.proba_wr}}
zforce -mode {dynamic} -object_not_found {fatal} -rtlname {{top.u_stb.proba_rd}}
zforce -mode {dynamic} -object_not_found {fatal} -rtlname {{top.u_stb.rstn}}
