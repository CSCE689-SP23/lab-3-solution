# zPreBackend zrtldb_ln.tcl
zSendMsg -msg "start:${HOSTNAME}"
zPreBackend zrtldb_ln.tcl
exitcode=$?
echo "command exit code is '${exitcode}'"
zSendMsg -msg "end:$exitcode"
exit ${exitcode}
