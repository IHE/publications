# Retrieve Trust List Response - Verifiable Health Links v1.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Retrieve Trust List Response**

## Requirements: Retrieve Trust List Response 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/VHL/Requirements/RespondtoRetrieveTrustListRequest | *Version*:1.0.0-comment |
| Active as of 2026-06-14 | *Computable Name*:RetrieveTrustListResponse |

 
Upon receipt of Retrieve Trust List Request from a [VHL Sharer](ActorDefinition-VHLSharer.md) or [VHL Receiver](ActorDefinition-VHLReceiver.md), the [Trust Anchor](ActorDefinition-TrustAnchor.md) SHALL organize, sign, and expose the PKI material as part of a trusted, canonical trust list. 
This MAY include: 
* Public key certificates, trust chains, or JWKS structures
* Revocation data (CRL or OCSP)
* Usage metadata (e.g., key type, scope, intended usage)
 
The Trust Anchor SHALL only respond with validated and trustworthy material in accordance with the governance policies of the VHL trust framework. This signed trust list enables all participants in the VHL trust network to verify digital signatures and establish secure connections in accordance with the governance policies of the Trust Anchor. 
Upon receipt of this response, participants SHALL process the trust list as described in [Receive Trust List](Requirements-ReceiveTrustList.md). 

