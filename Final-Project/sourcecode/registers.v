module registers (
	input  clk,
	input  reg_write,
	input  [15:0] write_data,
	input  [3:0]  write_reg,
	input  [3:0]  read_reg_1,
	input  [3:0]  read_reg_2,
	output [15:0] read_data_1,
	output [15:0] read_data_2,
	output [15:0] out,
	output [15:0] ra_reg,
	output [15:0] register1,
	output [15:0] register2,
	output [15:0] register3);

reg [15:0] reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg8, reg9, reg10, reg11, reg12, reg13, reg14, reg15;

assign out       =  reg15;
assign register1 =  reg1;
assign register2 =  reg2;
assign register3 =  reg3;
assign ra_reg    =  reg14;

always@(negedge clk)
	begin
	if(reg_write == 1)
		begin
			case (write_reg)
    			4'b0000: reg0  <= write_data;
    			4'b0001: reg1  <= write_data;
    			4'b0010: reg2  <= write_data;
    			4'b0011: reg3  <= write_data;
    			4'b0100: reg4  <= write_data;
    			4'b0101: reg5  <= write_data;
    			4'b0110: reg6  <= write_data;
    			4'b0111: reg7  <= write_data;
    			4'b1000: reg8  <= write_data;
    			4'b1001: reg9  <= write_data;
    			4'b1010: reg10 <= write_data;
    			4'b1011: reg11 <= write_data;
    			4'b1100: reg12 <= write_data;
    			4'b1101: reg13 <= write_data;
    			4'b1110: reg14 <= write_data;
    			4'b1111: reg15 <= write_data;
  			endcase
		end
end

assign read_data_1 = (read_reg_1 == 4'b0000) ? reg0 :
							(read_reg_1 == 4'b0001) ? reg1 :
							(read_reg_1 == 4'b0010) ? reg2 :
							(read_reg_1 == 4'b0011) ? reg3 :
							(read_reg_1 == 4'b0100) ? reg4 :
							(read_reg_1 == 4'b0101) ? reg5 :
							(read_reg_1 == 4'b0110) ? reg6 :
							(read_reg_1 == 4'b0111) ? reg7 :
							(read_reg_1 == 4'b1000) ? reg8 :
							(read_reg_1 == 4'b1001) ? reg9 :
							(read_reg_1 == 4'b1010) ? reg10 :
							(read_reg_1 == 4'b1011) ? reg11 :
							(read_reg_1 == 4'b1100) ? reg12 :
							(read_reg_1 == 4'b1101) ? reg13 :
							(read_reg_1 == 4'b1110) ? reg14 : reg15 ;  
						
assign read_data_2 = (read_reg_2 == 4'b0000) ? reg0 :
							(read_reg_2 == 4'b0001) ? reg1 :
							(read_reg_2 == 4'b0010) ? reg2 :
							(read_reg_2 == 4'b0011) ? reg3 :
							(read_reg_2 == 4'b0100) ? reg4 :
							(read_reg_2 == 4'b0101) ? reg5 :
							(read_reg_2 == 4'b0110) ? reg6 :
							(read_reg_2 == 4'b0111) ? reg7 :
							(read_reg_2 == 4'b1000) ? reg8 :
							(read_reg_2 == 4'b1001) ? reg9 :
							(read_reg_2 == 4'b1010) ? reg10 :
							(read_reg_2 == 4'b1011) ? reg11 :
							(read_reg_2 == 4'b1100) ? reg12 :
							(read_reg_2 == 4'b1101) ? reg13 :
							(read_reg_2 == 4'b1110) ? reg14 : reg15 ; 

endmodule 