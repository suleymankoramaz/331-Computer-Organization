module mux8x1(
				input  [15:0] opt1,
				input  [15:0] opt2,
				input  [15:0] opt3,
				input  [15:0] opt4,
				input  [15:0] opt5,
				input  [15:0] opt6,
				input  [15:0] opt7,
				input  [15:0] opt8,
				input  [2:0]  aluOP,
				output [15:0] out);
	
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
 	
endmodule