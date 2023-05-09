module mux2x1_4bit(
	input [4:0] A, B,
   input S,
   output [4:0] result);
	
   assign result = (S == 1'b0) ? A : B;
	
endmodule
