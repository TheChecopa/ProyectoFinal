module memIn(
input [7:0] ar,
output reg [31:0] out
);

reg [7:0]mem[0:128];

initial
begin
	 $readmemb("C:\\intelFPGA_lite\\18.1\\proyectos\\ProyectoFinal\\Fases\\Fase1\\mem.txt",mem,0,23);
end

always@*
begin
	out = {mem[ar],mem[ar+1],mem[ar+2],mem[ar+3]};
end
endmodule 