cmn::option fe_hcsrc /opt/coe/synopsys/zebu/Q-2020.03-SP1-4/etc/vhs/hcsrc.zcui
cmn::option fe_hcsrc /home/faculty/d/davidkebo/davidkebo/csce689/labs/lab3-davidkebo/zebu/zcui.work/utf_generatefiles/global_utf.hcsrc 
cmn::option fe_hcsrc /home/faculty/d/davidkebo/davidkebo/csce689/labs/lab3-davidkebo/zebu/zcui.work/utf_generatefiles/new_global_utf_config.hcsrc 
cmn::option fe_hcsrc "/home/faculty/d/davidkebo/davidkebo/csce689/labs/lab3-davidkebo/zebu/zcui.work/design/synth_Default_RTL_Group/dut.hcsrc"
cmn::option fe_hcsrc hcsrc.iba
cmn::option phase synthesis 
fs::simple_compile \
-technology vtx7 \
-mode block_based \
-version NewMixedFlow \
\
-zNetgen_new "../zfepp_Default_RTL_Group.tcl"  \
-forest_tops {} \
