# zCoreBuild zCoreBuild_ztb.tcl
zSendMsg -msg "start:${HOSTNAME}"
zCoreBuild zCoreBuild_ztb.tcl
exitcode=$?
echo "command exit code is '${exitcode}'"
zSendMsg -msg "end:$exitcode"
exit ${exitcode}
