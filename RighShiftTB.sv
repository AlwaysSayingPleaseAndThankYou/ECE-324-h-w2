/*Write a SystemVerilog testbench model that tests your shift module by
 applying all eight possible shift values. 
 For each shift value apply two arbitrary data input values.
 Choose data values that make it easy to see that the result on shout is 
 correctly shifted. 
*/
`timescale 1 ns/10 ps
module barrel_shifter;
	logic [7:0] data;
	logic [2:0] shift;
	logic [7:0] shout;

//initiate unit under test
barrel_shifter UUT(
	.data(data),
	.shift(shift),
	.shout(shout),
	);

// up to three bit right shift
//capable of going to 7 bit right shift with this implimentation
	initial begin
		#10 data = 8'b10101010; shift = 3'b000;
		#10 data = 8'b01010101; shift = 3'b000;
		#10 data = 8'b10101010; shift = 3'b001;
		#10 data = 8'b01010101; shift = 3'b001;
		#10 data = 8'b10101010; shift = 3'b010;
		#10 data = 8'b01010101; shift = 3'b010;
		#10 data = 8'b10101010; shift = 3'b011;
		#10 data = 8'b01010101; shift = 3'b011;
		#10 data = 8'b10101010; shift = 3'b100;
		#10 data = 8'b01010101; shift = 3'b100;
		#10 data = 8'b10101010; shift = 3'b101;
		#10 data = 8'b01010101; shift = 3'b101;
		#10 data = 8'b10101010; shift = 3'b110;
		#10 data = 8'b01010101; shift = 3'b110;
		#10 data = 8'b10101010; shift = 3'b111;
		#10 data = 8'b01010101; shift = 3'b111;
		#10 $stop;
	end 
endmodule


