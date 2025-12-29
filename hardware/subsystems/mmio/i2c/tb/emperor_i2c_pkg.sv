// emperor_i2c_pkg.sv

`ifndef EMPEROR_I2C_PKG
    `define EMPEROR_I2C_PKG

    `include "uvm_macros.svh"
    `include "emperor_axi_lite_pkg.sv"
    `include "i2c_reg_pkg.sv"
    `include "i2c_model.sv"

    package emperor_i2c_pkg;
        import uvm_pkg::*;
        import emperor_axi_lite_pkg::*;
        import i2c_reg_pkg::*;
    endpackage
`endif