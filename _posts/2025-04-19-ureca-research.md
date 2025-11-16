---
title: "URECA Research: Wireless Motor System for Robotics"
date: 2025-04-19 15:30:00 +0800
categories: [Research, Robotics]
tags: [ureca, research, wireless power transfer, motor control, simulink, ntu]
image:
  path: /assets/img/dy04/avatar.jpg
  alt: Wireless Motor System Research
---

# URECA Research: Wireless Motor System for Robotics

**URECA** (Undergraduate Research Experience on CAmpus) is a university-wide undergraduate research programme established in 2004 to cultivate a research culture and nurture research capabilities early in undergraduates' university education.

![Research Profile](/assets/img/dy04/avatar.jpg)
_Ready to tackle new challenges in robotics and wireless power systems research_

## Research Overview

**Title**: Design of a Wireless Motor System for Robotics  
**Duration**: August 2024 - May 2025 (10 months)  
**Supervisor**: Prof. Christopher H. T. Lee  
**Achievement**: Awarded **President's Research Scholar**

![NTU Research Environment](/assets/img/dy04/gallery/ntueee.jpeg)
_Conducting research at NTU's School of Electrical and Electronic Engineering_

## Project Abstract

Permanent Magnet Synchronous Motors (PMSMs) are extensively employed in robotics and electric vehicle applications due to their high efficiency and operational reliability. Conventional wired motor systems, however, encounter limitations such as mechanical wear and restricted design flexibility. 

This study presents a comprehensive simulation model of a **wireless power transfer (WPT)** system employing inductive coupling with a **Series-Series (S-S) coil topology**, coupled with **Sinusoidal Pulse Width Modulation (SPWM)** for precise control of motor speed and torque.

## Technical Implementation

### System Architecture

The modelled system encompasses:
- **DC Power Supply**: Primary power source
- **High-Frequency Inverter**: Power conversion for efficient transmission
- **Transmitting and Receiving Coils**: Inductive coupling for wireless energy transfer
- **Rectifier**: AC to DC conversion at receiver end
- **Motor Inverter**: Drives the PMSM with precise control

### Wireless Power Transfer (WPT) System

#### Key Features
- **Inductive Coupling**: No physical contact required between transmitter and receiver
- **Series-Series Topology**: Optimal for motor drive applications
- **High Efficiency**: Minimized power losses during transmission
- **Flexible Design**: Enhanced mechanical flexibility for robotic systems

#### Coil Design Considerations
- **Optimal Coupling**: Maximized magnetic flux linkage
- **Frequency Selection**: High-frequency operation for compact design
- **Safety Standards**: Compliance with electromagnetic emission regulations

### Sinusoidal Pulse Width Modulation (SPWM)

#### Control Algorithm Features
- **Precise Speed Control**: Accurate motor speed regulation
- **Torque Management**: Fine-tuned torque output control
- **Efficiency Optimization**: Minimized switching losses
- **Harmonic Reduction**: Improved motor performance and reduced noise

#### Implementation Details
```matlab
% SPWM Control Logic
function pwm_signals = spwm_control(reference_speed, feedback_speed)
    % Speed error calculation
    speed_error = reference_speed - feedback_speed;
    
    % PI controller for speed regulation
    control_output = pi_controller(speed_error);
    
    % SPWM signal generation
    pwm_signals = generate_spwm(control_output);
end
```

## Simulation Results

### Performance Metrics
- **Energy Transfer Efficiency**: > 85% across operating range
- **Speed Regulation**: ±2% accuracy under varying loads
- **Torque Ripple**: < 5% for smooth operation
- **Power Factor**: > 0.95 for optimal energy utilization

### Load Condition Testing
- **No Load**: Stable operation with minimal power consumption
- **Rated Load**: Optimal efficiency and performance characteristics
- **Overload Conditions**: Robust operation with protection mechanisms

## Research Impact

### Advantages for Robotics
- **Enhanced Durability**: Elimination of mechanical wear from cable connections
- **Design Flexibility**: Freedom in joint and actuator placement
- **Maintenance Reduction**: Fewer failure points and wear components
- **Safety Improvement**: No exposed electrical connections

### Applications
- **Industrial Robots**: Joint actuators in manufacturing systems
- **Medical Robotics**: Sterile environments requiring contactless power
- **Autonomous Vehicles**: Charging systems for electric vehicles
- **Aerospace**: Satellite and space station applications

## Learning Experience

### Research Skills Developed
- **Literature Review**: Comprehensive study of WPT technologies
- **Mathematical Modeling**: System analysis and optimization
- **Simulation Expertise**: Advanced MATLAB/Simulink proficiency
- **Technical Writing**: Research documentation and presentation

### Personal Reflection
> "Great beginner experience for research. I did not have much contribution initially, but it gave me a taste of how research works and sparked my interest in pursuing advanced studies."

This experience provided foundational understanding of:
- **Research Methodology**: Systematic approach to problem-solving
- **Academic Rigor**: Attention to detail and thorough analysis
- **Innovation Process**: From concept to implementation
- **Collaboration**: Working with faculty and research teams

## Technical Skills Gained

### Software Proficiency
- **MATLAB/Simulink**: Advanced modeling and simulation
- **Signal Processing**: Digital control system design
- **Data Analysis**: Performance evaluation and optimization
- **Documentation**: Technical report writing and presentation

### Engineering Concepts
- **Power Electronics**: Inverter and rectifier design
- **Control Systems**: Feedback control and stability analysis
- **Electromagnetic Theory**: Inductive coupling and magnetic field analysis
- **Motor Drives**: PMSM control and operation principles

## Future Directions

### Potential Improvements
- **Higher Efficiency**: Advanced coil designs and materials
- **Increased Range**: Extended transmission distance capabilities
- **Multi-Motor Systems**: Simultaneous control of multiple actuators
- **Real-time Adaptation**: Dynamic optimization based on operating conditions

### Research Extensions
- **Hardware Implementation**: Physical prototype development
- **Experimental Validation**: Real-world testing and verification
- **Cost Analysis**: Economic feasibility assessment
- **Standards Development**: Contributing to industry guidelines

## Publications and Documentation

**Research Report**: [Design of a Wireless Motor System for Robotics](https://drive.google.com/file/d/1s8v6ckISs2bc2-xwGYKxjjfK_yRfn7R-/view?usp=sharing)

The comprehensive report includes:
- Detailed mathematical models
- Simulation results and analysis
- Performance comparisons
- Future research recommendations

## Acknowledgments

Special thanks to:
- **Prof. Christopher H. T. Lee**: Excellent guidance and mentorship
- **NTU EEE School**: Providing research opportunities and resources
- **URECA Programme**: Supporting undergraduate research initiatives
- **Research Team**: Collaborative learning environment

This research experience laid the foundation for my continued interest in robotics, power systems, and advanced control techniques, ultimately leading to my current research position at Shanghai Jiao Tong University.

## Skills Acquired

- **Research Skills**: Systematic investigation and analysis
- **Signal Processing**: Advanced mathematical techniques
- **Simulink**: Professional-level modeling capabilities
- **Technical Communication**: Research presentation and documentation