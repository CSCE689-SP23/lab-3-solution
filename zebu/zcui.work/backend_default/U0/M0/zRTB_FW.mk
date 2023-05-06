# EMULATION and VERIFICATION ENGINEERING (c) - Feb 2009
# -----------------------------------------------------
# Makefile to run zRTB_FW and to generate wrappers

wrappers :
	@echo No wrapper to generate

# zRTB_FW
#
U0/M0/IF/design.tcl U0/M0/IF/design_var.tcl U0/M0/IF/design.mk U0/M0/ZebuDB.rtb.zdb : \
  $(DVE_FILE_ABS) $(ZRT_CLK_FILE) U0/M0/IF_zFW.edf.gz
	cd U0/M0 && $(REMOTECMD) $(ZRTB_FW) -dve $(ZRTB_FW_DVE_FILE) -edf IF_zFW.edf.gz -if U0/M0/IF $(ZRTB_FW_DRIVER_PATHS)
