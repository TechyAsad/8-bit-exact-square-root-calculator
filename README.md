# 8-bit Exact Square Root Calculator on Basys 3 FPGA

A hardware implementation of an **8-bit exact integer square root calculator** using Verilog and deployed on the **Basys 3 FPGA (Xilinx Artix-7)**. Designed as a learning project to explore digit-recurrence arithmetic, algorithm-to-hardware translation, and FPGA implementation.

---

## Introduction

This repository implements an **8-bit exact square root calculator** in Verilog and successfully runs it on a **Basys 3 FPGA** board. The design is based on classic square-rooting techniques described in *Computer Arithmetic: Algorithms and Hardware Designs* (2nd Edition) by Behrooz Parhami, particularly the digit-recurrence and binary non-restoring methods discussed in **Chapter 21 Square-Rooting Methods**. This project helped me deepen my understanding of hardware arithmetic and FPGA workflows while translating theory into functioning digital logic.

---

## Description

Computing the square root in hardware differs significantly from software implementations — it often uses *digit-by-digit* or *recurrence-based* algorithms that are efficient for digital circuits and avoid expensive operations like division or floating-point arithmetic. Parhami’s textbook explains several methods:  

- *Pencil-and-paper* and *restoring shift/subtract* algorithms  
- *Binary non-restoring* methods  
- *High-radix* and *convergence-based* square-rooting  
- Parallel hardware implementations and enhancements  

This project implements a hardware-friendly **digit-recurrence** style square-rooter similar in spirit to the binary non-restoring algorithm, where bits of the root are generated iteratively based on comparisons and controlled subtract-shift operations — providing a concrete exercise in hardware design and arithmetic logic.

---

##  Design Overview

###  Functionality
- **Input:** 8-bit unsigned number (0–255)  
- **Output:** 4-bit exact integer square root (floor of the real root)  
- **Algorithm Style:** Step-by-step bit-level square-root generation inspired by Parhami’s methods in Chapter 21  

### Key Features
- Implements the logic to compute the square root of an 8-bit input without relying on high-level math functions  
- Uses Verilog HDL with combinational modules suitable for FPGA synthesis  
- Designed with clarity in mind for learning arithmetic hardware rather than optimization for performance or area  

### FPGA Deployment
- Target board: **Basys 3 (Artix-7 FPGA)**  
- Development tools: Vivado 
- Input validated on board switches, output displayed on LEDs for verification  


## Learning Outcomes

Working on this project helped me:  
- Bridge **arithmetic algorithms** from theory to Verilog hardware  
- Understand *digit-recurrence square-rooting* and its hardware implications  
- Practice FPGA workflows: simulation → synthesis → implementation → board testing  
- Get comfortable with debugging arithmetic logic on real hardware  

---

##  Reference
Parhami, B. *Computer Arithmetic: Algorithms and Hardware Designs*, 2nd Edition, Oxford University Press — especially **Chapter 21 Square-Rooting Methods**, which explains a variety of square-root algorithms and hardware approaches relevant to implementations like this one.
