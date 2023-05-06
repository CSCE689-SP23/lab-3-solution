# make winner FX=F08 LABEL=Original RMRETRYNUMBER=120
zSendMsg -msg "start:${HOSTNAME}"
make winner FX=F08 LABEL=Original RMRETRYNUMBER=120
exitcode=$?
echo "command exit code is '${exitcode}'"
zSendMsg -msg "end:$exitcode"
exit ${exitcode}
