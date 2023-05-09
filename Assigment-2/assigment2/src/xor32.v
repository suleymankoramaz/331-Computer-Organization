module xor32(
				input  [31:0] a,
				input  [31:0] b,
				output [31:0] out);
	
	xor xor1( out[0] , a[0]   , b[0]);
	xor xor2( out[1] , a[1]   , b[1]);
	xor xor3( out[2] , a[2]   , b[2]);
	xor xor4( out[3] , a[3]   , b[3]);
	xor xor5( out[4] , a[4]   , b[4]);
	xor xor6( out[5] , a[5]   , b[5]);
	xor xor7( out[6] , a[6]   , b[6]);
	xor xor8( out[7] , a[7]   , b[7]);
	xor xor9( out[8] , a[8]   , b[8]);
	xor xor10(out[9] , a[9]   , b[9]);
	xor xor11(out[10], a[10] , b[10]);
	xor xor12(out[11], a[11] , b[11]);
	xor xor13(out[12], a[12] , b[12]);
	xor xor14(out[13], a[13] , b[13]);
	xor xor15(out[14], a[14] , b[14]);
	xor xor16(out[15], a[15] , b[15]);
	xor xor17(out[16], a[16] , b[16]);
	xor xor18(out[17], a[17] , b[17]);
	xor xor19(out[18], a[18] , b[18]);
	xor xor20(out[19], a[19] , b[19]);
	xor xor21(out[20], a[20] , b[20]);
	xor xor22(out[21], a[21] , b[21]);
	xor xor23(out[22], a[22] , b[22]);
	xor xor24(out[23], a[23] , b[23]);
	xor xor25(out[24], a[24] , b[24]);
	xor xor26(out[25], a[25] , b[25]);
	xor xor27(out[26], a[26] , b[26]);
	xor xor28(out[27], a[27] , b[27]);
	xor xor29(out[28], a[28] , b[28]);
	xor xor30(out[29], a[29] , b[29]);
	xor xor31(out[30], a[30] , b[30]);
	xor xor32(out[31], a[31] , b[31]);

endmodule 