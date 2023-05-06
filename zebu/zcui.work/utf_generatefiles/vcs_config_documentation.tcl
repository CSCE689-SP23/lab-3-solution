#Original command:
#	synthesis {-use_vfs false}
#internal command:
vcs_uc_synth_opts {-use_vfs f}

#Original command:
#	dpi_synthesis {-enable all}
#internal command:
vcs_dpi_synthesis {-enable all}

#Original command:
#	assertion_synthesis {-enable ALL -never_fatal}
#internal command:
vcs_pre_elab_assertion_synthesis {-enable ALL}

#Original command:
#	assertion_synthesis {-enable ALL -never_fatal}
#internal command:
vcs_pre_elab_assertion_synthesis -never_fatal

#Original command:
#	probe_signals {-rtlname top.u_stb.cnt_error_in}
#internal command:
vcs_probe_signals {-rtlname top.u_stb.cnt_error_in}

#Original command:
#	probe_signals {-rtlname top.u_stb.cnt_error_out}
#internal command:
vcs_probe_signals {-rtlname top.u_stb.cnt_error_out}

