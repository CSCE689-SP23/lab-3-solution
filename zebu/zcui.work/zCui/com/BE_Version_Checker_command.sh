# checkBEVersion.sh
zSendMsg -msg "start:${HOSTNAME}"
checkBEVersion.sh
exitcode=$?
echo "command exit code is '${exitcode}'"
zSendMsg -msg "end:$exitcode"
exit ${exitcode}
