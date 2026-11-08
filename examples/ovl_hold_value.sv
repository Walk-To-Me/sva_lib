// Interface template only; not a standalone testbench.
// Override dimensions/timing/check enables to match the DUT.
`include "std_ovl_defines.h"
ovl_hold_value #(
  .severity_level(`OVL_SEVERITY_DEFAULT),
  .min(0),
  .max(0),
  .width(2),
  .property_type(`OVL_PROPERTY_DEFAULT),
  .msg(`OVL_MSG_DEFAULT),
  .coverage_level(`OVL_COVER_DEFAULT),
  .clock_edge(`OVL_CLOCK_EDGE_DEFAULT),
  .reset_polarity(`OVL_RESET_POLARITY_DEFAULT),
  .gating_type(`OVL_GATING_TYPE_DEFAULT)
) u_ovl_hold_value (
  .clock(clk),
  .reset(rst_n),
  .enable(1'b1),
  .test_expr(test_expr),
  .value(value),
  .fire()
);
