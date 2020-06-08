module ryg(RYG, clk, reset);
  input clk, reset;
  output [5:0] RYG;
  wire [1:0] R, Y, G;
  wire [3:0] d;
  wire [3:0] data;
  assign RYG = {R, Y, G};
  df d0(data[0], d[0], clk, reset);
  df d1(data[1], d[1], clk, reset);
  df d2(data[2], d[2], clk, reset);
  df d3(data[3], d[3], clk, reset);

  assign d[0] =  ~data[0];
  assign d[1] =  ~data[1]&data[0] | data[1]&~data[0];
  assign d[2] =  data[2]&~data[1] | data[2]&~data[0] | ~data[2]&data[1]&data[0];
  assign d[3] =  data[3]&~data[2] | data[3]&~data[1] | data[3]&~data[0] | ~data[3]&data[2]&data[1]&data[0];
  assign R[0] =  ~data[3];
  assign R[1] =  data[3];
  assign Y[0] =  data[3]&data[2]&data[1];
  assign Y[1] =  ~data[3]&data[2]&data[1];
  assign G[0] =  data[3]&~data[2] | data[3]&~data[1];
  assign G[1] =  ~data[3]&~data[2] | ~data[3]&~data[1];
endmodule
  