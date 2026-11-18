---
title: "URECA: A Wireless Motor Drive for Robot Joints"
description: "URECA research at NTU: a simulated wireless power transfer link driving a PMSM with SPWM control for robot joints. President's Research Scholar."
date: 2024-08-19 15:30:00 +0800
categories: [Research]
tags: [wireless-power-transfer, motor-control, simulation]
mermaid: true
---

Undergraduate research at NTU under the URECA programme, August 2024 to May 2025, supervised by Prof. Christopher H. T. Lee. I was named a **President's Research Scholar** for this work.

## The problem

Robot joints and rotating stages carry power through cables or slip rings. These wear out, limit how far a joint can rotate, and add failure points. The question was whether a permanent-magnet synchronous motor (PMSM) could be powered across an air gap instead.

## The system

I built a simulation model of the full power path:

```mermaid
flowchart LR
  DC[DC supply] --> HF[High-frequency inverter] --> TX[Transmitter coil]
  TX -. inductive coupling .-> RX[Receiver coil]
  RX --> R[Rectifier] --> MI[Motor inverter] --> PMSM[PMSM]
  C[Speed controller + SPWM] --> MI
```

- **Wireless power transfer:** inductive coupling with a series–series compensated coil pair.
- **Motor control:** sinusoidal pulse-width modulation (SPWM) on the motor inverter, regulating speed and torque.
- **Testing:** the model was run under no-load and loaded conditions.

## Reflection

This was my first research project. I didn't contribute much at the start, but it gave me a taste of how research works and sparked my interest in pursuing advanced studies.
