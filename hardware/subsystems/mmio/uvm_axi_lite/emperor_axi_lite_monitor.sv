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

                if (vif.transaction_type == AXI_WRITE) begin
                    item.op = AXI_WRITE;

                    // `uvm_info("MONITOR",
                    // $sformatf("before In a write transaction, S_AXI_awready=%0h, S_AXI_awvalid=%0h", vif.S_AXI_awready, vif.S_AXI_awvalid),
                    // UVM_LOW)
                    while (!vif.S_AXI_awready || !vif.S_AXI_awvalid) begin
                        // `uvm_info("MONITOR",
                        // $sformatf("while In a write transaction, S_AXI_awready=%0h, S_AXI_awvalid=0h", vif.S_AXI_awready, vif.S_AXI_awvalid),
                        // UVM_LOW)
                        @(posedge vif.aclk);
                        item.awvalid_awready_delay++;
                        item.duration++;
                    end
                    // `uvm_info("MONITOR",
                    // $sformatf("after In a write transaction, S_AXI_awready=%0h, S_AXI_awvalid=%0h", vif.S_AXI_awready, vif.S_AXI_awvalid),
                    // UVM_LOW)

                    `uvm_info("MONITOR",
                    $sformatf("In a write transaction, S_AXI_awaddr=0x%0h", vif.S_AXI_awaddr),
                    UVM_LOW)
                    item.addr = vif.S_AXI_awaddr;

                    while (!vif.S_AXI_wready || !vif.S_AXI_wvalid) begin
                        @(posedge vif.aclk);
                        item.wvalid_wready_delay++;
                        item.duration++;
                    end
                    item.data = vif.S_AXI_wdata;

                    while (!vif.S_AXI_bready || !vif.S_AXI_bvalid) begin
                        @(posedge vif.aclk);
                        item.bvalid_bready_delay++;
                        item.duration++;
                    end

                    item.response = axi_lite_resp_t'(vif.S_AXI_bresp);
                    `uvm_info("MONITOR",
                    $sformatf("In a write transaction, S_AXI_bresp=0x%0h", vif.S_AXI_bresp),
                    UVM_LOW)

                end else begin
                    item.op = AXI_READ;

                    while (!vif.S_AXI_arready || !vif.S_AXI_arvalid) begin
                        @(posedge vif.aclk);
                        item.arvalid_arready_delay++;
                        item.duration++;
                    end

                    `uvm_info("MONITOR",
                    $sformatf("In a read transaction, S_AXI_araddr=0x%0h", vif.S_AXI_araddr),
                    UVM_LOW)

                    item.addr = vif.S_AXI_araddr;

                    while (!vif.S_AXI_rready || !vif.S_AXI_rvalid) begin
                        @(posedge vif.aclk);
                        item.rvalid_rready_delay++;
                        item.duration++;
                    end

                    item.data = vif.S_AXI_rdata;
                    item.response = axi_lite_resp_t'(vif.S_AXI_rresp);
                end

                output_port.write(item);
                @(posedge vif.aclk);
                
                // `uvm_info("MONITOR",
                // $sformatf("In a transaction, S_AXI_bresp=0x%0h", vif.S_AXI_bresp),
                // UVM_LOW)

                while (vif.in_transaction) begin
                    @(posedge vif.aclk);
                    item.interval++;
                end
            end
        endtask

    endclass
`endif