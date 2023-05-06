# zFe compile_hdr.tcl script/Bundle_0_synp.tcl -log Bundle_0.log -zlog 1
zSendMsg -msg "start:${HOSTNAME}"
zFe compile_hdr.tcl script/Bundle_0_synp.tcl -log Bundle_0.log -zlog 1
exitcode=$?
echo "command exit code is '${exitcode}'"
zSendMsg -msg "end:$exitcode"
exit ${exitcode}
