// emperor_axi_lite_agent_config.sv
import uvm_pkg::*;
import emperor_axi_lite_types::*;

// ./simv +UVM_TESTNAME=emperor_i2c_test_reg_access +UVM_VERBOSITY=UVM_MEDIUM
`ifndef EMPEROR_AXI_LITE_AGENT_CONFIG
    `define EMPEROR_AXI_LITE_AGENT_CONFIG

    class emperor_axi_lite_agent_config extends uvm_component;
        // virtual interface
        // vif 是敏感资源（直接操纵 DUT 的信号）。你不希望外部随便改
        local emperor_axi_lite_vif_t vif;

        local uvm_active_passive_enum active_passive;

        `uvm_component_utils(emperor_axi_lite_agent_config)

        function new(string name="", uvm_component parent);
            super.new(name, parent);

            // by default, AXI agent shd be active
            active_passive = UVM_ACTIVE;
        endfunction

        // getter for virtual interface
        virtual function emperor_axi_lite_vif_t get_vif();
            return vif;
        endfunction

        // setter for virtual interface
        virtual function void set_vif(emperor_axi_lite_vif_t val);
            if (vif == null) begin
                vif = val;
            end else begin
                `uvm_fatal("ALGORITHM_ISSUE", "trying to set vif more than once")
            end
        endfunction

        // Getter for the AXI agent Active/Passive control
        virtual function uvm_active_passive_enum get_active_passive();
            return active_passive;
        endfunction
    
        // Setter for the AXI agent Active/Passive control
        virtual function void set_active_passive(uvm_active_passive_enum value);
            active_passive = value;
        endfunction
    
        // start simulation phase
        virtual function void start_of_simulation_phase(uvm_phase phase);
            super.start_of_simulation_phase(phase);

            if (get_vif() == null) begin
                `uvm_fatal("ALGORITHM_ISSUE", "AXI virtual interface not configured")
            end else begin
                `uvm_info("AXI_CONFIG", "AXI congiged at the start of simulation phase", UVM_LOW)
            end
        endfunction
    endclass

    
`endif