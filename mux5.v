module mux5
(
	input [31:0] mux1, shift2,
	input jump,
	output reg [31:0] smux5
);

always @*
begin
	if(jump == 1'b1)
		begin
			smux5 <= shift2;
		end
	else
		begin
			smux5 <= mux1;
		end
end
endmodule
