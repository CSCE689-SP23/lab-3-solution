# make winner FX=F00 LABEL=Original RMRETRYNUMBER=120
zSendMsg -msg "start:${HOSTNAME}"
make winner FX=F00 LABEL=Original RMRETRYNUMBER=120
exitcode=$?
echo "command exit code is '${exitcode}'"
zSendMsg -msg "end:$exitcode"
exit ${exitcode}
