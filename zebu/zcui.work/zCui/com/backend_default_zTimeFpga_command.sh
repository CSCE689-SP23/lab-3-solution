# zTime zTime_fpga_zcui.tcl -log zTime_fpga.log
zSendMsg -msg "start:${HOSTNAME}"
zTime zTime_fpga_zcui.tcl -log zTime_fpga.log
exitcode=$?
echo "command exit code is '${exitcode}'"
zSendMsg -msg "end:$exitcode"
exit ${exitcode}
