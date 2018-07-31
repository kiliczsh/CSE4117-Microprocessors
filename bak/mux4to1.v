module mux4to1(in0,in1,in2,in3,sel0,sel1,out);
input[7:0] in0,in1,in2,in3;
input sel0,sel1;
output[7:0] out;
wire[7:0] w1,w2;
mux2to1 m1(in0,in1,sel0,w1);
mux2to1 m2(in2,in3,sel0,w2);
mux2to1 m3(w1,w2,sel1,out);
endmodule
