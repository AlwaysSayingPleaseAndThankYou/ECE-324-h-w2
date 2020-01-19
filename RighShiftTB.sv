'timescale 1ns/10ps
module TwoBitRightShiftTB;
	logic [1:0] shiftBit;
	logic [0:7] memory;
	logic [0:7] shout;

//initiate unit under test
TwoBitRightShift UUT(
	.shiftBit(shiftBit),
	.memory   (memory),
	.shout    (shout),
	);

// up to three bit right shift
//capable of going to 7 bit right shift with this implimentation
	initial begin
		#10 memory = 8'b10101010; shiftBit = 3'b000;
		#10 memory = 8'b10101010; shiftBit = 3'b001;
		#10 memory = 8'b10101010; shiftBit = 3'b010;
		#10 memory = 8'b10101010; shiftBit = 3'b011;
		#10 $stop
	end 
endmodule


