module mux2(
				input [31:0] a,
				input [31:0] b,
				input s,
				output [31:0] out);
	
	mux2x1 mux1(a[0],b[0],s,out[0]);
	mux2x1 mux2(a[1],b[1],s,out[1]);
	mux2x1 mux3(a[2],b[2],s,out[2]);
	mux2x1 mux4(a[3],b[3],s,out[3]);
	mux2x1 mux5(a[4],b[4],s,out[4]);
	mux2x1 mux6(a[5],b[5],s,out[5]);
	mux2x1 mux7(a[6],b[6],s,out[6]);
	mux2x1 mux8(a[7],b[7],s,out[7]);
	mux2x1 mux9(a[8],b[8],s,out[8]);
	mux2x1 mux10(a[9],b[9],s,out[9]);
	mux2x1 mux11(a[10],b[10],s,out[10]);
	mux2x1 mux12(a[11],b[11],s,out[11]);
	mux2x1 mux13(a[12],b[12],s,out[12]);
	mux2x1 mux14(a[13],b[13],s,out[13]);
	mux2x1 mux15(a[14],b[14],s,out[14]);
	mux2x1 mux16(a[15],b[15],s,out[15]);
	mux2x1 mux17(a[16],b[16],s,out[16]);
	mux2x1 mux18(a[17],b[17],s,out[17]);
	mux2x1 mux19(a[18],b[18],s,out[18]);
	mux2x1 mux20(a[19],b[19],s,out[19]);
	mux2x1 mux21(a[20],b[20],s,out[20]);
	mux2x1 mux22(a[21],b[21],s,out[21]);
	mux2x1 mux23(a[22],b[22],s,out[22]);
	mux2x1 mux24(a[23],b[23],s,out[23]);
	mux2x1 mux25(a[24],b[24],s,out[24]);
	mux2x1 mux26(a[25],b[25],s,out[25]);
	mux2x1 mux27(a[26],b[26],s,out[26]);
	mux2x1 mux28(a[27],b[27],s,out[27]);
	mux2x1 mux29(a[28],b[28],s,out[28]);
	mux2x1 mux30(a[29],b[29],s,out[29]);
	mux2x1 mux31(a[30],b[30],s,out[30]);
	mux2x1 mux32(a[31],b[31],s,out[31]);

endmodule 