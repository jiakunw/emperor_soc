vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/microblaze_v11_0_14
vlib questa_lib/msim/microblaze_riscv_v1_0_3
vlib questa_lib/msim/lmb_v10_v3_0_14
vlib questa_lib/msim/lmb_bram_if_cntlr_v4_0_25
vlib questa_lib/msim/blk_mem_gen_v8_4_9
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/mdm_riscv_v1_0_3
vlib questa_lib/msim/lib_cdc_v1_0_3
vlib questa_lib/msim/proc_sys_reset_v5_0_16

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap microblaze_v11_0_14 questa_lib/msim/microblaze_v11_0_14
vmap microblaze_riscv_v1_0_3 questa_lib/msim/microblaze_riscv_v1_0_3
vmap lmb_v10_v3_0_14 questa_lib/msim/lmb_v10_v3_0_14
vmap lmb_bram_if_cntlr_v4_0_25 questa_lib/msim/lmb_bram_if_cntlr_v4_0_25
vmap blk_mem_gen_v8_4_9 questa_lib/msim/blk_mem_gen_v8_4_9
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap mdm_riscv_v1_0_3 questa_lib/msim/mdm_riscv_v1_0_3
vmap lib_cdc_v1_0_3 questa_lib/msim/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_16 questa_lib/msim/proc_sys_reset_v5_0_16

vlog -work xpm -64 -incr -mfcu  -sv "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/3cbc" "+incdir+../../../bd/top/ipshared/d100/bc9d" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/814a/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/1017/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/52c0/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/2276/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/d100/bc9d" \
"/tools/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/tools/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/3cbc" "+incdir+../../../bd/top/ipshared/d100/bc9d" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/814a/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/1017/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/52c0/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/2276/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/d100/bc9d" \
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

vlog -work blk_mem_gen_v8_4_9 -64 -incr -mfcu  "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/3cbc" "+incdir+../../../bd/top/ipshared/d100/bc9d" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/814a/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/1017/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/52c0/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/2276/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/d100/bc9d" \
"../../../../emperor.gen/sources_1/bd/top/ipshared/5ec1/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/3cbc" "+incdir+../../../bd/top/ipshared/d100/bc9d" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/814a/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/1017/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/52c0/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/2276/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/d100/bc9d" \
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

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/3cbc" "+incdir+../../../bd/top/ipshared/d100/bc9d" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/814a/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/1017/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/52c0/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/2276/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/d100/bc9d" \
"../../../bd/top/ip/top_ila_1_0/sim/top_ila_1_0.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/3cbc" "+incdir+../../../bd/top/ipshared/d100/bc9d" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/814a/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/1017/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/52c0/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/2276/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/d100/bc9d" \
"../../../bd/top/ipshared/d100/mmio_controller/axi_mmio_controller.sv" \
"../../../bd/top/ipshared/d100/uart/fifo.sv" \
"../../../bd/top/ipshared/d100/uart/tb/fifo_tb.sv" \
"../../../bd/top/ipshared/d100/uart/rx_tx.sv" \
"../../../bd/top/ipshared/d100/timer/timer.sv" \
"../../../bd/top/ipshared/d100/timer/tb/timer_tb.sv" \
"../../../bd/top/ipshared/d100/uart/uart.sv" \
"../../../bd/top/ipshared/d100/mmio_subsys.sv" \
"../../../bd/top/ipshared/d100/src/gpio.sv" \
"../../../bd/top/ipshared/d100/src/spi.sv" \
"../../../bd/top/ip/top_mmio_subsystem_1_0/sim/top_mmio_subsystem_1_0.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/3cbc" "+incdir+../../../bd/top/ipshared/d100/bc9d" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/814a/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/1017/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/52c0/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/2276/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/d100/bc9d" \
"../../../bd/top/sim/top.v" \

vlog -work xil_defaultlib \
"glbl.v"

