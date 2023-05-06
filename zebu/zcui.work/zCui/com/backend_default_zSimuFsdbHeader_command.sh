# zSimuFsdbHeader --zebu-work .
zSendMsg -msg "start:${HOSTNAME}"
zSimuFsdbHeader --zebu-work .
exitcode=$?
echo "command exit code is '${exitcode}'"
zSendMsg -msg "end:$exitcode"
exit ${exitcode}
