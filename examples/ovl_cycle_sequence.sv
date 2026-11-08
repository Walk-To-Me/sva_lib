// Interface template only; not a standalone testbench.
// Override dimensions/timing/check enables to match the DUT.
`include "std_ovl_defines.h"
ovl_cycle_sequence #(
  .severity_level(`OVL_SEVERITY_DEFAULT),
  .num_cks(2),
  .necessary_condition(`OVL_NECESSARY_CONDITION_DEFAULT),
  .property_type(`OVL_PROPERTY_DEFAULT),
  .msg(`OVL_MSG_DEFAULT),
  .coverage_level(`OVL_COVER_DEFAULT),
  .clock_edge(`OVL_CLOCK_EDGE_DEFAULT),
  .reset_polarity(`OVL_RESET_POLARITY_DEFAULT),
  .gating_type(`OVL_GATING_TYPE_DEFAULT)
) u_ovl_cycle_sequence (
  .clock(clk),
  .reset(rst_n),
  .enable(1'b1),
  .event_sequence(event_sequence),
  .fire()
);
