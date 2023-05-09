module mux8_bit(
					input  		a1,
					input  		a2,
					input  		a3,
					input  		a4,
					input  		a5,
					input  		a6,
					input  		a7,
					input  		a8,
					input [2:0] op,
					output      out);
	
	wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11;
		
	not not1(w9 ,op[0]);
	not not2(w10,op[1]);
	not not3(w11,op[2]);
	
	or8_bit my_or(w1,w2,w3,w4,w5,w6,w7,w8,out);
	
	ander4 first_and  (a1 ,w9    ,w10  ,w11,   w1);
	ander4 second_and (a2 ,op[0] ,w10  ,w11,   w2);
	ander4 third_and  (a3 ,w9    ,op[1],w11,   w3);
	ander4 fourth_and (a4 ,op[0] ,op[1],w11,   w4);
	ander4 fifth_and  (a5 ,w9    ,w10  ,op[2], w5);
	ander4 sixth_and  (a6 ,op[0] ,w10  ,op[2], w6);
	ander4 seventh_and(a7 ,w9    ,op[1],op[2], w7);
	ander4 last_and   (a8 ,op[0] ,op[1],op[2], w8);
endmodule
