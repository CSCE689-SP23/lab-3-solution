# checkFEVersion.sh
zSendMsg -msg "start:${HOSTNAME}"
checkFEVersion.sh
exitcode=$?
echo "command exit code is '${exitcode}'"
zSendMsg -msg "end:$exitcode"
exit ${exitcode}
