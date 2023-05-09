module mux_2x1_8bit(
	input  	  [7:0] in1,
	input  		 	  s  ,
	output reg [7:0] out);
	
	always@(*)
		begin
			if(s == 0)
				out = 8'd0;
			if(s == 1)
				out = in1;
		end
	
endmodule