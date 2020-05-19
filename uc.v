module uc
(
	input [5:0] opcode,
	output reg regdst, regwrite, memtoreg, alusrc, er, ew, PCSrc,
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
				er <=  1'b0;
				ew <= 1'b0;
				PCSrc <= 1'b0;
			end
	//lw
		6'b100011:
			begin
				aluop <= 3'b000;
				regdst <= 1'b0;
				regwrite <= 1'b1;
				memtoreg <= 1'b1;
				alusrc <= 1'b1;
				er <=  1'b1;
				ew <= 1'b0;
				PCSrc <= 1'b0;
			end
	//sw
		6'b101011:
			begin
				 aluop <= 3'b000;
				 regdst <= 1'bx;
				 regwrite <= 1'b0;
				 memtoreg <= 1'bx;
				 alusrc <= 1'b1;
				 er <=  1'b0;
				 ew <= 1'b1;
				 PCSrc <= 1'b0;
			end
	 //beq
		6'b000100:
			begin
				aluop <= 3'b001;
				 regdst <= 1'bx;
				 regwrite <= 1'b0;
				 memtoreg <= 1'bx;
				 alusrc <= 1'b0;
				 er <=  1'b0;
				 ew <= 1'b0;
				 PCSrc <= 1'b1;
			end
	 //addi
		6'b001000:
			begin
				 aluop <= 3'b000;
				 regdst <= 1'b0;
				 regwrite <= 1'b1;
				 memtoreg <= 1'b0;
				 alusrc <= 1'b1;
				 er <=  1'b0;
				 ew <= 1'b0;
				 PCSrc <= 1'b0;
			end
		//andi
		 6'b001100:
			begin 
				 aluop <= 3'b100;
				 regdst <= 1'b0;
				 regwrite <= 1'b1;
				 memtoreg <= 1'b0;
				 alusrc <= 1'b1;
				 er <=  1'b0;
				 ew <= 1'b0;
				 PCSrc <= 1'b0;
			end
	   //ori
		 6'b001101:
			begin
				 aluop <= 3'b101;
				 regdst <= 1'b0;
				 regwrite <= 1'b1;
				 memtoreg <= 1'b0;
				 alusrc <= 1'b1;
				 er <=  1'b0;
				 ew <= 1'b0;
				 PCSrc <= 1'b0;
			end
		//stli
		6'b001010:
			begin
				 aluop <= 3'b110;
				 regdst <= 1'b0;
				 regwrite <= 1'b1;
				 memtoreg <= 1'b0;
				 alusrc <= 1'b1;
				 er <=  1'b0;
				 ew <= 1'b0;
				 PCSrc <= 1'b0;
			end
	endcase
end
endmodule 