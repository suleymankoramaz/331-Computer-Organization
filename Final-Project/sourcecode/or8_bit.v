module or8_bit(
				input  a1,
				input  a2,
				input  a3,
				inout  a4,
				input  a5,
				input  a6,
				input  a7,
				input  a8,
				output out);
				
	wire w1,w2,w3,w4,w5,w6;
	
	or first_or( w1 , a1 , a2 );
	or second_or( w2 , a3 , a4 );
	or third_or( w3 , a5 , a6 );
	or fourth_or( w4 , a7 , a8 );
	or fifth_or( w5 , w1 , w2 );
	or sixth_or( w6 , w3 , w4 );
	or last_or( out , w5 , w6 );

endmodule 