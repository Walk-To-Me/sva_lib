// Interface template only; not a standalone testbench.
// Override dimensions/timing/check enables to match the DUT.
`include "std_ovl_defines.h"
ovl_time #(
  .severity_level(`OVL_SEVERITY_DEFAULT),
  .num_cks(1),
  .action_on_new_start(`OVL_ACTION_ON_NEW_START_DEFAULT),
  .property_type(`OVL_PROPERTY_DEFAULT),
  .msg(`OVL_MSG_DEFAULT),
  .coverage_level(`OVL_COVER_DEFAULT),
  .clock_edge(`OVL_CLOCK_EDGE_DEFAULT),
  .reset_polarity(`OVL_RESET_POLARITY_DEFAULT),
  .gating_type(`OVL_GATING_TYPE_DEFAULT)
) u_ovl_time (
  .clock(clk),
  .reset(rst_n),
  .enable(1'b1),
  .start_event(start_event),
  .test_expr(test_expr),
  .fire()
);
