module datos
(
	input [31:0] ar, dw,
	input ew, er,
	output reg [31:0] salida
);

reg [31:0] datos [0:128];

always @(*)
begin
	if (ew== 1'b1)
		begin
			datos[ar] = dw;
		end
	if (er == 1'b1)
		begin
			salida = datos[ar];
		end
end
endmodule	