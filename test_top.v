module test_top;
  reg reset, clk;
  wire [5:0]RYG;
  top tp(RYG, clk, reset);
  always #10 clk = ~clk;
  initial begin
    reset = 0; clk = 0;
    #10 reset = 1;
    #500 $stop;
  end
endmodule 
