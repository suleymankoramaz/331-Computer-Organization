module datapath(input clk ,output [15:0] out_register ,
	output [15:0] register1,
	output [15:0] register2,
	output [15:0] register3,
	output [15:0] ra_data,
	output [9:0] pc);
	

	
	wire [9:0] 		mux05_out , pc_out , adder01_out , adder02_out , mux04_out , mux09_out , mux10_out;
	wire [31:0] 	mem_inst_out;
	wire 			   reg_dest , branch , jump , mem_read , mem_write , mem_to_reg , alu_src , reg_write , less_than , and_out , equal , not_branch , bne_c , mux06_out , jal_control , li_control , jr_control;
	wire [1:0]     alu_op;
	wire [15:0]    mux03_out , read_data_1 , read_data_2 , mux02_out , mem_data_out , mux08_out , alu_out;
	wire [3:0]     mux01_out , mux07_out , ra_reg;
	wire [2:0]     alu_control_out;
	and and01(and_out , branch , mux06_out);
	not not01(not_branch , equal);
	assign ra_reg = 4'b1110;
	
	assign pc = pc_out;
	
	pc my_pc(clk , mux09_out , pc_out);
	
	mem_inst mem_inst01(clk , pc_out , mem_inst_out);
	
	registers register01(clk, reg_write , mux08_out , mux07_out , mem_inst_out[25:22] , mem_inst_out[21:18] , read_data_1 , read_data_2 , out_register , ra_data , register1 , register2 , register3);
	
	mux2x1_4bit mux01(mem_inst_out[21:18] , mem_inst_out[17:14] , reg_dest , mux01_out);
	
	adder adder01(pc_out , 10'd1 , adder01_out);
	
	controller controller01(clk , mem_inst_out[31:26] , mem_inst_out , reg_dest , branch , jump , mem_read , mem_write , mem_to_reg , alu_op , alu_src , reg_write , bne_c , jal_control , li_control ,jr_control);
	
	alu_control alu_control01(clk , mem_inst_out[28:26] , alu_op , mem_inst_out[9:4] , alu_control_out);
	
	alu alu01(clk , read_data_1 , mux02_out , mem_inst_out[13:10] , alu_control_out , alu_out ,  equal);
	
	mux2x1_16bit mux02(read_data_2 , mem_inst_out[17:2] , alu_src , mux02_out);
	
	mem_data mem_data01(clk , alu_out[9:0] , read_data_2 , mem_write , mem_read , mem_data_out);
	
	mux2x1_16bit mux03(alu_out , mem_data_out , mem_to_reg , mux03_out);
	
	adder adder02(adder01_out , mem_inst_out[11:2] , adder02_out);
	
	mux2x1_10bit mux04(adder01_out , adder02_out , and_out , mux04_out);
	
	mux2x1_10bit mux05(mux04_out , mem_inst_out[25:16] , jump , mux05_out);
	
	mux2x1_1bit  mux06(equal , not_branch , bne_c , mux06_out);
	
	mux2x1_4bit  mux07(mux01_out , ra_reg , jal_control , mux07_out);
	
	mux2x1_16bit mux08(mux03_out , mem_inst_out[17:2] , li_control , mux08_out);
	
	mux2x1_10bit mux09(mux05_out , read_data_1 , jr_control , mux09_out);
	
	//mux2x1_10bit mux10(mux09_out , mem_inst_out[17:2] , and_out , mux10_out);
endmodule 






























































