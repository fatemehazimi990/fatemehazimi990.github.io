---
layout: post
title: "Diffusion-based Image Editing - Part I"
date: 2025-05-25
categories: blog
---
## Introduction

In this post, I will summarize a collection of papers on image editing with diffusion models. This is intended to be a high-level overview, providing a sense of where the field currently stands, how it has evolved, and what kinds of methods researchers are exploring. This blog focuses more on the application side and assumes familiarity with diffusion models and conditional image generation.

To motivate the problem, controlling what a generative model produces is still a significant challenge. Diffusion models have introduced an unprecedented level of control compared to earlier approaches, but the process is far from perfect. You might generate an image, attempt a minor change, and find that the entire scene shifts just because you slightly adjusted the prompt.

There has been considerable effort toward enabling more precise and user-friendly image editing methods that are more targeted and stable. In this post, I aim to tell the story of how these techniques have rapidly evolved over the last few years.

📄 [**View on nbviewer**](https://nbviewer.org/github/fatemehazimi990/fatemehazimi990.github.io/blob/source/notebook/MyNewTopic.ipynb)

