module memIn
(
	input [31:0] ar,
	output reg [31:0] out
);

reg [7:0]mem[0:128];

initial
begin
	 $readmemb("C:\\Users\\Default.DESKTOP-8GME6EK\\Documents\\Seminario de arquitectura\\A10\\archivo.txt",mem,0,7);
end

always@*
begin
	out = {mem[ar],mem[ar+1],mem[ar+2],mem[ar+3]};
end
endmodule 