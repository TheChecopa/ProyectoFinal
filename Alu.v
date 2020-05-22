module Alu
(
	input [31:0]A, B,
	input [3:0]sel,
	output reg [31:0]res,
	output reg zero, flag
);

always @(*)
begin
case(sel)
	4'b0000:
			begin
				res = A + B;
			end
		4'b0001:
			begin
				res = A - B;
			end
		4'b0010:
			begin
				res = A * B;
			end
		4'b0011:
			begin
				res = A / B;
			end
		4'b0100:
			begin
				res = A & B;
			end
		4'b0101:
			begin
				res = A | B;
			end
		4'b0110:
			begin
				res = A ^ B;
			end
		4'b0111:
			begin
				res = ~A;
			end
		4'b1000:
			begin
				if(A<B)
					res = 32'd1;
				else
					res = 32'd0;
			end
endcase
end

always @(*)
begin
		if (res==32'd0)
			begin
				zero = 1'b1;
				flag = 1'b1;
			end
		else
			begin
				zero = 1'b0;
				flag = 1'b0;
			end
end
endmodule 