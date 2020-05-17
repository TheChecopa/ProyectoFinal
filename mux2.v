module mux2
( 
	input [4:0] TipoR,
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
		default:
			begin
				smux2 <= 5'b0;
			end
	endcase
end
endmodule 