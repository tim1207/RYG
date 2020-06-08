module top(LED, clk, reset);
  output [5:0] LED;
  input clk, reset;
  wire clk_out;
  freq_div_23 fd(.clk_out(clk_out), .clk(clk), .reset(reset));
 // assign clk_out = clk;
  ryg ryg1(.RYG(LED), .clk(clk_out), .reset(reset));
endmodule