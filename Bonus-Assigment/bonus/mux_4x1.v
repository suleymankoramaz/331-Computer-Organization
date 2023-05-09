module mux_4x1(
	input  [3:0] cypher0,
	input  [3:0] cypher1,
	input  [3:0] cypher2,
	input  [3:0] cypher3,
	input  [1:0] s, 
	output reg [3:0] cypher
	);

	always@(*)
		begin
			if(s[1] == 0 && s[0] == 0)
				cypher = cypher0;
			if(s[1] == 0 && s[0] == 1)
				cypher = cypher1;
			if(s[1] == 1 && s[0] == 0)
				cypher = cypher2;
			if(s[1] == 1 && s[0] == 1)
				cypher = cypher3;
		end
	
endmodule