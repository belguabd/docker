# Inception Project

## Overview

The Inception project is a part of the 1337 School curriculum. Its main goal is to teach students how to use Docker to create a secure and scalable infrastructure. Students learn to:

1. **Use Docker**: Understand containerization to run applications consistently across environments.
2. **Set Up Multi-Service Systems**: Deploy services like WordPress and databases that work together.
3. **Automate Infrastructure**: Use Docker Compose to manage applications with configuration files.

### What is Docker?

Docker is a platform that packages applications and their dependencies into containers, ensuring they run the same way everywhere.

### How Docker Works

1. **Images**: Blueprints for creating containers.
2. **Containers**: Isolated environments running applications.
3. **Dockerfile**: Instructions to build images.
4. **Docker Compose**: A tool to manage multiple containers in one setup (`docker-compose.yml`).
![alt text](https://github.com/belguabd/inception/blob/main/inception.svg)

## Prerequisites

- Docker installed on your system
- Docker Compose installed on your system

## Makefile Commands

The project includes a `Makefile` to streamline usage. Below are the available commands:

### Commands

#### `make up`

Starts the Docker containers using the `docker-compose.yml` file located in `srcs/`.

Usage:

```bash
make up
```

#### `make down`

Stops and removes the containers, including volumes and orphan containers.

Usage:

```bash
make down
```

#### `make build`

Creates necessary directories for WordPress and the database, then builds the Docker images.

Usage:

```bash
make build
```

## Directory Structure

```
project_root/
├── Makefile
├── srcs/
│   └── docker-compose.yml
├── /home/belguabd/data/
│   ├── wp/
│   └── db/
```

## How to Use

1. Clone the repository:
   ```bash
   git clone <repository_url>
   cd <repository_name>
   ```
2. Build the project:
   ```bash
   make build
   ```
3. Start the containers:
   ```bash
   make up
   ```
4. Stop and clean up:
   ```bash
   make down
   ```


