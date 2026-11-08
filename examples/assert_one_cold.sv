// Interface template only; not a standalone testbench.
// Override dimensions/timing/check enables to match the DUT.
`include "std_ovl_defines.h"
assert_one_cold #(
  .severity_level(`OVL_SEVERITY_DEFAULT),
  .width(32),
  .inactive(`OVL_INACTIVE_DEFAULT),
  .property_type(`OVL_PROPERTY_DEFAULT),
  .msg(`OVL_MSG_DEFAULT),
  .coverage_level(`OVL_COVER_DEFAULT)
) u_assert_one_cold (
  .clk(clk),
  .reset_n(reset_n),
  .test_expr(test_expr)
);
