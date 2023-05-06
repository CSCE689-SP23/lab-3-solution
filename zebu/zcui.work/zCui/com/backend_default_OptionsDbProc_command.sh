# zPostFrontend optionsdb_be.tcl
zSendMsg -msg "start:${HOSTNAME}"
zPostFrontend optionsdb_be.tcl
exitcode=$?
echo "command exit code is '${exitcode}'"
zSendMsg -msg "end:$exitcode"
exit ${exitcode}
