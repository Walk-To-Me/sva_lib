// Interface template only; not a standalone testbench.
// Override dimensions/timing/check enables to match the DUT.
`include "std_ovl_defines.h"
assert_next #(
  .severity_level(`OVL_SEVERITY_DEFAULT),
  .num_cks(1),
  .check_overlapping(1),
  .check_missing_start(0),
  .property_type(`OVL_PROPERTY_DEFAULT),
  .msg(`OVL_MSG_DEFAULT),
  .coverage_level(`OVL_COVER_DEFAULT)
) u_assert_next (
  .clk(clk),
  .reset_n(reset_n),
  .start_event(start_event),
  .test_expr(test_expr)
);
