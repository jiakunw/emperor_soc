// emperor_axi_lite_types.sv

`ifndef EMPEROR_AXI_LITE_TYPES
    `define EMPEROR_AXI_LITE_TYPES

    `include "uvm_macros.svh"
    `include "emperor_axi_lite_if.sv"

    package emperor_axi_lite_types;
        import uvm_pkg::*;
        import const_pkg::*;

        // virtual interface def
        typedef virtual emperor_axi_lite_if emperor_axi_lite_vif_t;

        // AXI transaction 
        typedef enum bit {AXI_READ = 0, AXI_WRITE = 1} axi_op_t;

        // AXI address
        typedef bit [31:0] axi_addr_t;

        // AXI data
        typedef bit [31:0] axi_data_t;

        typedef resp_t axi_lite_resp_t;
    endpackage
`endif