# EMULATION and VERIFICATION ENGINEERING (c) 2009 - 2012
# ------------------------------------------------------
# Makefile to compile IF & DUT FPGAs

ifeq ($(ZEBU_ROOT),)
$(error ZEBU_ROOT environment variable is not set.)
endif

DVE_FILE = ../vcs_splitter/vcs.dve
ZRTB_FW_DVE_FILE = ../../../vcs_splitter/vcs.dve

include $(ZEBU_ROOT)/etc/zrtbfe/zRTB_FE.mk

