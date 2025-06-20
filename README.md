# Emperor SoC

## Introduction
Emperor SoC is an open-source prototyping platform that contains both RTL hardware design as well as C drivers. It can be used in both industrial and academic settings.

It contains a MicroBlaze RISC-V softcore CPU and the following 4 sub-systems:

1. MMIO Peripheral Subsystem
2. Video Subsystem
3. NetStream Subsystem
4. ComputeAccel Subsystem

The communcation between each module and subsystem is based on AXI protocol.

## Memory Allocation
Each address is 32 bit:
`46sm_rrrr`

Where

- `46` is the Main Bus identification address (used to identify valid transactions)
- `s` is subsystem identification number (0, 1, 2, 3)
- `m` is module identification number within a subsystem
- `r` is register address within a module

## File Organzation

```txt
project/
├── hardware/
│   ├── emperor.gen/sources_1/bd/top/hdl
│   │   ├── top_wrapper.v
│   ├── subsystems
│   |   ├── MMIO
│   │   ├── Video
│   │   ├── NetStream
│   │   ├── ComputeAccel
│   └── top.xsa
├── software/
│   └── config.h
├── io_map.h
│   
└── README.md
```