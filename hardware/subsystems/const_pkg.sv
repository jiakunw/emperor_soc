// const.sv

package const_pkg;
  // === AXI Interface ===
  typedef enum logic [1:0] {
      AXI_RESP_OKAY   = 2'b00,  // normal response
      AXI_RESP_EXOKAY = 2'b01,  // only used for AXI coherent
      AXI_RESP_SLVERR = 2'b10,  // slave error
      AXI_RESP_DECERR = 2'b11   // decode error
  } resp_t;
endpackage