# RTL->GDSII-projects
In this folder it contains all the projects related to VLSI from RTL design to making GDSII folder files.
# RTL to GDSII Projects (Open-Source ASIC Flow)

##  Overview
This repository demonstrates the complete **ASIC design flow from RTL (Register Transfer Level) to GDSII (Graphic Data System II)** using **free and open-source EDA tools**.  

The objective of this project is to show how a digital design written in **Verilog RTL** can be synthesized, physically designed, and converted into a **final chip layout (GDSII)** using an industry-aligned **open-source ASIC toolchain**.

This project follows a **realistic ASIC workflow** similar to industry practices, using **WSL2 (Ubuntu on Windows)** and the **OpenLane** framework.

---

##  ASIC Design Flow Followed
1. RTL Design (Verilog)
2. RTL Simulation
3. Logic Synthesis
4. Floorplanning
5. Placement
6. Clock Tree Synthesis
7. Routing
8. DRC & LVS
9. GDSII Generation
10. Layout Visualization

---

##  Free & Open-Source Tools Used

| Stage | Tool | Description |
|-----|-----|-------------|
| RTL Simulation | **Icarus Verilog** | Verilog compiler and simulator |
| RTL Simulation | **Verilator** | Fast cycle-accurate simulator |
| Synthesis | **Yosys** | RTL to gate-level synthesis |
| Physical Design | **OpenROAD** | Floorplanning, placement, routing |
| Layout Editing | **Magic VLSI** | Layout viewing and DRC |
| LVS | **Netgen** | Layout vs Schematic checking |
| Timing Analysis | **OpenSTA** | Static timing analysis |
| Complete Flow | **OpenLane** | RTL to GDSII automation |
| PDK | **Sky130** | Open-source 130nm process |

 All tools are **100% free and open-source**

---

##  Platform Used
- **Windows 11**
- **WSL2 (Windows Subsystem for Linux)**
- **Ubuntu (Linux environment inside WSL2)**

WSL2 provides a native Linux environment required for ASIC tools while working on Windows.

---

##  Steps involved in Installation (Using WSL2)
``` bash
1 Install WSL2 and Ubuntu (Windows)

wsl --install
Restart the system and open Ubuntu from the Start menu.

2️ Update Ubuntu
sudo apt update && sudo apt upgrade -y

3️ Install Basic Dependencies
sudo apt install -y build-essential git curl wget python3 python3-pip python3-venv

4️ Install RTL Simulation Tools
sudo apt install -y iverilog verilator gtkwave

5️ Install Synthesis Tool
sudo apt install -y yosys

6️ Install Docker (Required for OpenLane)
sudo apt install -y docker.io
sudo usermod -aG docker $USER
newgrp docker

7️ Install OpenLane (Complete ASIC Flow)
git clone https://github.com/The-OpenROAD-Project/OpenLane.git
cd OpenLane
make

8️ Run RTL to GDSII Flow
make mount
flow.tcl -design spm

9 Output Files
GDSII file
designs/<design_name>/runs/<run_id>/results/final/gds/


Magic layout
designs/<design_name>/runs/<run_id>/results/final/mag/

10 Viewing the Layout
magic <design>.mag
This opens the ASIC physical layout, showing metal layers, diffusion, and routing.
```

This installs:

  1 Yosys
  2 OpenROAD
  3 Magic
  4 Netgen
  5 OpenSTA
  6 Sky130 PDK

This projects demonstrates a complete RTL to GDSII ASIC flow using free and open-source EDA tools.
Icarus Verilog and Verilator are used to simulate and functionally verify the Verilog RTL design. The verified RTL is synthesized into a gate-level netlist using Yosys. Physical design tasks including floorplanning, placement, clock tree synthesis, and routing are performed using OpenROAD, integrated through the OpenLane framework. The Sky130 open-source PDK is used as the target fabrication technology. Magic VLSI is used for layout viewing and design rule checking (DRC), while Netgen performs layout-versus-schematic (LVS) verification. OpenSTA is used for static timing analysis.

The final output of the flow is a GDSII file, which represents the complete physical layout of the ASIC ready for fabrication. Additional outputs include the gate-level netlist, timing reports, DRC/LVS reports, and a Magic layout file (.mag) for layout visualization.





