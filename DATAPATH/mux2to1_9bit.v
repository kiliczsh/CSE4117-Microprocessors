module mux2to1_9bit(in0,in1,sel0,out);

input[8:0] in0,in1;
input sel0;
output[8:0] out;

assign out[8] =  (in0[8] & ~sel0)|(in1[8] & sel0)|0;
assign out[7] =  (in0[7] & ~sel0)|(in1[7] & sel0);
assign out[6] =  (in0[6] & ~sel0)|(in1[6] & sel0);
assign out[5] =  (in0[5] & ~sel0)|(in1[5] & sel0);
assign out[4] =  (in0[4] & ~sel0)|(in1[4] & sel0);
assign out[3] =  (in0[3] & ~sel0)|(in1[3] & sel0);
assign out[2] =  (in0[2] & ~sel0)|(in1[2] & sel0);
assign out[1] =  (in0[1] & ~sel0)|(in1[1] & sel0);
assign out[0] =  (in0[0] & ~sel0)|(in1[0] & sel0);

endmodule
