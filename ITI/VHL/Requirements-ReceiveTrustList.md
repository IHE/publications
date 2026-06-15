# Receive Trust List - Verifiable Health Links v1.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Receive Trust List**

## Requirements: Receive Trust List 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/VHL/Requirements/ReceiveTrustList | *Version*:1.0.0-comment |
| Active as of 2026-06-14 | *Computable Name*:ReceiveTrustList |

 
A [VHL Sharer](ActorDefinition-VHLSharer.md) or [VHL Receiver](ActorDefinition-VHLReceiver.md), after receiving PKI material from a [Trust Anchor](ActorDefinition-TrustAnchor.md), SHALL validate and process the trust information for subsequent cryptographic operations. 
Participants SHOULD: 
* Cache the received trust list or certificate material to reduce network and server load
* Validate digital signatures or trust paths before use in VHL validation or secure channel sessions
* Monitor certificate expiration or revocation status where applicable
 

