# Verify Document Signature - Verifiable Health Links v1.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Verify Document Signature**

## Requirements: Verify Document Signature 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/VHL/Requirements/VerifyDocumentSignature | *Version*:1.0.0-comment |
| Active as of 2026-06-14 | *Computable Name*:VerifyDocumentSignature |

 
The [VHL Receiver](ActorDefinition-VHLReceiver.md), upon receiving a digitally signed health document from a [VHL Sharer](ActorDefinition-VHLSharer.md), MAY verify the document's digital signature using previously retrieved PKI material. 
This verification process confirms the authenticity, integrity, and provenance of the document independently of the Verified Health Link (VHL) itself. 
The public key used for this verification MAY: 
* Originate from a different trust network than the one used to validate the VHL
* Be unrelated to the key used to validate the VHL signature
 
Implementers SHOULD consult cross-profile guidance regarding interoperability with the [IHE Document Digital Signature (DSG) profile](https://profiles.ihe.net/ITI/TF/Volume1/ch-37.html), particularly in cases where additional attestation, long-term non-repudiation, or multi-party signatures are involved. 

