# Record Access to Health Data - Verifiable Health Links v1.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Record Access to Health Data**

## Requirements: Record Access to Health Data 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/VHL/Requirements/RecordAccessToHealthData | *Version*:1.0.0-comment |
| Active as of 2026-06-14 | *Computable Name*:RecordAccessToHealthData |

 
The [VHL Sharer](ActorDefinition-VHLSharer.md) MAY record audit events when health data is accessed through a Verified Health Link (VHL). These events support accountability, traceability, and compliance with applicable security and privacy regulations. 
Audit records MAY include the following metadata: 
* Timestamp of the access event
* Identity of the accessing actor (e.g., person or system)
* Type and identifier of the accessed resource (e.g., DocumentReference)
* Purpose of access, where available (e.g., treatment, consent verification)
* Outcome of the event (e.g., success, failure)
 
Audit events SHALL be represented using the FHIR `AuditEvent` resource, and SHOULD conform to applicable IHE profiles such as ATNA where appropriate. Implementers MAY define additional audit logging behavior to meet jurisdictional or organizational policies. 

