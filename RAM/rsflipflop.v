module rsflipflop(set,reset,clk,out);
  input set,reset,clk; 
	output out;

	reg out;

	initial begin
	out = 0;
	end

	always @(posedge clk)
	begin
		out = set ? 1'b1:out;
		out = reset ? 1'b0:out;
	end
	
endmodule
