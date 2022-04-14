 `timescale 1ns / 1ps

module PCIDTB();

reg clk,reset;
wire [7:0] PC;
wire [4:0]rs1,rs2,rd;
wire [11:0]imm;
wire [31:0] Instruction;


always #10 clk = ~clk;


ProgramCounter a (clk,reset,PC);
ROM b (Instruction,PC);
InstDecoder c(Instruction,rd,rs1,rs2,imm);

initial begin
clk = 0;
reset = 0;
repeat (20) @(posedge clk);
#60 $stop;
end

endmodule


