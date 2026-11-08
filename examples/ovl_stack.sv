// Interface template only; not a standalone testbench.
// Override dimensions/timing/check enables to match the DUT.
`include "std_ovl_defines.h"
ovl_stack #(
  .severity_level(`OVL_SEVERITY_DEFAULT),
  .depth(2),
  .width(1),
  .high_water_mark(0),
  .push_latency(0),
  .pop_latency(0),
  .property_type(`OVL_PROPERTY_DEFAULT),
  .msg(`OVL_MSG_DEFAULT),
  .coverage_level(`OVL_COVER_DEFAULT),
  .clock_edge(`OVL_CLOCK_EDGE_DEFAULT),
  .reset_polarity(`OVL_RESET_POLARITY_DEFAULT),
  .gating_type(`OVL_GATING_TYPE_DEFAULT)
) u_ovl_stack (
  .clock(clk),
  .reset(rst_n),
  .enable(1'b1),
  .pop(pop),
  .push(push),
  .full(full),
  .empty(empty),
  .pop_data(pop_data),
  .push_data(push_data),
  .fire()
);
