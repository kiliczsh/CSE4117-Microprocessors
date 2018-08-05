module rom(addr,clk ,out); 
output[7:0] out;
input[2:0] addr;
input clk;
reg [7:0] out;
reg [7:0] ROM[7:0];

always @(negedge clk)
begin
ROM[0]=16'h5601; ROM[1]=16'h3401;
ROM[2]=16'h1801; ROM[3]=16'h0ac1;
ROM[4]=16'h0521; ROM[5]=16'h0221;
ROM[6]=16'h5601; ROM[7]=16'h5401;
out=ROM[addr];
end

endmodule
