module accumulator (in, acc, clk, reset);

input [7:0] in;
input clk, reset;
  output [7:0] acc;
reg [7:0] acc;

always@(clk) begin
if(reset)
acc <= 0;
else
acc <= in;
end
endmodule
