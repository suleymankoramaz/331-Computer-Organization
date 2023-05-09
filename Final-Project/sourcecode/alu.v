module alu(
	input clk,
	input [15:0] A, B,
	input [3:0] shamp,
	input [2:0] alu_control,
	output [15:0] result, 
	output equal);
	
	assign equal = (A==B) ? 1:0;
	
	wire [15:0]  out_add;
	wire [15:0]  out_and;
	wire [15:0]  out_or;
	wire [15:0]  mux2_out;
	wire [15:0]  out_slt;
	wire [15:0]  not_b;
	wire [15:0]  out_shift;
	wire sub_c , r_l_c;

	//not b
	not16 my_not(B,not_b);

	//control inputs of 2x1 muxs for inputs of adder
	c_b c_b1(alu_control,sub_c);
	c_r c_r1(alu_control[0],r_l_c);

	mux2 mux_2(B, not_b , sub_c , mux2_out);
	
	//add
	adder_alu my_adder(A , mux2_out , sub_c ,out_add);

	//and
	and16 my_and  ( A , B , out_and);
	
	//or
	or16  my_or   ( A , B , out_or );
	
	//slt
	slt16 my_slt  (out_add[15] , out_slt);
	
	//shift
	shifter my_srl(B , shamp , r_l_c , out_shift);
	
	mux8x1 out_mux(out_and , out_or , out_add , out_add , out_slt , out_shift , out_shift , out_shift , alu_control , result);
	
endmodule 