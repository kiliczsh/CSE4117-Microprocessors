module datapath(clk,resetC,resetA);
input clk,resetA,resetC;
  wire[2:0] count,ALU_Sel;
wire[7:0] inst;
wire[7:0] A,B,ALU_Out;
output carry,zero,neg,over;

counter pc(clk,resetC,count);
rom im(count,clk,inst);
instreg ir(inst,clk,A,B,ALU_Sel);
alu alu_8(A,B,ALU_Sel,ALU_Out,carry,zero,neg,over);
accumulator acc(ALU_Out, B, clk, resetA);
  
endmodule
