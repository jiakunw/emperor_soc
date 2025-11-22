// emperor_axi_lite_seq_item_drv.sv

`ifndef EMPEROR_AXI_LITE_SEQ_ITEM_DRV
    `define EMPEROR_AXI_LITE_SEQ_ITEM_DRV

    import const_pkg::*;

    class emperor_axi_lite_seq_item_drv extends emperor_axi_lite_seq_item_base;
        rand axi_op_t op;
        rand axi_addr_t addr;
        rand axi_data_t data;
        rand int unsigned delay;

        // constraints
        constraint pre_drive_delay_default {
            soft delay >= 1;
            soft delay <= 15;
        }

        constraint addr_alignment_default {
            soft addr % 4 == 0;
        }

        `uvm_object_utils(emperor_axi_lite_seq_item_drv)

        function new(string name="");
            super.new(name);
        endfunction

        virtual function string toString();
            string result = $sformatf("op: %0s, addr: %0x", op.name(), addr);

            if(op == AXI_WRITE) begin
                result = $sformatf("%s, data: %0x", result, data);
            end
            result = $sformatf("%s, delay: %0d", result, delay);
            return result;
        endfunction
    endclass
`endif