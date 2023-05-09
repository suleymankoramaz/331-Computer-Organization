module pc(
	input clk,
	input  [9:0] read_addrs,
	output reg [9:0] out_addrs);
	
	initial
		begin
			out_addrs = 0;
		end
		
	always@(posedge clk)
		begin
			out_addrs <= read_addrs;
		end

endmodule 