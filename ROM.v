module ROM(Dout,InstNum);
input [6:0]InstNum;
output [31:0]Dout;

reg [31:0]ROMout;

always @(*) begin
	case (InstNum)
	'h00: ROMout = 'h00450693;
	'h04: ROMout = 'h00100713;
	'h08: ROMout = 'h00b76463;
	'h0c: ROMout = 'h00008067;
	'h10: ROMout = 'h0006a803;
	'h14: ROMout = 'h00068613;
	'h18: ROMout = 'h00070793;
	'h1c: ROMout = 'hffc62883;
	'h20: ROMout = 'h01185a63;
	'h24: ROMout = 'h01162023;
	'h28: ROMout = 'hfff78793;
	'h2c: ROMout = 'hffc60613;
	'h30: ROMout = 'hfe0796e3;
	'h34: ROMout = 'h00279793;
	'h38: ROMout = 'h00f507b3;
	'h3c: ROMout = 'h0107a023;
	'h40: ROMout = 'h00170713;
	'h44: ROMout = 'h00468693;
	'h48: ROMout = 'hfc1ff06f;
	endcase
end

assign Dout = ROMout;

endmodule