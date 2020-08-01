-makelib ies_lib/xil_defaultlib -sv \
  "F:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "F:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "F:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../ip/RGB_LED_Task_0/sim/Clk_Division.v" \
  "../../../ip/RGB_LED_Task_0/sim/Driver_SK6805.v" \
  "../../../ip/RGB_LED_Task_0/sim/RGB_LED_Task.v" \
  "../../../ip/RGB_LED_Task_0/sim/RGB_LED_Task_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

