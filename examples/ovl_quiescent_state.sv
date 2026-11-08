// Interface template only; not a standalone testbench.
// Override dimensions/timing/check enables to match the DUT.
`include "std_ovl_defines.h"
ovl_quiescent_state #(
  .severity_level(`OVL_SEVERITY_DEFAULT),
  .width(1),
  .property_type(`OVL_PROPERTY_DEFAULT),
  .msg(`OVL_MSG_DEFAULT),
  .coverage_level(`OVL_COVER_DEFAULT),
  .clock_edge(`OVL_CLOCK_EDGE_DEFAULT),
  .reset_polarity(`OVL_RESET_POLARITY_DEFAULT),
  .gating_type(`OVL_GATING_TYPE_DEFAULT)
) u_ovl_quiescent_state (
  .clock(clk),
  .reset(rst_n),
  .enable(1'b1),
  .sample_event(sample_event),
  .state_expr(state_expr),
  .check_value(check_value),
  .fire()
);
