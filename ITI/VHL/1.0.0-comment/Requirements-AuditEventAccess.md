# Audit Event - Accessed Health Data - Verifiable Health Links v1.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Audit Event - Accessed Health Data**

## Requirements: Audit Event - Accessed Health Data 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/VHL/Requirements/AuditEventAccess | *Version*:1.0.0-comment |
| Active as of 2026-06-14 | *Computable Name*:AuditEvent |

 
**Purpose:**
 Ensure that the VHL Sharer records audit events when health documents are accessed or retrieved using a Verified Health Link (VHL). 
**Description:**
 The [VHL Sharer](ActorDefinition-VHLSharer.md) MAY record audit events for critical events involving document access. These MAY include: 
* A request from a [VHL Holder](ActorDefinition-VHLHolder.md) to generate a VHL
* A request from a [VHL Receiver](ActorDefinition-VHLReceiver.md) to retrieve one or more health documents using a valid VHL
* Any access to protected health content triggered by the use of a VHL
 

