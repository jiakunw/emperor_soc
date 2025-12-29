`ifndef I2C_REG_BLOCK
    `define I2C_REG_BLOCK
    class i2c_reg_block extends uvm_reg_block;
        `uvm_object_utils(i2c_reg_block)

        rand i2c_rx_fifo_reg rx_fifo;
        rand i2c_tx_fifo_reg tx_fifo;
        rand i2c_slave_addr_reg slave_addr;
        rand i2c_dvsr_reg dvsr;
        rand i2c_ctrl_reg control;
        rand i2c_status_reg status;

        function new(string name = "");
            super.new(.name(name), .has_coverage(UVM_NO_COVERAGE));
        endfunction

        function void build();
            default_map = create_map(
                .name("i2c_mmio"),
                .base_addr(8'h00),
                .n_bytes(4),
                .endian(UVM_LITTLE_ENDIAN),
                .byte_addressing(1)
            );

            default_map.set_check_on_read(1);

            rx_fifo = i2c_rx_fifo_reg::type_id::create(.name("rx_fifo"), .parent(null));
            tx_fifo = i2c_tx_fifo_reg::type_id::create(.name("tx_fifo"), .parent(null));
            slave_addr = i2c_slave_addr_reg::type_id::create(.name("slave_addr"), .parent(null));
            dvsr = i2c_dvsr_reg::type_id::create(.name("dvsr"), .parent(null));
            control = i2c_ctrl_reg::type_id::create(.name("control"), .parent(null));
            status = i2c_status_reg::type_id::create(.name("status"), .parent(null));

            rx_fifo.configure(.blk_parent(this));
            tx_fifo.configure(.blk_parent(this));
            slave_addr.configure(.blk_parent(this));
            dvsr.configure(.blk_parent(this));
            control.configure(.blk_parent(this));
            status.configure(.blk_parent(this));

            rx_fifo.build();
            tx_fifo.build();
            slave_addr.build();
            dvsr.build();
            control.build();
            status.build();

            default_map.add_reg(.rg(rx_fifo), .offset(8'h00), .rights("RO"));
            default_map.add_reg(.rg(tx_fifo), .offset(8'h04), .rights("WO"));
            default_map.add_reg(.rg(slave_addr), .offset(8'h08), .rights("RW"));
            default_map.add_reg(.rg(dvsr), .offset(8'h0C), .rights("RW"));
            default_map.add_reg(.rg(control), .offset(8'h10), .rights("RW"));
            default_map.add_reg(.rg(status), .offset(8'h14), .rights("RO"));
        endfunction
    endclass
`endif