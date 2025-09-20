// emperor_i2c_env.sv
`include "uvm_macros.svh"
import uvm_pkg::*;

`ifndef EMPEROR_I2C_ENV
    `define EMPEROR_I2C_ENV

    `include "uvm_macros.svh"

    class emperor_i2c_env extends uvm_env;
        `uvm_component_utils(emperor_i2c_env)  // give us access to some features of uvm

        // first arg is the name of the instance of this class
        function new(string name = "", uvm_component parent);
            super.new(name, parent);
        endfunction
    endclass
`endif