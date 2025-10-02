// emperor_i2c_test_reg_access.sv
`include "uvm_macros.svh"
import uvm_pkg::*;

`ifndef EMPEROR_I2C_TEST_REG_ACCESS
    `define EMPEROR_I2C_TEST_REG_ACCESS

    class emperor_i2c_test_reg_access extends emperor_i2c_test_base;
        `uvm_component_utils(emperor_i2c_test_reg_access)  // give us access to some features of uvm

        // first arg is the name of the instance of this class
        function new(string name = "", uvm_component parent);
            super.new(name, parent);
        endfunction

        // uvm stops simulation when counter/objection drops to 0
        virtual task run_phase(uvm_phase phase);
            phase.raise_objection(this, "TEST_DONE");
            `uvm_info("DEBUG", "test starts", UVM_LOW)  // last arg is verbosity

            #100ns;

            // for (int i = 0; i < 10; i++) begin
            //     emperor_axi_lite_seq_item_drv seq_item = emperor_axi_lite_seq_item_drv::type_id::create("item");
            //     seq_item.randomize();
            //     `uvm_info("DEBUG", $sformatf("[%0d] sequence item: %0s", i, seq_item.toString()), UVM_LOW)
            // end

            // begin
            //     emperor_axi_lite_sequence_simple seq_simple = emperor_axi_lite_sequence_simple::type_id::create("seq_simple");

            //     void'(seq_simple.randomize() with {
            //         item.addr == 'h222;
            //     });

            //     seq_simple.start(env.axi_lite_agent.sequencer);
            // end

            begin
                emperor_axi_lite_sequence_op seq_rw = emperor_axi_lite_sequence_op::type_id::create("seq_rw");

                seq_rw.randomize()

                seq_rw.start(env.axi_lite_agent.sequencer);
            end

            // begin
            //     cfs_apb_sequence_random seq_random = cfs_apb_sequence_random::type_id::create("seq_random");

            //     void'(seq_random.randomize() with {
            //         num_items == 3;
            //     });

            //     seq_random.start(env.apb_agent.sequencer);
            // end

            `uvm_info("DEBUG", "test finished", UVM_LOW)
            phase.drop_objection(this, "TEST_DONE");
        endtask

    endclass
`endif