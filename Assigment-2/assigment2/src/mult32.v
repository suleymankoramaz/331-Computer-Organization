module mult32(
				input  [31:0] multiplicand , 
				input  [31:0] multiplier , 
				input  [31:0] out_add,
				input         CLK,
				output [63:0] out);

	wire    control_write;
	wire    control_shift;
	wire    control_add;
	wire    c_end;
	wire    c_done;
	wire    c_start;
	assign cw = control_write;
	assign c_shift = control_shift;
	assign cs = c_start;
	assign cd = c_done;
	
	datapath my_datapath(
		.done(c_done),
		.multiplicand(multiplicand),
		.in_add(out_add),
		.c_w(control_write),
		.c_shift(control_shift),
		.start(c_start),
		.CLK(CLK),
		.result(out),
	);
	
	control my_control(
		.last_bit(out[0]),
		.CLK(CLK),
		.c_write(control_write),
		.done(c_done),	
		.start(c_start),
		.c_shift(control_shift),
		.present_state(cstate)
	);

endmodule 