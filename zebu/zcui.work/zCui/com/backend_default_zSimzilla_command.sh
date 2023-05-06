# zSimzilla --zebu-work . --generate-graphs
zSendMsg -msg "start:${HOSTNAME}"
zSimzilla --zebu-work . --generate-graphs
exitcode=$?
echo "command exit code is '${exitcode}'"
zSendMsg -msg "end:$exitcode"
exit ${exitcode}
