module shift2
(
	input[25:0] in_shift,
	output [27:0] out_shift
);
 assign out_shift = {in_shift*4};
 
 endmodule 