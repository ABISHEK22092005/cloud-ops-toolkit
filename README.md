# Cloud Ops Toolkit

![CI Pipeline](https://github.com/ABISHEK22092005/cloud-ops-toolkit/actions/workflows/ci.yml/badge.svg)

A lightweight system health monitoring toolkit for Linux environments, containerized with Docker and tested continuously using GitHub Actions.

## Features
- Collects real-time CPU, RAM, and disk utilization
- Identifies top memory-consuming processes
- Minimal footprint via Alpine Linux containerization
- Automated CI pipeline with ShellCheck linting and container smoke tests

## Quickstart

### Run with Docker:
```bash
docker build -t cloud-ops-health:1.0 .
docker run --rm cloud-ops-health:1.0
```

### Run Locally:
```bash
chmod +x sys_health.sh
./sys_health.sh
```
