// emperor_axi_lite_agent.sv

`ifndef EMPEROR_AXI_LITE_AGENT
    `define EMPEROR_AXI_LITE_AGENT

    class emperor_axi_lite_agent extends uvm_agent;
        emperor_axi_lite_agent_config agent_config;
        emperor_axi_lite_driver driver; // driver handler
        emperor_axi_lite_sequencer sequencer;   // sequencer handler
        emperor_axi_lite_monitor monitor;
        axi_lite_coverage coverage;

        `uvm_component_utils(emperor_axi_lite_agent)

        function new(string name="", uvm_component parent);
            super.new(name, parent);
        endfunction

        virtual function void build_phase(uvm_phase phase);
            super.build_phase(phase);
            agent_config = emperor_axi_lite_agent_config::type_id::create("agent_config", this);

            monitor = cfs_apb_monitor::type_id::create("monitor", this);

            coverage = axi_lite_coverage::type_id::create("coverage", this);

            if(agent_config.get_active_passive() == UVM_ACTIVE) begin
                driver    = emperor_axi_lite_driver::type_id::create("driver", this);
                sequencer = emperor_axi_lite_sequencer::type_id::create("sequencer", this);
            end
        endfunction

        virtual function void connect_phase(uvm_phase phase);
            emperor_axi_lite_vif vif;
            super.connect_phase(phase);

            if (uvm_config_db#(emperor_axi_lite_vif)::get(this, "", "vif", vif) == 0) begin
                `uvm_fatal("AXI_NO_VIF", "unable to get AXI LITE virtual interface")
            end else begin
                agent_config.set_vif(vif);
            end

            if(agent_config.get_active_passive() == UVM_ACTIVE) begin
                driver.agent_config = agent_config;
                driver.seq_item_port.connect(sequencer.seq_item_export);
            end

            monitor.agent_config = agent_config;
            monitor.output_port.connect(coverage.port_item);
        endfunction
    endclass

    
`endif