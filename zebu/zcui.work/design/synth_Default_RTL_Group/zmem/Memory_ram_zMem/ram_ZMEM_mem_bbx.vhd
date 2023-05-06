-- ###--------------------------------------------------------------------### --
--   Copyright Emulation And Verification Engineering                         --
-- ###--------------------------------------------------------------------### --
--   VHDL memory wrapper                                                      --
-- ###--------------------------------------------------------------------### --


-- 
-- #-------- Basic definition of memory 'ram_ZMEM_mem'
-- memory new                ram_ZMEM_mem ramlut
-- memory depth              256
-- memory width              9
-- memory set_word_length    8
-- 
-- memory enable_all_ramlut  false
-- memory disable_ramlut_simple_port_multiplexed  false
-- 
-- #-------- Memory advanced definition
-- memory type                  sync
-- memory scalarize             false
-- memory set_memory_debug_mode false
-- memory set_sys_freq          clk_50
-- set_max_sys_freq          clk_50
-- 
-- 
--   #-------- Definition of port 'w0'
--   memory add_port         w0 w
--   memory set_rw_mode      w0 ReadBeforeWrite
--   memory set_port_latency w0 1
--   memory set_port_access  w0 sync
--   memory_port w0 di     w0di
--   memory_port w0 addr   w0addr
--   memory_port w0 clk    w0clk posedge
--   memory_port w0 we     w0we high
--   memory set_debug_mode w0 true
-- 
-- 

component ram_ZMEM_mem 
  port (
      w0di : in  std_logic_vector (8 downto 0)
      ;w0addr : in std_logic_vector (7 downto 0)
      ;w0we : in  std_logic 
      ;w0clk : in  std_logic 
       );
end component;

