// Interface template only; not a standalone testbench.
// Override dimensions/timing/check enables to match the DUT.
`include "std_ovl_defines.h"
assert_handshake #(
  .severity_level(`OVL_SEVERITY_DEFAULT),
  .min_ack_cycle(0),
  .max_ack_cycle(0),
  .req_drop(0),
  .deassert_count(0),
  .max_ack_length(0),
  .property_type(`OVL_PROPERTY_DEFAULT),
  .msg(`OVL_MSG_DEFAULT),
  .coverage_level(`OVL_COVER_DEFAULT)
) u_assert_handshake (
  .clk(clk),
  .reset_n(reset_n),
  .req(req),
  .ack(ack)
);
