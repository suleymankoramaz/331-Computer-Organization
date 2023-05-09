module mux8(
				input  [31:0] opt1,
				input  [31:0] opt2,
				input  [31:0] opt3,
				input  [31:0] opt4,
				input  [31:0] opt5,
				input  [31:0] opt6,
				input  [31:0] opt7,
				input  [31:0] opt8,
				input  [2:0]  aluOP,
				output [31:0] out);
	
	mux8_bit mux1( opt1[0] ,opt2[0] ,opt3[0] ,opt4[0] ,opt5[0] ,opt6[0] ,opt7[0] ,opt8[0] ,aluOP,out[0]);
	mux8_bit mux2( opt1[1] ,opt2[1] ,opt3[1] ,opt4[1] ,opt5[1] ,opt6[1] ,opt7[1] ,opt8[1] ,aluOP,out[1]);
	mux8_bit mux3( opt1[2] ,opt2[2] ,opt3[2] ,opt4[2] ,opt5[2] ,opt6[2] ,opt7[2] ,opt8[2] ,aluOP,out[2]);
	mux8_bit mux4( opt1[3] ,opt2[3] ,opt3[3] ,opt4[3] ,opt5[3] ,opt6[3] ,opt7[3] ,opt8[3] ,aluOP,out[3]);
	mux8_bit mux5( opt1[4] ,opt2[4] ,opt3[4] ,opt4[4] ,opt5[4] ,opt6[4] ,opt7[4] ,opt8[4] ,aluOP,out[4]);
	mux8_bit mux6( opt1[5] ,opt2[5] ,opt3[5] ,opt4[5] ,opt5[5] ,opt6[5] ,opt7[5] ,opt8[5] ,aluOP,out[5]);
	mux8_bit mux7( opt1[6] ,opt2[6] ,opt3[6] ,opt4[6] ,opt5[6] ,opt6[6] ,opt7[6] ,opt8[6] ,aluOP,out[6]);
	mux8_bit mux8( opt1[7] ,opt2[7] ,opt3[7] ,opt4[7] ,opt5[7] ,opt6[7] ,opt7[7] ,opt8[7] ,aluOP,out[7]);
	mux8_bit mux9( opt1[8] ,opt2[8] ,opt3[8] ,opt4[8] ,opt5[8] ,opt6[8] ,opt7[8] ,opt8[8] ,aluOP,out[8]);
	mux8_bit mux10(opt1[9] ,opt2[9] ,opt3[9] ,opt4[9] ,opt5[9] ,opt6[9] ,opt7[9] ,opt8[9] ,aluOP,out[9]);
	mux8_bit mux11(opt1[10],opt2[10],opt3[10],opt4[10],opt5[10],opt6[10],opt7[10],opt8[10],aluOP,out[10]);
	mux8_bit mux12(opt1[11],opt2[11],opt3[11],opt4[11],opt5[11],opt6[11],opt7[11],opt8[11],aluOP,out[11]);
	mux8_bit mux13(opt1[12],opt2[12],opt3[12],opt4[12],opt5[12],opt6[12],opt7[12],opt8[12],aluOP,out[12]);
	mux8_bit mux14(opt1[13],opt2[13],opt3[13],opt4[13],opt5[13],opt6[13],opt7[13],opt8[13],aluOP,out[13]);
	mux8_bit mux15(opt1[14],opt2[14],opt3[14],opt4[14],opt5[14],opt6[14],opt7[14],opt8[14],aluOP,out[14]);
	mux8_bit mux16(opt1[15],opt2[15],opt3[15],opt4[15],opt5[15],opt6[15],opt7[15],opt8[15],aluOP,out[15]);
	mux8_bit mux17(opt1[16],opt2[16],opt3[16],opt4[16],opt5[16],opt6[16],opt7[16],opt8[16],aluOP,out[16]);
	mux8_bit mux18(opt1[17],opt2[17],opt3[17],opt4[17],opt5[17],opt6[17],opt7[17],opt8[17],aluOP,out[17]);
	mux8_bit mux19(opt1[18],opt2[18],opt3[18],opt4[18],opt5[18],opt6[18],opt7[18],opt8[18],aluOP,out[18]);
	mux8_bit mux20(opt1[19],opt2[19],opt3[19],opt4[19],opt5[19],opt6[19],opt7[19],opt8[19],aluOP,out[19]);
	mux8_bit mux21(opt1[20],opt2[20],opt3[20],opt4[20],opt5[20],opt6[20],opt7[20],opt8[20],aluOP,out[20]);
	mux8_bit mux22(opt1[21],opt2[21],opt3[21],opt4[21],opt5[21],opt6[21],opt7[21],opt8[21],aluOP,out[21]);
	mux8_bit mux23(opt1[22],opt2[22],opt3[22],opt4[22],opt5[22],opt6[22],opt7[22],opt8[22],aluOP,out[22]);
	mux8_bit mux24(opt1[23],opt2[23],opt3[23],opt4[23],opt5[23],opt6[23],opt7[23],opt8[23],aluOP,out[23]);
	mux8_bit mux25(opt1[24],opt2[24],opt3[24],opt4[24],opt5[24],opt6[24],opt7[24],opt8[24],aluOP,out[24]);
	mux8_bit mux26(opt1[25],opt2[25],opt3[25],opt4[25],opt5[25],opt6[25],opt7[25],opt8[25],aluOP,out[25]);
	mux8_bit mux27(opt1[26],opt2[26],opt3[26],opt4[26],opt5[26],opt6[26],opt7[26],opt8[26],aluOP,out[26]);
	mux8_bit mux28(opt1[27],opt2[27],opt3[27],opt4[27],opt5[27],opt6[27],opt7[27],opt8[27],aluOP,out[27]);
	mux8_bit mux29(opt1[28],opt2[28],opt3[28],opt4[28],opt5[28],opt6[28],opt7[28],opt8[28],aluOP,out[28]);
	mux8_bit mux30(opt1[29],opt2[29],opt3[29],opt4[29],opt5[29],opt6[29],opt7[29],opt8[29],aluOP,out[29]);
	mux8_bit mux31(opt1[30],opt2[30],opt3[30],opt4[30],opt5[30],opt6[30],opt7[30],opt8[30],aluOP,out[30]);
 	mux8_bit mux32(opt1[31],opt2[31],opt3[31],opt4[31],opt5[31],opt6[31],opt7[31],opt8[31],aluOP,out[31]);
 	
endmodule