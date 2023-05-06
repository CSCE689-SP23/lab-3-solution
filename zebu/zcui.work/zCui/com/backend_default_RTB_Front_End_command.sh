# zRTB_FE -dve ../vcs_splitter/vcs.dve
zSendMsg -msg "start:${HOSTNAME}"
zRTB_FE -dve ../vcs_splitter/vcs.dve
exitcode=$?
echo "command exit code is '${exitcode}'"
zSendMsg -msg "end:$exitcode"
exit ${exitcode}
