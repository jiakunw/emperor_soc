// emperor_axi_lite_sequencer.sv
import uvm_pkg::*;
import emperor_axi_lite_types::*;

`ifndef EMPEROR_AXI_LITE_SEQUENCER
    `define EMPEROR_AXI_LITE_SEQUENCER

    class emperor_axi_lite_sequencer extends uvm_sequencer#(.REQ(emperor_axi_lite_seq_item_drv));
        
        `uvm_component_utils(emperor_axi_lite_sequencer)

        function new(string name="", uvm_component parent);
            super.new(name, parent);
        endfunction
    endclass
`endif