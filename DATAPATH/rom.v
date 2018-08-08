module rom(addr,clk ,out); 
output[15:0] out;
input[2:0] addr;
input clk;
reg [15:0] out;
reg [15:0] ROM[7:0];

initial begin
    ROM[0]=16'h0400; //MOV 0
    ROM[1]=16'h0070; //ADD 112
    ROM[2]=16'h010C; //SUB 12
    ROM[3]=16'h0502; //<<2
    ROM[4]=16'h0400; //MOV 0
    ROM[5]=16'h0080; //ADD 128
    ROM[6]=16'h0080; //ADD 128
    ROM[7]=16'h0400; //MOV 0 
end

always @(negedge clk)
begin
    out<=ROM[addr];
end

endmodule
