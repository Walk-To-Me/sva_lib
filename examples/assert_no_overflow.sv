// Interface template only; not a standalone testbench.
// Override dimensions/timing/check enables to match the DUT.
`include "std_ovl_defines.h"
assert_no_overflow #(
  .severity_level(`OVL_SEVERITY_DEFAULT),
  .width(1),
  .min(0),
  .max(((1<<width)-1)),
  .property_type(`OVL_PROPERTY_DEFAULT),
  .msg(`OVL_MSG_DEFAULT),
  .coverage_level(`OVL_COVER_DEFAULT)
) u_assert_no_overflow (
  .clk(clk),
  .reset_n(reset_n),
  .test_expr(test_expr)
);
