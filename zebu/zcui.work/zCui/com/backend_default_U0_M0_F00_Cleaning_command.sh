# make clean FX=F00
zSendMsg -msg "start:${HOSTNAME}"
make clean FX=F00
exitcode=$?
echo "command exit code is '${exitcode}'"
zSendMsg -msg "end:$exitcode"
exit ${exitcode}
