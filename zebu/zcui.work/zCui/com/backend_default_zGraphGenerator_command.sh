# zGraphGenerator -l backend_default_zGraphGenerator.log -i tools/zDB/zTopBuild_equi.edf.gz -r top
zSendMsg -msg "start:${HOSTNAME}"
zGraphGenerator -l backend_default_zGraphGenerator.log -i tools/zDB/zTopBuild_equi.edf.gz -r top
exitcode=$?
echo "command exit code is '${exitcode}'"
zSendMsg -msg "end:$exitcode"
exit ${exitcode}
