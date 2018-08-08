module datapath(clk,resetC,fetch,decode,exec,carry,zero,neg,over);
input clk,exec,resetC,fetch,decode;
wire[2:0] count,ALU_Sel;
wire[10:0] inst;
wire[7:0] A,B,ALU_Out;
output carry,zero,neg,over;

counter pc(clk,resetC,count,fetch);
rom im(count,clk,inst);
instreg ir(inst,clk,decode,A,ALU_Sel);
alu alu_8(A,B,ALU_Sel,ALU_Out,carry,zero,neg,over);
accumulator acc(ALU_Out, B, clk, exec);

endmodule
