module concatenacion
(
	input [31:0] cuatro,
	input [27:0] sh2,
	output [31:0] salida
);

assign salida = {cuatro[31:28], sh2};

endmodule 