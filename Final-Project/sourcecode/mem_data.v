module mem_data(
	input clk,
	input  [9:0] addres,
	input  [15:0] data_in,
	input	 write_mem,
	input  read_mem,
	output [15:0] data_out);
	
  
	reg [15:0] mem[0:1023]; 
	
	always @(posedge clk) begin
	
		if (write_mem) mem[addres] <= data_in;
	
	end
  
	assign data_out = mem[addres];
endmodule