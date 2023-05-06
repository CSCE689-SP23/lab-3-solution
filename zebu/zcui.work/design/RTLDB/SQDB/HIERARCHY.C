<top>
top
<end>
<begin>
clkg
<end>
<begin>
dut
u_parity -> u_parity -> parity
u_fifo -> u_fifo -> fifo_0000
u_check -> u_check -> parity_check
<end>
<begin>
fifo_0000
u_fifo_usage_spy -> u_fifo_usage_spy -> fifo_usage_spy
u0_clkg -> u0_clkg -> clkg
<end>
<begin>
fifo_usage_spy
sqnod25 -> sqnod25 -> zebu_bb_ZDPI_MOD_fifo_usage_spy_ZDPI_fifo_usage_spy_notify_call0
sva_clock_inst -> sva_clock_inst -> zebu_reqsig_clock_zcompositeclock
<end>
<begin>
parity
<end>
<begin>
parity_check
sva_clock_inst -> sva_clock_inst -> zebu_reqsig_clock_zcompositeclock
sva_parity_error -> sva_parity_error -> ZSVA_MOD_PLI_1
<end>
<begin>
proba
<end>
<begin>
proba_0000
<end>
<begin>
ram
mem -> mem -> ram_ZMEM_mem
<end>
<begin>
rom
mem -> mem -> rom_ZMEM_mem
<end>
<begin>
stb
sqnod683 -> sqnod683 -> zebu_bb_ZDPI_MOD_stb_ZDPI_grp0_dummy_import_for_pli_call1
sqnod631 -> sqnod631 -> zebu_bb_ZDPI_MOD_stb_ZDPI_grp0_dummy_import_for_pli_call0
sva_clock_inst -> sva_clock_inst -> zebu_reqsig_clock_zcompositeclock
u_check -> u_check -> parity_check
u_ram -> u_ram -> ram
u1_proba -> u1_proba -> proba_0000
u_rom -> u_rom -> rom
u0_proba -> u0_proba -> proba
u_clk0 -> u_clk0 -> zceiClockPort
u_clk1 -> u_clk1 -> zceiClockPort
<end>
<begin>
top
u_stb -> u_stb -> stb
u_dut -> u_dut -> dut
<end>
