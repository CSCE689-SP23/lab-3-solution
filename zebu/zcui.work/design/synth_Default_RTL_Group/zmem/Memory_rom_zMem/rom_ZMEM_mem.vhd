-- ###--------------------------------------------------------------------### --
--   Copyright Emulation And Verification Engineering                         --
-- ###--------------------------------------------------------------------### --
--   VHDL memory wrapper                                                      --
-- ###--------------------------------------------------------------------### --


-- 
-- #-------- Basic definition of memory 'rom_ZMEM_mem'
-- memory new                rom_ZMEM_mem ramlut
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
--   #-------- Definition of port 'r0'
--   memory add_port         r0 r
--   memory set_rw_mode      r0 ReadBeforeWrite
--   memory set_port_latency r0 1
--   memory set_port_access  r0 sync
--   memory_port r0 do     r0do
--   memory_port r0 addr   r0addr
--   memory_port r0 clk    r0clk posedge
--   memory set_debug_mode r0 true
-- 
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity rom_ZMEM_mem is 
  port (
      r0do : out std_logic_vector (8 downto 0)
      ;r0addr : in std_logic_vector (7 downto 0)
      ;r0clk : in  std_logic 
       );
end rom_ZMEM_mem;

architecture zMem of rom_ZMEM_mem is

-- synopsys translate_off
type mem_type is array (0 to 255) of std_logic_vector(8 downto 0);
signal mem : mem_type;

signal r0do_reg0: std_logic_vector (8 downto 0);
-- synopsys translate_on

begin
-- synopsys translate_off
  r0do <= r0do_reg0;

process ( r0clk )
  variable Y : integer ;
  begin

    --r0
    if ( r0clk'event and r0clk = '1' ) then
        r0do_reg0 <= mem(conv_integer(r0addr)); -- READ_BEFORE_WRITE
    end if;
end process;

-- synopsys translate_on

end zMem;
