module decoder2to4(s0,s1,r0,r1,r2,r3);
input s0,s1;
output r0,r1,r2,r3;

assign r0 = ~s0 & ~s1;
assign r1 = ~s0 & s1;
assign r2 = s0 & ~s1;
assign r3 = s0 & s1;

endmodule