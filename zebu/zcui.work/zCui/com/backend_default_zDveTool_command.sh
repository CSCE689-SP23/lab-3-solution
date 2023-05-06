# zDveTools zDveTools.tcl
zSendMsg -msg "start:${HOSTNAME}"
zDveTools zDveTools.tcl
exitcode=$?
echo "command exit code is '${exitcode}'"
zSendMsg -msg "end:$exitcode"
exit ${exitcode}
