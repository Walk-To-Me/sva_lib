// Interface template only; not a standalone testbench.
// Override dimensions/timing/check enables to match the DUT.
`include "std_ovl_defines.h"
ovl_multiport_fifo #(
  .severity_level(`OVL_SEVERITY_DEFAULT),
  .width(1),
  .depth(2),
  .enq_count(2),
  .deq_count(2),
  .preload_count(0),
  .pass_thru(0),
  .registered(0),
  .high_water_mark(0),
  .enq_latency(0),
  .deq_latency(0),
  .value_check(0),
  .full_check(0),
  .empty_check(0),
  .property_type(`OVL_PROPERTY_DEFAULT),
  .msg(`OVL_MSG_DEFAULT),
  .coverage_level(`OVL_COVER_DEFAULT),
  .clock_edge(`OVL_CLOCK_EDGE_DEFAULT),
  .reset_polarity(`OVL_RESET_POLARITY_DEFAULT),
  .gating_type(`OVL_GATING_TYPE_DEFAULT)
) u_ovl_multiport_fifo (
  .clock(clk),
  .reset(rst_n),
  .enable(1'b1),
  .full(full),
  .empty(empty),
  .enq(enq),
  .deq(deq),
  .enq_data(enq_data),
  .deq_data(deq_data),
  .preload(preload),
  .fire()
);
