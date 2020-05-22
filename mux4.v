module mux4
(
	input [31:0] alu, mem,
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
		1'b1:
			begin
			 smux4 <= mem;
			end
	endcase
end
endmodule 