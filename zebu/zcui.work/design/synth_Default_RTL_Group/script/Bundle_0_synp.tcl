-comp_unit { 
  -top {
    -lib default
    -primary clkg
    -secondary ""
    -result_file edif/clkg/clkg.edf.gz
    -unit scm
  } 
  -dep {
    -kind top
    -lib default
    -primary clkg
    -secondary ""
    -ver scm
    -input_file src/clkg.scm
    -unit scm
  } 
}\
-comp_unit { 
  -top {
    -lib default
    -primary dut
    -secondary ""
    -result_file edif/dut/dut.edf.gz
    -unit scm
  } 
  -dep {
    -kind top
    -lib default
    -primary dut
    -secondary ""
    -ver scm
    -input_file src/dut.scm
    -unit scm
  } 
}\
-comp_unit { 
  -top {
    -lib default
    -primary fifo_0000
    -secondary ""
    -result_file edif/fifo_0000/fifo_0000.edf.gz
    -unit scm
  } 
  -dep {
    -kind top
    -lib default
    -primary fifo_0000
    -secondary ""
    -ver scm
    -input_file src/fifo_0000.scm
    -unit scm
  } 
}\
-comp_unit { 
  -top {
    -lib default
    -primary fifo_usage_spy
    -secondary ""
    -result_file edif/fifo_usage_spy/fifo_usage_spy.edf.gz
    -unit scm
  } 
  -dep {
    -kind top
    -lib default
    -primary fifo_usage_spy
    -secondary ""
    -ver scm
    -input_file src/fifo_usage_spy.scm
    -unit scm
  } 
}\
-comp_unit { 
  -top {
    -lib default
    -primary parity
    -secondary ""
    -result_file edif/parity/parity.edf.gz
    -unit scm
  } 
  -dep {
    -kind top
    -lib default
    -primary parity
    -secondary ""
    -ver scm
    -input_file src/parity.scm
    -unit scm
  } 
}\
-comp_unit { 
  -top {
    -lib default
    -primary parity_check
    -secondary ""
    -result_file edif/parity_check/parity_check.edf.gz
    -unit scm
  } 
  -dep {
    -kind top
    -lib default
    -primary parity_check
    -secondary ""
    -ver scm
    -input_file src/parity_check.scm
    -unit scm
  } 
}\
-comp_unit { 
  -top {
    -lib default
    -primary proba
    -secondary ""
    -result_file edif/proba/proba.edf.gz
    -unit scm
  } 
  -dep {
    -kind top
    -lib default
    -primary proba
    -secondary ""
    -ver scm
    -input_file src/proba.scm
    -unit scm
  } 
}\
-comp_unit { 
  -top {
    -lib default
    -primary proba_0000
    -secondary ""
    -result_file edif/proba_0000/proba_0000.edf.gz
    -unit scm
  } 
  -dep {
    -kind top
    -lib default
    -primary proba_0000
    -secondary ""
    -ver scm
    -input_file src/proba_0000.scm
    -unit scm
  } 
}\
-comp_unit { 
  -top {
    -lib default
    -primary ram
    -secondary ""
    -result_file edif/ram/ram.edf.gz
    -unit scm
  } 
  -dep {
    -kind top
    -lib default
    -primary ram
    -secondary ""
    -ver scm
    -input_file src/ram.scm
    -unit scm
  } 
}\
-comp_unit { 
  -top {
    -lib default
    -primary rom
    -secondary ""
    -result_file edif/rom/rom.edf.gz
    -unit scm
  } 
  -dep {
    -kind top
    -lib default
    -primary rom
    -secondary ""
    -ver scm
    -input_file src/rom.scm
    -unit scm
  } 
}\
-comp_unit { 
  -top {
    -lib default
    -primary stb
    -secondary ""
    -result_file edif/stb/stb.edf.gz
    -unit scm
  } 
  -dep {
    -kind top
    -lib default
    -primary stb
    -secondary ""
    -ver scm
    -input_file src/stb.scm
    -unit scm
  } 
}\
-comp_unit { 
  -top {
    -lib default
    -primary top
    -secondary ""
    -result_file edif/top/top.edf.gz
    -unit scm
  } 
  -dep {
    -kind top
    -lib default
    -primary top
    -secondary ""
    -ver scm
    -input_file src/top.scm
    -unit scm
  } 
}\
