#!/bin/bash

###################################################################
# Script Name: start.sh
# Description: Creates Vivado project from tcl script
# Author:      Austin Owens
###################################################################

VIVADO_VER=2020.2
SCRIPT=settings64.sh
PROJECT_NAME=fpga_hdmi_test

# Source Xilinx environment script
source /tools/Xilinx/Vivado/$VIVADO_VER/$SCRIPT

# If the fpga_hdmi_test directory exists...
if [ -d "./$PROJECT_NAME" ] 
then
    # launch the project
    vivado ./$PROJECT_NAME/$PROJECT_NAME.xpr
else
    # otherwise, create and launch the project
    vivado -mode gui -source $PROJECT_NAME.tcl
fi


