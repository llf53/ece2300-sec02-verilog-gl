//========================================================================
// PairTripleDetector_GL
//========================================================================

`ifndef PAIR_TRIPLE_DETECTOR_GL_V
`define PAIR_TRIPLE_DETECTOR_GL_V

`include "ece2300-misc.v"

module PairTripleDetector_GL
(
  input  wire in0,
  input  wire in1,
  input  wire in2,
  output wire out
 );

  //''' ACTIVITY '''''''''''''''''''''''''''''''''''''''''''''''''''''''''
  // Implement pair/triple detector using explicit gate-level modeling
  //''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

  // `ECE2300_UNUSED( in0 );
  // `ECE2300_UNUSED( in1 );
  // `ECE2300_UNUSED( in2 );
  // `ECE2300_UNDRIVEN( out );

  wire w;
  wire x;
  wire y;

  or(w, in0, in1);
  and(y, w, in2);
  and(x, in0, in1);
  or(out, y, x);

endmodule

`endif /* PAIR_TRIPLE_DETECTOR_GL_V */

