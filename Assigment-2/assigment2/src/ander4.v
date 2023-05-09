module ander4(
					input  a1,
					input  a2,
					input  a3,
					input  a4,
					output out);
					
	wire w1,w2;
	
	and first_and( w1 , a1 , a2 );
	and second_and( w2 , a3 , a4 );
	and last_and( out , w1 , w2);
	
endmodule 