module proc (DIN, Resetn, Clock, Run, Done, BusWires);
	input [15:0] DIN;
	input Resetn, Clock, Run;
	
	output Done;
	output [15:0] BusWires;
	
	reg [1:0]Tstep_Q;
	reg [7:0]Xreg, [7:0]Yreg;
	
	wire [0:3]I;
	wire Clear = ...
	
	contador Tstep (Clear, Clock, Tstep_Q);
	assign I = IR[0:2];
	dec3to8 decX (IR[3:5], 1, Xreg);
	dec3to8 decY (IR[6:8], 1, Yreg);
	
	always @(Tstep_Q or I or Xreg or Yreg)
	begin
		... specify initial values
		case (Tstep_Q)
			00: // store DIN in IR in time step 0
			begin
				IRin = 1;
			end
			01: //define signals in time step 1
				case (I)
					...
				endcase
			10: //define signals in time step 2
				case (I)
					...
				endcase
			11: //define signals in time step 3
				case (I)
					...
				endcase
		endcase
	end
	
	regn reg_0 (BusWires, Rin[0], Clock, R0);
	... instantiate other registers and the adder/subtracter unit
	
	... define the bus

endmodule
