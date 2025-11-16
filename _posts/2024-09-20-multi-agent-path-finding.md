---
title: "Multi-Agent Path Finding: Conflict-Based Search"
date: 2024-09-20 16:30:00 +0800
categories: [Projects, Robotics]
tags: [mapf, path planning, cbs, algorithms, robotics, opencv]
pin: true
image:
  path: /assets/img/dy04/mapf_toy.gif
  alt: Multi-Agent Path Finding Visualization
---

# Multi-Agent Path Finding: Conflict-Based Search

Implemented an efficient **Conflict-Based Search (CBS)** algorithm for Multi-Agent Path Finding, with an OpenCV-based animation system to visualize agent movements and path planning in grid-based environments.

![MAPF Animation](/assets/img/dy04/mapf_toy.gif)
_Real-time visualization of the CBS algorithm solving multi-agent pathfinding conflicts_

## Project Overview

In the multi-agent path finding problem (MAPF), paths should be found for several agents, each with a different start and goal position such that agents do not collide. This implementation provides a complete solution using the CBS algorithm with real-time visualization.

## Algorithm Implementation

### Conflict-Based Search (CBS)

CBS is a two-level algorithm that provides optimal solutions:

- **High Level**: Search performed on a tree based on conflicts between agents
- **Low Level**: Search performed for a single agent at a time
- **Advantage**: Examines fewer states than A* while maintaining optimality

## Demo Video

Watch the algorithm in action:

[![CBS MAPF Demo](https://img.youtube.com/vi/8sfq2VUD6cE/0.jpg)](https://www.youtube.com/watch?v=8sfq2VUD6cE)

## Research Background

This implementation is based on the seminal paper:

> **Conflict Based Search (CBS)** - Sharon, G., Stern, R., Felner, A., & Sturtevant, N. R. (2015). 
> "Conflict-based search for optimal multi-agent pathfinding." 
> *Artificial Intelligence*, 219, 40-66.

## Performance Results

- **Optimality**: Guaranteed optimal solutions
- **Efficiency**: Significant speedup over global A*-based approaches
- **Scalability**: Tested with multiple agents in various grid configurations
- **Real-time Visualization**: Smooth animation at 30+ FPS

## Technologies Used

- **Python**: Core implementation language
- **OpenCV**: Visualization and animation
- **NumPy**: Numerical computations
- **Matplotlib**: Additional plotting capabilities
- **Algorithm Design**: A*, CBS, conflict detection

## Repository

Explore the complete implementation with detailed documentation:

[View Project on GitHub](https://github.com/dunyanong/cbs-mapf-public)

**Credit**: RAP-Lab from SJTU for research guidance and algorithmic insights.

## Applications

This MAPF solution has applications in:
- **Warehouse Robotics**: Multiple robots navigating shared spaces
- **Autonomous Vehicles**: Coordinated vehicle routing
- **Game AI**: Strategic unit movement in real-time strategy games
- **Drone Swarms**: Coordinated multi-drone operations