module binarycell(en,data,rw,clk,out);
 input data,clk,rw,en; 
 output out;

 wire set,reset,ffout;

 assign set = data & en & ~rw;
 assign reset = ~data & en & ~rw;
 assign out = en & ffout & rw;

 rsflipflop rsff(set,reset,clk,ffout);

endmodule
