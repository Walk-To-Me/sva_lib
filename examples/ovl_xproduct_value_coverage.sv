// Interface template only; not a standalone testbench.
// Override dimensions/timing/check enables to match the DUT.
`include "std_ovl_defines.h"
ovl_xproduct_value_coverage #(
  .severity_level(`OVL_SEVERITY_DEFAULT),
  .width1(1),
  .width2(1),
  .val1_width(1),
  .val2_width(1),
  .val1_count(0),
  .val2_count(0),
  .min1(0),
  .min2(0),
  .max1(0),
  .max2(0),
  .coverage_check(0),
  .property_type(`OVL_PROPERTY_DEFAULT),
  .msg(`OVL_MSG_DEFAULT),
  .coverage_level(`OVL_COVER_DEFAULT),
  .clock_edge(`OVL_CLOCK_EDGE_DEFAULT),
  .reset_polarity(`OVL_RESET_POLARITY_DEFAULT),
  .gating_type(`OVL_GATING_TYPE_DEFAULT)
) u_ovl_xproduct_value_coverage (
  .clock(clk),
  .reset(rst_n),
  .enable(1'b1),
  .test_expr1(test_expr1),
  .test_expr2(test_expr2),
  .val1(val1),
  .val2(val2),
  .fire()
);
