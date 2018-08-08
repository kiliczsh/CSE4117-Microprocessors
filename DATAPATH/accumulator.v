module accumulator (in, acc, clk, exec);

input [7:0] in;
input clk, exec;
output [7:0] acc;
reg [7:0] acc;

always@(posedge clk) begin
  if(exec)
    acc <= in;
  end
endmodule
