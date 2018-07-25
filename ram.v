module ram(s0,s1,a0,a1,data,rw,clk,out);
 input s0,s1,a0,a1,data,rw,clk;
 output[7:0] out;
 wire[7:0] output00,output01,output10,output11;
 
 wire c1,c2,c3,c4;
 // select for cell 00
 assign c1 = ~s0 & ~s1;
 // select for cell 01
 assign c2 = s0 & ~s1;
 //select for cell 10
 assign c3 = ~s0 &  s1;
 //select for cell11
 assign c4 = s0 & s1;
 
 //module binarycell(sel,data,rw,clk,out);
 
 //address 00
 binarycell cell001(c1,data,rw,clk,out001);
 assign output00[0] = out001;
 binarycell cell002(c1,data,rw,clk,out002);
 assign output00[1] = out002;
 binarycell cell003(c1,data,rw,clk,out003);
 assign output00[2] = out003;
 binarycell cell004(c1,data,rw,clk,out003);
 assign output00[3] = out003;
 binarycell cell005(c1,data,rw,clk,out005);
 assign output00[4] = out005;
 binarycell cell006(c1,data,rw,clk,out006);
 assign output00[5] = out006;
 binarycell cell007(c1,data,rw,clk,out007);
 assign output00[6] = out007;
 binarycell cell008(c1,data,rw,clk,out008);
 assign output00[7] = out008;
 
 //address 01
 binarycell cell011(c2,data,rw,clk,out011);
 assign output01[0] = out011;
 binarycell cell012(c2,data,rw,clk,out012);
 assign output01[1] = out012;
 binarycell cell013(c2,data,rw,clk,out013);
 assign output01[2] = out013;
 binarycell cell014(c2,data,rw,clk,out014);
 assign output01[3] = out014;
 binarycell cell015(c2,data,rw,clk,out015);
 assign output01[4] = out015;
 binarycell cell016(c2,data,rw,clk,out016);
 assign output01[5] = out016;
 binarycell cell017(c2,data,rw,clk,out017);
 assign output01[6] = out017;
 binarycell cell018(c2,data,rw,clk,out018);
 assign output01[7] = out018;
 
 //address 10
 binarycell cell101(c3,data,rw,clk,out101);
 assign output10[0] = out101;
 binarycell cell102(c3,data,rw,clk,out102);
 assign output10[1] = out102;
 binarycell cell103(c3,data,rw,clk,out103);
 assign output10[2] = out103;
 binarycell cell104(c3,data,rw,clk,out104);
 assign output10[3] = out104;
 binarycell cell105(c3,data,rw,clk,out105);
 assign output10[4] = out105;
 binarycell cell106(c3,data,rw,clk,out106);
 assign output10[5] = out106;
 binarycell cell107(c3,data,rw,clk,out107);
 assign output10[6] = out107;
 binarycell cell108(c3,data,rw,clk,out108);
 assign output10[7] = out108;
 
 //address 11
 binarycell cell111(c4,data,rw,clk,out111);
 assign output11[0] = out111;
 binarycell cell112(c4,data,rw,clk,out112);
 assign output11[1] = out112;
 binarycell cell113(c4,data,rw,clk,out113);
 assign output11[2] = out113;
 binarycell cell114(c4,data,rw,clk,out114);
 assign output11[3] = out114;
 binarycell cell115(c4,data,rw,clk,out115);
 assign output11[4] = out115;
 binarycell cell116(c4,data,rw,clk,out116);
 assign output11[5] = out116;
 binarycell cell117(c4,data,rw,clk,out117);
 assign output11[6] = out117;
 binarycell cell118(c4,data,rw,clk,out118);
 assign output11[7] = out118;
 
// out output00 01 10 11 bunlardan birine atanacak a0 ve a1 adres değişkenleri ama nasıl olacak çözemedim
 
endmodule
