module contador(Clear, Clock, Q);
	input Clear, Clock;
	output [1:0] Q;
	reg [1:0] Q;

	always @(posedge Clock)
		if (Clear)
			Q <= 0;
		else
			Q <= Q + 1;
			
endmodule

module regn(R, Rin, Clock, Q);
	parameter n = 16;
	input [n-1:0] R;
	input Rin, Clock;
	output [n-1:0] Q;
	reg [n-1:0] Q;
	
	always @(posedge Clock)
		if (Rin)
			Q <= R;

endmodule

module dec3to8(W, En, Y);
	input [2:0] W;
	input En;
	output [0:7] Y;
	reg [0:7] Y;
	always @(W or En)
		begin
			if (En == 1)
				case (W)
					000: Y = 10000000;
					001: Y = 01000000;
					010: Y = 00100000;
					011: Y = 00010000;
					100: Y = 00001000;
					101: Y = 00000100;
					110: Y = 00000010;
					111: Y = 00000001;
				endcase
			else
				Y = 00000000;
		end
		
endmodule

module Pratica2(SW, LEDG);
	input [17:0]SW;
	output [8:0]LEDG;
	// contador cont(SW[16], SW[17], LEDG[0]);
	// regn regist(SW[15], SW[14], SW[17], LEDG[1]);
	dec3to8 conversor(SW[17:15], SW[14], LEDG[7:0]);
	
endmodule

