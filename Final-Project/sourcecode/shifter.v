module shifter(
	input [15:0] in,
	input [3:0]  shamp,
	input r_l_c,
	output reg [15:0] out);

   always @(*) begin
      if(r_l_c)
			out = in >> shamp;
		else
			out = in << shamp;
   end
	 
endmodule
	