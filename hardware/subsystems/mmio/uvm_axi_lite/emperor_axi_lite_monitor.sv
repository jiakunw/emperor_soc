//  emperor_axi_lite_monitor.sv

`ifndef EMPEROR_AXI_LITE_MONITOR
    `define EMPEROR_AXI_LITE_MONITOR

    `include "uvm_macros.svh"

    class emperor_axi_lite_monitor extends uvm_monitor;
        `uvm_component_utils(emperor_axi_lite_monitor)
        //Port for sending the collected item
        uvm_analysis_port#(emperor_axi_lite_monitor_item) output_port;

        emperor_axi_lite_agent_config axi_lite_agent_config;

        function new(string name="");
            super.new(name);
            output_port = new("output_port", this);
        endfunction

        virtual task run_phase(uvm_phase phase);
            collect_transactions();
        endtask

        protected virtual task collect_transactions();
            forever begin
                emperor_axi_lite_vif_t vif = axi_lite_agent_config.axi_lite_vif;
                emperor_axi_lite_monitor_item item = emperor_axi_lite_monitor_item::type_id::create("item");

                while (!vif.S_AXI_arvalid || !vif.S_AXI_awvalid) begin
                    @(posedge vif.aclk);
                    item.delay++;
                end

                while (!vif.S_AXI_bvalid || !if.S_AXI_rvalid) begin
                    @(posedge vif.aclk);
                    item.duration++;
                end

                if (vif.S_AXI_bvalid) begin
                    item.response = axi_lite_resp_t'(vif.S_AXI_bresp);
                    item.op = AXI_WRITE;
                    item.addr = vif.S_AXI_awaddr;
                    item.data = vif.S_AXI_wdata;
                end else if (vif.S_AXI_rvalid) begin
                    item.response = axi_lite_resp_t'(vif.S_AXI_rresp);
                    item.op = AXI_READ;
                    item.addr = vif.S_AXI_araddr;
                    item.data = vif.S_AXI_rdata;
                end else begin
                    `uvm_fatal("NORESP", "no response")
                end

                output_port.write(item);
                @(posedge vif.aclk);
            end
        endtask

    endclass
`endif