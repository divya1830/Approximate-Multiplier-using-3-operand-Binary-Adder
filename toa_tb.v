`timescale 1ns / 1ps

//////

module toa_tb;

	// Inputs
	reg [13:0] a;
	reg [13:0] b;
	reg [13:0] c;
	reg Cin;

	// Outputs
	wire [14:0] sum;
	wire carry;

	// Instantiate the Unit Under Test (UUT)
	three_operand_adder uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.Cin(Cin), 
		.sum(sum), 
		.carry(carry)
	);

	initial begin
		// Initialize Inputs
		repeat(5)
		begin
		a = $random;
		b = $random;
		c = $random;
		Cin = 0;
		#1;
		end
		$stop;
		
	end
      
endmodule

