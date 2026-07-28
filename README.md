# 4-Bit ALU in Verilog

## Overview
This project implements a 4-bit Arithmetic Logic Unit (ALU) using Verilog HDL. The ALU performs arithmetic and logical operations based on a 3-bit select signal.

## Features
- 4-bit inputs (A and B)
- 3-bit select input
- 4-bit output
- Combinational logic design
- Functional simulation using Icarus Verilog

## Supported Operations

| Select | Operation |
|---------|-----------|
| 000 | Addition |
| 001 | Subtraction |
| 010 | AND |
| 011 | OR |
| 100 | XOR |
| 101 | NOT A |
| 110 | Left Shift |
| 111 | Right Shift |

## Tools Used
- Verilog HDL
- Icarus Verilog
- GTKWave
- Visual Studio Code

## Folder Structure

```text
4-bit-ALU/
├── rtl/
├── tb/
├── output/
├── waveforms/
├── alu.vcd
└── README.md
```

## Waveform

<img width="1918" height="1020" alt="Screenshot 2026-07-28 122324" src="https://github.com/user-attachments/assets/497c675c-2315-404b-acdc-27250b527094" />


```markdown
![Waveform](waveforms/alu_waveform.png)
```

## Author

Abinaya K
