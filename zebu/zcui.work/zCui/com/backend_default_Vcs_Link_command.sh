# zPreBackend vcs_ln.tcl
zSendMsg -msg "start:${HOSTNAME}"
zPreBackend vcs_ln.tcl
exitcode=$?
echo "command exit code is '${exitcode}'"
zSendMsg -msg "end:$exitcode"
exit ${exitcode}
