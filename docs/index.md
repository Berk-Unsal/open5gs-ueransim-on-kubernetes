# Open5GS + UERANSIM on Kubernetes

This project deploys a containerized 5G core network and radio access simulation onto Kubernetes with Helm.

It combines the main elements described in the repository README and the deployment report:

- Open5GS network functions deployed as Kubernetes resources
- UERANSIM gNB and UE for end-to-end registration validation
- MongoDB-backed subscriber bootstrap and verification scripts
- A diagram and test suite to keep the deployment reproducible

## What is included

- Helm chart: `helm/open5gs-ueransim`
- Automation scripts: `scripts/`
- Validation tests: `tests/`
- Architecture diagram source: `diagrams/pods-services.mmd`
- Deployment report: `REPORT.md`

## Quick start

1. Create a virtual environment and install the development dependencies.
2. Build the docs locally with `python3 -m mkdocs build`.
3. Preview the site with `python3 -m mkdocs serve`.

## Where to look next

- Read [Architecture](architecture.md) for the component layout and network flow.
- Read [Deployment](deployment.md) for the Helm and script workflow.
- Read [Testing](testing.md) for the automated validation strategy.
- Read [Report](report.md) for the condensed project report.