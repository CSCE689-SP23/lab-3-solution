/* ###--------------------------------------------------------------------### */
/*   Copyright Emulation And Verification Engineering                         */
/* ###--------------------------------------------------------------------### */
/*   Verilog memory wrapper                                                   */
/* ###--------------------------------------------------------------------### */


// 
// #-------- Basic definition of memory 'rom_ZMEM_mem'
// memory new                rom_ZMEM_mem ramlut
// memory depth              256
// memory width              9
// memory set_word_length    8
// 
// memory enable_all_ramlut  false
// memory disable_ramlut_simple_port_multiplexed  false
// 
// #-------- Memory advanced definition
// memory type                  sync
// memory scalarize             false
// memory set_memory_debug_mode false
// memory set_sys_freq          clk_50
// set_max_sys_freq          clk_50
// 
// 
//   #-------- Definition of port 'r0'
//   memory add_port         r0 r
//   memory set_rw_mode      r0 ReadBeforeWrite
//   memory set_port_latency r0 1
//   memory set_port_access  r0 sync
//   memory_port r0 do     r0do
//   memory_port r0 addr   r0addr
//   memory_port r0 clk    r0clk posedge
//   memory set_debug_mode r0 true
// 
// 

module rom_ZMEM_mem (
   r0do
  ,r0addr
  ,r0clk
);

  output [  8:  0] r0do;
  input  [  7:  0] r0addr;
  input            r0clk;



endmodule
