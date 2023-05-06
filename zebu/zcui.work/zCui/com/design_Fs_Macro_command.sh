# zFe fs_macros.tcl -log fsMacro.log -zlog 1
zSendMsg -msg "start:${HOSTNAME}"
zFe fs_macros.tcl -log fsMacro.log -zlog 1
exitcode=$?
echo "command exit code is '${exitcode}'"
zSendMsg -msg "end:$exitcode"
exit ${exitcode}
