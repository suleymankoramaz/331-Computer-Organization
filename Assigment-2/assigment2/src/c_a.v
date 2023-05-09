module c_a(
				input [2:0] s,
				output out);
	
	wire w;
			
	not not1( w   , s[2] );
	and and1( out , s[1] , w );
endmodule 