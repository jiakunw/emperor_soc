# Analyze design under verification files
set ROOT_PATH /user/stud/fall25/sg4631/emperor_soc/hardware/subsystems
set RTL_PATH ${ROOT_PATH}/mmio
set TARGET_PATH ${RTL_PATH}/mmio_controller
set PROP_PATH ${TARGET_PATH}/tb/formal
# set UART_FILES [glob ${RTL_PATH}/uart/*.sv]
# set I2C_FILES  [glob ${RTL_PATH}/i2c/*.sv]
# set I2C_PKG ${RTL_PATH}/i2c/i2c_const.sv

analyze -sv \
  ${ROOT_PATH}/const_pkg.sv 

analyze -sv \
  /user/stud/fall25/jw4865/emperor_soc/hardware/subsystems/mmio/gpio/gpio.sv \
  /user/stud/fall25/jw4865/emperor_soc/hardware/subsystems/mmio/mmio_controller/axi_mmio_controller.sv \
  ${RTL_PATH}/mmio_subsys.sv

# Analyze property files
  analyze -sva \
  bindings.sva \
  v_axi_mmio_controller.sva

# Elaborate design and properties
elaborate -top mmio_subsystem \
  -bbox_m timer \
  -bbox_m uart \
  -bbox_m i2c


# Set up Clocks and Resets
clock aclk
reset !arst_n

# Get design information to check general complexity
get_design_info

# Prove properties
prove -all

# Report proof results
report
