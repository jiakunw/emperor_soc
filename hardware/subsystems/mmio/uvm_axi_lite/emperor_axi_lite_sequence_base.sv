// emperor_axi_lite_sequence_base.sv

`ifndef EMPEROR_AXI_LITE_SEQUENCE_BASE
    `define EMPEROR_AXI_LITE_SEQUENCE_BASE

    class emperor_axi_lite_sequence_base extends uvm_sequence#(.REQ(emperor_axi_lite_seq_item_drv));
        `uvm_declare_p_sequencer(emperor_axi_lite_sequencer)  // 用来让 driver 可以方便地访问它对应的 sequencer's variables and methods
        `uvm_object_utils(emperor_axi_lite_sequence_base)

        function new(string name="");
            super.new(name);
        endfunction
    endclass
`endif