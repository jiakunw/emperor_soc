transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/xil_defaultlib
vlib riviera/microblaze_v11_0_14
vlib riviera/microblaze_riscv_v1_0_3
vlib riviera/lmb_v10_v3_0_14
vlib riviera/lmb_bram_if_cntlr_v4_0_25
vlib riviera/blk_mem_gen_v8_4_9
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/mdm_riscv_v1_0_3
vlib riviera/lib_cdc_v1_0_3
vlib riviera/proc_sys_reset_v5_0_16

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib
vmap microblaze_v11_0_14 riviera/microblaze_v11_0_14
vmap microblaze_riscv_v1_0_3 riviera/microblaze_riscv_v1_0_3
vmap lmb_v10_v3_0_14 riviera/lmb_v10_v3_0_14
vmap lmb_bram_if_cntlr_v4_0_25 riviera/lmb_bram_if_cntlr_v4_0_25
vmap blk_mem_gen_v8_4_9 riviera/blk_mem_gen_v8_4_9
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap mdm_riscv_v1_0_3 riviera/mdm_riscv_v1_0_3
vmap lib_cdc_v1_0_3 riviera/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_16 riviera/proc_sys_reset_v5_0_16

vlog -work xpm  -incr "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/3cbc" "+incdir+../../../bd/top/ipshared/98ab/bc9d" "+incdir+../../../bd/top/ipshared/98ab/uart" "+incdir+../../../bd/top/ipshared/98ab/timer" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/814a/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/1017/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/52c0/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/2276/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/98ab/bc9d" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/98ab/uart" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/98ab/timer" -l xpm -l xil_defaultlib -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 \
"/tools/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"/tools/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/3cbc" "+incdir+../../../bd/top/ipshared/98ab/bc9d" "+incdir+../../../bd/top/ipshared/98ab/uart" "+incdir+../../../bd/top/ipshared/98ab/timer" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/814a/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/1017/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/52c0/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/2276/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/98ab/bc9d" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/98ab/uart" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/98ab/timer" -l xpm -l xil_defaultlib -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 \
"../../../bd/top/ip/top_clk_wiz_2/top_clk_wiz_2_clk_wiz.v" \
"../../../bd/top/ip/top_clk_wiz_2/top_clk_wiz_2.v" \

vcom -work microblaze_v11_0_14 -93  -incr \
"../../../../emperor.gen/sources_1/bd/top/ipshared/a243/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work microblaze_riscv_v1_0_3 -93  -incr \
"../../../../emperor.gen/sources_1/bd/top/ipshared/f9dd/hdl/microblaze_riscv_v1_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/top/ip/top_microblaze_riscv_0_0/sim/top_microblaze_riscv_0_0.vhd" \

vcom -work lmb_v10_v3_0_14 -93  -incr \
"../../../../emperor.gen/sources_1/bd/top/ipshared/7495/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/top/ip/top_dlmb_v10_0/sim/top_dlmb_v10_0.vhd" \
"../../../bd/top/ip/top_ilmb_v10_0/sim/top_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_25 -93  -incr \
"../../../../emperor.gen/sources_1/bd/top/ipshared/73e9/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/top/ip/top_dlmb_bram_if_cntlr_0/sim/top_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/top/ip/top_ilmb_bram_if_cntlr_0/sim/top_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_9  -incr -v2k5 "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/3cbc" "+incdir+../../../bd/top/ipshared/98ab/bc9d" "+incdir+../../../bd/top/ipshared/98ab/uart" "+incdir+../../../bd/top/ipshared/98ab/timer" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/814a/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/1017/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/52c0/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/2276/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/98ab/bc9d" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/98ab/uart" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/98ab/timer" -l xpm -l xil_defaultlib -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 \
"../../../../emperor.gen/sources_1/bd/top/ipshared/5ec1/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/3cbc" "+incdir+../../../bd/top/ipshared/98ab/bc9d" "+incdir+../../../bd/top/ipshared/98ab/uart" "+incdir+../../../bd/top/ipshared/98ab/timer" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/814a/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/1017/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/52c0/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/2276/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/98ab/bc9d" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/98ab/uart" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/98ab/timer" -l xpm -l xil_defaultlib -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 \
"../../../bd/top/ip/top_lmb_bram_0/sim/top_lmb_bram_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93  -incr \
"../../../../emperor.gen/sources_1/bd/top/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_riscv_v1_0_3 -93  -incr \
"../../../../emperor.gen/sources_1/bd/top/ipshared/d547/hdl/mdm_riscv_v1_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/top/ip/top_mdm_1_0/sim/top_mdm_1_0.vhd" \

vcom -work lib_cdc_v1_0_3 -93  -incr \
"../../../../emperor.gen/sources_1/bd/top/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_16 -93  -incr \
"../../../../emperor.gen/sources_1/bd/top/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/top/ip/top_rst_clk_wiz_100M_1/sim/top_rst_clk_wiz_100M_1.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/3cbc" "+incdir+../../../bd/top/ipshared/98ab/bc9d" "+incdir+../../../bd/top/ipshared/98ab/uart" "+incdir+../../../bd/top/ipshared/98ab/timer" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/814a/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/1017/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/52c0/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/2276/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/98ab/bc9d" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/98ab/uart" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/98ab/timer" -l xpm -l xil_defaultlib -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 \
"../../../bd/top/ip/top_ila_1_0/sim/top_ila_1_0.v" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/3cbc" "+incdir+../../../bd/top/ipshared/98ab/bc9d" "+incdir+../../../bd/top/ipshared/98ab/uart" "+incdir+../../../bd/top/ipshared/98ab/timer" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/814a/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/1017/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/52c0/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/2276/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/98ab/bc9d" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/98ab/uart" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/98ab/timer" -l xpm -l xil_defaultlib -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 \
"../../../bd/top/ipshared/98ab/mmio_controller/axi_mmio_controller.sv" \
"../../../bd/top/ipshared/98ab/uart/tb/fifo_tb.sv" \
"../../../bd/top/ipshared/98ab/uart/tb/rx_tb.sv" \
"../../../bd/top/ipshared/98ab/timer/tb/timer_tb.sv" \
"../../../bd/top/ipshared/98ab/uart/uart.sv" \
"../../../bd/top/ipshared/98ab/mmio_subsys.sv" \
"../../../bd/top/ipshared/98ab/src/gpio.sv" \
"../../../bd/top/ip/top_mmio_subsystem_1_0/sim/top_mmio_subsystem_1_0.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/3cbc" "+incdir+../../../bd/top/ipshared/98ab/bc9d" "+incdir+../../../bd/top/ipshared/98ab/uart" "+incdir+../../../bd/top/ipshared/98ab/timer" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/814a/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/1017/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/52c0/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/2276/hdl/verilog" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/98ab/bc9d" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/98ab/uart" "+incdir+../../../../emperor.gen/sources_1/bd/top/ipshared/98ab/timer" -l xpm -l xil_defaultlib -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 \
"../../../bd/top/sim/top.v" \

vlog -work xil_defaultlib \
"glbl.v"

