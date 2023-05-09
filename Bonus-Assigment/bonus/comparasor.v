module comparasor(
	input [3:0] in1,
	input [3:0] in2,
	output out);
	
	wire a,b,c,d;
	
	assign a = (in1[0] & in2[0]) | ( ~in1[0] & ~in2[0]);
	assign b = (in1[1] & in2[1]) | ( ~in1[1] & ~in2[1]);
	assign c = (in1[2] & in2[2]) | ( ~in1[2] & ~in2[2]);
	assign d = (in1[3] & in2[3]) | ( ~in1[3] & ~in2[3]);
	
	assign out = a & b & c & d;
endmodule