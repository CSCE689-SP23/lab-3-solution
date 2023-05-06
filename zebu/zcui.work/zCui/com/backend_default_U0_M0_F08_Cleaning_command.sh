# make clean FX=F08
zSendMsg -msg "start:${HOSTNAME}"
make clean FX=F08
exitcode=$?
echo "command exit code is '${exitcode}'"
zSendMsg -msg "end:$exitcode"
exit ${exitcode}
