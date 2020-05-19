module mux3
(
	input [31:0]rd2, sign,
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
		1'b1:
		begin
			smux3 <= sign;
		end
	endcase
end
endmodule 