# make clean FX=IF
zSendMsg -msg "start:${HOSTNAME}"
make clean FX=IF
exitcode=$?
echo "command exit code is '${exitcode}'"
zSendMsg -msg "end:$exitcode"
exit ${exitcode}
