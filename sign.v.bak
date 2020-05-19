module sign
(
	input [15:0] IN_sign, 
	output reg [31:0] OUT_sign
);

always @(*)
begin 
	if (IN_sign[15] == 0 )
		begin
			OUT_sign <= {16'b0000_0000_0000_0000,IN_sign};
		end
	else
		begin
			OUT_sign <= {16'b1111_1111_1111_1111,IN_sign};
		end
end
endmodule 