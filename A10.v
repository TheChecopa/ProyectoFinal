module A10
(
	input clk,
	output [31:0] salida
);

wire [31:0] pc_memIn;
wire [31:0] mux1_pc, add_mux, b1_cuatro, b2_cuatro, b3_mux1 ,add2_b3;
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
wire uc_regdst, uc_memtoreg, uc_alusrc, uc_regwrite, uc_er, uc_ew, uc_pcsrc;
wire b2_regdst, b2_regwrite, b2_memtoreg, b2_alusrc, b2_er, b2_ew, b2_pcsrc;
wire b3_regwrite, b3_memtoreg, b3_er, b3_ew, b3_pcsrc, zero_b3, b3_zero, pcsrc_mux1;
wire [4:0] b4_aw;
wire b4_regwrite, b4_memtoreg;
wire [31:0] b4_mux;
wire [31:0] m4_br, m3_b;
wire [4:0] Inm_b2;
wire [31:0] sign_b2, b2_mux3, b3_dw, mem_b4, dato_m4;
wire [31:0] add2_shift;

mux1 m1
(
	.pcsrc(pcsrc_mux1),
	.add1(add_mux),
	.add2(b3_mux1),
	.smux1(mux1_pc)
);

pc pc0
(
	.clk(clk),
	.add(mux1_pc),
	.salida(pc_memIn)
);

add1 fetch
(
	.pc(pc_memIn),
	.salida(add_mux)
);

memIn Ins
(
	.ar(pc_memIn),
	.out(memIn_b1)
);

buffer1 b1
(
	.clk(clk),
	.cuatro(add_mux),
	.out_cuatro(b1_cuatro),
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
	.alusrc (uc_alusrc),
	.er(uc_er),
	.ew(uc_ew),
	.PCSrc(uc_pcsrc)
);

sign extend
(
	.IN_sign(b1_br[15:0]),
	.OUT_sign(sign_b2)
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
	.Inm(b1_br[20:16]),
	.sign(sign_b2),
	.pcsrc(uc_pcsrc),
	.cuatro(b1_cuatro),
	.out_cuatro(b2_cuatro), 
	.out_pcsrc(b2_pcsrc),
	.sign_out(b2_mux3),
	.er(uc_er),
	.ew(uc_ew),
	.ew_out(b2_ew),
	.er_out(b2_er),
	.out_Inm(Inm_b2),
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
	.TipoI(Inm_b2),
	.regdst(b2_regdst),
	.smux2(mux2_b3)
);

shift1 left1
(
	.in_shift(b2_mux3),
	.out_shift(add2_shift)
);

add2 sumador
(
	.add1(b2_cuatro),
	.shift(add2_shift),
	.salida(add2_b3)
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
	.sign(b2_mux3),
	.alusrc(b2_alusrc),
	.smux3(m3_b)
);

Alu alu1
(
	.A(b2_a),
	.B(m3_b),
	.sel(uc_alu),
	.res(alu_b3),
	.zero(zero_b3)
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
	.dw(b2_b),
	.dw_out(b3_dw),
	.pcsrc(b2_pcsrc),
	.zero(zero_b3),
	.add2(add2_b3),
	.out_add2(b3_mux1),
	.out_zero(b3_zero),
	.out_pcsrc(b3_pcsrc),
	.out_regwrite(b3_regwrite),
	.out_AW(b3_aw),
	.er(b2_er),
	.ew(b2_ew),
	.out_ew(b3_ew),
	.out_er(b3_er)
);

branch and1
(
	.zero(b3_zero),
	.pcsrc(b3_pcsrc),
	.salida(pcsrc_mux1)
);

mem datos
(
	.ew(b3_ew),
	.er(b3_er),
	.ar(b3_br),
	.dw(b3_dw),
	.salida(mem_b4)
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
	.out_AW(b4_aw),
	.dato(mem_b4),
	.dato_out(dato_m4)
);

mux4 m4
(
	.alu(b4_mux),
	.mem(dato_m4),
	.memtoreg(b4_memtoreg),
	.smux4(m4_br)
);

endmodule
