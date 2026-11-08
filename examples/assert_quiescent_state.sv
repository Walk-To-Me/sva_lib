// Interface template only; not a standalone testbench.
// Override dimensions/timing/check enables to match the DUT.
`include "std_ovl_defines.h"
assert_quiescent_state #(
  .severity_level(`OVL_SEVERITY_DEFAULT),
  .width(1),
  .property_type(`OVL_PROPERTY_DEFAULT),
  .msg(`OVL_MSG_DEFAULT),
  .coverage_level(`OVL_COVER_DEFAULT)
) u_assert_quiescent_state (
  .clk(clk),
  .reset_n(reset_n),
  .sample_event(sample_event),
  .state_expr(state_expr),
  .check_value(check_value)
);
