module mux2x1_16bit(
	input [15:0] A, B,
   input S,
   output [15:0] result);
	
   assign result = (S == 1'b0) ? A : B;
	
endmodule
