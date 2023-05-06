#VCS_ZEBU_PROBE_FORCE_NEWFW zTopBuild commands - begin
probe_signals -rtlname { {top.u_stb.cnt_error_in} }
probe_signals -rtlname { {top.u_stb.cnt_error_out} }
#VCS_ZEBU_PROBE_FORCE_NEWFW zTopBuild commands - end
source /home/faculty/d/davidkebo/davidkebo/csce689/labs/lab3-davidkebo/zebu/zcui.work/utf_generatefiles/HWTop_port_probes.tcl
source /home/faculty/d/davidkebo/davidkebo/csce689/labs/lab3-davidkebo/zebu/zcui.work/utf_generatefiles/zcov_protect.tcl
source /home/faculty/d/davidkebo/davidkebo/csce689/labs/lab3-davidkebo/zebu/zcui.work/utf_generatefiles/uc_dve_ztb.tcl
