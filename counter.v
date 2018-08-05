module counter (clk, reset, count);

input		clk;
input		reset;
output	[7:0]	count;

reg	[7:0]	count;

always @(posedge clk)
	if (!reset)
		count = count + 1;
	else
		count = 0;
endmodule
