# tracean3.py --top-delay=5 --syn-details=5 --pr-summary-by-time=5 --hhmm --local-time=detect --show-memory --fix-graph --cpu-time /home/faculty/d/davidkebo/davidkebo/csce689/labs/lab3-davidkebo/zebu/zcui.work |tee zCui/log/profiled_compilations_BackendEntry.log
zSendMsg -msg "start:${HOSTNAME}"
tracean3.py --top-delay=5 --syn-details=5 --pr-summary-by-time=5 --hhmm --local-time=detect --show-memory --fix-graph --cpu-time /home/faculty/d/davidkebo/davidkebo/csce689/labs/lab3-davidkebo/zebu/zcui.work |tee zCui/log/profiled_compilations_BackendEntry.log
exitcode=$?
echo "command exit code is '${exitcode}'"
zSendMsg -msg "end:$exitcode"
exit ${exitcode}
