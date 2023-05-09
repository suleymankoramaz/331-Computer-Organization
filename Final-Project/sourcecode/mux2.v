module mux2(
				input [15:0] a,
				input [15:0] b,
				input s,
				output [15:0] out);
	
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

endmodule 