# zRtlToEqui --zebu-work .
zSendMsg -msg "start:${HOSTNAME}"
zRtlToEqui --zebu-work .
exitcode=$?
echo "command exit code is '${exitcode}'"
zSendMsg -msg "end:$exitcode"
exit ${exitcode}
