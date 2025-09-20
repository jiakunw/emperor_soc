// emperor_i2c_test_reg_access.sv
`include "uvm_macros.svh"
import uvm_pkg::*;

`ifndef EMPEROR_I2C_TEST_REG_ACCESS
    `define EMPEROR_I2C_TEST_REG_ACCESS

    class emperor_i2c_test_reg_access extends emperor_i2c_test_base;
        `uvm_component_utils(emperor_i2c_test_reg_access)  // give us access to some features of uvm

        // first arg is the name of the instance of this class
        function new(string name = "", uvm_component parent);
            super.new(name, parent);
        endfunction

        // uvm stops simulation when counter/objection drops to 0
        virtual task run_phase(uvm_phase phase);
            phase.raise_objection(this, "TEST_DONE");
            `uvm_info("DEBUG", "test starts", UVM_LOW)  // last arg is verbosity
            #100ns;
            `uvm_info("DEBUG", "test finished", UVM_LOW)
            phase.drop_objection(this, "TEST_DONE");
        endtask

    endclass
`endif