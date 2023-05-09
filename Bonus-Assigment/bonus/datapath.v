module datapath(input CLK , input [15:0] cypher, input [63:0] in, input reset, output end_out ,output [7:0] sum);

	
	wire [7:0] input_8bit;
	wire [3:0] first_m_out;
	wire [3:0] second_m_out;
	wire [7:0] third_m_out;
	wire [3:0] fourth_m_out;
	wire [7:0] adder_out;
	wire       comp_out;
	
	assign input_8bit[7:4] = 4'd0;
	assign input_8bit[3:0] = fourth_m_out;
	wire [1:0] s1; //cypher muxu için
	wire       s2; //read biti
	wire       s3;	//sum kontrol için
	wire [3:0] s4;
	wire       add_c;
	
	assign sum = third_m_out;
	
	
	mux_4x1 cypher_parser(cypher[15:12],cypher[11:8],cypher[7:4],cypher[3:0],s1,first_m_out);
	
	mux_2x1_8bit sum_control(adder_out,s3,third_m_out);
	
	mux_8x1 input_parser(in,s4,fourth_m_out);
	
	adder_4_8 my_adder(CLK,adder_out,input_8bit,add_c,adder_out);
	
	comparasor my_comparasor(fourth_m_out,first_m_out,comp_out);
	
	controller my_controller(CLK,comp_out,reset,end_out,add_c,s1,s2,s3,s4,present_state,i,at_begin);
	
endmodule 