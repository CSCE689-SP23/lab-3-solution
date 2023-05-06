# zPar zPar_zCui.tcl
unset ZEBU_INTER_FPGA_CLK_ON
zSendMsg -msg "start:${HOSTNAME}"
zPar zPar_zCui.tcl
exitcode=$?
echo "command exit code is '${exitcode}'"
zSendMsg -msg "end:$exitcode"
exit ${exitcode}
