module uc
(
	input [5:0] opcode,
	output reg regdst, regwrite, memtoreg, alusrc,
	output reg [2:0] aluop
);

always @(*)
begin
	case(opcode)
	//Tipo R
		6'b000000:
			begin
				aluop <= 3'b010;
				regdst <= 1'b1;
				regwrite <= 1'b1;
				memtoreg <= 1'b0;
				alusrc <= 1'b0;
			end
		default:
			aluop <= 3'dx;
	endcase
end
endmodule 	