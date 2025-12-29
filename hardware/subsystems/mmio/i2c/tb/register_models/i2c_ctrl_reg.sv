`ifndef I2C_CTRL_REG
    `define I2C_CTRL_REG
    class i2c_ctrl_reg extends uvm_reg;
        `uvm_object_utils(i2c_ctrl_reg)

        rand uvm_reg_field i2c_enable;
        rand uvm_reg_field i2c_command;
        rand uvm_reg_field clear_tx_fifo;
        rand uvm_reg_field master_ack_enable;
        rand uvm_reg_field i2c_write_enable;

        function new(string name = "");
            super.new(.name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE));
        endfunction

        function void build();
            i2c_enable = uvm_reg_field::type_id::create(.name("i2c_enable"), .parent(null));
            i2c_command = uvm_reg_field::type_id::create(.name("i2c_command"), .parent(null));
            clear_tx_fifo = uvm_reg_field::type_id::create(.name("clear_tx_fifo"), .parent(null));
            master_ack_enable = uvm_reg_field::type_id::create(.name("master_ack_enable"), .parent(null));
            i2c_write_enable = uvm_reg_field::type_id::create(.name("i2c_write_enable"), .parent(null));

            i2c_enable.configure(.parent(this), .size(1), .lsb_pos(0), .access("RW"), .volatile(0), .has_reset(1), .reset(1'b0), .is_rand(0), .individually_accessible(0));
            i2c_command.configure(.parent(this), .size(3), .lsb_pos(1), .access("RW"), .volatile(0), .has_reset(1), .reset(3'b0), .is_rand(0), .individually_accessible(0));
            clear_tx_fifo.configure(.parent(this), .size(1), .lsb_pos(4), .access("RW"), .volatile(0), .has_reset(1), .reset(1'b0), .is_rand(0), .individually_accessible(0));
            master_ack_enable.configure(.parent(this), .size(1), .lsb_pos(5), .access("RW"), .volatile(0), .has_reset(1), .reset(1'b0), .is_rand(0), .individually_accessible(0));
            i2c_write_enable.configure(.parent(this), .size(1), .lsb_pos(6), .access("RW"), .volatile(0), .has_reset(1), .reset(1'b0), .is_rand(0), .individually_accessible(0));
        endfunction
    endclass
`endif