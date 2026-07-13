# Audit Event - Received Health Data - Verifiable Health Links v1.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Audit Event - Received Health Data**

## Requirements: Audit Event - Received Health Data 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/VHL/Requirements/AuditEventReceived | *Version*:1.0.0-comment |
| Active as of 2026-06-14 | *Computable Name*:AuditEventReceived |

 
**Purpose:**
 Ensure that the VHL Receiver generates audit records when receiving and using a Verified Health Link (VHL) to retrieve health information, in support of accountability and traceability. 
**Description:**
 The [VHL Receiver](ActorDefinition-VHLReceiver.md) MAY record audit events for critical events during its handling of a VHL. These MAY include: 
* Receipt of a VHL from a [VHL Holder](ActorDefinition-VHLHolder.md)
* Verification of the VHL's digital signature and trust chain
* Use of the VHL to retrieve referenced health documents from a [VHL Sharer](ActorDefinition-VHLSharer.md)
* Access, rendering, or internal processing of the retrieved documents
 

