// emperor_axi_lite_seq_item_drv.sv

`ifndef EMPEROR_AXI_LITE_SEQ_ITEM_DRV
    `define EMPEROR_AXI_LITE_SEQ_ITEM_DRV

    class emperor_axi_lite_seq_item_drv extends emperor_axi_lite_seq_item_base;
        rand axi_dir dir;
        rand axi_addr addr;
        rand axi_data data;
        rand int unsigned pre_drive_delay;
        rand int unsigned post_drive_delay;

        // constraints
        constraint pre_drive_delay_default {
            soft pre_drive_delay <= 5;
        }

        constraint post_drive_delay_default {
            soft post_drive_delay <= 5;
        }

        constraint addr_alignment_default {
            soft addr % 4 == 0;
        }

        `uvm_object_utils(emperor_axi_lite_seq_item_drv)

        function new(string name="");
            super.new(name);
        endfunction

        virtual function string toString();
            string result = $sformatf("dir: %0s, addr: %0x", dir.name(), addr);

            if(dir == AXI_WRITE) begin
                result = $sformatf("%s, data: %0x", result, data);
            end
            result = $sformatf("%s, pre_drive_delay: %0d, post_drive_delay: %0d", result, pre_drive_delay, post_drive_delay);
            return result;
        endfunction
    endclass
`endif