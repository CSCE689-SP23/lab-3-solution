# zTopBuild zTopBuild.tcl
zSendMsg -msg "start:${HOSTNAME}"
zTopBuild zTopBuild.tcl
exitcode=$?
echo "command exit code is '${exitcode}'"
zSendMsg -msg "end:$exitcode"
exit ${exitcode}
