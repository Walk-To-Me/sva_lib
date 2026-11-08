// Interface template only; not a standalone testbench.
// Override dimensions/timing/check enables to match the DUT.
`include "std_ovl_defines.h"
ovl_handshake #(
  .severity_level(`OVL_SEVERITY_DEFAULT),
  .min_ack_cycle(0),
  .max_ack_cycle(0),
  .req_drop(0),
  .deassert_count(0),
  .max_ack_length(0),
  .property_type(`OVL_PROPERTY_DEFAULT),
  .msg(`OVL_MSG_DEFAULT),
  .coverage_level(`OVL_COVER_DEFAULT),
  .clock_edge(`OVL_CLOCK_EDGE_DEFAULT),
  .reset_polarity(`OVL_RESET_POLARITY_DEFAULT),
  .gating_type(`OVL_GATING_TYPE_DEFAULT)
) u_ovl_handshake (
  .clock(clk),
  .reset(rst_n),
  .enable(1'b1),
  .req(req),
  .ack(ack),
  .fire()
);
