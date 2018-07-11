module alu(input [7:0] A,B,input [2:0] ALU_Sel,output [7:0] ALU_Out);

wire [7:0] Result000,Result001,Result010,Result011,Result100,Result101,Result110,Result111;

assign Result000 = A + B ; 
assign Result001 = A - B ;

assign Result010 = A & B;
assign Result011 = A | B;

assign Result100 = A;
assign Result101 = A<<1;

assign Result110 = A>>1;
assign Result111 = 0;


mux8to1(Result000,Result001,Result010,Result011,Result100,Result101,Result110,Result111,ALU_Sel[0],ALU_Sel[1],ALU_Sel[2],ALU_Out);


endmodule
