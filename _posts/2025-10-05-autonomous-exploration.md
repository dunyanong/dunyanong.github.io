---
title: "Frontier-Based Exploration in ROS, From Scratch"
description: "Frontier-based autonomous exploration in ROS (C++) from scratch: OctoMap, simulated LiDAR, frontier clustering, A* planning and fallback behaviours."
date: 2025-10-05 16:20:00 +0800
categories: [Projects]
tags: [exploration, ros, octomap, cpp]
mermaid: true
---

A pre-research exercise at the SJTU RAP Lab: build a complete autonomous exploration system in ROS (C++) without relying on the navigation stack. The robot is dropped into an unknown map and must keep choosing where to go next until nothing is left to explore. The method follows Yamauchi's frontier-based exploration ([CIRA 1997](https://doi.org/10.1109/CIRA.1997.613851)).

**Demo video:** [youtube.com/watch?v=MhtYzAHmc9I](https://www.youtube.com/watch?v=MhtYzAHmc9I)
**Code:** [github.com/dunyanong/exploration-preresearch](https://github.com/dunyanong/exploration-preresearch)

## System

```mermaid
flowchart LR
  P[World point cloud] --> M[Map builder<br/>OctoMap + simulated LiDAR]
  M --> G[Occupancy grid<br/>what the robot has seen]
  G --> E[Explorer<br/>frontiers → clusters → goal]
  E --> A[A* path finder<br/>on an inflated costmap]
  A --> L[Local planner]
  L --> O[Odometry manager<br/>ground robot or UAV]
  O --> M
```

- **Map builder.** Loads the world point cloud into an OctoMap and ray-casts a simulated LiDAR from the robot's pose. It publishes only the part of the map the robot has actually seen.
- **Explorer.** Marks free cells next to unknown cells as frontier cells, clusters neighbouring ones, discards clusters below a minimum size, and picks the nearest accessible cluster as the next goal.
  - Goals the robot fails to reach are blacklisted, so it doesn't keep retrying them.
  - If no frontier is reachable, it falls back to retreating or a random walk instead of stopping.
- **Path finder.** Runs A* on a costmap inflated around obstacles.
- **Local planner.** Follows the A* path.
- **Odometry manager.** Supports both a ground vehicle and a UAV model.

Exploration ends when no frontier clusters remain.

