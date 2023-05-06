# checkVcsVersion.sh
zSendMsg -msg "start:${HOSTNAME}"
checkVcsVersion.sh
exitcode=$?
echo "command exit code is '${exitcode}'"
zSendMsg -msg "end:$exitcode"
exit ${exitcode}
