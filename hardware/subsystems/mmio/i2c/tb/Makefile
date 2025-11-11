# Target executable
TARGET = simv

# Source files
# Add regular source files
SRC = ../../../const.sv \
      ../../timer/timer.sv \
      ../../gpio/gpio.sv \
      ../../uart/fifo.sv \
      ../../uart/rx_tx.sv \
      ../../uart/uart.sv \
      ../i2c_const.sv \
      ../i2c_master.sv \
      ../i2c.sv 
# Add core source files
SRC += ../../mmio_controller/axi_mmio_controller.sv \
       ../../mmio_subsys.sv
# Add testbench source files
SRC += ../../uvm_axi_lite/emperor_axi_lite_if.sv \
       ../../uvm_axi_lite/emperor_axi_lite_types.sv \
       ../../uvm_axi_lite/emperor_axi_lite_utils.sv \
       ../../uvm_axi_lite/emperor_axi_lite_seq_item_base.sv \
       ../../uvm_axi_lite/emperor_axi_lite_seq_item_drv.sv \
       ../../uvm_axi_lite/emperor_axi_lite_sequencer.sv \
       ../../uvm_axi_lite/emperor_axi_lite_agent_config.sv \
       ../../uvm_axi_lite/emperor_axi_lite_driver.sv \
       ../../uvm_axi_lite/emperor_axi_lite_agent.sv \
       ../../uvm_axi_lite/emperor_axi_lite_sequence_base.sv \
       ../../uvm_axi_lite/emperor_axi_lite_sequence_simple.sv \
       ../../uvm_axi_lite/emperor_axi_lite_sequence_op.sv \
       ../../emperor_axi_lite_monitor_item.sv \
       ../../uvm_axi_lite/emperor_axi_lite_pkg.sv \
       emperor_i2c_env.sv \
       emperor_i2c_pkg.sv \
       emperor_i2c_test_base.sv \
       emperor_i2c_test_reg_access.sv \
	   emperor_i2c_test_pkg.sv \
       tb.sv
# SRC := $(filter-out nodeTB.sv, $(SRC))
# SRC := $(sort $(SRC)) # Removes duplicates

# Set the number of threads to use for parallel compilation (2 * cores)
CORES = $(shell getconf _NPROCESSORS_ONLN)
THREADS = $(shell echo $$((2 * $(CORES))))

INCDIR += +incdir+../../uvm_axi_lite

# UVM directory
UVM_HOME = $(VCS_HOME)/etc/uvm-1.2

# VCS flags
VCSFLAGS = -full64 -sverilog -debug_all +lint=all +warn=all -j$(THREADS) +v2k
COMMON_FLAGS += -ntb_opts uvm +incdir+$(UVM_HOME)/src -timescale=1ns/1ps

# Simulator
SIM = vcs

# Copy common flags
VCSFLAGS += $(COMMON_FLAGS)

default : full

full : $(SRC)
	$(SIM) $(VCSFLAGS) $(INCDIR) -o $(TARGET) $(SRC)

clean:
	-rm -r csrc
	-rm -r DVEfiles
	-rm $(TARGET)
	-rm -r $(TARGET).daidir
	-rm ucli.key

.PHONY : default full  clean