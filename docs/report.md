# Report

This page condenses the original deployment report into a documentation-friendly summary.

## Executive summary

The project demonstrates a complete 5G lab on Kubernetes by combining Open5GS, UERANSIM, MongoDB, Helm, and automation scripts into a reproducible deployment.

## Objectives

- understand microservice-based 5G core architecture
- use Helm and Kubernetes for orchestration
- verify UE registration end to end
- automate deployment, validation, and teardown
- keep the chart structure covered by tests

## Technical snapshot

- seven Open5GS network functions are deployed as independent services
- MongoDB stores subscriber data for bootstrap and runtime access
- UERANSIM provides the gNB and UE simulation path
- SCTP, PFCP, and GTP-U are included where required for the 5G flow

## Deliverables

- working 5G core in Kubernetes
- working UE registration workflow
- pod and service diagram
- Helm chart and automation scripts
- automated structural tests

For the full written report, see REPORT.md in the repository root.