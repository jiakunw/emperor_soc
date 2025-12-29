// axi_lite_adapter.sv

`ifndef EMPEROR_AXI_LITE_ADAPTER
    `define EMPEROR_AXI_LITE_ADAPTER

    // `include "uvm_macros.svh"
    // import uvm_pkg::*;

    class axi_lite_adapter extends uvm_reg_adapter;

        `uvm_object_utils(axi_lite_adapter)
        
        function new(string name="");
            super.new(name);
        endfunction

        virtual function void bus2reg(uvm_sequence_item bus_item, ref uvm_reg_bus_op rw);
            emperor_axi_lite_monitor_item item_mon;

            if ($cast(item_mon, bus_item)) begin
                `uvm_info("ADAPTER",
                $sformatf("bus2reg raw item_mon.addr=0x%0h op=%0d data=0x%0h response=0x%0h",
                            item_mon.addr, item_mon.op, item_mon.data, item_mon.response),
                UVM_LOW)
                rw.kind = (item_mon.op == AXI_READ) ? UVM_READ : UVM_WRITE;
                rw.addr = item_mon.addr[7:0];
                rw.data = item_mon.data;
                rw.status = (item_mon.response == AXI_RESP_OKAY || item_mon.response == AXI_RESP_EXOKAY) ? UVM_IS_OK : UVM_NOT_OK;
                `uvm_info("ADAPTER",
                $sformatf("bus2reg rw.addr=0x%0h", rw.addr),
                UVM_LOW)
            end else begin
                `uvm_fatal("TYPE ERROR", $sformatf("Class type not supported: %0s", bus_item.get_type_name()))
            end
        endfunction

        virtual function uvm_sequence_item reg2bus(const ref uvm_reg_bus_op rw);

        endfunction
    endclass
`endif