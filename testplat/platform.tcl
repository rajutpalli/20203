# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /tmp/squish/worksp_18194_19221/testplat/platform.tcl
# 
# OR launch xsct and run below command.
# source /tmp/squish/worksp_18194_19221/testplat/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {testplat}\
-hw {/proj/xbuilds/SWIP/2020.3_1201_2351/installs/lin64/Vitis/2020.3/bin/../data/embeddedsw/lib/fixed_hwplatforms/vck190.xsa}\
-proc {psv_cortexa72_0} -os {standalone} -fsbl-target {psu_cortexa53_0} -out {/tmp/squish/worksp_18194_19221}

platform write
platform generate -domains 
platform active {testplat}
domain create -name {a72_1} -os {standalone} -proc {psv_cortexa72_1} -arch {64-bit} -display-name {a72_1} -desc {} -runtime {cpp}
platform generate -domains 
platform write
domain -report -json
platform generate
