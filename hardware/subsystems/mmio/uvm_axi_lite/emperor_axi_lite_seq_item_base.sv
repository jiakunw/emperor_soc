// emperor_axi_lite_seq_item_base.sv
import uvm_pkg::*;
import emperor_axi_lite_types::*;

`ifndef EMPEROR_AXI_LITE_SEQ_ITEM_BASE
    `define EMPEROR_AXI_LITE_SEQ_ITEM_BASE

    class emperor_axi_lite_seq_item_base extends uvm_sequence_item;

        `uvm_object_utils(emperor_axi_lite_seq_item_base)

        function new(string name="");
            super.new(name);
        endfunction
    endclass
`endif