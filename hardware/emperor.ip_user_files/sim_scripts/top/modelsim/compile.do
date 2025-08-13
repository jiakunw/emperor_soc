vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/microblaze_v11_0_14
vlib modelsim_lib/msim/microblaze_riscv_v1_0_3
vlib modelsim_lib/msim/lmb_v10_v3_0_14
vlib modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_25
vlib modelsim_lib/msim/blk_mem_gen_v8_4_9
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/mdm_riscv_v1_0_3
vlib modelsim_lib/msim/lib_cdc_v1_0_3
vlib modelsim_lib/msim/proc_sys_reset_v5_0_16

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap microblaze_v11_0_14 modelsim_lib/msim/microblaze_v11_0_14
vmap microblaze_riscv_v1_0_3 modelsim_lib/msim/microblaze_riscv_v1_0_3
vmap lmb_v10_v3_0_14 modelsim_lib/msim/lmb_v10_v3_0_14
vmap lmb_bram_if_cntlr_v4_0_25 modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_25
vmap blk_mem_gen_v8_4_9 modelsim_lib/msim/blk_mem_gen_v8_4_9
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap mdm_riscv_v1_0_3 modelsim_lib/msim/mdm_riscv_v1_0_3
vmap lib_cdc_v1_0_3 modelsim_lib/msim/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_16 modelsim_lib/msim/proc_sys_reset_v5_0_16

vlog -work xpm -64 -incr -mfcu  -sv "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/3cbc" "+incdir+../../../bd/top/ipshared/8622/bc9d" "+incdir+../../../bd/top/ipshared/8622/uart" "+incdir+../../../bd/top/ipshared/8622/timer" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/814a/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/1017/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/52c0/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/2276/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/8622/bc9d" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/8622/uart" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/8622/timer" \
"/tools/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/tools/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/3cbc" "+incdir+../../../bd/top/ipshared/8622/bc9d" "+incdir+../../../bd/top/ipshared/8622/uart" "+incdir+../../../bd/top/ipshared/8622/timer" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/814a/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/1017/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/52c0/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/2276/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/8622/bc9d" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/8622/uart" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/8622/timer" \
"../../../bd/top/ip/top_clk_wiz_2/top_clk_wiz_2_clk_wiz.v" \
"../../../bd/top/ip/top_clk_wiz_2/top_clk_wiz_2.v" \

vcom -work microblaze_v11_0_14 -64 -93  \
"../../../../emperor.gen/sources_1/bd/top/ipshared/a243/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work microblaze_riscv_v1_0_3 -64 -93  \
"../../../../emperor.gen/sources_1/bd/top/ipshared/f9dd/hdl/microblaze_riscv_v1_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/top/ip/top_microblaze_riscv_0_0/sim/top_microblaze_riscv_0_0.vhd" \

vcom -work lmb_v10_v3_0_14 -64 -93  \
"../../../../emperor.gen/sources_1/bd/top/ipshared/7495/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/top/ip/top_dlmb_v10_0/sim/top_dlmb_v10_0.vhd" \
"../../../bd/top/ip/top_ilmb_v10_0/sim/top_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_25 -64 -93  \
"../../../../emperor.gen/sources_1/bd/top/ipshared/73e9/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/top/ip/top_dlmb_bram_if_cntlr_0/sim/top_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/top/ip/top_ilmb_bram_if_cntlr_0/sim/top_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_9 -64 -incr -mfcu  "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/3cbc" "+incdir+../../../bd/top/ipshared/8622/bc9d" "+incdir+../../../bd/top/ipshared/8622/uart" "+incdir+../../../bd/top/ipshared/8622/timer" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/814a/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/1017/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/52c0/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/2276/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/8622/bc9d" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/8622/uart" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/8622/timer" \
"../../../../emperor.gen/sources_1/bd/top/ipshared/5ec1/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/3cbc" "+incdir+../../../bd/top/ipshared/8622/bc9d" "+incdir+../../../bd/top/ipshared/8622/uart" "+incdir+../../../bd/top/ipshared/8622/timer" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/814a/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/1017/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/52c0/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/2276/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/8622/bc9d" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/8622/uart" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/8622/timer" \
"../../../bd/top/ip/top_lmb_bram_0/sim/top_lmb_bram_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93  \
"../../../../emperor.gen/sources_1/bd/top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_riscv_v1_0_3 -64 -93  \
"../../../../emperor.gen/sources_1/bd/top/ipshared/d547/hdl/mdm_riscv_v1_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/top/ip/top_mdm_1_0/sim/top_mdm_1_0.vhd" \

vcom -work lib_cdc_v1_0_3 -64 -93  \
"../../../../emperor.gen/sources_1/bd/top/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_16 -64 -93  \
"../../../../emperor.gen/sources_1/bd/top/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/top/ip/top_rst_clk_wiz_100M_1/sim/top_rst_clk_wiz_100M_1.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/3cbc" "+incdir+../../../bd/top/ipshared/8622/bc9d" "+incdir+../../../bd/top/ipshared/8622/uart" "+incdir+../../../bd/top/ipshared/8622/timer" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/814a/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/1017/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/52c0/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/2276/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/8622/bc9d" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/8622/uart" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/8622/timer" \
"../../../bd/top/ip/top_ila_1_0/sim/top_ila_1_0.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/3cbc" "+incdir+../../../bd/top/ipshared/8622/bc9d" "+incdir+../../../bd/top/ipshared/8622/uart" "+incdir+../../../bd/top/ipshared/8622/timer" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/814a/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/1017/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/52c0/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/2276/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/8622/bc9d" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/8622/uart" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/8622/timer" \
"../../../bd/top/ipshared/8622/mmio_controller/axi_mmio_controller.sv" \
"../../../bd/top/ipshared/8622/uart/tb/fifo_tb.sv" \
"../../../bd/top/ipshared/8622/gpio/gpio.sv" \
"../../../bd/top/ipshared/8622/uart/tb/rx_tb.sv" \
"../../../bd/top/ipshared/8622/timer/tb/timer_tb.sv" \
"../../../bd/top/ipshared/8622/uart/uart.sv" \
"../../../bd/top/ipshared/8622/mmio_subsys.sv" \
"../../../bd/top/ip/top_mmio_subsystem_1_0/sim/top_mmio_subsystem_1_0.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/3cbc" "+incdir+../../../bd/top/ipshared/8622/bc9d" "+incdir+../../../bd/top/ipshared/8622/uart" "+incdir+../../../bd/top/ipshared/8622/timer" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/814a/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/1017/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/52c0/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/2276/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/8622/bc9d" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/8622/uart" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/8622/timer" \
"../../../bd/top/sim/top.v" \

vlog -work xil_defaultlib \
"glbl.v"

