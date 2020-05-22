module mux1
(
	input pcsrc,
	input [31:0] add1, add2,
	output reg [31:0] smux1,
	output reg [31:0]  prueba
);

always @*
begin
	if (pcsrc == 1'b1)
		begin
			smux1 <= add2;
			prueba <= add2;
		end
	else
		begin
			smux1 <= add1;
			prueba <= add1;
		end
end
endmodule 