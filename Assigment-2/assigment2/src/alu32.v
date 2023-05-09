module alu32( a , b , op , out , CLK);
				input  [31:0] a;
				input  [31:0] b;
				input  [2:0]  op;
				input         CLK;
				output [31:0] out;
				
	wire [31:0]  out_add;
	wire [31:0]  out_sub;
	wire [63:0]  out_mul;
	wire [31:0]  out_xor;
	wire [31:0]  out_and;
	wire [31:0]  out_or;
	wire [31:0]  help_slt;
	wire [31:0]  out_slt;
	wire [31:0]  out_nor;	
	wire [31:0]  not_b;
	wire [63:0]  out_mult;

	
	wire control_a,
		  control_b;

	//not b
	not32 my_not(b,not_b);

	//control inputs of 2x1 muxs for inputs of adder
	c_b c_b1(op,control_b);
	c_a c_a1(op,control_a);
	
	//muxs for inputs of adder
	wire [31:0] w1add , w2add;
	mux2 mux_1(a, out_mult[63:32] , control_a , w1add);
	mux2 mux_2(b,      not_b      , control_b , w2add);
	
	
	
	//add
	adder my_adder(w1add , w2add , control_b ,out_add);
	
	//mult
	mult32 my_mult( a , b , out_add , CLK , out_mult);
	
	//xor
	xor32 my_xor( a , b , out_xor);
	
	//and
	and32 my_and( a , b , out_and);
	
	//or
	or32  my_or ( a , b , out_or );
	
	//slt
	or    my_or3( out_slt[0] , out_add[31] , 0);

	//nor
	not32 my_not2( out_or , out_nor);
	
	//mux
	mux8  my_mux(out_add , out_add , out_mult[31:0] , out_xor , out_and , out_or , out_slt , out_nor , op , out);

endmodule 