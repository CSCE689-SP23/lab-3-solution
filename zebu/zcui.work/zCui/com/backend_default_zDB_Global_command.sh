# zRDB -merge -script zDB_final_zcui.tcl
zSendMsg -msg "start:${HOSTNAME}"
zRDB -merge -script zDB_final_zcui.tcl
exitcode=$?
echo "command exit code is '${exitcode}'"
zSendMsg -msg "end:$exitcode"
exit ${exitcode}
