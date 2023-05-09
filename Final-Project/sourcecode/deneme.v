module deneme(output [15:0] out);

	wire [3:0] x1 = 4'b1010; 
	wire [3:0] x2 = 4'b0101; 
	wire [3:0] x3 = 4'b1111; 
	wire [3:0] x4 = 4'b0000; 

	assign out = {x1,x2,x3,x4};
endmodule 