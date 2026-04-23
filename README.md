# Parallel IR Transmitter System

> A scalable IR transmission platform with dual implementations: **24-channel parallel FPGA-based transmitter** (PYNQ-Z2) and **Arduino-only alternative**. Decode and test IR signals using dual Arduino Uno receivers with NEC-inspired protocol support.

---

## 📋 Table of Contents

- [Project Overview](#-project-overview)
- [System Architecture](#-system-architecture)
- [Project Structure](#-project-structure)
- [Hardware Setup](#-hardware-setup)
- [Software Setup & Installation](#-software-setup--installation)
- [Usage Guide](#-usage-guide)
- [IR Protocol Specification](#-ir-protocol-specification)
- [Customization & Development](#-customization--development)
- [Troubleshooting](#-troubleshooting)
- [Appendix](#-appendix)

---

## 🔍 Project Overview

This project implements a high-capacity parallel IR transmission system designed for:
- **Research & Testing:** Transmit multiple IR signals simultaneously to evaluate receiver performance
- **Device Control:** Send NEC-compatible IR commands to multiple devices in parallel
- **System Integration:** Flexible architecture supporting both FPGA and Arduino implementations

**Key Features:**
- ✅ 24 parallel IR transmitter channels (FPGA version) — **TESTED & WORKING**
- ✅ Simultaneous multi-channel transmission with independent control
- ✅ Dual Arduino receiver validation setup
- ✅ NEC IR protocol support with custom extensions
- ✅ Low-cost Arduino-only fallback implementation
- ✅ Real-time signal monitoring and debugging

> ⚠️ **Status:** FPGA IR receiver (PL design) is **NOT YET TESTED**. Transmitter functionality is stable. Use external Arduino receivers for validation.

---

## 🏗 System Architecture

### Two Implementation Approaches

| Aspect | FPGA Version | Arduino Version |
|--------|------|------|
| **Transmitter** | PYNQ-Z2 FPGA (24 channels) | Arduino Uno (1 channel) |
| **Receivers** | 2× Arduino Uno or external receiver | 1× Arduino + external receiver |
| **Complexity** | Advanced (Vivado design) | Simple (single sketch) |
| **Cost** | Higher | Lower |
| **Scalability** | 24 parallel channels | Single sequential channel |
| **Use Case** | Bulk testing, research | Hobbyist, simple control |

### FPGA System Block Diagram

```
PYNQ-Z2 Board
├─ Processing System (PS) — ✅ TESTED
│  └─ Python/Jupyter Controller (nec_onlyFPGA.ipynb)
├─ Programmable Logic (PL)
│  ├─ NEC_IR_Receiver IP cores (×2) — ⚠️ NOT YET TESTED
│  ├─ IR_Transmission IP cores (×24) — ✅ TESTED
│  └─ AXI GPIO interfaces
└─ Physical I/O
   ├─ 24× IR LED outputs (AR0-AR13, A0-A5, PMODA) — ✅ TESTED
   └─ 2× status/control pins

Receiver Setup (External - Recommended)
├─ Arduino Uno (Blue) → Pin 11 (Receiver 1) — ✅ TESTED
└─ Arduino Uno (Green) → Pin 10 (Receiver 2) — ✅ TESTED
```

---

## 📁 Project Structure

```
Parallel_IR_Transmitters/
│
├── 📄 README.md                          # This file
├── 📄 IR_research.pdf                    # 
research that I conduct now
│
├── 📂 PS\ part/                          # FPGA Processing System (PS) - Python Side
│   ├── 📓 nec_onlyFPGA.ipynb            # Jupyter notebook for PYNQ-Z2
│   │                                    # - NEC_IR_Controller_24ch class
│   │                                    # - Command transmission logic
│   │                                    # - Real-time control interface
│   │
│   ├── 📂 xilinx/overlays/own/
│   │   ├── design_1_wrapper.bit         # FPGA bitstream file
│   │   └── design_1_wrapper.hwh         # Hardware handoff file
│   │
│   └── 📂 arduino\ part/
│       ├── 📂 IR_TransmitterReceiver/   # Receiver sketch (standard)
│       │   └── IR_TransmitterReceiver.ino
│       └── 📂 IR_Receiver2/             # Receiver sketch (variant)
│           └── IR_Receiver2.ino
│
├── 📂 FPGA_Part/                         # FPGA Programmable Logic (PL) - Vivado Design
│   ├── 📂 Own_IR_receiver/              # Vivado project (receiver reference) ⚠️ NOT TESTED
│   │   ├── Own_IR_Receiver.xpr
│   │   ├── design_1_wrapper.bit
│   │   └── [Vivado build artifacts]
│   │
│   └── 📂 Own_IR_transmitter/           # Vivado project (24-channel transmitter) ✅ TESTED
│       ├── Own_IR_transmitter.xpr
│       ├── design_1_wrapper.xsa
│       └── [Vivado build artifacts]
│
├── 📂 external_design/                   # Circuit Design Files
│   ├── External_circuit.asc             # 
24 VCC GND port
│   ├── Safe_Driving_Circuit.asc         # Protected driver circuit (SPICE)
│   └── Driving_Ciruit.asc               # Alternative driver (SPICE)
│
├── 📂 No_FPGA_approach/                  # Arduino-Only Alternative
│   └── 📂 IR_transmitter/
│       └── IR_transmitter.ino           # Standalone Arduino TX sketch
│
└── 📂 img/                               # Hardware photos & diagrams
    ├── WhatsApp\ Image\ 2026-03-09\ at\ 17.52.39.jpeg
    ├── image-1.png
    ├── image-2.png
    ├── image-3.png
    └── Image_for_more.png
```

---

## 🛠 Hardware Setup

### Components Required (FPGA Version)

| Component | Quantity | Purpose |
|-----------|----------|---------|
| PYNQ-Z2 FPGA Board | 1 | Main controller (24-channel TX) |
| Arduino Uno | 2 | IR signal receivers + validation |
| IR LED Emitter | 24 | Transmitter elements (FPGA outputs) |
| IR Receiver Module | 2 | Signal decoders (1 per Arduino) |
| Driver Circuit | 24 | LED current limiting & switching |
| Copper sheet / barrier | 1 | RF isolation between TX channels |
| Jumper wires | ~100 | Interconnections |
| USB cables | 3 | PYNQ power, Arduino programming |
| Ethernet cable | 1 | PYNQ network (optional but recommended) |

### Components Required (Arduino-Only Version)

| Component | Quantity | Purpose |
|-----------|----------|---------|
| Arduino Uno | 1 | IR transmitter controller |
| IR LED Emitter | 1 | Transmitter element |
| Driver Circuit | 1 | LED current limiting |
| Jumper wires | ~60 | Interconnections |
| USB cable | 1 | Power & programming |

---

### 🔌 Wiring Connections (FPGA Version)

#### FPGA (PYNQ-Z2) → IR Transmitter Drivers

| Channel | PYNQ-Z2 Pin | Driver Output |
|---------|-------------|---------------|
| 1-8 | AR0-AR7 | IR LED Array 1 |
| 9-13 | AR8-AR12 | IR LED Array 2 |
| 14-19 | A0-A5 | IR LED Array 3 |
| 20-24 | PMODA0-PMODA4 | IR LED Array 4 |

> **Each pin**: 3.3V logic → Buffer/Driver → IR LED anode (cathode to GND through 100Ω resistor)

#### PYNQ-Z2 → Micro-USB Port (Power)

- ⚡ Micro-USB cable to computer or dedicated 5V supply

#### PYNQ-Z2 → Ethernet 

- 🌐 Gigabit Ethernet cable for robust network connection to Jupyter server

#### Arduino 1 (Blue Board) → IR Receiver 1

| Component | Pin |
|-----------|-----|
| IR Receiver Data | GPIO 11 |
| IR Receiver VCC | 5V |
| IR Receiver GND | GND |

#### Arduino 2 (Green Board) → IR Receiver 2

| Component | Pin |
|-----------|-----|
| IR Receiver Data | GPIO 10 |
| IR Receiver VCC | 5V |
| IR Receiver GND | GND |

#### Arduino 1 & 2 → Computer (Programming/Monitoring)

- USB cables to different COM ports

---

### 📷 Hardware Photos

<details>
<summary>Click to expand hardware documentation</summary>

**FPGA Board + 24 IR Transmitter Array:**  
![FPGA and Transmitters](img/WhatsApp%20Image%202026-03-09%20at%2017.52.39.jpeg)

**Arduino 1 (Blue) with IR Receiver Module:**  
![Arduino 1](img/image-1.png)

**Arduino 2 (Green) with IR Receiver Module:**  
![Arduino 2](img/WhatsApp%20Image%202026-03-09%20at%2017.52.38.jpeg)

**Complete System Architecture:**  
![Full System](img/image-3.png)

**RF Isolation Barrier (Copper Sheet for Channel Separation):**  
![Barrier](img/image-2.png)

**Reference Network Config:**  
![Network Config](img/Image_for_more.png)

</details>

---

## 💻 Software Setup & Installation

### Prerequisites

- PYNQ-Z2 board with latest firmware
- 2× Arduino Uno boards
- Computer with USB ports
- Python 3.6+ (for local scripts)
- Arduino IDE 1.8+ (for sketches)

### Option A: FPGA-Based Setup (Recommended for 24-channel)

#### Step 1: PYNQ-Z2 Network Setup

1. Connect PYNQ-Z2 via Micro-USB and Ethernet to your network
2. Power on and wait 2-3 minutes for boot
3. Find the board's IP address (default: `192.168.2.99`)
4. Reference: [PYNQ Setup Guide](http://blog.umer-farooq.com/a-pynq-z2-guide-for-absolute-dummies-part-i-fun-with-leds-and-switches-47dd76abf9a9)

#### Step 2: Access Jupyter Server

- Open browser: `http://192.168.2.99:9090/`
- Password: `xilinx`
- Create a working folder (e.g., `IR_Project`)

#### Step 3: Upload FPGA Bitstream & Controller

Upload to PYNQ Jupyter server:

| Local File | Server Destination |
|-----------|-------------------|
| `PS\ part/nec_onlyFPGA.ipynb` | `~/IR_Project/` |
| `PS\ part/xilinx/overlays/own/design_1_wrapper.bit` | `~/IR_Project/xilinx/overlays/own/` |
| `PS\ part/xilinx/overlays/own/design_1_wrapper.hwh` | `~/IR_Project/xilinx/overlays/own/` |

#### Step 4: Install Arduino Receiver Firmware

1. Open Arduino IDE
2. Install library: **Arduino-IRremote** (Sketch → Include Library → Manage Libraries)
3. Load: `PS\ part/arduino\ part/IR_TransmitterReceiver/IR_TransmitterReceiver.ino`
4. Select Tools → Board → Arduino Uno
5. Connect Arduino 1, select its COM port, upload
6. Repeat with Arduino 2 on a different COM port

#### Step 5: Verify Connection

- Open both Arduino Serial Monitors (9600 baud)
- Run Jupyter notebook test cell
- Should see "Overlay loaded" message

### Option B: Arduino-Only Setup (Budget alternative)

1. Open Arduino IDE
2. Install **Arduino-IRremote** library
3. Load: `No_FPGA_approach/IR_transmitter/IR_transmitter.ino`
4. Modify pin assignments if needed (currently D2)
5. Upload to single Arduino Uno
6. Connect IR LED via driver circuit to D2 pin
7. Open Serial Monitor (9600 baud) to send commands

---

## 🚀 Usage Guide

### FPGA Version - Transmitting IR Signals

#### Launch Jupyter Notebook

1. On PYNQ server: Open `nec_onlyFPGA.ipynb`
2. Run cell 1: Loads `NEC_IR_Controller_24ch` class and initializes FPGA

#### Transmit Commands

**Example 1: Send  commands**
```python
# In notebook cell:
controller = NEC_IR_Controller_24ch(

    ir = NEC_IR_Controller_24ch(
        "/home/xilinx/jupyter_notebooks/xilinx/overlays/own/design_1_wrapper.bit",
        tx_bases=tx_bases,
        btn_base=btn_base
    )

    try:
        start = datetime.now()
        # Each tx needs address and a command string of equal length
        tx_addresses =  [0x00]*24
             # Example addresses
        cmd_strs = [
            "-0001+",  # Channel 0: 5
            "-0013+",  # Channel 1: 6
            "-0106+",  # Channel 2: 7
            "-0008+",  # Channel 3: 8
            "-0009+",  # Channel 4: 9
            "-0010+",  # Channel 5: 10
            "-0011+",  # Channel 6: 11
            "-0012+",  # Channel 7: 12
            "-0013+",  # Channel 8: 13
            "-0014+",  # Channel 9: 14
            "-0015+",  # Channel 10: 15
            "-0016+",  # Channel 11: 16
            "-0017+",  # Channel 12: 17
            "-0018+",  # Channel 13: 18
            "-0019+",  # Channel 14: 19
            "-0020+",  # Channel 15: 20
            "-0021+",  # Channel 16: 21
            "-0022+",  # Channel 17: 22
            "-0023+",  # Channel 18: 23
            "-0024+",  # Channel 19: 24
            "-0025+",  # Channel 20: 25
            "-0026+",  # Channel 21: 26
            "-0027+",  # Channel 22: 27
            "-0028+",  # Channel 23: 28
        ]
)

# Transmit on channels 1 and 2 simultaneously
controller.send_cmd(0, '1')  # Transmitter 0, command '1'
controller.send_cmd(1, 'B')  # Transmitter 1, command 'B'
```
#### Monitor Reception

- Check Serial Monitor on each Arduino
- Output format: `Address: 0xXX, Command: 0xXX`
- Timing: Signals should arrive within 100ms

### Arduino-Only Version - Transmitting IR Signals

#### Serial Interface

1. Open Arduino Serial Monitor at 9600 baud
2. Type a character and press Enter
3. Predefined mappings (0-9, A-F) send NEC codes
4. Received signals can be monitored with external receiver

#### Add Custom Codes

Edit the `Send_Code()` function:
```cpp
case 'X':
  IrSender.sendNEC(0x12345678, 32);
  break;
```

---

## 📡 IR Protocol Specification

### Protocol Overview

| Parameter | Value | Notes |
|-----------|-------|-------|
| **Standard** | NEC-compatible | Simplified NEC implementation |
| **Total Frame Bits** | 32 bits | Address + Command + Parity |
| **Address Bits** | 8 bits | Device identifier |
| **Command Bits** | 8 bits | Action/button code |
| **Carrier Frequency** | ~38 kHz | Standard IR frequency |
| **Modulation** | PWM (50% duty) | On-off keying |
| **Protocol Channels** | 24 (parallel FPGA) | Independent TX channels |

### Frame Structure

```
┌─ 32 bits total ─┐
│ Address (8b) │ Command (8b) │ ~Address (8b) │ ~Command (8b) │
└────────────────┘
```

- **Address Field:** Device identifier (0x00-0xFF)
- **Command Field:** Action code (0x00-0xFF)
- **Inverse Fields:** Checksum/error detection

### Default Command Mapping

| Key | Code | Key | Code |
|-----|------|-----|------|
| 0 | 0x16 | 8 | 0x52 |
| 1 | 0x0C | 9 | 0x4A |
| 2 | 0x18 | A | 0xAA |
| 3 | 0x5E | B | 0xBB |
| 4 | 0x08 | C | 0xCC |
| 5 | 0x1C | D | 0xDD |
| 6 | 0x5A | E | 0xEE |
| 7 | 0x42 | F | 0xF1 |

---

## � Current Testing Status

### ✅ Fully Tested & Stable
- **FPGA Transmitter (24 channels):** All transmitter channels working as designed
- **Arduino Receivers:** Both receiver boards successfully decode NEC signals
- **Python/Jupyter Interface:** Notebook controller and MMIO communication verified
- **Protocol Implementation:** Standard NEC encoding/decoding functional

### ⚠️ Not Yet Tested
- **FPGA Receiver (PL design):** NEC_IR_Receiver IP cores in the FPGA bitstream have not been validated
  - Reason: Focus was on transmission performance; receiver testing deferred
  - Recommendation: Use external Arduino receivers for current applications
  - Future: Will integrate FPGA receiver testing in next release

### 📝 Known Limitations
- FPGA receiver functionality cannot be guaranteed in production
- No loopback testing between FPGA TX and FPGA RX
- All receiver-side validation currently relies on Arduino Uno boards and external circuits

---

## �🐛 Troubleshooting

### FPGA Connection Issues

| Symptom | Cause | Solution |
|---------|-------|----------|
| **No Jupyter server response** | Board not powered | Check USB power indicator LED |
| **Connection timeout** | Network misconfiguration | Ping board IP: `ping 192.168.2.99` |
| **Overlay failed to load** | Bitstream path incorrect | Verify `.bit` and `.hwh` files exist in correct directory |
| **MMIO initialization error** | Wrong base address | Verify address map in Vivado design |

### IR Transmission Issues

| Symptom | Cause | Solution |
|---------|-------|----------|
| **No IR signal** | LED not powered | Check driver circuit continuity (multimeter) |
| **Weak/short-range signal** | Insufficient LED current | Reduce resistor value (100Ω → 50Ω) |
| **No receiver output** | Receiver placement | Point LED directly at receiver (within 1 meter) |
| **Garbled data** | Baud rate mismatch | Set both Arduino + Serial Monitor to 9600 baud |
| **Channel interference** | No RF isolation | Place copper barrier between TX LED arrays |

### Arduino Issues

| Symptom | Cause | Solution |
|---------|-------|----------|
| **Sketch upload fails** | Wrong COM port | Tools → Port → Select correct COM port |
| **Serial Monitor shows garbage** | Baud mismatch | Set Serial Monitor to 9600 baud |
| **Library not found** | IRremote not installed | Sketch → Include Library → Manage Libraries → Search "IRremote" → Install |

### Performance Issues

| Symptom | Cause | Solution |
|---------|-------|----------|
| **Slow transmission** | Jupyter kernel lag | Restart kernel: Kernel → Restart |
| **Dropped frames** | High FPGA load | Increase delay between transmissions (`NEC_HOLD_TIME`) |
| **Inconsistent reception** | Weak carrier frequency | Verify crystal oscillator on FPGA board |

---

## 📚 Appendix

### External Resources

- **PYNQ Official Documentation**: https://pynq.readthedocs.io/
- **Vivado Design Suite**: https://www.xilinx.com/products/design-tools/vivado.html
- **NEC IR Protocol**: https://www.sbprojects.net/knowledge/ir/nec.php
- **Arduino-IRremote Library**: https://github.com/Arduino-IRremote/Arduino-IRremote

### Circuit Design References

See `external_design/` folder for SPICE circuit files:
- `External_circuit.asc` — VCC GND circuit
- `Safe_Driving_Circuit.asc` — Protected version with feedback
- `Driving_Ciruit.asc` — Standard IR LED driver

### File Descriptions

- **nec_onlyFPGA.ipynb**: Main control interface for 24-channel transmission
- **IR_research.pdf**: Research in a topic
- **Own_IR_transmitter.xpr**: Vivado project (24-channel implementation)
- **Own_IR_receiver.xpr**: Vivado project (receiver reference design)

### License & Attribution

This project builds upon:
- PYNQ framework (Xilinx/University of Sydney)
- Arduino IDE & libraries (Arduino LLC)
- NEC IR protocol (reverse-engineered standard)

---

**Last Updated:** April 2026  
**Status:** Transmitter Stable | Receiver Under Development
