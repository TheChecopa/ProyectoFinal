module buffer3
(
	input clk, regwrite, memtoreg,
	input [31:0] res,
	input [4:0] AW,
	output reg out_regwrite, out_memtoreg,
	output reg [4:0] out_AW,
	output reg [31:0] res_out
);

always @(posedge clk)
begin
	res_out <= res;
	out_AW <= AW;
	out_regwrite <= regwrite;
	out_memtoreg <= memtoreg;
end 

endmodule 