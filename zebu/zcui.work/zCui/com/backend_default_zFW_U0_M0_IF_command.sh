# zRTB_FW -edf IF_zFW.edf.gz -dve ../../../vcs_splitter/vcs.dve -if U0/M0/IF.src
zSendMsg -msg "start:${HOSTNAME}"
zRTB_FW -edf IF_zFW.edf.gz -dve ../../../vcs_splitter/vcs.dve -if U0/M0/IF.src
exitcode=$?
echo "command exit code is '${exitcode}'"
zSendMsg -msg "end:$exitcode"
exit ${exitcode}
