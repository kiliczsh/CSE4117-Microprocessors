module ram(s0,s1,data,rw,clk,out);
 input s0,s1,rw,clk;
 input[7:0] data;
 output[7:0] out;

 wire out001,out002,out003,out004,out005,out006,out007,out008;
 wire out011,out012,out013,out014,out015,out016,out017,out018;
 wire out101,out102,out103,out104,out105,out106,out107,out108;
 wire out111,out112,out113,out114,out115,out116,out117,out118;
 
 wire c1,c2,c3,c4;
 
 decoder2to4 decoder(s0,s1,c1,c2,c3,c4);
 
 //module binarycell(en,data,rw,clk,out);
 //address 00
 binarycell cell001(c1,data[7],rw,clk,out001);
 
 binarycell cell002(c1,data[6],rw,clk,out002);
 
 binarycell cell003(c1,data[5],rw,clk,out003);
 
 binarycell cell004(c1,data[4],rw,clk,out004);
 
 binarycell cell005(c1,data[3],rw,clk,out005);
 
 binarycell cell006(c1,data[2],rw,clk,out006);
 
 binarycell cell007(c1,data[1],rw,clk,out007);
 
 binarycell cell008(c1,data[0],rw,clk,out008);
 
 
 //address 01
 binarycell cell011(c2,data[7],rw,clk,out011);
 
 binarycell cell012(c2,data[6],rw,clk,out012);
 
 binarycell cell013(c2,data[5],rw,clk,out013);
 
 binarycell cell014(c2,data[4],rw,clk,out014);
 
 binarycell cell015(c2,data[3],rw,clk,out015);
 
 binarycell cell016(c2,data[2],rw,clk,out016);
 
 binarycell cell017(c2,data[1],rw,clk,out017);
 
 binarycell cell018(c2,data[0],rw,clk,out018);
 
 
 //address 10
 binarycell cell101(c3,data[7],rw,clk,out101);
 
 binarycell cell102(c3,data[6],rw,clk,out102);
 
 binarycell cell103(c3,data[5],rw,clk,out103);
 
 binarycell cell104(c3,data[4],rw,clk,out104);
 
 binarycell cell105(c3,data[3],rw,clk,out105);
 
 binarycell cell106(c3,data[2],rw,clk,out106);
 
 binarycell cell107(c3,data[1],rw,clk,out107);
 
 binarycell cell108(c3,data[0],rw,clk,out108);
 
 
 //address 11
 binarycell cell111(c4,data[7],rw,clk,out111);
 
 binarycell cell112(c4,data[6],rw,clk,out112);
 
 binarycell cell113(c4,data[5],rw,clk,out113);
 
 binarycell cell114(c4,data[4],rw,clk,out114);
 
 binarycell cell115(c4,data[3],rw,clk,out115);
 
 binarycell cell116(c4,data[2],rw,clk,out116);
 
 binarycell cell117(c4,data[1],rw,clk,out117);
 
 binarycell cell118(c4,data[0],rw,clk,out118);
 
 assign out[7] = out001 || out011 || out101 || out111;
 assign out[6] = out002 || out012 || out102 || out112;
 assign out[5] = out003 || out013 || out103 || out113;
 assign out[4] = out004 || out014 || out104 || out114;
 assign out[3] = out005 || out015 || out105 || out115;
 assign out[2] = out006 || out016 || out106 || out116;
 assign out[1] = out007 || out017 || out107 || out117;
 assign out[0] = out008 || out018 || out108 || out118;
 
endmodule
