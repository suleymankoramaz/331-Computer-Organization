module mux2x1_10bit(
	input [9:0] A, B,
   input S,
   output [9:0] result);
	
   assign result = (S == 1'b0) ? A : B;
	
endmodule
