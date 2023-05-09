module control(
					input last_bit,
					input CLK,
					output reg c_write,
					output reg done,
					output reg start,
					output reg c_shift,
					output reg [1:0] present_state);
	
	
	
	localparam 	S0 = 2'd0,
					S1 = 2'd1,
					S2 = 2'd2,
					S3 = 2'd3;
				
	reg	[1:0] next_state;
	reg   [5:0] i;
	
	initial 
		begin
			i       = 6'b000000;
			start   = 1'b1;
			done    = 1'b0;
			c_write = 1'b0;
			c_shift = 1'b0;
			next_state = S0;
		end
		
	always @(posedge CLK)
		begin
			present_state <= next_state;
		end
		
	always @(posedge CLK)
		begin			
			case(present_state)
				
				S0:
					begin
						if(last_bit)
							next_state = S1;
						else
							next_state = S2;	
					end
					
				
				S1:
					begin
						if(i < 6'd52)
							next_state = S0;
						else
							next_state = S3;
					end
					
				
				S2:
					begin
						if(i < 6'd52)
							next_state = S0;
						else
							next_state = S3;
					end
			endcase
		end
		
		always @(posedge CLK)
		begin
			case(present_state)
				
				S0:
					begin
						start = 1'b0;
						c_shift = 1'b0;
					end
					
				
				S1:
					begin
						c_shift = 1'b1;
					end
					
				
				S2:
					begin
						c_shift = 1'b1;
					end
				
			endcase
		end
		
		always @(posedge CLK)
		begin
			case(present_state)
				
				S0:
					begin
						c_write = 1'b0;
					end
					
				
				S1:
					begin
						c_write = 1'b1;	
					end
					
				
				S2:
					begin
						c_write = 1'b0;
					end
				
			endcase
		end
		
		
		always @(posedge CLK)
		begin		
			case(present_state)
			

				S2:
					begin
						i = i + 1'b1;
					end
				
				S3:
					begin
						done = 1'b1;
					end
				
			endcase
		end
endmodule 
