// emperor_i2c_test_pkg.sv

`ifndef EMPEROR_I2C_TEST_PKG
    `define EMPEROR_I2C_TEST_PKG

    `include "emperor_i2c_pkg.sv"

    package emperor_i2c_test_pkg;
        import emperor_i2c_pkg::*;

        `include "emperor_i2c_test_base.sv"
        `include "emperor_i2c_test_reg_access.sv"
    endpackage
`endif