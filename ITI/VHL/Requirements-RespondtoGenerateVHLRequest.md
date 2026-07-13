# Generate a VHL Authorization Mechanism Based on Query Parameters - Verifiable Health Links v1.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Generate a VHL Authorization Mechanism Based on Query Parameters**

## Requirements: Generate a VHL Authorization Mechanism Based on Query Parameters (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/VHL/Requirements/RespondtoGenerateVHLRequest | *Version*:1.0.0-comment |
| Active as of 2026-06-14 | *Computable Name*:RespondtoGenerateVHLRequest |

 
The [VHL Sharer](ActorDefinition-VHLSharer.md) SHALL generate a Verified Health Link (VHL) to be issued to a [VHL Holder](ActorDefinition-VHLHolder.md). 
The Sharer SHALL conduct all necessary tasks to prepare the content referenced by the VHL. These tasks MAY be further defined by applicable content profiles or implementation guides, and MAY include: 
* Generation of new documents in real time;
* Querying for existing documents (e.g., IPS, CDA, FHIR Bundles) associated with the VHL Holder; or
* Creation of digital signatures on one or more documents.
 
Once content preparation is complete, the Sharer SHALL construct the VHL payload and sign it to produce a cryptographically verifiable authorization mechanism. 
**Optional behaviors:** 
* The Sharer MAY record consent in accordance with the [Record Consent](Requirements-RecordConsent.md) requirement.
* The Sharer MAY log an audit event describing the VHL issuance, in accordance with the [Audit Event – Accessed Health Data](Requirements-AuditEventAccess.md) requirement.
 

