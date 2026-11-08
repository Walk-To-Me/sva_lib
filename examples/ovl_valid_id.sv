// Interface template only; not a standalone testbench.
// Override dimensions/timing/check enables to match the DUT.
`include "std_ovl_defines.h"
ovl_valid_id #(
  .severity_level(`OVL_SEVERITY_DEFAULT),
  .min_cks(1),
  .max_cks(1),
  .width(2),
  .max_id_instances(2),
  .max_ids(1),
  .max_instances_per_id(1),
  .instance_count_width(2),
  .property_type(`OVL_PROPERTY_DEFAULT),
  .msg(`OVL_MSG_DEFAULT),
  .coverage_level(`OVL_COVER_DEFAULT),
  .clock_edge(`OVL_CLOCK_EDGE_DEFAULT),
  .reset_polarity(`OVL_RESET_POLARITY_DEFAULT),
  .gating_type(`OVL_GATING_TYPE_DEFAULT)
) u_ovl_valid_id (
  .clock(clk),
  .reset(rst_n),
  .enable(1'b1),
  .issued(issued),
  .returned(returned),
  .flush(flush),
  .issued_id(issued_id),
  .returned_id(returned_id),
  .flush_id(flush_id),
  .issued_count(issued_count),
  .fire()
);
