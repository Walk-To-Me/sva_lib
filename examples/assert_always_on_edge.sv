// Interface template only; not a standalone testbench.
// Override dimensions/timing/check enables to match the DUT.
`include "std_ovl_defines.h"
assert_always_on_edge #(
  .severity_level(`OVL_SEVERITY_DEFAULT),
  .edge_type(`OVL_NOEDGE),
  .property_type(`OVL_PROPERTY_DEFAULT),
  .msg(`OVL_MSG_DEFAULT),
  .coverage_level(`OVL_COVER_DEFAULT)
) u_assert_always_on_edge (
  .clk(clk),
  .reset_n(reset_n),
  .sampling_event(sampling_event),
  .test_expr(test_expr)
);
