module counter (clk, reset, count);

input clk;
input reset;
output [2:0] count;
reg [2:0] count;

always @(posedge clk)
	if (!reset)
		if(count < 7)
			count = count + 1;
		else
			count = 0;
	else
		count = 0;
endmodule
