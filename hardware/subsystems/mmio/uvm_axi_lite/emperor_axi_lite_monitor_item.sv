//  emperor_axi_lite_monitor_item.sv

`ifndef EMPEROR_AXI_LITE_MONITOR_ITEM
    `define EMPEROR_AXI_LITE_MONITOR_ITEM

    `include "uvm_macros.svh"

    class emperor_axi_lite_monitor_item extends emperor_axi_lite_seq_item_base;
        `uvm_object_utils(emperor_axi_lite_monitor_item)

        // basics
        axi_op op;
        axi_lite_resp_t response;
        int unsigned duration;
        int unsigned interval;
        axi_addr addr;
        axi_data data;

        // handshake delay
        int unsigned awvalid_awready_delay;
        int unsigned wvalid_wready_delay;
        int unsigned bvalid_bready_delay;
        int unsigned arvalid_arready_delay;
        int unsigned rvalid_rready_delay;

        function new(string name="");
            super.new(name);
        endfunction

        virtual function string toString();
            string result = super.toString();
            
            result = $sformatf("operation: %0s, addr: %0x, data: %0x, response: %0s, interval: %0d",
                                op.name(), addr, data, response.name(), interval);
            
            return result;
        endfunction
    endclass
`endif