// Interface template only; not a standalone testbench.
// Override dimensions/timing/check enables to match the DUT.
`include "std_ovl_defines.h"
ovl_reg_loaded #(
  .severity_level(`OVL_SEVERITY_DEFAULT),
  .width(4),
  .start_count(1),
  .end_count(10),
  .property_type(`OVL_PROPERTY_DEFAULT),
  .msg(`OVL_MSG_DEFAULT),
  .coverage_level(`OVL_COVER_DEFAULT),
  .clock_edge(`OVL_CLOCK_EDGE_DEFAULT),
  .reset_polarity(`OVL_RESET_POLARITY_DEFAULT),
  .gating_type(`OVL_GATING_TYPE_DEFAULT)
) u_ovl_reg_loaded (
  .clock(clk),
  .reset(rst_n),
  .enable(1'b1),
  .start_event(start_event),
  .end_event(end_event),
  .src_expr(src_expr),
  .dest_expr(dest_expr),
  .fire()
);
