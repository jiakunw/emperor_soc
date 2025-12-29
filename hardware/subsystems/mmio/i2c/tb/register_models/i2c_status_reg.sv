`ifndef I2C_STATUS_REG
    `define I2C_STATUS_REG
    class i2c_status_reg extends uvm_reg;
        `uvm_object_utils(i2c_status_reg)

        rand uvm_reg_field rx_fifo_not_empty;
        rand uvm_reg_field rx_fifo_full;
        rand uvm_reg_field tx_fifo_not_empty;
        rand uvm_reg_field tx_fifo_full;
        rand uvm_reg_field rx_ack;
        rand uvm_reg_field bus_busy;
        rand uvm_reg_field invalid_read;
        rand uvm_reg_field invalid_write;

        function new(string name = "");
            super.new(.name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE));
        endfunction

        function void build();
            rx_fifo_not_empty = uvm_reg_field::type_id::create(.name("rx_fifo_not_empty"), .parent(null));
            rx_fifo_full = uvm_reg_field::type_id::create(.name("rx_fifo_full"), .parent(null));
            tx_fifo_not_empty = uvm_reg_field::type_id::create(.name("tx_fifo_not_empty"), .parent(null));
            tx_fifo_full = uvm_reg_field::type_id::create(.name("tx_fifo_full"), .parent(null));
            rx_ack = uvm_reg_field::type_id::create(.name("rx_ack"), .parent(null));
            bus_busy = uvm_reg_field::type_id::create(.name("bus_busy"), .parent(null));
            invalid_read = uvm_reg_field::type_id::create(.name("invalid_read"), .parent(null));
            invalid_write = uvm_reg_field::type_id::create(.name("invalid_write"), .parent(null));

            rx_fifo_not_empty.configure(.parent(this), .size(1), .lsb_pos(0), .access("RO"), .volatile(0), .has_reset(1), .reset(1'b0), .is_rand(0), .individually_accessible(0));
            rx_fifo_full.configure(.parent(this), .size(1), .lsb_pos(1), .access("RO"), .volatile(0), .has_reset(1), .reset(1'b0), .is_rand(0), .individually_accessible(0));
            tx_fifo_not_empty.configure(.parent(this), .size(1), .lsb_pos(2), .access("RO"), .volatile(0), .has_reset(1), .reset(1'b0), .is_rand(0), .individually_accessible(0));
            tx_fifo_full.configure(.parent(this), .size(1), .lsb_pos(3), .access("RO"), .volatile(0), .has_reset(1), .reset(1'b0), .is_rand(0), .individually_accessible(0));
            rx_ack.configure(.parent(this), .size(1), .lsb_pos(4), .access("RO"), .volatile(0), .has_reset(1), .reset(1'b0), .is_rand(0), .individually_accessible(0));
            bus_busy.configure(.parent(this), .size(1), .lsb_pos(5), .access("RO"), .volatile(0), .has_reset(1), .reset(1'b0), .is_rand(0), .individually_accessible(0));
            invalid_read.configure(.parent(this), .size(1), .lsb_pos(6), .access("RO"), .volatile(0), .has_reset(1), .reset(1'b0), .is_rand(0), .individually_accessible(0));
            invalid_write.configure(.parent(this), .size(1), .lsb_pos(7), .access("RO"), .volatile(0), .has_reset(1), .reset(1'b0),.is_rand(0), .individually_accessible(0));
        endfunction
    endclass
`endif