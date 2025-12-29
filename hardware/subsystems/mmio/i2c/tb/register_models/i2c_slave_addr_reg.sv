`ifndef I2C_SLAVE_ADDR_REG
    `define I2C_SLAVE_ADDR_REG
    class i2c_slave_addr_reg extends uvm_reg;
        `uvm_object_utils(i2c_slave_addr_reg)

        rand uvm_reg_field slave_addr;

        function new(string name = "");
            super.new(.name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE));
        endfunction

        function void build();
            slave_addr = uvm_reg_field::type_id::create(.name("slave_addr"), .parent(null));
            slave_addr.configure(.parent(this), .size(7), .lsb_pos(0), .access("RW"), .volatile(0), .has_reset(1), .reset(7'b0), .is_rand(0), .individually_accessible(0));
        endfunction
    endclass
`endif