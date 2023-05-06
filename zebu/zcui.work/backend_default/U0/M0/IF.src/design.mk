# EMULATION and VERIFICATION ENGINEERING (c) - Apr 2002
# -----------------------------------------------------
# Makefile to compile the firmware

FPGA_IF = 7vlx2000tff1925
FPGA     = $(FPGA_IF)
DESIGN   = design

BITGEN_COMPIL_OPTIONS = -w -g DriveDONE:Yes -g persist:x16 -g StartUpClk:CCLK -g OverTempPowerDown:Enable -g DONE_cycle:1 -g GTS_cycle:2
IF_FPGA     = 1

UNIT_NUM = 0

MOD_NUM = 0

BITSTREAM_STRING = ZSE_XC7V_8C_IF-2014.12-3786508

ZEBU_ROOT ?= 
include $(ZEBU_ROOT)/etc/vivado_v7/design_constant.vivado_v7.mk
