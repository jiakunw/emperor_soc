// emperor_axi_lite_sequence_op.sv

`ifndef CFS_APB_SEQUENCE_OP
  `define CFS_APB_SEQUENCE_OP

  class emperor_axi_lite_sequence_op extends emperor_axi_lite_sequence_base;
    
    //Address
    rand axi_addr addr;
    
    //Write data
    rand axi_data wr_data;
    
    `uvm_object_utils(emperor_axi_lite_sequence_op)
    
    function new(string name = "");
      super.new(name);
    endfunction
    
    virtual task body();
        // you can start another sequence or drive item
//       cfs_apb_item_drv item = cfs_apb_item_drv::type_id::create("item");
      
//       void'(item.randomize() with {
//         dir  == CFS_APB_READ;
//         //Pay attention to the "local::" in order to avoid name confusion
//         addr == local::addr;
//       });
//       start_item(item);
//       finish_item(item);
      
//       void'(item.randomize() with {
//         dir  == CFS_APB_WRITE;
//         //Pay attention to the "local::" in order to avoid name confusion
//         addr == local::addr;
//         data == wr_data;
//       });
//       start_item(item);
//       finish_item(item);
      
      //The above code can be replaced with `uvm_do macros
      emperor_axi_lite_seq_item_drv item;
      
      `uvm_do_with(item, {
        dir  == AXI_READ;
        addr == local::addr;
      });
      
      `uvm_do_with(item, {
        dir  == AXI_WRITE;
        addr == local::addr;
        data == wr_data;
      });
      
    endtask

  endclass

`endif