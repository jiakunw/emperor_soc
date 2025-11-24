//  emperor_axi_lite_monitor.sv

`ifndef EMPEROR_AXI_LITE_MONITOR
    `define EMPEROR_AXI_LITE_MONITOR

    `include "uvm_macros.svh"

    class emperor_axi_lite_monitor extends uvm_monitor;
        `uvm_component_utils(emperor_axi_lite_monitor)
        //Port for sending the collected item
        uvm_analysis_port#(emperor_axi_lite_monitor_item) output_port;

        emperor_axi_lite_agent_config agent_config;

        function new(string name="", uvm_component parent);
            super.new(name, parent);
            output_port = new("output_port", this);
        endfunction

        virtual task run_phase(uvm_phase phase);
            collect_transactions();
        endtask

        protected virtual task collect_transactions();
            forever begin
                emperor_axi_lite_vif_t vif = agent_config.get_vif();
                emperor_axi_lite_monitor_item item = emperor_axi_lite_monitor_item::type_id::create("item");

                item.awvalid_awready_delay = 0;
                item.arvalid_arready_delay = 0;

                item.wvalid_wready_delay = 0;
                item.rvalid_rready_delay = 0;
                item.bvalid_bready_delay = 0;

                item.duration = 0;

                while (!vif.in_transaction) begin
                    @(posedge vif.aclk);
                    item.interval++;
                end

                if (vif.transaction_type) begin
                    item.op = AXI_WRITE;

                    while (!vif.S_AXI_awready && !vif.S_AXI_awvalid) begin
                        @(posedge vif.aclk);
                        item.awvalid_awready_delay++;
                        item.duration++;
                    end
                    item.addr = vif.S_AXI_awaddr;

                    while (!vif.S_AXI_wready && !vif.S_AXI_wvalid) begin
                        @(posedge vif.aclk);
                        item.wvalid_wready_delay++;
                        item.duration++;
                    end
                    item.data = vif.S_AXI_wdata;

                    while (!vif.S_AXI_bready) begin
                        @(posedge vif.aclk);
                        item.bvalid_bready_delay++;
                        item.duration++;
                    end

                    item.response = axi_lite_resp_t'(vif.S_AXI_bresp);
                end else begin
                    item.op = AXI_READ;

                    while (!vif.S_AXI_arready && !vif.S_AXI_arvalid) begin
                        @(posedge vif.aclk);
                        item.arvalid_arready_delay++;
                        item.duration++;
                    end
                    item.addr = vif.S_AXI_araddr;

                    while (!vif.S_AXI_rready && !vif.S_AXI_rvalid) begin
                        @(posedge vif.aclk);
                        item.rvalid_rready_delay++;
                        item.duration++;
                    end

                    item.data = vif.S_AXI_rdata;
                    item.response = axi_lite_resp_t'(vif.S_AXI_rresp);
                end

                output_port.write(item);
                @(posedge vif.aclk);
            end
        endtask

    endclass
`endif