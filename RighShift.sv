/*
write a module that shifts 8-bit input data[7:0] right logically by the number of positions specified by 3-bit input shift[2:0] ; 
the shifted result is available on  8-bit output shout[7:0]
*/
module TwoBitRightShift(
	input logic [0:1]shiftBit,
	input logic [0:7] memory,
	output logic [0:7] shout
	);

//shout is right shift of memory by shiftbits bits
assign shout = memory >> shiftBit;

endmodule