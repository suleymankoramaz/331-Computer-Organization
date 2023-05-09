module slt16(
	input in,
	output [15:0] out);
	
	or or1(out[0] , in , 0);
	
endmodule 