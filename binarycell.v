module binarycell(sel,data,rw,clk,out);
 input data, clk,sel,rw; 
 output out;
 wire w1,w2,w3,w4,q;
 reg out;
 assign w1 = (sel & ~rw);
 assign w2 = w1 & data;
 assign w3 = ~w1 & q;
 assign w4 = w2 | w3;
 dflipflop binflop(w4,clk,q);
 assign out = q & sel & rw ;
endmodule
