module buffer3
(
	input clk, regwrite, memtoreg, er, ew, pcsrc, zero, flag, jump,
	input [31:0] res, dw, con,
	input [4:0] AW,
	input [31:0] add2,
	output reg [31:0] out_add2, out_con,
	output reg out_regwrite, out_memtoreg, out_ew, out_er, out_pcsrc, out_zero, out_flag, out_jump,
	output reg [4:0] out_AW,
	output reg [31:0] res_out, dw_out
);

always @(posedge clk)
begin
	res_out <= res;
	out_AW <= AW;
	out_regwrite <= regwrite;
	out_memtoreg <= memtoreg;
	out_er <= er;
	out_ew <= ew;
	dw_out <= dw;
	out_pcsrc <= pcsrc;
	out_zero <= zero;
	out_add2 <= add2;
	out_flag <= flag;
	out_con <= con;
	out_jump <= jump;
end 

endmodule 