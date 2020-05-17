`timescale 1ns/100ps
module test();
reg clk;
wire [31:0] salida;
A10 duv
(
	.clk(clk),
	.salida(salida)
);


always #30 clk = ~clk;
		
initial
  begin
		  clk = 1'b1; 
		  #60; 
		  #60;
		  #60;
		  #60;
		  #60;
		  #60;
		  #60;
		  #60;
		  #60;
		  #60;
		  
 $stop;
 end
endmodule
