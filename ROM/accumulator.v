module accumulator (in, acc, clk, reset);

input [7:0] in;
input clk, reset;
output [7:0] acc
reg [7:0] acc;

always@(clk) begin
if(reset)
acc <= 8’b00000000;
else
acc <= in;
end
endmodule
