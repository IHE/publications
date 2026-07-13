# Establish Trust - Verifiable Health Links v1.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Establish Trust**

## Requirements: Establish Trust 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/VHL/Requirements/EstablishTrust | *Version*:1.0.0-comment |
| Active as of 2026-06-14 | *Computable Name*:EstablishTrust |

 
Before participating in any Verified Health Link (VHL) transactions, the [VHL Sharer](ActorDefinition-VHLSharer.md) and [VHL Receiver](ActorDefinition-VHLReceiver.md) SHALL establish a trust relationship based on shared acceptance of a designated [Trust Anchor](ActorDefinition-TrustAnchor.md). 
Trust is established by referencing and accepting public key material published and distributed in accordance with this specification ( via [Retrieve Trust List Response](Requirements-RespondtoRetrieveTrustListRequest.md)). 
All participants SHALL validate digital signatures using keys that are anchored in the agreed trust framework. 

