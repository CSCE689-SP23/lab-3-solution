# zEquiGenerator -l backend_default_zEquiGenerator.log -i tools/zDB/zTopBuild_equi.edf.gz
zSendMsg -msg "start:${HOSTNAME}"
zEquiGenerator -l backend_default_zEquiGenerator.log -i tools/zDB/zTopBuild_equi.edf.gz
exitcode=$?
echo "command exit code is '${exitcode}'"
zSendMsg -msg "end:$exitcode"
exit ${exitcode}
