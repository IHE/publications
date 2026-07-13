# Request VHL Documents - Verifiable Health Links v1.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Request VHL Documents**

## Requirements: Request VHL Documents 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/VHL/Requirements/RequestVHLDocuments | *Version*:1.0.0-comment |
| Active as of 2026-06-14 | *Computable Name*:RequestVHLDocuments |

 
The [VHL Receiver](ActorDefinition-VHLReceiver.md) SHALL initiate a request to retrieve a set of health documents from a [VHL Sharer](ActorDefinition-VHLSharer.md), using a previously received and validated Verified Health Link (VHL). 
Both the Receiver and Sharer SHALL validate each other's participation in the trust network using PKI material published by the [Trust Anchor](ActorDefinition-TrustAnchor.md). 
**Optional behaviors:** 
* The VHL Sharer MAY record an audit event documenting the access request by the Receiver, in accordance with the [Audit Event – Received Health Data](Requirements-AuditEventReceived.md) requirement.
* This transaction MAY be conducted over a secure channel, as defined in the [Audit Trail and Node Authentication (ATNA)](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html#9.1) Profile.
 

