module controller (
	input clk,
	input comp,
	input reset,
	output reg       end_c,
	output reg       add_c,
	output reg [1:0] s1,
	output reg       s2,
	output reg       s3,
	output reg [3:0] s4,
	output reg [2:0] present_state,
	output reg [2:0] i,
	output reg       at_begin
);



// Define the states
localparam 	S0 = 3'd0,
				S1 = 3'd1,
				S2 = 3'd2,
				S3 = 3'd3,
				S4 = 3'd4,
				S5 = 4'd5;
// Define the state variables

reg [2:0] next_state;

initial 
		begin
			i          = 3'b000;
			next_state = S0;
			s2         = 1'b0;
			at_begin   = 1'b1;
			add_c      = 1'b0;
			end_c      = 1'b0;
			s4         = 4'b0000;
		end

// Define the next-state logic
always@(posedge clk) begin
  present_state <= next_state;
end

always@(*) begin
	case (present_state)
	
		S0: next_state = S2;
    
		S1: 
		begin
			if(reset)
				next_state = S0;
			else
				next_state = S2;
		end

		S2:
		begin
			if (i == 4) 
				next_state = S5;
			else 
				next_state = S3;
		end
    
		S3: 
		begin
			if (comp == 1) next_state = S4;
				else next_state = S1;
		end
	 
		S4: 
		begin
			next_state = S2;	
		end
		
		S5: 
		begin
			if(reset)
				next_state = S0;
			else
				next_state = S5;
		end

	endcase
end

// Define the output logic
always@(posedge clk) begin
  case (present_state)
  
    S0: 
	 begin
		i          <= 3'b000;
		s2         <= 1'b0;
		at_begin   <= 1'b1;
		add_c      <= 1'b0;
		end_c      <= 1'b0;
		s4         <= 4'b0000;
	 end
	 
    S1: 
	 begin
      i <= 2'b000;
      at_begin <= 1'b0;
		add_c <= 1'b0;
    end
	 
    S2: begin
      if(i != 4)
			begin
				s2 <= 1'b1;
				add_c <= 1'b1;
			end
      s1 <= i;
      if (at_begin == 1) 
			s3 <= 1'b0;
      else 
			s3 <= 1'b1;
    end
	 
    S3: begin
      s2 <= 1'b0;
		add_c <= 1'b0;
		s4 <= s4 + 3'b001;
    end
	 
    S4: begin
      i <= i + 1;
    end
	 
    S5: 
	 begin
		s2 <= 1'b0;
		add_c <= 1'b0;
		end_c <= 1'b1;
	 end
	 
  endcase
end

endmodule
