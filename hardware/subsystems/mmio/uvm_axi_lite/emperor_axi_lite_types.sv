// emperor_axi_lite_types.sv

`ifndef EMPEROR_AXI_LITE_TYPES
    `define EMPEROR_AXI_LITE_TYPES

    `include "uvm_macros.svh"
    `include "emperor_axi_lite_if.sv"

    package emperor_axi_lite_types;
        import uvm_pkg::*;

        // virtual interface def
        typedef virtual emperor_axi_lite_if emperor_axi_lite_vif;

        // AXI transaction 
        typedef enum bit {AXI_READ = 0, AXI_WRITE = 1} axi_dir;

        // AXI address
        typedef bit [31:0] axi_addr;

        // AXI data
        typedef bit [31:0] axi_data;
    endpackage
`endif