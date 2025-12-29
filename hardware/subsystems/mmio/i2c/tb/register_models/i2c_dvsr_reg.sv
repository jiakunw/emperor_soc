`ifndef I2C_DVSR_REG
    `define I2C_DVSR_REG
    class i2c_dvsr_reg extends uvm_reg;
        `uvm_object_utils(i2c_dvsr_reg)

        rand uvm_reg_field dvsr;

        function new(string name = "");
            super.new(.name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE));
        endfunction

        function void build();
            dvsr = uvm_reg_field::type_id::create(.name("dvsr"), .parent(null));
            dvsr.configure(.parent(this), .size(32), .lsb_pos(0), .access("RW"), .volatile(0), .has_reset(1), .reset(32'd0), .is_rand(0), .individually_accessible(0));
        endfunction
    endclass
`endif