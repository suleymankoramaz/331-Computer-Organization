module half_adder(
						input a,
						input b,
						input c,
						output out,
						output c_out);
	wire w1,w2,w3;
	
	
	or  first_or( c_out , w3 , w2 );
	and first_and( w3 , w1 , c );
	and second_and( w2 , a , b );
	xor first_xor( out , w1 , c );
	xor second_xor( w1 , a , b );
	
endmodule