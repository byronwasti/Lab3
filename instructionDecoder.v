module instructionDecoder (instruction, Opp, Rs, Rt, Rd, Shamt, Funct, Imm, Jadd);

input[31:0] instruction;
output[5:0] Opp, Funct;
output[4:0] Rs, Rt, Rd, Shamt;
output[15:0] Imm;
output[25:0] Jadd;

wire [31:0] instruction;
wire [5:0] Opp, Funct;
wire [4:0] Rs, Rt, Rd;
wire [15:0] Imm;
wire [25:0] Jadd;

assign Opp[5:0] = instruction[31:26];
assign Rs[4:0] = instruction[25:21];
assign Rt[4:0] = instruction[20:16];
assign Rd[4:0] = instruction[15:11];
assign Shamt[4:0] = instruction[10:6];
assign Funct[5:0] = instruction[5:0];
assign Imm[15:0] = instruction[15:0];
assign Jadd[25:0] = instruction[25:0];

endmodule