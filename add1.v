module add1
(
	input [31:0] pc,
	output reg [31:0] salida
);
reg [31:0] cuatro;
initial 
begin
	cuatro <= 4;
end

always @(*)
begin 
	salida <= pc + cuatro;
end
 endmodule