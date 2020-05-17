module fetch
(
	input clk,
	output [7:0] salida
);

reg [7:0] pc;
initial begin
	pc = -4;
end

always @(posedge clk)begin
	pc <= pc+8'd4;
end

assign salida = pc;

endmodule 