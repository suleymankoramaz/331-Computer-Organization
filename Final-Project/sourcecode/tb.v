module tb(input clk , output [15:0] out,
	output [15:0] register1,
	output [15:0] register2,
	output [15:0] register3,
	output [15:0] ra_data,
	output [9:0] pc);
	
	wire [15:0] out_disp = out;			

	datapath my_datapath(clk , out , register1 , register2 , register3 , ra_data ,pc);
	
endmodule 