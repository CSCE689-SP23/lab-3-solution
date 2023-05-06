# $ZEBU_ROOT/bin/postFpgaAnalyzer
zSendMsg -msg "start:${HOSTNAME}"
$ZEBU_ROOT/bin/postFpgaAnalyzer
exitcode=$?
echo "command exit code is '${exitcode}'"
zSendMsg -msg "end:$exitcode"
exit ${exitcode}
