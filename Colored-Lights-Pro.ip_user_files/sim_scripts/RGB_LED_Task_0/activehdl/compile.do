vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm

vlog -work xil_defaultlib  -sv2k12 \
"F:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"F:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"F:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../ip/RGB_LED_Task_0/sim/Clk_Division.v" \
"../../../ip/RGB_LED_Task_0/sim/Driver_SK6805.v" \
"../../../ip/RGB_LED_Task_0/sim/RGB_LED_Task.v" \
"../../../ip/RGB_LED_Task_0/sim/RGB_LED_Task_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

