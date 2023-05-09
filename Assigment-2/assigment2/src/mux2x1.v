module mux2x1(
					input a,
					input b,
					input s,
					output out);
	wire w1,w2,w3,s_not,w1_not,w2_not;
	not not1(s_not,s);
	
	and and1(w1,s_not,a);
	and and2(w2,s,b);
	not not2(w1_not,w1);
	not not3(w2_not,w2);
	
	and and3(w3,w1_not,w2_not);
	not not4(out,w3);
endmodule 