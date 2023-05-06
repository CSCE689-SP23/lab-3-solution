ZCUI_set ArchitectureFile {/mnt/quinn_zebu/ZEBU_SYSTEM_DIR/config/zse_configuration.tcl}
ZCUI_set TopDebugFlag t
ZCUI_set MemoryIOAccessibilityFlag t
ZCUI_set VcsVerdiFlow true
ZCUI_set enableZSimzilla t
ZCUI_set enableZSimzillaDistributed f
ZCUI_set SwaveFlow f
ZCUI_set UseFpgaMultiLaunch t
ZCUI_add -jobQueue {DEFAULT_QUEUE} {} {} {1}
ZCUI_add -jobQueue {Zebu} {} {} {0}
ZCUI_add -jobQueue {ZebuIse} {} {} {20}
ZCUI_add -jobQueue {ZebuSynthesis} {} {} {7}
ZCUI_set ZMemLatencyFlag f
ZCUI_set SoftZMemLatency t
ZCUI_set DiskAccesOptimizerMethod 5
ZCUI_set ExistPRetryDelay 1000
ZCUI_set MaximumNumberOfExistPRetry 120
ZCUI_set PreFpgaTimingModel ConstantsBased
ZCUI_set VivadoSkewTime f
ZCUI_set VivadoFilterTime f
ZCUI_set SDFTimingAnalysis t
ZCUI_set VcsCommand {/home/faculty/d/davidkebo/davidkebo/csce689/labs/lab3-davidkebo/zebu/src/vcs_cmd.sh}
ZCUI_set ZparRoutingEffortMode Medium
