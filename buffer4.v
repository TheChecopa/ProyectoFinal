module buffer4
(
	input clk, regwrite, memtoreg, 
	input [31:0] res, dato,
	input [4:0] AW,
	output reg out_regwrite, out_memtoreg,
	output reg [31:0] salida, dato_out,
	output reg [4:0] out_AW,
	output reg [31:0] res_out
);

always @(posedge clk)
begin
	res_out <= res;
	salida <= res;
	out_AW <= AW;
	out_regwrite <= regwrite;
	out_memtoreg <= memtoreg;
	dato_out <= dato;
end 

endmodule 