module datapath(
					input             done,
					input 	  [31:0] multiplicand,
					input 	  [31:0] in_add,
					input             c_w,
					input             c_shift,
					input             start,
					input             CLK,
					output reg [63:0] result);

	reg [63:0] out;
	reg [63:0] to_out = 32'd0;

	reg [63:0] add_res;
	reg [31:0] to_left;
	reg [31:0] to_right;
	
	initial
		begin
			result = 32'd0;
		end
	always @(posedge CLK)
		begin
			if(!done)
				out <= result;
		end

	always @(*)
		begin	
			if(c_w)
				to_left = in_add;
			else
				to_left = out[63:32];
			
			if(start)
				to_right = multiplicand;
			else
				to_right = out[31:0];
			
		
			add_res[63:32] = to_left;
			add_res[31:0 ] = to_right;
			
			
				
			if(c_shift)
				add_res = add_res >> 1;
				
			result = add_res;
	end
	
endmodule 
