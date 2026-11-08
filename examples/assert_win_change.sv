// Interface template only; not a standalone testbench.
// Override dimensions/timing/check enables to match the DUT.
`include "std_ovl_defines.h"
assert_win_change #(
  .severity_level(`OVL_SEVERITY_DEFAULT),
  .width(1),
  .property_type(`OVL_PROPERTY_DEFAULT),
  .msg(`OVL_MSG_DEFAULT),
  .coverage_level(`OVL_COVER_DEFAULT)
) u_assert_win_change (
  .clk(clk),
  .reset_n(reset_n),
  .start_event(start_event),
  .test_expr(test_expr),
  .end_event(end_event)
);
