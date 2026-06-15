# Significant Changes and Issues - Verifiable Health Links v1.0.0-comment

* [**Table of Contents**](toc.md)
* **Significant Changes and Issues**

## Significant Changes and Issues

## Significant Changes

### Significant Changes from Revision x.x

* NA, initial public comment release

## Issues

### Submit an Issue

IHE welcomes [New Issues](https://github.com/IHE/ITI.VHL/issues/new/choose) from the GitHub community. For those without GitHub access, issues may be submitted to the [ITI Public Comment form](https://www.ihe.net/ITI_Public_Comments/).

As issues are submitted they will be managed at [ITI.VHL GitHub Issues](https://github.com/IHE/ITI.VHL/issues), where discussion and workarounds may be found. These issues, when critical, will be processed using the normal [IHE Change Proposal](https://wiki.ihe.net/index.php/Category:CPs) management and balloting. It is important to note that as soon as a Change Proposal is approved, it carries the same weight as a published Implementation Guide (i.e., it is testable at an [IHE Connectathon](https://www.ihe.net/participate/connectathon/) from the time it is approved, even if it will not be integrated until a leter date).

### Open Issues

* ToDo_001: Should we introduce a Trust Network Participant (TNP) actor that does the retrieve and publish of keys and then make the VHL Sharer and VHL Receiver grouped actor with the TNP?
* ToDo_004: Some of the language has the QR code as synonymous with the VHL. Should be careful in Vol 1 that QR is only an example of a type of a VHL that is used for low-bandwidth/contactless/access. May be other access mechanisms - bluetooth or NFC modalities are used in the future for the providing of a VHL by a VHL Holder to a VHL Receiver.
* ToDo_007: ITI-YY5 Retrieve Manifest Message Semantics alignment with SHL — The current message semantics in ITI-YY5 (Section 2:3.YY5.4.1.2) may diverge from the SMART Health Links retrieve manifest specification. Liaise with the SHL team to identify gaps and request updates to the [SHL Manifest logical model](http://hl7.org/fhir/uv/smart-health-cards-and-links/STU1/links-specification.html#smart-health-link-manifest-file)

### Closed Issues

* ToDo_002: Can we use the same transaction to retrieve a single doc VHL as well as retrieve the docs in a folder VHL? 
* **Resolution:** The specification defines a _include option in the ITI-YY5 transaction that supports both single document and folder-based VHL retrieval using the same transaction.
 
* ToDo_003: Do we want to talk about the general notion of a health link, and then both the verifiable and shared health links? The SHL model has a different trust network assumption (no pre-coordination of sharer and receiver) so it may be cumbersome to take on in the first pass as the workflow is different? 
* **Resolution:** The current scope focuses exclusively on Verifiable Health Links (VHL), deferring Shared Health Links (SHL) to a future revision due to the differing trust network assumptions and workflow complexity. This approach allows the specification to establish a solid foundation for pre-coordinated trust models before addressing the more open trust model of SHL.
 
* ToDo_005: Should we specify an API mechanism for the Publish PKI Material transaction? It may be enough to treat them as Content Creator/Consumer pairs where the content is the location of a trustlist (as a DID). 
* **Resolution:** The specification treats the Publish PKI Material transaction as a Content Creator/Consumer interaction where the published content is a DID-referenced trustlist, rather than defining a separate API mechanism. This approach leverages existing IHE content sharing patterns and avoids introducing unnecessary complexity for PKI material distribution.
 
* ToDo_006: ITI-YY5 Receiver Authentication for Sharer using Embedded JWS/VC as an option. 
* **Resolution:** Addressed by the addition of the **Verifiable Credential Option** in ITI-YY5 (Section 2:3.YY5.4.1.5). In this option the VHL Receiver self-issues a JSON-LD LDP-VC (W3C Verifiable Credentials Data Model v2) whose `credentialSubject` contains the manifest decoded from the QR code. An embedded `DataIntegrityProof` is computed with the VHL Receiver's key from the trust network. The signed VC is sent directly as the HTTP POST body (`Content-Type: application/vc+ld+json`) with FHIR search parameters in the URL. The VHL Sharer verifies `proof.proofValue` using the receiver's public key retrieved from the trust network. The option is also reflected in the Actor Options table (Volume 1 Section XX.2.5), the sequence diagram (ITI-YY5.plantuml), and the test plan (testplan.md).
 
* ToDo_008: ITI-YY5 — clarify document retrieval transaction and document encryption convention. 
* **Resolution:** ITI-YY5 now explicitly binds binary document retrieval to the IHE MHD **Retrieve Document [ITI-68]** transaction (HTTP GET on `DocumentReference.content.attachment.url`), and aligns document encryption with the SMART Health Links convention: each binary is a JWE Compact Serialization using `alg=dir` and `enc=A256GCM` with the 32-byte SHL `key` carried in the SHL payload (generated in ITI-YY3, decoded in ITI-YY4). Two response examples were added (with and without the Include DocumentReference Option), and `Required Actor Groupings` in Volume 1 now requires VHL Sharer ↔ MHD Document Responder and VHL Receiver ↔ MHD Document Consumer groupings. See ITI-YY5 sections 2:3.YY5.4.2.4 (Document Content Retrieval) and 2:3.YY5.4.2.5 (Document Encryption).
 

