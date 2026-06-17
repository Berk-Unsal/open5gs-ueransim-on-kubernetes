# Architecture

The system is organized around a Kubernetes namespace that hosts the Open5GS core, the UERANSIM simulation components, and the MongoDB data store used for subscriber bootstrap.

## Core components

The Open5GS deployment includes these network functions:

- NRF for service registration and discovery
- AMF for access and mobility management
- SMF for session management
- UPF for user-plane forwarding
- AUSF for authentication
- UDM for subscriber data management
- UDR for repository access

The supporting components are:

- MongoDB for subscriber and context data
- UERANSIM gNB as the simulated radio access node
- UERANSIM UE as the simulated user device

## Protocols and ports

| Component | Role | Protocol | Port |
| --- | --- | --- | --- |
| NRF | Service registry | HTTP SBI | 7777 |
| AMF | Access and mobility management | HTTP, SCTP NGAP | 7777, 38412 |
| SMF | Session management | HTTP | 7777 |
| UPF | User-plane forwarding | PFCP, GTP-U | 8805, 2152 |
| AUSF | Authentication | HTTP | 7777 |
| UDM | Subscriber data management | HTTP | 7777 |
| UDR | Repository access | HTTP, MongoDB | 7777 |

## Workflow

1. The gNB registers with AMF over NGAP on SCTP.
2. AMF consults NRF and the subscriber services during registration.
3. SMF establishes a session and coordinates with UPF.
4. UE registration is confirmed by the logs produced by the cluster components.

## Diagram source

The repository diagram source lives in diagrams/pods-services.mmd at the repository root.