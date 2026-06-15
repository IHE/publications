# Initiate Submit PKI Material Request - Verifiable Health Links v1.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Initiate Submit PKI Material Request**

## Requirements: Initiate Submit PKI Material Request 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/VHL/Requirements/InitiateSubmitPKIMaterialRequest | *Version*:1.0.0-comment |
| Active as of 2026-06-14 | *Computable Name*:InitiateSubmitPKIMaterialRequest |

 
When a [VHL Sharer](ActorDefinition-VHLSharer.md) or [VHL Receiver](ActorDefinition-VHLReceiver.md) generates a new public-private key pair for use within the VHL trust network, they SHALL submit the corresponding public key material to the [Trust Anchor](ActorDefinition-TrustAnchor.md) for validation and inclusion in the trust list. 
The submission MAY include metadata to support categorization of key usage (e.g., digital signatures, encryption, secure channels) and business or operational context. 

