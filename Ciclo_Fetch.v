module memIn
(
input clk,
input [31:0] dir,
output reg [31:0] out,
output reg [31:0] Fetch, prueba,
output  [31:0] Sal, Instruccion
);

reg[6:0] pc;
reg [7:0]mem[0:526];

initial
begin
	 pc = - 7'd4;
end

always@(posedge clk)
begin
	pc = pc+7'd4;
	out=pc;
	prueba=dir;
	Fetch=pc;
end

initial
begin
	 $readmemb("C:\\Users\\Default.DESKTOP-8GME6EK\\Documents\\Seminario de arquitectura\\A10\\archivo.txt",mem,0,27);
end

assign Sal = {mem[dir], mem[dir+1], mem[dir+2], mem[dir+3]};
assign Instruccion = {mem[dir], mem[dir+1], mem[dir+2], mem[dir+3]};


endmodule 