# Initiate Retrieve Trust List Request - Verifiable Health Links v1.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Initiate Retrieve Trust List Request**

## Requirements: Initiate Retrieve Trust List Request 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/VHL/Requirements/InitiateRetrieveTrustListRequest | *Version*:1.0.0-comment |
| Active as of 2026-06-14 | *Computable Name*:InitiateRetrieveTrustListRequest |

 
A [VHL Sharer](ActorDefinition-VHLSharer.md) or [VHL Receiver](ActorDefinition-VHLReceiver.md), as a participant in the trust network, SHALL be capable of retrieving public key infrastructure (PKI) material from a designated [Trust Anchor](ActorDefinition-TrustAnchor.md). 
The retrieved material MAY include: 
* Public key certificates and associated trust lists
* Certificate revocation data (e.g., CRLs, OCSP responses)
* Metadata used to: 
* Validate digital signatures on VHLs and related resources
* Establish secure connections
* Decrypt content protected via asymmetric encryption
 
 
Participants SHOULD cache the received trust list to reduce network and server load. 
**Preconditions:** 
* The requesting participant knows in advance the endpoint from which to retrieve PKI material, as published or distributed by the Trust Anchor.
 

