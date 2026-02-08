# Chapter 2 Pipelining

## Introduction to pipelining 

Pipelining is an implementation technique which takes advantage of parallelism that exists among the actions needed to execute an instruction. Hence multiple instructions are overlapped in execution. 

- Latency is time take to complete a task 
- Throughput is difined as number of tasks completed per unit of time. In general throughput = 1 / latency

The different stages in a typical RISC-V processor are as follows:
* **Instruction Fetch Cycle**
  - Send the PC to the memory and fetch the current instruction.
  - Update the PC to   the next sequential instruction. 
  - Pseudo code is as follows: <br>
     IR <- Mem[PC] <br>
	 NPC <- PC + 4 <br>
* **Instruction Decode / Register Fetch Cycle**
  - The instruction is decoded, the register file is accessed to read the registers as per the register specifiers in the instruction. The outputs of the GPRs are temporarily stored in registers A & B for later use e.g. add, xor, etc.
  - The immediate field is also extended are stored in a temporary register Imm for the use in the next cycle e.g. ld, addi, etc.
  - For store operations a separate block is required for sign extension since the immediate value is split into different fields of the instruction. 
  - Pseudo code is as follows: <br>
  A <- Regs[rs1] <br>
  B <- Regs[rs1] <br>
  Imm <- sign extend immediate field of IR <br>
  
* **Execution / Effective Address Cycle**
  - Based on the instruction type we perform the following functions
    - **Memory Reference** in which the ALU adds the immediate value to a source register value to calculate the effective address for memory access i.e. <br>
	ALUOutput <- A + Imm 
	- **Register- Register ALU operation** in which based on the func3 and func7 fields the operation is performed on A and B i.e. <br>
	ALUOutput <- A func B
	- **Register - Immediate operation** in which based on func3 field the operations is applied on A an Imm i.e. <br>
	ALUOutput <- A op Imm
	- **Branch** in which the branch condition is evaluated and the target address of the next instruction is calculated. For jump instructions we only calculate the target address i.e. <br>
	ALUOutput <- NPC + (Imm << 2) <br>
	cond <- (A == B) <br>
	
* **Memory access/Branch Completion Cycle** 
   - MemorySince we have already calculated the effect address for the memory reference then based on the instruction type we do a load or store operation. i.e. <br>
   LMD <- Mem[ALUOutput] <br>
   Mem[ALUOutput] <- B<br>
   - At this stage we also check the condition of the branch i.e. <br>
   if (cond) PC <- ALUOuput

* **Write back cycle** 
  - For register to register or register to immediate operations the result is stored back to the register file i.e. <br>
  Regsp[rd] <- ALUOutput
  - For load instructions the value which is read from the memory is saved in the register file i.e. <br>
  Regs[rd] <- LMD

Pros and Cons of pipelining
- throughput increase +
- average execution time of the program increase +
- CPI decreases +
- In general speedup is directly proportional to pipelind depth +
- Adds pipeline latency -
- Adds pipeline register overhead -
- leads to imbalancing of pipeline stages -

The order in which you should implement RV32I
1. R-type
2. I-type
3. S-type
4. B-type
5. U-type
6. J-type


Ideal CPI is 1 but there are certain factors due to which we don't get this identity
- Initial fill 
- Pipelining stalls
- 
 
Content coming soon...

<!-- Add your chapter 2 notes here -->
