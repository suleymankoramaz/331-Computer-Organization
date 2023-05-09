module tb(input CLK , input reset , output end_out , output [7:0] sum);


	wire [15:0] cypher;
	wire [63:0] input_32;

assign cypher = 16'b0001_0000_0110_0010;
assign input_32 = 64'b0000_0001_0011_0000_0011_0100_0001_0000_0010_0011_0001_0000_0110_0010_0000_0000;

datapath first(CLK,cypher,input_32,reset,end_out,sum);
	
endmodule