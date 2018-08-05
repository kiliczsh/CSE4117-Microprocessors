module instreg(inst,clk,A,B,ALU_Sel);
input[7:0] inst;
input clk;
output[7:0] A,B;
output[2:0] ALU_Sel;  
always @ (posedge clk)
begin
  assign ALU_Sel[0] = inst[0];
  assign ALU_Sel[1] = inst[1];
  assign ALU_Sel[2] = inst[2];
end
endmodule
