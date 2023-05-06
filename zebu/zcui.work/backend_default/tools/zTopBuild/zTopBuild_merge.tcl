read_znf tools/zTopBuild/global_ztb_top.edf.gz
read_znf edif/top.edf.gz
merge
set_top zsplit_lib_name:top
write_znl tools/zTopBuild/global_ztb_top.edf.gz
