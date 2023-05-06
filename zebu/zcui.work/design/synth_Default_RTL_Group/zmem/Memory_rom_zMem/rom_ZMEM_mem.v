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



/* synopsys translate_off */

  reg /*sparse*/ [  8:0] mem [0:255];


  `ifdef ZFMCHECK_SIM
    reg tb_assert;
    integer zfm_mem_genvar;
    initial begin
      for(zfm_mem_genvar = 0; zfm_mem_genvar < 256; zfm_mem_genvar = zfm_mem_genvar + 1)
        mem[zfm_mem_genvar] = 'b0;
      tb_assert = 1'b1; 
    end
  `endif

  `ifdef ZFMCHECK_SIM
    reg [0:0] rw_tb_assert;
    initial begin
      rw_tb_assert = ~0;
    end
  `endif
  reg [  8:0] r0do_reg0;
  assign r0do = r0do_reg0;


  reg [  8:0] maskr0;

  always @ ( posedge r0clk )
  begin

    //-------- Read (port r0)
    r0do_reg0 <= mem[r0addr];
  end

  `ifdef ZFMCHECK_SIM
    assign tb_assert = &rw_tb_assert;
  `endif

/* synopsys translate_on */


endmodule
