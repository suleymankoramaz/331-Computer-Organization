module and16(
				input  [15:0] a,
				input  [15:0] b,
				output [15:0] out);

	and and1( out[0]  , a[0]  , b[0]);
	and and2( out[1]  , a[1]  , b[1]);
	and and3( out[2]  , a[2]  , b[2]);
	and and4( out[3]  , a[3]  , b[3]);
	and and5( out[4]  , a[4]  , b[4]);
	and and6( out[5]  , a[5]  , b[5]);
	and and7( out[6]  , a[6]  , b[6]);
	and and8( out[7]  , a[7]  , b[7]);
	and and9( out[8]  , a[8]  , b[8]);
	and and10(out[9]  , a[9]  , b[9]);
	and and11(out[10] , a[10] , b[10]);
	and and12(out[11] , a[11] , b[11]);
	and and13(out[12] , a[12] , b[12]);
	and and14(out[13] , a[13] , b[13]);
	and and15(out[14] , a[14] , b[14]);
	and and16(out[15] , a[15] , b[15]);
	
endmodule