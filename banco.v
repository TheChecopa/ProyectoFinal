module banco
(
	input [4:0] AR1, AR2, AW,
	input en,
	input [31:0] DW,
	output reg [31:0] DR1, 
	output reg [31:0] DR2
);

reg [31:0] m [0:31];
initial
begin
	$readmemb("C:\\Users\\Default.DESKTOP-8GME6EK\\Documents\\Seminario de arquitectura\\A10\\datos.txt",duv.bank.m,0,31);
end

always @(*)
begin
	case (en)
		1'b1:
			begin
				m[AW] = DW;
			end
	endcase
		DR1 = m[AR1];
		DR2 = m[AR2];
end	
endmodule 