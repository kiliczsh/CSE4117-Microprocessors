module alu(A,B,ALU_Sel,ALU_Out,carry,zero,neg,over);

input [7:0] A,B;
input [2:0] ALU_Sel;
output [7:0] ALU_Out;
output carry,zero,neg,over;

  wire  [8:0] tmp;

wire [7:0] Result000,Result001,Result010,Result011,Result100,Result101,Result110,Result111;

assign Result000 = A + B ; 
assign Result001 = A - B ;

assign Result010 = A & B;
assign Result011 = A | B;

assign Result100 = A;
assign Result101 = A<<1;

assign Result110 = A>>1;
assign Result111 = 0;
  

mux8to1 mux_out(Result000,Result001,Result010,Result011,Result100,Result101,Result110,Result111,ALU_Sel[0],ALU_Sel[1],ALU_Sel[2],ALU_Out);
  
  mux2to1_9bit mux_carry({9{0},A+B},{9{0},A-B},ALU_Sel[2],tmp);

assign carry = tmp[8];
assign zero = ~(ALU_Out[7] | ALU_Out[6] | ALU_Out[5] | ALU_Out[4] | ALU_Out[3] | ALU_Out[2] | ALU_Out[1] | ALU_Out[0]);
assign neg = ALU_Out[7] ;
  assign over = (A[7] & B[7] & ~ALU_Out[7]) | (~A[7] & ~B[7] & ALU_Out[7]) | tmp[8];


endmodule
