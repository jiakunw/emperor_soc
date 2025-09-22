// emperor_axi_lite_pkg.sv

`ifndef EMPEROR_AXI_LITE_PKG
    `define EMPEROR_AXI_LITE_PKG

    `include "uvm_macros.svh"
    `include "emperor_axi_lite_if.sv"

    package emperor_axi_lite_pkg;
        import uvm_pkg::*;
        `include "emperor_axi_lite_types.sv"
        `include "emperor_axi_lite_agent_config.sv"
        `include "emperor_axi_lite_agent.sv"
    endpackage
`endif