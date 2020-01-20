/*
write a module that shifts 8-bit input data[7:0] right logically by the number of positions specified by 3-bit input shift[2:0] ; 
the shifted result is available on  8-bit output shout[7:0]
*/
module TwoBitRightShift(
	input logic [0:1] shiftBit,
	input logic [0:7] memory,
	output logic [0:7] shout
	);


// Shout is right shift of memory by shiftbits bits
assign shout[0] = (shiftBit - 1 >0) ? 0 : memory[0]; // this is currently 
assign shout[1] = (shiftBit - 2 >0) ? 0 : memory[1]; // over writting bits
assign shout[2] = (shiftBit - 3 >0) ? 0 : memory[2]; // not shifting them
assign shout[3] = (shiftBit - 4 >0) ? 0 : memory[3];
// TODO: this needs some kind of nested ternary? 
assign shout[4];


endmodule