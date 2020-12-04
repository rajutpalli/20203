# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /scratch/workspacegit3/vck190/platform.tcl
# 
# OR launch xsct and run below command.
# source /scratch/workspacegit3/vck190/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {vck190}\
-hw {/proj/xbuilds/2020.3_daily_latest/installs/lin64/Vitis/2020.3/data/embeddedsw/lib/fixed_hwplatforms/vck190.xsa}\
-fsbl-target {psu_cortexa53_0} -out {/scratch/workspacegit3}

platform write
domain create -name {standalone_psv_cortexa72_0} -display-name {standalone_psv_cortexa72_0} -os {standalone} -proc {psv_cortexa72_0} -runtime {cpp} -arch {64-bit} -support-app {hello_world}
platform generate -domains 
platform active {vck190}
platform generate -quick
platform generate
