module alu_control(
	input clk,
	input  [2:0] opcode,
	input  [1:0] alu_op,
	input  [5:0] func,
	output reg [2:0] alu_control);
	
	always@(*)
		begin
			if(alu_op == 2'b00)
				begin
					alu_control <= 3'b010;
				end
				
			if(alu_op == 2'b01)
				begin
					alu_control <= 3'b011;
				end
				
			if(alu_op == 2'b10)
				begin
					case(func)
						6'd32:  alu_control <= 3'b010;//add
						6'd34:  alu_control <= 3'b011;//subtract
						6'd36:  alu_control <= 3'b000;//and
						6'd37:  alu_control <= 3'b001;//or
						6'd42:  alu_control <= 3'b100;//slt
						6'd0 :  alu_control <= 3'b110;//sll
						6'd2 :  alu_control <= 3'b111;//srl
						default:; 
					endcase
				end
			if(alu_op == 2'b11)
				begin
					case(opcode)
						3'b000: alu_control <= 3'b010;
						3'b010: alu_control <= 3'b100;
						3'b100: alu_control <= 3'b000;
						3'b101: alu_control <= 3'b001;
						default:;
					endcase
				end
		end

endmodule 