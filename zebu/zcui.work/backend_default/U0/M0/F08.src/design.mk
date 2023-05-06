# EMULATION and VERIFICATION ENGINEERING (c) - 2004-2006
# ------------------------------------------------------
# Makefile to compile the firmware

.NOTPARALLEL:

FPGA      = 7vlx2000tff1925
DESIGN   = design

INCR_SCRIPT = zNetgen_incremental.tcl

PROPERTY_DB = zNetgen_property.db

FWC_CONSTRAINTS = design_fwc.zdc

BITSTREAM_STRING = ZSE_XC7V_8C_F08-2014.12-2835034

TOP_NAME = top

FPGA_NUM = 8

UNIT_NUM = 0

MOD_NUM = 0

DB_FPGA_INDEX = 14

DB_DEV_INDEX  = 37

FPGA_PATH = U0/M0/F08.src

BITGEN_COMPIL_OPTIONS = -w -g DriveDONE:Yes -g persist:x32 -g StartUpClk:CCLK -g OverTempPowerDown:Enable

ZEBU_HYDRA_ENABLE = 0

ZEBU_ROOT ?= 

include $(ZEBU_ROOT)/etc/vivado_v7/design_constant.vivado_v7.mk
