module controller(
	input clk,
	input [5:0] op,
	input [32:0] opcode,
	output reg reg_dest,
	output reg branch,
	output reg jump,
	output reg mem_read,
	output reg mem_write,
	output reg mem_to_reg,
	output reg [1:0] alu_op,
	output reg alu_src,
	output reg reg_write,
	output reg bne_c,
	output reg jal_control,
	output reg li_control,
	output reg jr_control);

		
	always@(*)
		begin
		if(opcode != 32'd0)
			begin
			case(op)
				6'd1 :
					begin
						//
						reg_dest    <= 1'b0;
						branch      <= 1'b0;
						jump        <= 1'b0;
						mem_read    <= 1'b0;
						mem_write   <= 1'b0;
						mem_to_reg  <= 1'b0;
						alu_op[1]   <= 1'b0;
						alu_op[0]   <= 1'b0;
						alu_src     <= 1'b0;
						reg_write   <= 1'b1;
						bne_c       <= 1'b0;
						jal_control <= 1'b0;
						li_control  <= 1'b1;
						jr_control  <= 1'b0;
						//
					end
				6'd0 : 
					begin
						//
						if(opcode[9:4] != 6'd8)
							begin
								reg_dest    <= 1'b1;
								branch      <= 1'b0;
								jump        <= 1'b0;
								mem_read    <= 1'b0;
								mem_write   <= 1'b0;
								mem_to_reg  <= 1'b0;
								alu_op[1]   <= 1'b1;
								alu_op[0]   <= 1'b0;
								alu_src     <= 1'b0;
								reg_write   <= 1'b1;
								bne_c       <= 1'b0;
								jal_control <= 1'b0;
								li_control  <= 1'b0;
								jr_control  <= 1'b0;
							end
						else
							begin
								reg_dest    <= 1'b1;
								branch      <= 1'b0;
								jump        <= 1'b1;
								mem_read    <= 1'b0;
								mem_write   <= 1'b0;
								mem_to_reg  <= 1'b0;
								alu_op[1]   <= 1'b1;
								alu_op[0]   <= 1'b0;
								alu_src     <= 1'b0;
								reg_write   <= 1'b1;
								bne_c       <= 1'b0;
								jal_control <= 1'b0;
								li_control  <= 1'b0;
								jr_control  <= 1'b1;
							end
						//
					end
					
				6'd35: 
					begin
						//
						reg_dest    <= 1'b0;
						branch      <= 1'b0;
						jump        <= 1'b0;
						mem_read    <= 1'b1;
						mem_write   <= 1'b0;
						mem_to_reg  <= 1'b1;
						alu_op[1]   <= 1'b0;
						alu_op[0]   <= 1'b0;
						alu_src     <= 1'b1;
						reg_write   <= 1'b1;
						bne_c       <= 1'b0;
						jal_control <= 1'b0;
						li_control  <= 1'b0;
						jr_control  <= 1'b0;
						//
					end
					
				6'd43: 
					begin
						//
						reg_dest    <= 1'b0;
						branch      <= 1'b0;
						jump        <= 1'b0;
						mem_read    <= 1'b0;
						mem_write   <= 1'b1;
						mem_to_reg  <= 1'b0;
						alu_op[1]   <= 1'b0;
						alu_op[0]   <= 1'b0;
						alu_src     <= 1'b1;
						reg_write   <= 1'b0;
						bne_c       <= 1'b0;
						jal_control <= 1'b0;
						li_control  <= 1'b0;
						jr_control  <= 1'b0;
						//
					end
					
				6'd4 : 
					begin
						//
						reg_dest    <= 1'b0;
						branch      <= 1'b1;
						jump        <= 1'b0;
						mem_read    <= 1'b0;
						mem_write   <= 1'b0;
						mem_to_reg  <= 1'b0;
						alu_op[1]   <= 1'b0;
						alu_op[0]   <= 1'b1;
						alu_src     <= 1'b0;
						reg_write   <= 1'b0;
						bne_c       <= 1'b0;
						jal_control <= 1'b0;
						li_control  <= 1'b0;
						jr_control  <= 1'b0;
						//
					end
				6'd2 : 
					begin
						//
						reg_dest    <= 1'b0;
						branch      <= 1'b0;
						jump        <= 1'b1;
						mem_read    <= 1'b0;
						mem_write   <= 1'b0;
						mem_to_reg  <= 1'b0;
						alu_op[1]   <= 1'b0;
						alu_op[0]   <= 1'b0;
						alu_src     <= 1'b0;
						reg_write   <= 1'b0;
						bne_c       <= 1'b0;
						jal_control <= 1'b0;
						li_control  <= 1'b0;
						jr_control  <= 1'b0;
						//
					end
				6'd8 :
					begin
						//
						reg_dest    <= 1'b0;
						branch      <= 1'b0;
						jump        <= 1'b0;
						mem_read    <= 1'b0;
						mem_write   <= 1'b0;
						mem_to_reg  <= 1'b0;
						alu_op[1]   <= 1'b1;
						alu_op[0]   <= 1'b1;
						alu_src     <= 1'b1;
						reg_write   <= 1'b1;
						bne_c       <= 1'b0;
						jal_control <= 1'b0;
						li_control  <= 1'b0;
						jr_control  <= 1'b0;
						//
					end
				6'd5 :
					begin
						//
						reg_dest    <= 1'b0;
						branch      <= 1'b1;
						jump        <= 1'b0;
						mem_read    <= 1'b0;
						mem_write   <= 1'b0;
						mem_to_reg  <= 1'b0;
						alu_op[1]   <= 1'b0;
						alu_op[0]   <= 1'b1;
						alu_src     <= 1'b0;
						reg_write   <= 1'b0;
						bne_c       <= 1'b1;
						jal_control <= 1'b0;
						li_control  <= 1'b0;
						jr_control  <= 1'b0;
						//
					end
				6'd10:
					begin
						//
						reg_dest    <= 1'b0;
						branch      <= 1'b0;
						jump        <= 1'b0;
						mem_read    <= 1'b0;
						mem_write   <= 1'b0;
						mem_to_reg  <= 1'b0;
						alu_op[1]   <= 1'b1;
						alu_op[0]   <= 1'b1;
						alu_src     <= 1'b1;
						reg_write   <= 1'b1;
						bne_c       <= 1'b0;
						jal_control <= 1'b0;
						li_control  <= 1'b0;
						jr_control  <= 1'b0;
						//
					end
				6'd3 :
					begin 
						//
						reg_dest    <= 1'b0;
						branch      <= 1'b0;
						jump        <= 1'b1;
						mem_read    <= 1'b0;
						mem_write   <= 1'b0;
						mem_to_reg  <= 1'b0;
						alu_op[1]   <= 1'b0;
						alu_op[0]   <= 1'b0;
						alu_src     <= 1'b0;
						reg_write   <= 1'b1;
						bne_c       <= 1'b0;
						jal_control <= 1'b1;
						li_control  <= 1'b0;
						jr_control  <= 1'b0;
						//
					end
				6'd12:
					begin
						//
						reg_dest    <= 1'b0;
						branch      <= 1'b0;
						jump        <= 1'b0;
						mem_read    <= 1'b0;
						mem_write   <= 1'b0;
						mem_to_reg  <= 1'b0;
						alu_op[1]   <= 1'b1;
						alu_op[0]   <= 1'b1;
						alu_src     <= 1'b1;
						reg_write   <= 1'b1;
						bne_c       <= 1'b0;
						jal_control <= 1'b0;
						li_control  <= 1'b0;
						jr_control  <= 1'b0;
						//
					end
				6'd13:
					begin
						//
						reg_dest    <= 1'b0;
						branch      <= 1'b0;
						jump        <= 1'b0;
						mem_read    <= 1'b0;
						mem_write   <= 1'b0;
						mem_to_reg  <= 1'b0;
						alu_op[1]   <= 1'b1;
						alu_op[0]   <= 1'b1;
						alu_src     <= 1'b1;
						reg_write   <= 1'b1;
						bne_c       <= 1'b0;
						jal_control <= 1'b0;
						li_control  <= 1'b0;
						jr_control  <= 1'b0;
						//
					end
				default:
					begin
						//
						reg_dest    <= 1'b0;
						branch      <= 1'b0;
						jump        <= 1'b0;
						mem_read    <= 1'b0;
						mem_write   <= 1'b0;
						mem_to_reg  <= 1'b0;
						alu_op[1]   <= 1'b0;
						alu_op[0]   <= 1'b0;
						alu_src     <= 1'b0;
						reg_write   <= 1'b0;
						bne_c       <= 1'b0;
						jal_control <= 1'b0;
						li_control  <= 1'b0;
						jr_control  <= 1'b0;
						//
					end
			endcase
			end
		else
			begin
				//
				reg_dest    <= 1'b0;
				branch      <= 1'b0;
				jump        <= 1'b0;
				mem_read    <= 1'b0;
				mem_write   <= 1'b0;
				mem_to_reg  <= 1'b0;
				alu_op[1]   <= 1'b0;
				alu_op[0]   <= 1'b0;
				alu_src     <= 1'b0;
				reg_write   <= 1'b0;
				bne_c       <= 1'b0;
				jal_control <= 1'b0;
				li_control  <= 1'b0;
				jr_control  <= 1'b0;
				//
			end
		end
	
endmodule 

