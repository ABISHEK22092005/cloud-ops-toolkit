# Cloud Ops Toolkit

![CI Pipeline](https://github.com/ABISHEK22092005/cloud-ops-toolkit/actions/workflows/ci.yml/badge.svg)

A lightweight system health monitoring toolkit for Linux environments, containerized with Docker and tested continuously using GitHub Actions.

## Features
- Collects real-time CPU, RAM, and disk utilization
- Identifies top memory-consuming processes
- Minimal footprint via Alpine Linux containerization
- Automated CI pipeline with ShellCheck linting and container smoke tests
- Published public container registry distribution via Docker Hub

## Quickstart

### Run via Docker Hub (No cloning required):
```bash
docker run --rm abishekn2005/cloud-ops-health:latest
```

### Build & Run Locally:
```bash
docker build -t cloud-ops-health:1.0 .
docker run --rm cloud-ops-health:1.0
```

### Run Script Directly:
```bash
chmod +x sys_health.sh
./sys_health.sh
```
