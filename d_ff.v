`timescale 1ns / 1ps


module d_ff_nedge(q, clock, reset, d);
  output reg q;
  input clock, reset, d;
  udp_dff_nedge DFF(q, clock, reset, d);
endmodule

primitive udp_dff_nedge (q, clock, reset, d);
  output reg q;
  input clock, reset, d;
  initial q = 0;
  table
    //clock   reset   d  :  q  :  q_next
        ?       1     ?  :  ?  :  0; // reset condition
        ?      (10)   ?  :  ?  :  -; // ignoring negative transiton of reset
      (10)      0     1  :  ?  :  1; // q = data
      (10)      0     0  :  ?  :  0; // q = data
      (1x)      0     ?  :  ?  :  -; // for unknown clock transition, hold previous state of q
      (0?)      0     ?  :  ?  :  -; // ignoring positive transiton of clock
      (x1)      0     ?  :  ?  :  -; // ignoring positive transiton of clock
       ?        0   (??) :  ?  :  -; // ignoring changes in d for no changes in clock
  endtable
endprimitive