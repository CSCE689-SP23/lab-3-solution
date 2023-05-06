# zTime zTime_zcui.tcl
zSendMsg -msg "start:${HOSTNAME}"
zTime zTime_zcui.tcl
exitcode=$?
echo "command exit code is '${exitcode}'"
zSendMsg -msg "end:$exitcode"
exit ${exitcode}
