# OpenLane Flow Summary — 32-bit ALU

General Information
| Parameter             | Value            |
| --------------------- | ---------------- |
| Design Name           | `alu32`          |
| Flow Status           | ✅ Flow Completed |
| Total Runtime         | 5 min 29 sec     |
| Routed Runtime        | 4 min 10 sec     |
| Standard Cell Library | sky130_fd_sc_hd  |
| Synthesis Strategy    | AREA             |

Area & Utilization
| Parameter                 | Value           |
| ------------------------- | --------------- |
| Die Area                  | **0.16 mm²**    |
| Core Area                 | **128,175 µm²** |
| Total Standard Cells      | **13,808**      |
| Cell Density              | 5,881 cells/mm² |
| Core Utilization (Target) | 25%             |
| Placement Density Target  | 0.30            |

Logic Composition
| Cell Type       | Count      |
| --------------- | ---------- |
| AND             | 52         |
| OR              | 0          |
| XOR             | 35         |
| XNOR            | 73         |
| MUX             | 280        |
| DFF             | 0          |
| Decap Cells     | 1,795      |
| Well Tap Cells  | 2,017      |
| Fill Cells      | 9,053      |
| **Total Cells** | **13,808** |

Routing & Physical Verification
| Check                    | Result |
| ------------------------ | ------ |
| Short Violations         | 0      |
| Metal Spacing Violations | 0      |
| Off-Grid Violations      | 0      |
| Min-Hole Violations      | 0      |
| Antenna Violations       | 0      |
| Magic DRC Violations     | 0      |
| KLayout Violations       | 0      |
| LVS Errors               | 0      |
| CVC Errors               | 0      |

Timing Analysis
| Parameter                  | Value       |
| -------------------------- | ----------- |
| Critical Path Delay        | **7.42 ns** |
| Clock Period (Constraint)  | 50 ns       |
| Suggested Clock Period     | 50 ns       |
| Suggested Max Frequency    | 20 MHz      |
| Worst Negative Slack (WNS) | 0.0 ns      |

Power Analysis (Typical Corner)
| Power Component | Value          |
| --------------- | -------------- |
| Internal Power  | 3.15 × 10⁻⁵ µW |
| Switching Power | 6.17 × 10⁻⁵ µW |
| Leakage Power   | 1.09 × 10⁻⁸ µW |

# Summary

The 32-bit combinational ALU was successfully implemented and taken through the complete RTL-to-GDSII flow using OpenLane with the Sky130 HD standard cell library. The design completed synthesis, floorplanning, placement, routing, and signoff checks without any DRC, LVS, or routing violations, confirming its physical correctness and manufacturability. The final layout occupies approximately 0.16 mm² of die area with about 13.8k standard cells, including arithmetic, logic, multiplexing, and necessary physical-only cells such as decaps, well taps, and fillers. Timing analysis reports a critical path delay of ~7.4 ns, which is expected for an unpipelined wide combinational datapath, making the design suitable for lower-frequency operation. Power analysis indicates that switching power dominates, with minimal leakage contribution, consistent with a purely combinational ALU. Overall, the project demonstrates a clean and complete ASIC physical design flow from RTL description to fabrication-ready GDSII.
