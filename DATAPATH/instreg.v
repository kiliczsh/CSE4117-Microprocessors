module instreg(inst,clk,decode,A,ALU_Sel);
input[10:0] inst;
input clk,decode;
output[7:0] A;
output[2:0] ALU_Sel;
reg [2:0] ALU_Sel;
reg [7:0] A;

always @ (posedge clk)
begin
  if(decode) begin
    ALU_Sel[0] <= inst[8];
    ALU_Sel[1] <= inst[9];
    ALU_Sel[2] <= inst[10];
    A[0] <= inst[0];
    A[1] <= inst[1];
    A[2] <= inst[2];
    A[3] <= inst[3];
    A[4] <= inst[4];
    A[5] <= inst[5];
    A[6] <= inst[6];
    A[7] <= inst[7];
  end
end
endmodule
