// emperor_axi_lite_utils.sv

`ifndef EMPEROR_AXI_LITE_UTILS
    `define EMPEROR_AXI_LITE_UTILS

    `include "uvm_macros.svh"

    class busy_driver_monitor_flag extends uvm_object;
        bit busy;   // 你要的那个1-bit变量

        `uvm_object_utils(busy_driver_monitor_flag)

        function new(string name="shared_flag");
            super.new(name);
            busy = 0;
        endfunction
    endclass
`endif