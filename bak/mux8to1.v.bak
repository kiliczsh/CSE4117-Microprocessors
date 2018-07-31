module mux8to1(in0,in1,in2,in3,in4,in5,in6,in7,sel0,sel1,sel2,out);
input[7:0] in0,in1,in2,in3,in4,in5,in6,in7;
input sel0,sel1,sel2;
output[7:0] out;
wire[7:0] w1,w2;
mux4to1(in0,in1,in2,in3,sel0,sel1,w1);
mux4to1(in4,in5,in6,in7,sel0,sel1,w2);
mux2to1(w1,w2,sel2,out);
endmodule
