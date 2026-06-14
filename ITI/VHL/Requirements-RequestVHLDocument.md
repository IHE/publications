# Request VHL Document - Verifiable Health Links v1.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Request VHL Document**

## Requirements: Request VHL Document 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/VHL/Requirements/RequestVHLDocument | *Version*:1.0.0-comment |
| Active as of 2026-06-14 | *Computable Name*:RequestVHLDocument |

 
The [VHL Receiver](ActorDefinition-VHLReceiver.md) SHALL initiate a request to retrieve a single health document from a [VHL Sharer](ActorDefinition-VHLSharer.md), using a previously received and validated Verified Health Link (VHL). 
This transaction SHALL be conducted over a secure channel. Both the Receiver and Sharer SHALL validate each other's participation in the trust network using PKI material published by the [Trust Anchor](ActorDefinition-TrustAnchor.md). 
**Optional behaviors:** 
* The VHL Receiver MAY verify the digital signature of the returned health document to confirm its authenticity, integrity, and provenance, as defined in the [Verify Document Signature](Requirements-VerifyDocumentSignature.md) requirement.
* The VHL Sharer MAY record an audit event documenting the access request by the Receiver, in accordance with the [Audit Event – Received Health Data](Requirements-AuditEventReceived.md) requirement.
 

