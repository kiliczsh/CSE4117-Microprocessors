module counter (clk, reset, count,fetch);

input clk;
input reset,fetch;
output [2:0] count;
reg [2:0] count;

always @(posedge clk)
	if (reset)
		count = 0;
	else
		if(fetch)
			if(count < 7)
				count = count + 1;
			else
				count = 0;
		
endmodule
