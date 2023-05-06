# zPostFrontend zrtldb_be.tcl
zSendMsg -msg "start:${HOSTNAME}"
zPostFrontend zrtldb_be.tcl
exitcode=$?
echo "command exit code is '${exitcode}'"
zSendMsg -msg "end:$exitcode"
exit ${exitcode}
