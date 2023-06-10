# RISC-V simple CPU implementation

The CPU design implements a piplined RISC-V CPU consisting of 5 stages:

## Stage One:
This stage is responsible for fetching the instruction of the instruction memory. It includes only the instruction memory component.

## Stage Two:
This stage is responsible for decoding the instruction and reading the registers data. It includes the control unit and the register file.

## Stage Three:
This stage will do the ALU calculation. It includes the ALU unit and the ALU control.

## Stage Four:
This stage will read or write to the RAM. It includes the RAM.

## Stage Five:
This stage will write back to the register file. and it's implemented in the same stage two file.

## CPU: 
The CPU file connects all the previous stages together.

## The list of implemented instructions

- Lb
- lh
- lw
- Ld 
- lbu
- lhu
- lwu
- sb
- sh
- sw
- sd
- addi
- ori
- andi
- beq
- bne
- bge
- blt
- add
- sub
- and
- or
