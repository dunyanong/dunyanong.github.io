---
title: "Hyundai: Camera Obstacle Detection for 2D-LiDAR Blind Spots"
description: "Depth-camera obstacle detection covering 2D-LiDAR blind spots on mobile robots at Hyundai HMGICS: near-100% detection, zero false positives, >15 Hz on CPU."
date: 2026-05-20 12:00:00 +0800
categories: [Industry]
tags: [rgb-d, slam, nav2, perception]
image:
  path: /assets/img/experience/hmgics-team.jpg
  alt: Interns at Hyundai Motor Group Innovation Center Singapore
---

Robotics SLAM intern at **Hyundai Motor Group Innovation Center Singapore (HMGICS)**, January to May 2026, working on perception and localisation for autonomous mobile robots. This is a high-level summary only; the technical details are confidential.

## The problem

The mobile robots navigate with a 2D LiDAR, which only sees a single horizontal plane. Obstacles above or below that plane are invisible to it. The goal was to cover these blind spots with depth cameras, in real time, on the robot's CPU.

## What I did

- Researched real-time camera-based obstacle detection using Orbbec Gemini 2 and Femto Bolt depth cameras, to cover the 2D LiDAR's blind spots on the CPU.
- Worked on Cartographer SLAM, AMCL localisation and Nav2 for autonomous navigation testing, and reported trade-off analyses to Hyundai's Korea headquarters.

## Results

- **Nearly 100% obstacle detection success with zero false positives** across different floor conditions.
- **Over 15 Hz on CPU only.**
