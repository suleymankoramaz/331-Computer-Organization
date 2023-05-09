module adder(
	input  [9:0] a,
	input  [9:0] b,
	output [9:0] out);

	wire [9:0] w;
		
	half_adder h1(  a[0]  , b[0]  ,   0   , out[0]  ,w[0] );
	half_adder h2(  a[1]  , b[1]  , w[0]  , out[1]  ,w[1] );
	half_adder h3(  a[2]  , b[2]  , w[1]  , out[2]  ,w[2] );
	half_adder h4(  a[3]  , b[3]  , w[2]  , out[3]  ,w[3] );
	half_adder h5(  a[4]  , b[4]  , w[3]  , out[4]  ,w[4] );
	half_adder h6(  a[5]  , b[5]  , w[4]  , out[5]  ,w[5] );
	half_adder h7(  a[6]  , b[6]  , w[5]  , out[6]  ,w[6] );
	half_adder h8(  a[7]  , b[7]  , w[6]  , out[7]  ,w[7] );
	half_adder h9(  a[8]  , b[8]  , w[7]  , out[8]  ,w[8] );
	
endmodule