module adder_4_8(
	input CLK,
	input  [7:0] sum,
	input  [7:0] in,
	input        add_c,
	output reg [7:0] out);

	always@(posedge CLK)
		begin
			if(add_c == 1)
				out = sum + in;
			if(add_c == 0)
				out = sum;
		end	
endmodule 