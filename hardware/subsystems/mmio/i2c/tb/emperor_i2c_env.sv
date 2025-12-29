// emperor_i2c_env.sv
`include "uvm_macros.svh"
import uvm_pkg::*;

`ifndef EMPEROR_I2C_ENV
    `define EMPEROR_I2C_ENV

    `include "uvm_macros.svh"
    `include "emperor_axi_lite_pkg.sv"

    class emperor_i2c_env extends uvm_env;
        import emperor_axi_lite_pkg::*;

        // axi lite agent
        emperor_axi_lite_agent axi_lite_agent;

        // i2c model
        i2c_model model;

        // register predictor handler
        uvm_reg_predictor#(emperor_axi_lite_monitor_item) predictor;

        `uvm_component_utils(emperor_i2c_env)  // give us access to some features of uvm

        // first arg is the name of the instance of this class
        function new(string name = "", uvm_component parent);
            super.new(name, parent);
        endfunction

        virtual function void build_phase(uvm_phase phase);
            super.build_phase(phase);
            axi_lite_agent = emperor_axi_lite_agent::type_id::create("axi_lite_agent", this);

            model = i2c_model::type_id::create("model", this);

            predictor = uvm_reg_predictor#(emperor_axi_lite_monitor_item)::type_id::create("predictor", this);
        endfunction

        virtual function void connect_phase(uvm_phase phase);
            axi_lite_adapter adapter  = axi_lite_adapter::type_id::create("adapter", this);
            super.connect_phase(phase);

            predictor.adapter = adapter;
            predictor.map = model.reg_block.default_map;
            axi_lite_agent.monitor.output_port.connect(predictor.bus_in);
        endfunction
    endclass
`endif