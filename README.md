# riipeckx/node

## Description

This repository contains a Dockerfile that extends the official Node.js image to create a custom image tailored to my specific needs. This image is designed to fit my personal taste of what a base image should be.

## Introduction

### Purpose

The primary goal of this project is to provide a pre-configured and optimized Node.js Docker image for personal specific use cases, e.g., "developing and deploying Node.js applications. This image eliminates the need for manual environment setup, saving time and effort.

### Technologies Used

* Docker: For creating and managing containers.
* Node.js: JavaScript runtime environment.

### Installation

#### Prerequisites

Docker installed and running.

Clone the repository:

```bash
git clone https://github.com/riipeckx/node.git
```

Build the image:

```bash
cd node
make build
```

#### Usage

Running a container:

```bash
# This will build then run a container based on fresh built image
make dev
```

## License

[MIT License](./LICENSE)
