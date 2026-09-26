# Cloud Ops Toolkit 🛡️

[![DevSecOps CI Pipeline](https://github.com/ABISHEK22092005/cloud-ops-toolkit/actions/workflows/ci.yml/badge.svg)](https://github.com/ABISHEK22092005/cloud-ops-toolkit/actions/workflows/ci.yml)
[![Docker Pulls](https://img.shields.io/docker/pulls/abishekn2005/cloud-ops-health?logo=docker&color=2496ED)](https://hub.docker.com/r/abishekn2005/cloud-ops-health)
[![Security Scanned](https://img.shields.io/badge/Security-Trivy%20%7C%20Gitleaks%20%7C%20Hadolint-brightgreen?logo=shield)](https://github.com/ABISHEK22092005/cloud-ops-toolkit/security/code-scanning)

A POSIX-compliant Linux infrastructure health monitoring utility built with automated containerization, continuous integration, and automated DevSecOps security scanning.

---

## 🔒 DevSecOps Architecture & Security Controls

Every commit and pull request runs through automated static and dynamic security quality gates:

```text
[ Git Push ]
     │
     ├── 1. Secret Detection (Gitleaks) ──────────> Scans commit diffs for leaked credentials
     ├── 2. Script SAST (ShellCheck)    ──────────> Enforces POSIX compliance & syntax safety
     ├── 3. Dockerfile Lint (Hadolint)  ──────────> Enforces container security best practices
     ├── 4. Image CVE Scan (Aqua Trivy) ──────────> Scans OS & package libraries for CVEs
     ├── 5. Security Ingestion (SARIF)  ──────────> Uploads findings to GitHub Security Tab
     └── 6. Runtime Verification        ──────────> Runs container as restricted non-root appuser

Security DomainToolGate PolicySecret DetectionGitleaks v8Rejects commits containing hardcoded secrets/tokensSAST (Shell)ShellCheckBlocks unsafe parameter expansions and POSIX deviationsContainer LintingHadolintValidates image instructions against CIS benchmarksVulnerability ScanningAqua TrivyBlocks builds on CRITICAL CVEs & outputs SARIFRuntime HardeningDocker Non-RootExecutes runtime processes as unprivileged appuser🚀 Quick StartRun with DockerPull and run the pre-built, hardened image directly from Docker Hub:Bashdocker run --rm abishekn2005/cloud-ops-health:latest
Run LocallyBashchmod +x sys_health.sh
./sys_health.sh
📦 Automated Release PipelinePushing a semver tag triggers the automated CD pipeline to package and push multi-tag releases to Docker Hub:Bashgit tag v1.0.2
git push origin v1.0.2

---

### Step 3: Save and Sync Locally

1. Click the green **Commit changes...** button at the top right of the GitHub editor.
2. Click **Commit changes** in the pop-up modal.
3. In your WSL terminal, pull down the clean update so your local directory matches GitHub:

```bash
git pull origin main
