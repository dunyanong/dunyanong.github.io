---
title: "Conflict-Based Search for Multi-Agent Path Finding, From Scratch in C++"
description: "Conflict-Based Search (CBS) for multi-agent path finding in C++ from scratch: Dijkstra, A*, space-time A*, MovingAI benchmarks and OpenCV animation."
date: 2025-05-20 16:30:00 +0800
categories: [Projects]
tags: [mapf, search, cpp]
image:
  path: /assets/img/projects/cbs/toy.gif
  alt: CBS solving a small multi-agent path finding instance
---

My first project at the SJTU RAP Lab, written before starting on [VADER, multi-robot navigation in unknown environments](/posts/vader/). The goal was to understand multi-agent path finding by building the whole stack myself: graph search, the conflict-based solver, map parsing and visualisation.

In multi-agent path finding (MAPF), each agent has its own start and goal on a shared graph, and the agents must not occupy the same vertex or swap across the same edge at the same time.

## What's in it

- **Single-agent search:** Dijkstra, A*, and space-time A*, where states carry a time step so an agent can wait.
- **Conflict-Based Search** ([Sharon et al., 2015](https://doi.org/10.1016/j.artint.2014.11.006)), which works on two levels:
  - The **low level** plans each agent alone with space-time A*.
  - The **high level** searches a tree of constraints. When two agents' paths conflict, it splits into two children, each forbidding one agent from the conflicting vertex or edge at that time step. It returns the optimal solution under the sum-of-costs objective.
- **MovingAI benchmark parsers** for `.map` and `.scen` files, so the solver runs on standard instances.
- **OpenCV animation** that replays the solved paths step by step.
- Unit tests for each search and the parsers, built with CMake.

![CBS on the arena map](/assets/img/projects/cbs/arena.gif)
_CBS on a larger arena map. Agents wait or detour exactly where their paths would otherwise conflict._

**Demo video:** [youtube.com/watch?v=8sfq2VUD6cE](https://www.youtube.com/watch?v=8sfq2VUD6cE)
**Code:** [github.com/dunyanong/conflict-based-search](https://github.com/dunyanong/conflict-based-search)

## Why it mattered

CBS assumes the map is known and the plan is executed exactly. VADER drops both assumptions: robots discover the map as they go, and they only coordinate when they meet. That work still uses a CBS variant (CBS-AA) at its core, on a graph the robots build together.
