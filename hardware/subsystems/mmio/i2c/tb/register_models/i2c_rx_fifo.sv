`ifndef I2C_RX_FIFO
    `define I2C_RX_FIFO
    class i2c_rx_fifo_reg extends uvm_reg;
        `uvm_object_utils(i2c_rx_fifo_reg)

        rand uvm_reg_field rx_out;

        function new(string name = "");
            super.new(.name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE));
        endfunction

        function void build();
            rx_out = uvm_reg_field::type_id::create(.name("rx_out"), .parent(null));
            rx_out.configure(.parent(this), .size(8), .lsb_pos(0), .access("RO"), .volatile(0), .has_reset(1), .reset(8'd0), .is_rand(0), .individually_accessible(0));
        endfunction
    endclass
`endif