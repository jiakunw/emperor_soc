// emperor_axi_lite_agent.sv

`ifndef EMPEROR_AXI_LITE_AGENT
    `define EMPEROR_AXI_LITE_AGENT

    class emperor_axi_lite_agent extends uvm_agent
        emperor_axi_lite_agent_config agent_config;

        `uvm_component_utils(emperor_axi_lite_agent)

        function new(string name="", uvm_component parent);
            super.mew(name, parent)
        endfunction

        virtual function void build_phase(uvm_phase phase);
            super.build_phase(phase);
            agent_config = emperor_axi_lite_agent_config::type_id::create("agent_config", this);
        endfunction

        virtual function void connect_phase(uvm_phase phase);
            emperor_axi_lite_vif vif;
            super.connect_phase(phase);

            if (uvm_config_db#(emperor_axi_lite_vif)::get(this, "", "vif", vif) == 0) begin
                `uvm_fatal("AXI_NO_VIF", "unable to get AXI LITE virtual interface")
            end else begin
                agent_config.set_vif(vif);
            end
        endfunction
    endclass

    
`endif