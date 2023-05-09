module c_b(
				input [2:0] s,
				output out);
	wire w1,w2;
	wire not_0,not_1,not_2;
	
	not not0(not_0,s[0]);
	not not1(not_1,s[1]);
	not not2(not_2,s[2]);
	
	and and1(w1,s[0],not_1,not_2);
	and and2(w2,not_0,s[1],s[2]);
	
	or or0(out,w1,w2);
endmodule 