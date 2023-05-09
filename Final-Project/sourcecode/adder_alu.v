module adder_alu(
				input  [15:0] a,
				input  [15:0] b,
				input         c_in,
				output [15:0] out);
	wire [15:0] w;
		
	half_adder h1(  a[0]  , b[0]  , c_in  , out[0]  ,w[0] );
	half_adder h2(  a[1]  , b[1]  , w[0]  , out[1]  ,w[1] );
	half_adder h3(  a[2]  , b[2]  , w[1]  , out[2]  ,w[2] );
	half_adder h4(  a[3]  , b[3]  , w[2]  , out[3]  ,w[3] );
	half_adder h5(  a[4]  , b[4]  , w[3]  , out[4]  ,w[4] );
	half_adder h6(  a[5]  , b[5]  , w[4]  , out[5]  ,w[5] );
	half_adder h7(  a[6]  , b[6]  , w[5]  , out[6]  ,w[6] );
	half_adder h8(  a[7]  , b[7]  , w[6]  , out[7]  ,w[7] );
	half_adder h9(  a[8]  , b[8]  , w[7]  , out[8]  ,w[8] );
	half_adder h10( a[9]  , b[9]  , w[8]  , out[9]  ,w[9] );
	half_adder h11( a[10] , b[10] , w[9]  , out[10] ,w[10]);
	half_adder h12( a[11] , b[11] , w[10] , out[11] ,w[11]);
	half_adder h13( a[12] , b[12] , w[11] , out[12] ,w[12]);
	half_adder h14( a[13] , b[13] , w[12] , out[13] ,w[13]);
	half_adder h15( a[14] , b[14] , w[13] , out[14] ,w[14]);
	half_adder h16( a[15] , b[15] , w[14] , out[15] ,w[15]);
	
endmodule