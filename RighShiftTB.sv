/*Write a SystemVerilog testbench model that tests your shift module by
 applying all eight possible shift values. 
 For each shift value apply two arbitrary data input values.
 Choose data values that make it easy to see that the result on shout is 
 correctly shifted. 
*/
'timescale 1ns/10ps
module TwoBitRightShiftTB;
	logic [0:2] shiftBit;
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
		#10 memory = 8'b01010101; shiftBit = 3'b000;
		#10 memory = 8'b10101010; shiftBit = 3'b001;
		#10 memory = 8'b01010101; shiftBit = 3'b001;
		#10 memory = 8'b10101010; shiftBit = 3'b010;
		#10 memory = 8'b01010101; shiftBit = 3'b010;
		#10 memory = 8'b10101010; shiftBit = 3'b011;
		#10 memory = 8'b01010101; shiftBit = 3'b011;
		#10 memory = 8'b10101010; shiftBit = 3'b100;
		#10 memory = 8'b01010101; shiftBit = 3'b100;
		#10 memory = 8'b10101010; shiftBit = 3'b101;
		#10 memory = 8'b01010101; shiftBit = 3'b101;
		#10 memory = 8'b10101010; shiftBit = 3'b110;
		#10 memory = 8'b01010101; shiftBit = 3'b110;
		#10 memory = 8'b10101010; shiftBit = 3'b111;
		#10 memory = 8'b01010101; shiftBit = 3'b111;
		#10 $stop;
	end 
endmodule


