module test_ryg;
  reg reset, clk;
  wire [5:0]RYG;
  ryg ryg0(RYG, clk, reset);
  always #10 clk = ~clk;
  initial begin
    reset = 0; clk = 0;
    #10 reset = 1;
    //#300 reset = 0;
    //#400 reset = 1;
    #500 $stop;
  end
endmodule 