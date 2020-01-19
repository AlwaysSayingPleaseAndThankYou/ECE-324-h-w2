/*
write a module that shifts 8-bit input data[7:0] right logically by the number of positions specified by 3-bit input shift[2:0] ; 
the shifted result is available on  8-bit output shout[7:0]
*/
module TwoBitRightShift(
	input logic shiftBits [0:1],
	input logic memory [0:7],
	output logic shout [0:7]
	);

//shout is right shift of memory by shiftbits bits
assign shout = shiftBits >> memory;

endmodule