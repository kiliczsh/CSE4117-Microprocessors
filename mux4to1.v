module mux4to1(in0,in1,in2,in3,sel0,sel1,out);
input in0,in1,in2,in3,sel0,sel1;
output out;
wire w1,w2;
mux2to1(in0,in1,sel0,w1);
mux2to1(in2,in3,sel0,w2);
mux2to1(w1,w2,sel1,out);
endmodule
