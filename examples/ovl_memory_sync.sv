// Interface template only; not a standalone testbench.
// Override dimensions/timing/check enables to match the DUT.
`include "std_ovl_defines.h"
ovl_memory_sync #(
  .severity_level(`OVL_SEVERITY_DEFAULT),
  .data_width(1),
  .addr_width(1),
  .mem_size(2),
  .addr_check(1),
  .init_check(1),
  .conflict_check(0),
  .pass_thru(0),
  .one_read_check(0),
  .one_write_check(0),
  .value_check(0),
  .property_type(`OVL_PROPERTY_DEFAULT),
  .msg(`OVL_MSG_DEFAULT),
  .coverage_level(`OVL_COVER_DEFAULT),
  .wen_edge(`OVL_CLOCK_EDGE_DEFAULT),
  .ren_edge(`OVL_CLOCK_EDGE_DEFAULT),
  .reset_polarity(`OVL_RESET_POLARITY_DEFAULT),
  .gating_type(`OVL_GATING_TYPE_DEFAULT)
) u_ovl_memory_sync (
  .reset(rst_n),
  .enable(1'b1),
  .ren(ren),
  .wen(wen),
  .r_clock(r_clock),
  .w_clock(w_clock),
  .start_addr(start_addr),
  .end_addr(end_addr),
  .raddr(raddr),
  .rdata(rdata),
  .waddr(waddr),
  .wdata(wdata),
  .fire()
);
