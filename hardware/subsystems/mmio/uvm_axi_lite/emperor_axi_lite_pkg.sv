// emperor_axi_lite_pkg.sv

`ifndef EMPEROR_AXI_LITE_PKG
    `define EMPEROR_AXI_LITE_PKG

    `include "uvm_macros.svh"

    package emperor_axi_lite_pkg;
        import uvm_pkg::*;
        `include "emperor_axi_lite_types.sv"
        `include "emperor_axi_lite_if.sv"
        `include "emperor_axi_lite_seq_item_base.sv"
        `include "emperor_axi_lite_agent_config.sv"
        `include "emperor_axi_lite_sequencer.sv"
        `include "emperor_axi_lite_driver.sv"
        `include "emperor_axi_lite_agent.sv"
        `include "emperor_axi_lite_sequence_base.sv"
        `include "emperor_axi_lite_sequence_simple.sv"
        `include "axi_lite_coverage.sv"
    endpackage
`endif