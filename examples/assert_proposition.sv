// Interface template only; not a standalone testbench.
// Override dimensions/timing/check enables to match the DUT.
`include "std_ovl_defines.h"
assert_proposition #(
  .severity_level(`OVL_SEVERITY_DEFAULT),
  .property_type(`OVL_PROPERTY_DEFAULT),
  .msg(`OVL_MSG_DEFAULT),
  .coverage_level(`OVL_COVER_DEFAULT)
) u_assert_proposition (
  .reset_n(reset_n),
  .test_expr(test_expr)
);
