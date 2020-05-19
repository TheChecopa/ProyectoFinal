module mux2
( 
	input [4:0] TipoR, TipoI,
	input regdst, 
	output reg [4:0] smux2
);

always @(*)
begin
	case (regdst)
		1'b1:
			begin
				smux2 <= TipoR;
			end
		1'b0:
			begin
				smux2 <= TipoI;
			end
	endcase
end
endmodule 