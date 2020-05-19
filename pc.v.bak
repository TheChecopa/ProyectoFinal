module pc
(
	input [31:0] add,
	input clk,
	output reg [31:0] salida
);

always @(posedge clk)
begin
	case (add)
		 32'dx:
		 begin
			salida <= 32'd0 ;
		 end
	endcase
	if(add >= 32'd0)
		begin
			salida <= add;
		end	
end


endmodule 