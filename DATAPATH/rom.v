module rom(addr,clk ,out); 
output[10:0] out;
input[2:0] addr;
input clk;
reg [10:0] out;
reg [10:0] ROM[7:0];

initial begin
    ROM[0]=11'h400; //MOV 0
    ROM[1]=11'h070; //ADD 112
    ROM[2]=11'h10C; //SUB 12
    ROM[3]=11'h502; //<<2
    ROM[4]=11'h400; //MOV 0
    ROM[5]=11'h080; //ADD 128
    ROM[6]=11'h080; //ADD 128
    ROM[7]=11'h400; //MOV 0 
end

always @(posedge clk)
begin
    out<=ROM[addr];
end

endmodule
