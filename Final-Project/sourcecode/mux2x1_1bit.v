module mux2x1_1bit(
	input A, B,
   input S,
   output result);
	
   assign result = (S == 1'b0) ? A : B;
	
endmodule
