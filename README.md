# Synchronous-FIFO-IP-Core-using-Verilog-HDL

8-bit × 16-depth Synchronous FIFO IP Core with Full, Empty, Almost-Full, and Almost-Empty Status Flags in Verilog HDL

## Interface & Architecture Overview

* **Inputs:** `clk`, `rst_n`, `wr_en`, `rd_en`, `din [7:0]`
* **Outputs:** `dout [7:0]`, `full`, `empty`, `almost_full`, `almost_empty`
* **Architecture Components:** `mem_array [15:0][7:0]`, `wr_ptr [3:0]`, `rd_ptr [3:0]`, `count [4:0]`, and Combinational Flag Logic

## Repository Files

* `simple_fifo.v` — Synthesizable Verilog RTL design for the 8×16 synchronous FIFO[cite: 7]
* `simple_fifo_tb.v` — Simulation testbench verifying normal, boundary, and corner cases[cite: 7]
* `simple_fifo.xdc` — Pin and I/O timing constraints for the FPGA target[cite: 7]
* `simple_fifo.bit` — Generated FPGA bitstream[cite: 7]
* `Block diagram.jpg` — Top-level input/output and internal architecture block diagram[cite: 7]
* `Bitstream Generated.png` — Proof of synthesis, implementation, and `write_bitstream` completion in Xilinx Vivado[cite: 7]
