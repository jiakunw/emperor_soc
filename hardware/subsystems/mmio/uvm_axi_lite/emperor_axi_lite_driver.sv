// emperor_axi_lite_driver.sv
import uvm_pkg::*;
import emperor_axi_lite_types::*;

// active agent has driver and sequencer instantiated
`ifndef EMPEROR_AXI_LITE_DRIVER
    `define EMPEROR_AXI_LITE_DRIVER

    class emperor_axi_lite_driver extends uvm_driver#(.REQ(emperor_axi_lite_seq_item_drv));
        emperor_axi_lite_agent_config agent_config;

        `uvm_component_utils(emperor_axi_lite_driver)

        function new(string name="", uvm_component parent);
            super.new(name, parent);
        endfunction

        virtual task run_phase(uvm_phase phase);
            run_transactions();
        endtask

        protected virtual task run_transactions();
            emperor_axi_lite_vif vif = agent_config.get_vif();

            // initialize signals, always use non-blocking assignments
            vif.S_AXI_awaddr  = 'b0;
            vif.S_AXI_awprot  = 'b0;
            vif.S_AXI_awvalid = 'b0;
            vif.S_AXI_wdata   = 'b0;
            vif.S_AXI_wstrb   = 'b0;
            vif.S_AXI_wvalid  = 'b0;
            vif.S_AXI_bready  = 'b1;
            vif.S_AXI_araddr  = 'b0;
            vif.S_AXI_arprot  = 'b0;
            vif.S_AXI_arvalid = 'b0;
            vif.S_AXI_rready  = 'b1;

            forever begin
                emperor_axi_lite_seq_item_drv seq_item;
                
                seq_item_port.get_next_item(seq_item);  // fetch next seq item from sequencer 
                
                single_transaction(seq_item);
                
                seq_item_port.item_done();  // telling sequencer that we are done with this seq item
            end
        endtask

        protected virtual task single_transaction(emperor_axi_lite_seq_item_drv seq_item);
            `uvm_info("DEBUG", $sformatf("Driving \"%0s\": %0s", seq_item.get_full_name(), seq_item.toString()), UVM_NONE)
        endtask
    endclass
`endif