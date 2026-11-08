// Interface template only; not a standalone testbench.
// Override dimensions/timing/check enables to match the DUT.
`include "std_ovl_defines.h"
ovl_fifo #(
  .severity_level(`OVL_SEVERITY_DEFAULT),
  .depth(2),
  .width(1),
  .high_water_mark(0),
  .enq_latency(0),
  .deq_latency(0),
  .value_check(1),
  .pass_thru(0),
  .registered(0),
  .preload_count(0),
  .property_type(`OVL_PROPERTY_DEFAULT),
  .msg(`OVL_MSG_DEFAULT),
  .coverage_level(`OVL_COVER_DEFAULT),
  .clock_edge(`OVL_CLOCK_EDGE_DEFAULT),
  .reset_polarity(`OVL_RESET_POLARITY_DEFAULT),
  .gating_type(`OVL_GATING_TYPE_DEFAULT)
) u_ovl_fifo (
  .clock(clk),
  .reset(rst_n),
  .enable(1'b1),
  .enq(enq),
  .deq(deq),
  .full(full),
  .empty(empty),
  .enq_data(enq_data),
  .deq_data(deq_data),
  .preload(preload),
  .fire()
);
