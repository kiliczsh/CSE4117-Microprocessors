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
 always @ ( clk or sel or q ) begin
	if ((clk == 1) & (sel==1)) begin
		out <= data;
	end
 end
endmodule
