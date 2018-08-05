module counter (clk, reset, count);

input		clk;
input		reset;
output	[7:0]	count;

reg	[7:0]	count;

always @(posedge clk)
	if (!reset)
		//reset değilse branch veya jump olma olasılığı
		count = count + 1;
	else
		count = 0;
endmodule
