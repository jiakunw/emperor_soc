`ifndef I2C_TX_FIFO
    `define I2C_TX_FIFO
    class i2c_tx_fifo_reg extends uvm_reg;
        `uvm_object_utils(i2c_tx_fifo_reg)

        rand uvm_reg_field tx_in;

        function new(string name = "");
            super.new(.name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE));
        endfunction

        function void build();
            tx_in = uvm_reg_field::type_id::create(.name("tx_in"), .parent(null));
            tx_in.configure(.parent(this), .size(8), .lsb_pos(0), .access("WO"), .volatile(0), .has_reset(1), .reset(8'd0), .is_rand(0), .individually_accessible(0));
        endfunction
    endclass
`endif