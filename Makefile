CC=iverilog
OUT=run.out

all:
	echo "make {alu, id, se, reg}"

alu: alu.v alu.t.v
	$(CC) -o $(OUT) alu.t.v && ./$(OUT)

id: instructionDecoder.v instructionDecoder.t.v
	$(CC) -o $(OUT) instructionDecoder.t.v && ./$(OUT)

se: signExtend.v signExtend.t.v
	$(CC) -o $(OUT) signExtend.t.v && ./$(OUT)

reg: regfile.v regfile.t.v
	$(CC) -o $(OUT) regfile.t.v && ./$(OUT)

clean:
	rm -r $(OUT)