# Configuration

The chart defaults live in the Helm values file at the repository root. This page summarizes the knobs that matter most when deploying or customizing the lab.

## Main sections

- `images` for Open5GS, UERANSIM, and MongoDB image references
- `subscriber` for IMSI, keys, OPC, slice, and DNN values
- `network` for host networking behavior on the RAN side
- `resources` for CPU and memory requests and limits

## Typical adjustments

The most common customizations are:

- changing the IMSI and authentication material for a different UE profile
- toggling host networking for the gNB and UE pods
- swapping container images for cluster-specific registries
- tuning resource limits for smaller local clusters

## Usage pattern

Apply values overrides through Helm when deploying the chart, or adjust the defaults in the chart values file before packaging the release.