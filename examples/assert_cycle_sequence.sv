// Interface template only; not a standalone testbench.
// Override dimensions/timing/check enables to match the DUT.
`include "std_ovl_defines.h"
assert_cycle_sequence #(
  .severity_level(`OVL_SEVERITY_DEFAULT),
  .num_cks(2),
  .necessary_condition(`OVL_NECESSARY_CONDITION_DEFAULT),
  .property_type(`OVL_PROPERTY_DEFAULT),
  .msg(`OVL_MSG_DEFAULT),
  .coverage_level(`OVL_COVER_DEFAULT)
) u_assert_cycle_sequence (
  .clk(clk),
  .reset_n(reset_n),
  .event_sequence(event_sequence)
);
