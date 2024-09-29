# Makefile for RISC-V 32-bit assembly code
CC = riscv64-unknown-elf-gcc  # RISC-V compiler
CC2 = riscv64-unknown-elf-as  # RISC-V compiler
CC3 = riscv64-unknown-elf-ld  # RISC-V compiler
CFLAGS = -Wall -g             # Compiler flags: -Wall for warnings, -g for debugging
CFLAGS2 = -m
ASM = file1.s file2.s         # Assembly files
OBJ = file1.o file2.o         # Object files

# Default target: Build the final executable
prog.x: $(OBJ)
	$(CC3) $(CFLAGS2) elf32lriscv $(OBJ) -o prog.x

# Rule to compile .c to .s (RISC-V assembly)
%.s: %.c
	$(CC) $(CFLAGS) -march=rv32i -mabi=ilp32 -S $< -o $@

.PRECIOUS: %.s

# Rule to assemble .s (RISC-V assembly) to .o (object)
%.o: %.s
	$(CC2) $(CFLAGS) -march=rv32i -mabi=ilp32 -c $< -o $@

# Clean up generated files
clean:
	rm -f *.o *.s prog.x
