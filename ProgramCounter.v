module ProgramCounter(clk,reset,PC);
input clk,reset;
output [7:0]PC;

reg [7:0]ProgCount;


initial begin
ProgCount<=0;
end


always @ (posedge clk || reset)
begin 
if (~reset) begin
ProgCount = ProgCount+4;
end
if (reset) begin
ProgCount = 0;
end
end
assign PC = ProgCount;

endmodule

module InstDecoder(InstIn,rd,rs1,rs2,imm);
input [31:0]InstIn;
output [4:0]rd,rs1,rs2;
output [11:0]imm;


assign rd = InstIn[11:7];
assign rs1 = InstIn[19:15];
assign rs2 = InstIn[24:20];
assign imm = InstIn[31:20];

endmodule

module ROM(Dout,InstNum);
input [7:0]InstNum;
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