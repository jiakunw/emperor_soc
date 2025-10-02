//  emperor_axi_lite_monitor_item.sv

`ifndef EMPEROR_AXI_LITE_MONITOR_ITEM
    `define EMPEROR_AXI_LITE_MONITOR_ITEM

    `include "uvm_macros.svh"

    class emperor_axi_lite_monitor_item extends emperor_axi_lite_seq_item_base;
        `uvm_object_utils(emperor_axi_lite_monitor_item)

        function new(string name="");
            super.new(name);
        endfunction
    endclass
`endif