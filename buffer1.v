module buffer1
(
	input clk,
	input [31:0] ins,
	output reg [31:0] b1_out
);

always @(posedge clk)
begin
	b1_out <= ins;
end

endmodule
