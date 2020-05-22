module buffer1
(
	input clk,
	input [31:0] ins,
	input [31:0] cuatro,
	output reg [31:0] out_cuatro,
	output reg [31:0] b1_out
);

always @(posedge clk)
begin
	b1_out <= ins;
	out_cuatro <= cuatro;
end

endmodule 