module buffer2
(
	input [31:0] dr1, dr2, sign,
	input [4:0] AW, Inm,
	input [5:0] sel,
	input [31:0] cuatro,
	input [2:0] aluop,
	input clk, regdst, regwrite, memtoreg, alusrc, er, ew, pcsrc,
	output reg [31:0] out_cuatro,
	output reg [31:0] dr1_out, dr2_out, sign_out,
	output reg [4:0] out_AW, out_Inm,
	output reg [2:0] out_aluop,
	output reg out_regdst, out_regwrite, out_memtoreg, out_alusrc, er_out, ew_out, out_pcsrc,
	output reg [5:0] sel_out 
);

always @(posedge clk)
	begin
		dr1_out <= dr1;
		dr2_out <= dr2;
		sel_out <= sel;
		out_AW <= AW;
		out_aluop <= aluop;
		out_regdst <= regdst;
		out_regwrite <= regwrite;
		out_memtoreg <= memtoreg;
		out_alusrc <= alusrc;
		out_Inm <= Inm;
		sign_out <= sign;
		er_out <= er;
		ew_out <= ew;
		out_pcsrc <= pcsrc;
		out_cuatro <= cuatro;
	end
	
endmodule 