`ifndef I2C_REG_PKG
    `define I2C_REG_PKG

package i2c_reg_pkg;
    import uvm_pkg::*;
    `include "i2c_ctrl_reg.sv"
    `include "i2c_status_reg.sv"
    `include "i2c_dvsr_reg.sv"
    `include "i2c_slave_addr_reg.sv"
    `include "i2c_rx_fifo.sv"
    `include "i2c_tx_fifo.sv"
endpackage

`endif