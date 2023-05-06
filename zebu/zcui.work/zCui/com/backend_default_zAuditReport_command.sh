# $ZEBU_ROOT/bin/zAudit -z .. --zebu_work backend_default report
zSendMsg -msg "start:${HOSTNAME}"
$ZEBU_ROOT/bin/zAudit -z .. --zebu_work backend_default report
exitcode=$?
echo "command exit code is '${exitcode}'"
zSendMsg -msg "end:$exitcode"
exit ${exitcode}
