# zProTopBuild zrtldb_rt.tcl
zSendMsg -msg "start:${HOSTNAME}"
zProTopBuild zrtldb_rt.tcl
exitcode=$?
echo "command exit code is '${exitcode}'"
zSendMsg -msg "end:$exitcode"
exit ${exitcode}
