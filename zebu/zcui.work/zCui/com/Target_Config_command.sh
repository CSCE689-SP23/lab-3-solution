# zTargetTools zTargetTools.tcl
zSendMsg -msg "start:${HOSTNAME}"
zTargetTools zTargetTools.tcl
exitcode=$?
echo "command exit code is '${exitcode}'"
zSendMsg -msg "end:$exitcode"
exit ${exitcode}
