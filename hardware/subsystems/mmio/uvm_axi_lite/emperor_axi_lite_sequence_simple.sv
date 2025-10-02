`ifndef EMPEROR_AXI_LITE_SEQUENCE_SIMPLE_SV
  `define EMPEROR_AXI_LITE_SEQUENCE_SIMPLE_SV

  class emperor_axi_lite_sequence_simple extends emperor_axi_lite_sequence_base;
    
    //Item to drive
    rand emperor_axi_lite_seq_item_drv item;
    
    `uvm_object_utils(emperor_axi_lite_sequence_simple)
    
    function new(string name = "");
      super.new(name);
      
      item = emperor_axi_lite_seq_item_drv::type_id::create("item");
    endfunction
    
    virtual task body();
      start_item(item);
      finish_item(item);
      
      //An alternative with macros is to use `uvm_send().
      //Macro `uvm_do() will not work because any constraints from sequence call will have no effect
      //`uvm_send(item) do will randomize item, which will 覆盖 our prev randomization
    endtask

  endclass

`endif