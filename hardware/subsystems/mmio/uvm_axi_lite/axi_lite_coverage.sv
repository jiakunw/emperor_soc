// axi_lite_coverage.sv

`ifndef AXI_LITE_COVERAGE
    `define AXI_LITE_COVERAGE

    `uvm_analysis_imp_decl(_item);

    class axi_lite_coverage extends uvm_component;

        emperor_axi_lite_agent_config agent_config;

        // port for receiving collected data
        uvm_analysis_imp_item#(emperor_axi_lite_monitor_item, axi_lite_coverage) port_item;

        `uvm_component_utils(axi_lite_coverage)

        covergroup cg_axi_transaction_basic with function sample(emperor_axi_lite_monitor_item item);
            option.per_instance = 1;

            cp_operation : coverpoint item.op {
                option.comment = "direction of axi access";
                bins read = {AXI_READ};
                bins write = {AXI_WRITE};
            }

            cp_response : coverpoint item.response {
                bins okay = {AXI_RESP_OKAY};
                bins exokay = {AXI_RESP_EXOKAY};
                bins slvrr = {AXI_RESP_SLVERR};
                bins decerr = {AXI_RESP_DECERR};
            }

            cp_between_transaction_interval : coverpoint item.interval {
                bins back2back = {0};
                bins short_interval = {[1:5]};
                bins long_interval = {[6:$]};
            }

            cp_transaction_duration : coverpoint item.duration {
                bins short = {[0:12]};
                bins long = {[13:$]};
            }

            cp_op_x_response : cross cp_operation, cp_response;

            cp_op_x_interval : cross cp_operation, cp_between_transaction_interval;

        endgroup

        covergroup cg_axi_handshake_delay with function sample(emperor_axi_lite_monitor_item item);
            cp_awvalid_awready_delay : coverpoint item.awvalid_awready_delay {
                bins no_delay = {0};
                bins short_delay = {[1:10]};
                bins long_delay = {[11:$]};
            }

            cp_wvalid_wready_delay : coverpoint item.wvalid_wready_delay {
                bins no_delay = {0};
                bins short_delay = {[1:10]};
                bins long_delay = {[11:$]};
            }

            cp_bvalid_bready_delay : coverpoint item.bvalid_bready_delay {
                bins no_delay = {0};
                bins short_delay = {[1:10]};
                bins long_delay = {[11:$]};
            }

            cp_arvalid_arready_delay : coverpoint item.arvalid_arready_delay {
                bins no_delay = {0};
                bins short_delay = {[1:10]};
                bins long_delay = {[11:$]}; 
            }

            cp_rvalid_rready_delay : coverpoint item.rvalid_rready_delay {
                bins no_delay = {0};
                bins short_delay = {[1:10]};
                bins long_delay = {[11:$]};
            }
        endgroup

        covergroup cg_reset with function sample(bit arst_n);
            option.per_instance = 1;
            
            access_ongoing : coverpoint arst_n {
                option.comment = "An AXI access was ongoing at reset";
            }
        endgroup


        function new(string name="", uvm_component parent);
            super.new(name, parent);

            port_item = new("port_item", this);

            cg_axi_transaction_basic = new();
            cg_axi_transaction_basic.set_inst_name($sformatf("%s_%s", get_full_name(), "cg_axi_transaction_basic"));

            cg_axi_handshake_delay = new();
	        cg_axi_handshake_delay.set_inst_name($sformatf("%s_%s", get_full_name(), "cg_axi_handshake_delay"));
      
            cg_reset = new();
            cg_reset.set_inst_name($sformatf("%s_%s", get_full_name(), "cg_reset"));
        endfunction

        // function associated with port_item
        virtual function void write_item(emperor_axi_lite_monitor_item item);
            cg_axi_transaction_basic.sample(item);
            cg_axi_handshake_delay.sample(item);
        endfunction

        virtual task run_phase(uvm_phase phase);
            emperor_axi_lite_vif_t vif = agent_config.get_vif();
            
            forever begin
                @(negedge vif.arst_n);
                
                cg_reset.sample(vif.arst_n);
            end
        endtask
    endclass
`endif