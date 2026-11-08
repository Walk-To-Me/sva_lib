// Interface template only; not a standalone testbench.
// Override dimensions/timing/check enables to match the DUT.
`include "std_ovl_defines.h"
assert_fifo_index #(
  .severity_level(`OVL_SEVERITY_DEFAULT),
  .depth(1),
  .push_width(1),
  .pop_width(1),
  .property_type(`OVL_PROPERTY_DEFAULT),
  .msg(`OVL_MSG_DEFAULT),
  .coverage_level(`OVL_COVER_DEFAULT),
  .simultaneous_push_pop(1)
) u_assert_fifo_index (
  .clk(clk),
  .reset_n(reset_n),
  .push(push),
  .pop(pop)
);
