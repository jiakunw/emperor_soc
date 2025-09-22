// emperor_axi_lite_agent_config.sv

`ifndef EMPEROR_AXI_LITE_AGENT_CONFIG
    `define EMPEROR_AXI_LITE_AGENT_CONFIG

    class emperor_axi_lite_agent_config extends uvm_component
        // virtual interface
        // vif 是敏感资源（直接操纵 DUT 的信号）。你不希望外部随便改
        local emperor_axi_lite_vif vif;

        `uvm_component_utils(emperor_axi_lite_agent_config)

        function new(string name="", uvm_component parent);
            super.mew(name, parent)
        endfunction

        function virtual emperor_axi_lite_vif get_vif();
            return vif;
        endfunction

        function void set_vif(virtual emperor_axi_lite_vif val);
            if (vif == null) begin
                vif = val;
            end else begin
                `uvm_fatal("ALGORITHM_ISSUE", "trying to set vif more than once")
            end
        endfunction

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