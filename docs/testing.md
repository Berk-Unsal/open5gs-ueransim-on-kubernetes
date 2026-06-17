# Testing

The repository includes a focused test suite that validates the Helm chart structure and the presence of the key network markers required by the deployment.

## Coverage

The tests check that:

- all required chart files exist
- the expected configuration sections are present
- all major Open5GS and UERANSIM components are templated
- critical networking ports and protocols are declared
- the host networking toggle for the RAN is present

## Run locally

```bash
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements-dev.txt
python3 -m pytest -q
```

## Validation goal

The purpose of the tests is not to exercise a live cluster. Instead, they guard the chart shape, configuration completeness, and network assumptions that the Helm templates rely on.