module mux3
(
	input [31:0]rd2,
	input alusrc,
	output reg[31:0]smux3
);
always @(*)
begin
	case(alusrc)
		1'b0:
		begin
			smux3 <= rd2;
		end
	default:
		begin
			smux3 <= 32'dx;
		end
	endcase
end
endmodule 