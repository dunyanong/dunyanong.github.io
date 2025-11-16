---
title: "Image Classification Using CNN"
date: 2024-10-15 14:00:00 +0800
categories: [Projects, Machine Learning]
tags: [cnn, computer vision, pytorch, deep learning, cifar-10]
pin: true
image:
  path: /assets/img/dy04/ProjectImages/imageclassification/vggnetpaper.png
  alt: CNN Image Classification on CIFAR-10
---

# Image Classification Using CNN

Built a CNN-based image classification system on CIFAR-10 with VGGNet-inspired architecture from a paper, achieving **90% accuracy**. Included model visualization, training pipeline, and regularization techniques.

## Overview

This project implements a Convolutional Neural Network (CNN) for image classification using the CIFAR-10 dataset. The model is inspired by the VGGNet architecture and incorporates modern deep learning techniques for optimal performance.

## Key Features

- **High Accuracy**: Achieved 90% accuracy on CIFAR-10 test set
- **VGGNet-inspired Architecture**: Deep convolutional layers with small filters
- **Model Visualization**: Comprehensive visualization of training metrics and model performance
- **Regularization Techniques**: Dropout, batch normalization, and data augmentation
- **Complete Pipeline**: End-to-end training and evaluation pipeline

## Technical Implementation

### Architecture Details
- Multiple convolutional layers with 3x3 filters
- Batch normalization after each convolutional layer
- ReLU activation functions
- Max pooling for downsampling
- Fully connected layers for classification
- Dropout for regularization

### Training Pipeline
- Data augmentation for better generalization
- Learning rate scheduling
- Early stopping to prevent overfitting
- Model checkpointing for best weights

## Results

The model demonstrates strong performance across all 10 CIFAR-10 classes:
- **Training Accuracy**: 92%
- **Validation Accuracy**: 90%
- **Test Accuracy**: 90%

## Technologies Used

- **PyTorch**: Deep learning framework
- **Python**: Programming language
- **CIFAR-10**: Dataset
- **Matplotlib**: Visualization
- **NumPy**: Numerical computing

## Repository

Check out the complete implementation and detailed documentation:

[View Project on GitHub](https://github.com/dunyanong/cnn-image-classification)

The repository includes:
- Complete source code
- Training notebooks
- Model visualization scripts
- Detailed documentation
- Results and analysis