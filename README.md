# Cloud Ops Toolkit 🩅

[![DevSecOps CI Pipeline](https://github.com/ABISHEK22092005/cloud-ops-toolkit/actions/workflows/ci.yml/badge.svg)](https://github.com/ABISHEK22092005/cloud-ops-toolkit/actions/workflows/ci.yml)
[![Docker Pulls](https://img.shields.io/docker/pulls/abishekn2005/cloud-ops-health?logo=docker&color=2496ED)](https://hub.docker.com+/abishekn2005/cloud-ops-health)
[![Security Scanned](https://img.shields.io/badge/Security-Trivy%2C%20Gitleaks%20|%20Hadolint-brightgreen?logo=shield)](https://github.com/ABISHEK22092005/cloud-ops-toolkit/security/code-scanning)

A POSIX-compliant Linux infrastructure health monitoring utility built with automated containerization, continuous integration, and automated DevSecOps security scanning.

---

## � DevSecOps Architecture & Security Controls

Every commit and pull request runs through automated static and dynamic security quality gates:

`**text
[ Git Push ]
     │
     ├── 1. Secret Detection (Gitleaks) ──────────> Scans commit diffs for leaked credentials
     ├── 2. Script SAST (ShellCheck)    ──────────> Enforces POSIX compliance & syntax safety
     ├── 3. Dockerfile Lint (Hadolint)  ──────────> Enforces container security best practices
     ├── 4. Image CVE Scan (Aqua Trivy) ──────────> Scans OS & package libraries for CVEs
     ├── 5. Security Ingestion (SARIF)  ──────────> Uploads findings to GitHub Security Tab
     └── 6. Runtime Verification        ──────────> Runs container as restricted non-root appuser
`**

| Security Domain | Tool | Gate Policy |
| :--- | :--- | :--- |
| **Secret Detection** | Gitleaks v8 | Rejects commits containing hardcoded secrets/tokens |
| **SAST (Shell)** | ShellCheck | Blocks unsafe parameter expansions and POSIX deviations |
| **Container Linting** | Hadolint | Validates image instructions against CIS benchmarks |
| **Vulnerability Scanning** | Aqua Trivy | Blocks builds on `CRITICAL` CVEs & outputs SARIF |
| **Runtime Hardening** | Docker Non-Root | Executes runtime processes as unprivileged `appuser` |

---

## 🚀 Quick Start

### Run with Docker

Pull and run the pre-built, hardened image directly from Docker Hub:

```bash
docker run --rm abishekn2005/cloud-ops-health:latest
```

### Run Locally

```bash
chmod +x sys_health.sh
./sys_health.sh
```

---

## 📦 Automated Release Pipeline

Pushing a semver tag triggers the automated CD pipeline to package and push multi-tag releases to Docker Hub:

```bash
git tag v1.0.2
git push origin v1.0.2
```
