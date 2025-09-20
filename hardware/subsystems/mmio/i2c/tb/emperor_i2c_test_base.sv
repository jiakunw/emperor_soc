// emperor_i2c_test_base.sv
`include "uvm_macros.svh"
import uvm_pkg::*;

`ifndef EMPEROR_I2C_TEST_BASE
    `define EMPEROR_I2C_TEST_BASE

    class emperor_i2c_test_base extends uvm_test;
        emperor_i2c_env env;

        `uvm_component_utils(emperor_i2c_test_base)  // give us access to some features of uvm

        // first arg is the name of the instance of this class
        function new(string name = "", uvm_component parent);
            super.new(name, parent);
        endfunction

        virtual function void build_phase(uvm_phase phase);
            super.build_phase(phase);

            env = emperor_i2c_env::type_id::create("env", this);
        endfunction

    endclass
`endif