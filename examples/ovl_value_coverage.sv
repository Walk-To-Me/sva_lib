// Interface template only; not a standalone testbench.
// Override dimensions/timing/check enables to match the DUT.
`include "std_ovl_defines.h"
ovl_value_coverage #(
  .severity_level(`OVL_SEVERITY_DEFAULT),
  .width(1),
  .is_not_width(1),
  .is_not_count(0),
  .value_coverage(0),
  .property_type(`OVL_PROPERTY_DEFAULT),
  .msg(`OVL_MSG_DEFAULT),
  .coverage_level(`OVL_COVER_DEFAULT),
  .clock_edge(`OVL_CLOCK_EDGE_DEFAULT),
  .reset_polarity(`OVL_RESET_POLARITY_DEFAULT),
  .gating_type(`OVL_GATING_TYPE_DEFAULT)
) u_ovl_value_coverage (
  .clock(clk),
  .reset(rst_n),
  .enable(1'b1),
  .test_expr(test_expr),
  .is_not(is_not),
  .fire()
);
