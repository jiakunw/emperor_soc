// emperor_axi_lite_sequence_op.sv

`ifndef CFS_APB_SEQUENCE_OP
  `define CFS_APB_SEQUENCE_OP

  class emperor_axi_lite_sequence_op extends emperor_axi_lite_sequence_base;
    rand int unsigned num_items;

    // constraints
    constraint min_num_items_default {
        soft num_items >= 10;
    }
    
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

      for (int i = 0; i < num_items; i++) begin
          `uvm_do_with(item);
      end
      
    endtask

  endclass

`endif