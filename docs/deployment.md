# Deployment

The deployment is Helm-driven and designed to be repeatable from a clean Kubernetes cluster.

## Main flow

1. Install or upgrade the Helm release for the `open5gs-ueransim` chart.
2. Wait for MongoDB and the core network functions to become ready.
3. Run the subscriber bootstrap job.
4. Verify that gNB and UE complete registration.

## Key scripts

- `scripts/quickstart.sh` performs a clean deployment and readiness check.
- `scripts/deploy.sh` handles the deployment flow.
- `scripts/check_registration.sh` inspects logs and registration status.
- `scripts/teardown.sh` removes the deployment.
- `scripts/render_manifests.sh` renders Kubernetes manifests from the Helm chart.

## Configuration

Default values are summarized in [Configuration](configuration.md).

Important knobs include:

- container image references
- subscriber IMSI, key, OPC, slice, and DNN values
- host networking for the RAN components
- resource requests and limits

## Local run

Use the existing quick start path for the shortest validation cycle:

```bash
bash scripts/quickstart.sh
```