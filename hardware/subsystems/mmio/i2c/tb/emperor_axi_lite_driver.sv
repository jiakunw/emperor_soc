// emperor_axi_lite_driver.sv
import uvm_pkg::*;
import emperor_axi_lite_types::*;

// active agent has driver and sequencer instantiated
`ifndef EMPEROR_AXI_LITE_DRIVER
    `define EMPEROR_AXI_LITE_DRIVER

    class emperor_axi_lite_driver extends uvm_driver#(.REQ(emperor_axi_lite_seq_item_drv));

        `uvm_component_utils(emperor_axi_lite_driver)

        function new(string name="", uvm_component parent);
            super.new(name, parent);
        endfunction

        virtual task run_phase(uvm_phase phase);
            forever begin
                emperor_axi_lite_seq_item_drv seq_item;
                
                seq_item_port.get_next_item(seq_item);  // fetch next seq item from sequencer 
                
                `uvm_info("DEBUG", $sformatf("Driving \"%0s\": %0s", seq_item.get_full_name(), seq_item.toString()), UVM_NONE)
                
                seq_item_port.item_done();  // telling sequencer that we are done with this seq item
            end
        endtask
    endclass
`endif