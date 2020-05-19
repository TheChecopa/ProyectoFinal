module A10
(
	input clk,
	output [31:0] salida
);

wire [7:0] pc_memIn;
wire [31:0] memIn_b1;
wire [31:0] b1_br;
wire [31:0] dr1_b2;
wire [31:0] dr2_b2;
wire [5:0] uc_alu;
wire [31:0] b2_a; 
wire [31:0] b2_b;
wire [5:0] b2_sel;
wire [31:0] alu_b3;
wire [31:0] b3_br;
wire [4:0] b2_aw;
wire [4:0] b3_aw;
wire [2:0] uc_aluop;
wire [2:0] b2_aluop;
wire [4:0] mux2_b3;
wire uc_regdst, uc_memtoreg, uc_alusrc, uc_regwrite;
wire b2_regdst, b2_regwrite, b2_memtoreg, b2_alusrc;
wire b3_regwrite, b3_memtoreg;
wire [4:0] b4_aw;
wire b4_regwrite, b4_memtoreg;
wire [31:0] b4_mux;
wire [31:0] m4_br, m3_b;

fetch f1
(
	.clk(clk),
	.salida(pc_memIn)
);

memIn m1
(
	.ar(pc_memIn),
	.out(memIn_b1)
);

buffer1 b1
(
	.clk(clk),
	.ins(memIn_b1),
	.b1_out(b1_br)
);

banco bank
(
	.AW(b4_aw),
	.AR1(b1_br[25:21]),
	.AR2(b1_br[20:16]),
	.en(b4_regwrite),
	.DW(m4_br),
	.DR1(dr1_b2),
	.DR2(dr2_b2)
);

uc control
(
	.opcode(b1_br[31:26]),
	.aluop(uc_aluop),
	.regdst(uc_regdst),
	.regwrite(uc_regwrite),
	.memtoreg(uc_memtoreg),
	.alusrc (uc_alusrc)
);


buffer2 b2
(
	.clk(clk),
	.dr1(dr1_b2),
	.AW(b1_br[15:11]),
	.dr2(dr2_b2),
	.sel(b1_br[5:0]),
	.aluop(uc_aluop),
	.regdst(uc_regdst),
	.regwrite(uc_regwrite),
	.memtoreg(uc_memtoreg),
	.alusrc(uc_alusrc),
	.out_alusrc(b2_alusrc),
	.out_memtoreg(b2_memtoreg),
	.out_regwrite(b2_regwrite),
	.out_regdst(b2_regdst),
	.out_aluop(b2_aluop),
	.dr1_out(b2_a),
	.dr2_out(b2_b),
	.sel_out(b2_sel),
	.out_AW(b2_aw)
);

mux2 m2
(
	.TipoR(b2_aw),
	.regdst(b2_regdst),
	.smux2(mux2_b3)
);

 uc_alu uc
(
	.aluop(b2_aluop),
	.funct(b2_sel),
	.sel(uc_alu)
);

mux3 m3
(
	.rd2(b2_b),
	.alusrc(b2_alusrc),
	.smux3(m3_b)
);

Alu alu1
(
	.A(b2_a),
	.B(m3_b),
	.sel(uc_alu),
	.res(alu_b3)
);

buffer3 b3
(
	.clk(clk),
	.regwrite(b2_regwrite),
	.res(alu_b3),
	.memtoreg(b2_memtoreg),
	.out_memtoreg(b3_memtoreg),
	.res_out(b3_br),
	.AW(mux2_b3),
	.out_regwrite(b3_regwrite),
	.out_AW(b3_aw)
);

buffer4 b4
(
	.clk(clk),
	.regwrite(b3_regwrite),
	.res(b3_br),
	.memtoreg(b3_memtoreg),
	.out_memtoreg(b4_memtoreg),
	.salida(salida),
	.res_out(b4_mux),
	.AW(b3_aw),
	.out_regwrite(b4_regwrite),
	.out_AW(b4_aw)
);

mux4 m4
(
	.alu(b4_mux),
	.memtoreg(b4_memtoreg),
	.smux4(m4_br)
);

endmodule 