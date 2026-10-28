---
title: "A*STAR ARTC: Removing a Robot Arm From Its Own Point Cloud"
description: "Removing a UR16e robot arm from its own point cloud with PointNet and forward kinematics at A*STAR ARTC: 98.79% accuracy, 98% IoU."
date: 2025-08-15 12:00:00 +0800
categories: [Industry]
tags: [point-cloud, pointnet, pytorch, pcl, kinematics]
image:
  path: /assets/img/experience/astar-artc-team.jpg
  alt: Interns at the A*STAR Advanced Remanufacturing and Technology Centre
---

Robotics and AI intern at the **A*STAR Advanced Remanufacturing and Technology Centre (ARTC)**, May to August 2025, working on scene understanding for human–robot collision avoidance around a UR16e robot arm. This is a high-level summary only.

## The problem

To keep people safe around a robot arm, a camera watches the workspace. But the arm also appears in its own camera view. Before the system can reason about people and obstacles, it has to separate the arm's own points from the rest of the scene.

## What I did

- Designed and deployed scene-understanding algorithms on ZED 2i stereo camera point clouds.
- Developed a PointNet (PyTorch) semantic segmentation model for robot occlusion removal, trained on a custom 583-sample dataset.
- Applied forward and inverse kinematics to generate UR16e arm meshes and align them with the point cloud data, using the Point Cloud Library (PCL).

## Results

- **98.79% test accuracy** and **98% IoU** for the segmentation model.
