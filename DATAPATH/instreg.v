module instreg(inst,clk,A,ALU_Sel);
input[10:0] inst;
input clk;
output[7:0] A;
output[2:0] ALU_Sel;
reg [2:0] ALU_Sel;
reg [7:0] A;

always @ (posedge clk)
begin
  ALU_Sel[0] <= inst[0];
  ALU_Sel[1] <= inst[1];
  ALU_Sel[2] <= inst[2];
  A[0] <= inst[3];
  A[1] <= inst[4];
  A[2] <= inst[5];
  A[3] <= inst[6];
  A[4] <= inst[7];
  A[5] <= inst[8];
  A[6] <= inst[9];
  A[7] <= inst[10];
end
endmodule
