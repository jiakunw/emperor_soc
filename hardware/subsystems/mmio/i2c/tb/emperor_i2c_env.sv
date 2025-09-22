// emperor_i2c_env.sv
`include "uvm_macros.svh"
import uvm_pkg::*;

`ifndef EMPEROR_I2C_ENV
    `define EMPEROR_I2C_ENV

    `include "uvm_macros.svh"
    `include "emperor_axi_lite_pkg.sv"

    class emperor_i2c_env extends uvm_env;
        import emperor_axi_lite_pkg::*;

        emperor_axi_lite_agent axi_lite_agent;

        `uvm_component_utils(emperor_i2c_env)  // give us access to some features of uvm

        // first arg is the name of the instance of this class
        function new(string name = "", uvm_component parent);
            super.new(name, parent);
        endfunction

        virtual function void build_phase(uvm_phase phase);
            super.build_phase(phase);
            axi_lite_agent = emperor_axi_lite_agent::type_id::create("axi_lite_agent", this);
        endfunction
    endclass
`endif