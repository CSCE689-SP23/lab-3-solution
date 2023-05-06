# zGenerateRhinoFsdb -z zcui.work -l zGenerateRhinoFsdb.log
zSendMsg -msg "start:${HOSTNAME}"
zGenerateRhinoFsdb -z zcui.work -l zGenerateRhinoFsdb.log
exitcode=$?
echo "command exit code is '${exitcode}'"
zSendMsg -msg "end:$exitcode"
exit ${exitcode}
