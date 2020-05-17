module uc_alu
(
	input [2:0] aluop,
	input [5:0]funct,
	output reg [3:0]sel
);

always @(*)
begin
	if (aluop == 3'b010)
		begin
			case(funct)
					6'b100000:
							sel <= 4'b0000;
					6'b100001:
							sel <= 4'b0001;
					6'b100010:
							sel <= 4'b0010;
					6'b100011:
							sel <= 4'b0011;
					6'b100100:
							sel <= 4'b0100;
					6'b100101:
							sel <= 4'b0101;
					6'b100110:
							sel <= 4'b0110;
					6'b100111:
							sel <= 4'b0111;
					6'b101000:
							sel <= 4'b1000;
					default:
							sel <= 4'dx;
			endcase
		end
end
endmodule
