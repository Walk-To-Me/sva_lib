// Interface template only; not a standalone testbench.
// Override dimensions/timing/check enables to match the DUT.
`include "std_ovl_defines.h"
ovl_crc #(
  .severity_level(`OVL_SEVERITY_DEFAULT),
  .width(1),
  .data_width(0),
  .crc_width(5),
  .crc_enable(0),
  .crc_latch_enable(0),
  .polynomial(5),
  .standard_polynomial(0),
  .initial_value(0),
  .lsb_first(0),
  .big_endian(0),
  .reverse_endian(0),
  .invert(0),
  .combinational(0),
  .property_type(`OVL_PROPERTY_DEFAULT),
  .msg(`OVL_MSG_DEFAULT),
  .coverage_level(`OVL_COVER_DEFAULT),
  .clock_edge(`OVL_CLOCK_EDGE_DEFAULT),
  .reset_polarity(`OVL_RESET_POLARITY_DEFAULT),
  .gating_type(`OVL_GATING_TYPE_DEFAULT)
) u_ovl_crc (
  .clock(clk),
  .reset(rst_n),
  .enable(1'b1),
  .test_expr(test_expr),
  .initialize(initialize),
  .crc(crc),
  .compare(compare),
  .valid(valid),
  .crc_latch(crc_latch),
  .fire()
);
