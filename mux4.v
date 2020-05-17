module mux4
(
	input [31:0] alu,
	input memtoreg, 
	output reg [31:0] smux4
);

always @(*)
begin
	case (memtoreg)
		1'b0:
			begin
				smux4 <= alu;
			end
		default:
			begin
				smux4 <= 32'dx;
			end
	endcase
end
endmodule 