# Request that a VHL authorization mechanism be issued - Verifiable Health Links v1.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Request that a VHL authorization mechanism be issued**

## Requirements: Request that a VHL authorization mechanism be issued 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/VHL/Requirements/InitiateVHLGenerationRequest | *Version*:1.0.0-comment |
| Active as of 2026-06-14 | *Computable Name*:InitiateVHLGenerationRequest |

 
A [VHL Holder](ActorDefinition-VHLHolder.md) initiates a request to a [VHL Sharer](ActorDefinition-VHLSharer.md) to generate a Verified Health Link (VHL) that references one or more health documents. The resulting VHL allows the Holder to subsequently share access to those documents with a [VHL Receiver](ActorDefinition-VHLReceiver.md). The Holder MAY include optional parameters to constrain or protect the issued VHL-such as defining an expiration period, scoping which documents are included, or requiring a passcode for retrieval. These parameters guide the Sharer's issuance of the VHL and influence the conditions under which the associated documents may be accessed. 
**Preconditions:** 
* The [VHL Holder](ActorDefinition-VHLHolder.md) SHALL trust that the [VHL Sharer](ActorDefinition-VHLSharer.md) has been authorized by its jurisdiction to generate VHLs and to provide access to the corresponding health documents.
* Optionally, the [VHL Holder](ActorDefinition-VHLHolder.md) has selected consent directives or selective disclosure preferences, as permitted by the applicable content profile.
 

