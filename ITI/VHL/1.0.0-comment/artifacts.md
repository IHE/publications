# Artifacts Summary - Verifiable Health Links v1.0.0-comment

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Requirements: Actor Definitions 

The following artifacts define the types of individuals and/or systems that will interact as part of the use cases covered by this implementation guide.

| | |
| :--- | :--- |
| [Trust Anchor](ActorDefinition-TrustAnchor.md) | An authorized organization in the trust framework that manages and distributes PKI material—such as public key certificates and revocation lists—to participants in the network. |
| [VHL Holder](ActorDefinition-VHLHolder.md) | An individual—typically the patient or their delegate—who possesses a Verified Health Link (VHL) and presents it to a VHL Receiver. |
| [VHL Receiver](ActorDefinition-VHLReceiver.md) | A system or organization that receives a VHL from a VHL Holder and uses it to retrieve health documents from a VHL Sharer, after verifying the authenticity and integrity of the VHL. |
| [VHL Sharer](ActorDefinition-VHLSharer.md) | A system that generates VHLs, provides them to a VHL Holder, and responds to requests from a VHL Receiver to retrieve document manifests authorized by the VHL. |

### Requirements: Formal Requirements 

The following artifacts describe the specific requirements to be met by systems compliant with the implementation guide.

| | |
| :--- | :--- |
| [Audit Event - Accessed Health Data](Requirements-AuditEventAccess.md) | **Purpose:** Ensure that the VHL Sharer records audit events when health documents are accessed or retrieved using a Verified Health Link (VHL).**Description:** The [VHL Sharer](ActorDefinition-VHLSharer.md) MAY record audit events for critical events involving document access. These MAY include:* A request from a [VHL Holder](ActorDefinition-VHLHolder.md) to generate a VHL
* A request from a [VHL Receiver](ActorDefinition-VHLReceiver.md) to retrieve one or more health documents using a valid VHL
* Any access to protected health content triggered by the use of a VHL
 |
| [Audit Event - Received Health Data](Requirements-AuditEventReceived.md) | **Purpose:** Ensure that the VHL Receiver generates audit records when receiving and using a Verified Health Link (VHL) to retrieve health information, in support of accountability and traceability.**Description:** The [VHL Receiver](ActorDefinition-VHLReceiver.md) MAY record audit events for critical events during its handling of a VHL. These MAY include:* Receipt of a VHL from a [VHL Holder](ActorDefinition-VHLHolder.md)
* Verification of the VHL's digital signature and trust chain
* Use of the VHL to retrieve referenced health documents from a [VHL Sharer](ActorDefinition-VHLSharer.md)
* Access, rendering, or internal processing of the retrieved documents
 |
| [Create Secure Channel](Requirements-CreateSecureChannel.md) | The [VHL Sharer](ActorDefinition-VHLSharer.md) and [VHL Receiver](ActorDefinition-VHLReceiver.md) SHALL jointly establish a secure connection prior to executing any Verified Health Link (VHL) transactions involving the exchange of sensitive data.This requirement is satisfied by implementing secure channel establishment as defined in the [Audit Trail and Node Authentication (ATNA)](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html) Profile, specifically through the Authenticate Node [ITI-19] transaction.This requirement entails:* The VHL Receiver initiating a secure connection as the client and presenting valid credentials
* The VHL Sharer responding as the server, presenting its own credentials and validating the client's credentials against a trusted Certificate Authority or Trust Anchor
Establishing this secure channel ensures confidentiality, integrity, and bilateral authentication of all subsequent communications, and fulfills the trust obligations defined in the [Establish Trust](Requirements-EstablishTrust.md) requirement. |
| [Establish Trust](Requirements-EstablishTrust.md) | Before participating in any Verified Health Link (VHL) transactions, the [VHL Sharer](ActorDefinition-VHLSharer.md) and [VHL Receiver](ActorDefinition-VHLReceiver.md) SHALL establish a trust relationship based on shared acceptance of a designated [Trust Anchor](ActorDefinition-TrustAnchor.md).Trust is established by referencing and accepting public key material published and distributed in accordance with this specification ( via [Retrieve Trust List Response](Requirements-RespondtoRetrieveTrustListRequest.md)).All participants SHALL validate digital signatures using keys that are anchored in the agreed trust framework. |
| [Generate a VHL Authorization Mechanism Based on Query Parameters](Requirements-RespondtoGenerateVHLRequest.md) | The [VHL Sharer](ActorDefinition-VHLSharer.md) SHALL generate a Verified Health Link (VHL) to be issued to a [VHL Holder](ActorDefinition-VHLHolder.md).The Sharer SHALL conduct all necessary tasks to prepare the content referenced by the VHL. These tasks MAY be further defined by applicable content profiles or implementation guides, and MAY include:* Generation of new documents in real time;
* Querying for existing documents (e.g., IPS, CDA, FHIR Bundles) associated with the VHL Holder; or
* Creation of digital signatures on one or more documents.
Once content preparation is complete, the Sharer SHALL construct the VHL payload and sign it to produce a cryptographically verifiable authorization mechanism.**Optional behaviors:*** The Sharer MAY record consent in accordance with the [Record Consent](Requirements-RecordConsent.md) requirement.
* The Sharer MAY log an audit event describing the VHL issuance, in accordance with the [Audit Event – Accessed Health Data](Requirements-AuditEventAccess.md) requirement.
 |
| [Initiate Retrieve Trust List Request](Requirements-InitiateRetrieveTrustListRequest.md) | A [VHL Sharer](ActorDefinition-VHLSharer.md) or [VHL Receiver](ActorDefinition-VHLReceiver.md), as a participant in the trust network, SHALL be capable of retrieving public key infrastructure (PKI) material from a designated [Trust Anchor](ActorDefinition-TrustAnchor.md).The retrieved material MAY include:* Public key certificates and associated trust lists
* Certificate revocation data (e.g., CRLs, OCSP responses)
* Metadata used to: 
* Validate digital signatures on VHLs and related resources
* Establish secure connections
* Decrypt content protected via asymmetric encryption
 
Participants SHOULD cache the received trust list to reduce network and server load.**Preconditions:*** The requesting participant knows in advance the endpoint from which to retrieve PKI material, as published or distributed by the Trust Anchor.
 |
| [Initiate Submit PKI Material Request](Requirements-InitiateSubmitPKIMaterialRequest.md) | When a [VHL Sharer](ActorDefinition-VHLSharer.md) or [VHL Receiver](ActorDefinition-VHLReceiver.md) generates a new public-private key pair for use within the VHL trust network, they SHALL submit the corresponding public key material to the [Trust Anchor](ActorDefinition-TrustAnchor.md) for validation and inclusion in the trust list.The submission MAY include metadata to support categorization of key usage (e.g., digital signatures, encryption, secure channels) and business or operational context. |
| [Provide VHL](Requirements-ProvideVHL.md) | The Provide VHL transaction enables a [VHL Holder](ActorDefinition-VHLHolder.md) to transmit a Verified Health Link (VHL) to a [VHL Receiver](ActorDefinition-VHLReceiver.md). The VHL serves as a signed authorization mechanism that allows the Receiver to subsequently retrieve one or more health documents from a VHL Sharer.Depending on the use case, the VHL MAY be rendered or transmitted using formats such as QR code or deep link (HTTPS URL). |
| [Receive Trust List](Requirements-ReceiveTrustList.md) | A [VHL Sharer](ActorDefinition-VHLSharer.md) or [VHL Receiver](ActorDefinition-VHLReceiver.md), after receiving PKI material from a [Trust Anchor](ActorDefinition-TrustAnchor.md), SHALL validate and process the trust information for subsequent cryptographic operations.Participants SHOULD:* Cache the received trust list or certificate material to reduce network and server load
* Validate digital signatures or trust paths before use in VHL validation or secure channel sessions
* Monitor certificate expiration or revocation status where applicable
 |
| [Receive VHL authorization mechanism](Requirements-RespondtoProvideVHL.md) | The [VHL Receiver](ActorDefinition-VHLReceiver.md) SHALL be capable of receiving a Verified Health Link (VHL) from a [VHL Holder](ActorDefinition-VHLHolder.md) through a supported transport mechanism (e.g., QR code scan, direct URL, or digital message).Upon receipt, the Receiver SHALL:* Parse the VHL
* Validate its digital signature against a trusted key published by a recognized Trust Anchor
* Prepare to retrieve the associated health documents
Receipt of the VHL may occur through direct user interaction (e.g., scanning a QR code) or automated channels, depending on the implementation context. |
| [Record Access to Health Data](Requirements-RecordAccessToHealthData.md) | The [VHL Sharer](ActorDefinition-VHLSharer.md) MAY record audit events when health data is accessed through a Verified Health Link (VHL). These events support accountability, traceability, and compliance with applicable security and privacy regulations.Audit records MAY include the following metadata:* Timestamp of the access event
* Identity of the accessing actor (e.g., person or system)
* Type and identifier of the accessed resource (e.g., DocumentReference)
* Purpose of access, where available (e.g., treatment, consent verification)
* Outcome of the event (e.g., success, failure)
Audit events SHALL be represented using the FHIR `AuditEvent` resource, and SHOULD conform to applicable IHE profiles such as ATNA where appropriate. Implementers MAY define additional audit logging behavior to meet jurisdictional or organizational policies. |
| [Record Consent](Requirements-RecordConsent.md) | The [VHL Sharer](ActorDefinition-VHLSharer.md) SHALL record the consent granted by a [VHL Holder](ActorDefinition-VHLHolder.md) to authorize the sharing of their health data via a Verified Health Link (VHL). This consent confirms that the Holder agrees to the creation of a VHL and its use by authorized [VHL Receivers](ActorDefinition-VHLReceiver.md) to access specific health documents.In this requirement, the VHL Sharer acts as a Consent Recorder, as defined in the [Privacy Consent on FHIR (PCF)](https://profiles.ihe.net/ITI/PCF/index.html) profile. Specifically, the Sharer SHALL initiate the [Access Consent - ITI-108](https://profiles.ihe.net/ITI/PCF/ITI-108.html) transaction to formally capture the Holder's consent.The ITI-108 transaction SHOULD be invoked as part of the actions triggered by a Generate VHL request, particularly when legal, jurisdictional, or organizational policy requires explicit, recorded consent prior to enabling document sharing.This requirement enables lawful, transparent sharing of personal health information across organizations and trust domains. |
| [Request VHL Document](Requirements-RequestVHLDocument.md) | The [VHL Receiver](ActorDefinition-VHLReceiver.md) SHALL initiate a request to retrieve a single health document from a [VHL Sharer](ActorDefinition-VHLSharer.md), using a previously received and validated Verified Health Link (VHL).This transaction SHALL be conducted over a secure channel. Both the Receiver and Sharer SHALL validate each other's participation in the trust network using PKI material published by the [Trust Anchor](ActorDefinition-TrustAnchor.md).**Optional behaviors:*** The VHL Receiver MAY verify the digital signature of the returned health document to confirm its authenticity, integrity, and provenance, as defined in the [Verify Document Signature](Requirements-VerifyDocumentSignature.md) requirement.
* The VHL Sharer MAY record an audit event documenting the access request by the Receiver, in accordance with the [Audit Event – Received Health Data](Requirements-AuditEventReceived.md) requirement.
 |
| [Request VHL Documents](Requirements-RequestVHLDocuments.md) | The [VHL Receiver](ActorDefinition-VHLReceiver.md) SHALL initiate a request to retrieve a set of health documents from a [VHL Sharer](ActorDefinition-VHLSharer.md), using a previously received and validated Verified Health Link (VHL).Both the Receiver and Sharer SHALL validate each other's participation in the trust network using PKI material published by the [Trust Anchor](ActorDefinition-TrustAnchor.md).**Optional behaviors:*** The VHL Sharer MAY record an audit event documenting the access request by the Receiver, in accordance with the [Audit Event – Received Health Data](Requirements-AuditEventReceived.md) requirement.
* This transaction MAY be conducted over a secure channel, as defined in the [Audit Trail and Node Authentication (ATNA)](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html#9.1) Profile.
 |
| [Request that a VHL authorization mechanism be issued](Requirements-InitiateVHLGenerationRequest.md) | A [VHL Holder](ActorDefinition-VHLHolder.md) initiates a request to a [VHL Sharer](ActorDefinition-VHLSharer.md) to generate a Verified Health Link (VHL) that references one or more health documents. The resulting VHL allows the Holder to subsequently share access to those documents with a [VHL Receiver](ActorDefinition-VHLReceiver.md). The Holder MAY include optional parameters to constrain or protect the issued VHL-such as defining an expiration period, scoping which documents are included, or requiring a passcode for retrieval. These parameters guide the Sharer's issuance of the VHL and influence the conditions under which the associated documents may be accessed.**Preconditions:*** The [VHL Holder](ActorDefinition-VHLHolder.md) SHALL trust that the [VHL Sharer](ActorDefinition-VHLSharer.md) has been authorized by its jurisdiction to generate VHLs and to provide access to the corresponding health documents.
* Optionally, the [VHL Holder](ActorDefinition-VHLHolder.md) has selected consent directives or selective disclosure preferences, as permitted by the applicable content profile.
 |
| [Respond to Submit PKI Material Request](Requirements-RespondtoSubmitPKIMaterialRequest.md) | Upon receipt of public key material from a [VHL Sharer](ActorDefinition-VHLSharer.md) or [VHL Receiver](ActorDefinition-VHLReceiver.md), the [Trust Anchor](ActorDefinition-TrustAnchor.md) SHALL validate, organize, sign, and expose the PKI material as part of a trusted, canonical trust list. |
| [Retrieve Trust List Response](Requirements-RespondtoRetrieveTrustListRequest.md) | Upon receipt of Retrieve Trust List Request from a [VHL Sharer](ActorDefinition-VHLSharer.md) or [VHL Receiver](ActorDefinition-VHLReceiver.md), the [Trust Anchor](ActorDefinition-TrustAnchor.md) SHALL organize, sign, and expose the PKI material as part of a trusted, canonical trust list.This MAY include:* Public key certificates, trust chains, or JWKS structures
* Revocation data (CRL or OCSP)
* Usage metadata (e.g., key type, scope, intended usage)
The Trust Anchor SHALL only respond with validated and trustworthy material in accordance with the governance policies of the VHL trust framework. This signed trust list enables all participants in the VHL trust network to verify digital signatures and establish secure connections in accordance with the governance policies of the Trust Anchor.Upon receipt of this response, participants SHALL process the trust list as described in [Receive Trust List](Requirements-ReceiveTrustList.md). |
| [Verify Document Signature](Requirements-VerifyDocumentSignature.md) | The [VHL Receiver](ActorDefinition-VHLReceiver.md), upon receiving a digitally signed health document from a [VHL Sharer](ActorDefinition-VHLSharer.md), MAY verify the document's digital signature using previously retrieved PKI material.This verification process confirms the authenticity, integrity, and provenance of the document independently of the Verified Health Link (VHL) itself.The public key used for this verification MAY:* Originate from a different trust network than the one used to validate the VHL
* Be unrelated to the key used to validate the VHL signature
Implementers SHOULD consult cross-profile guidance regarding interoperability with the [IHE Document Digital Signature (DSG) profile](https://profiles.ihe.net/ITI/TF/Volume1/ch-37.html), particularly in cases where additional attestation, long-term non-repudiation, or multi-party signatures are involved. |

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [Trust Anchor](CapabilityStatement-IHE.VHL.TrustAnchor.md) | CapabilityStatement for Trust Anchor Actor in the IHE IT Infrastructure Technical Framework Supplement IHE VHL. An authorized organization in the trust framework that manages and distributes PKI material—such as public key certificates and revocation lists—to participants in the network. It ensures that this material is trustworthy and available, enabling VHL Sharers and VHL Receivers to verify digital signatures and authenticate the origin of shared data. |
| [VHL Receiver Client Capability Statement](CapabilityStatement-VHLReceiverCapabilityStatement.md) | Capability Statement for a VHL Receiver implementing the Retrieve Manifest [ITI-YY5] transaction as a client. This client searches for List resources using VHL-authorized manifest URLs and can request inclusion of DocumentReference resources via the _include parameter. |
| [VHL Sharer Server Capability Statement](CapabilityStatement-VHLSharerCapabilityStatement.md) | Capability Statement for a VHL Sharer implementing the Retrieve Manifest [ITI-YY5] transaction as a server. This server supports FHIR search on List resources with _include parameter to retrieve document manifests authorized by Verified Health Links. |

### Behavior: Operation Definitions 

These are custom operations that can be supported by and/or invoked by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Generate VHL](OperationDefinition-generate-vhl.md) | This operation generates a Verifiable Health Link (VHL) for transmission or display. The VHL MAY be returned as a QR code (HCERT/CWT) or, when the VHL Sharer supports the VC Envelope Option, as a signed W3C Verifiable Credential.Input Parameters:* sourceIdentifier: Patient identifier (required)
* exp: Expiration time in Epoch seconds (optional)
* flag: Single-character flags in alphabetical order - L (long-term use), P (Passcode required), U (direct file access) (optional)
* label: Short description up to 80 characters (optional)
* passcode: User-supplied passcode for passcode-protected VHLs (optional)
* purposeOfUse: Purpose(s) of use the VHL Holder is authorizing for this share, bound to the HL7 v3 PurposeOfUse value set (optional). Populates Consent.provision.purpose when an IHE PCF Consent is bound to the generated folder.
* format: Requested output carrier - 'qrcode' (default) or 'vc'. 'vc' requires the VHL Sharer to support the VC Envelope Option.
Output Generation:* When format=qrcode: Returns a Binary resource containing the QR code image (PNG or SVG format) that encodes the VHL as an HCERT/CWT structure.
* When format=vc: Returns a Binary resource (media type application/vc+ld+json) containing a JSON-LD Verifiable Credential whose credentialSubject carries the VHL payload, signed with the VHL Sharer's trust-network key using W3C Data Integrity (DataIntegrityProof, cryptosuite ecdsa-2019).
* Exactly one of qrcode or verifiableCredential SHALL be populated.
 |

### Testing Artifacts: TestPlans 

These test plans are available to verify test coverage for this implementation guide

| | |
| :--- | :--- |
| [Integration Test Plan – QR Code Generation and Validation Flow](TestPlan-TestPlan-QRCodeFlow.md) | Integration test plan for the **QR Code Generation and Validation Flow** of the IHE ITI Verifiable Health Links (VHL) profile.Scope: validates multi-actor, cross-transaction scenarios that span ITI-YY3 (Generate VHL), ITI-YY4 (Provide VHL), and ITI-YY5 (Retrieve Manifest). Tests verify that the QR code generated in YY3 can be decoded in YY4, that the decoded VHL payload's manifest URL is used correctly in YY5, and that the full end-to-end pipeline including passcode handling, signature verification, and VHL authorization succeeds.Actors exercised: VHL Holder, VHL Sharer, VHL Receiver. |
| [Integration Test Plan – Trust Establishment](TestPlan-TestPlan-TrustEstablishment.md) | Integration test plan for the **Trust Establishment** workflow of the IHE ITI Verifiable Health Links (VHL) profile.Scope: validates multi-actor, cross-transaction scenarios that span ITI-YY1 (Submit PKI Material) and ITI-YY2 (Retrieve Trust List) and cannot be covered by unit tests. Tests verify that a DID Document submitted in YY1 is subsequently retrievable via YY2 in the same session, that both the VHL Sharer and VHL Receiver can retrieve peer keys, that a full round-trip signature verification succeeds, and that revocation propagates correctly across actors.Actors exercised: VHL Sharer, Trust Anchor, VHL Receiver. |
| [Test Plan – Trust Anchor](TestPlan-TestPlan-TrustAnchor.md) | Unit test plan for the **Trust Anchor** actor of the IHE ITI Verifiable Health Links (VHL) profile.Scope: validates all behaviour expected of a Trust Anchor as described in ITI-YY1 (responder) and ITI-YY2 (responder). Each test suite (testCase) corresponds to one transaction and exercises three atomic feature files: message semantics (shared), responder expected actions, and security considerations. |
| [Test Plan – VHL Receiver](TestPlan-TestPlan-VHLReceiver.md) | Unit test plan for the **VHL Receiver** actor of the IHE ITI Verifiable Health Links (VHL) profile.Scope: validates all behaviour expected of a VHL Receiver across its four transactions: submitting its own PKI material (ITI-YY1 initiator), retrieving the trust list (ITI-YY2 initiator), decoding and validating a VHL QR code (ITI-YY4 responder), and requesting the document manifest (ITI-YY5 initiator). Each test suite exercises three atomic feature files. |
| [Test Plan – VHL Sharer](TestPlan-TestPlan-VHLSharer.md) | Unit test plan for the **VHL Sharer** actor of the IHE ITI Verifiable Health Links (VHL) profile.Scope: validates all behaviour expected of a VHL Sharer across its four transactions: submitting its own PKI material (ITI-YY1 initiator), retrieving the trust list to obtain peer keys (ITI-YY2 initiator), generating VHLs on demand (ITI-YY3 responder), and serving document manifests to authorised VHL Receivers (ITI-YY5 responder). Each test suite corresponds to one transaction and exercises three atomic feature files. |

### Example: Example Scenarios 

These define groups of interrelated examples that demonstrate one or more of the workflows supported by this implementation guide.

| | |
| :--- | :--- |
| [European Vaccination Card (EVC)](ExampleScenario-UseCaseEVAC.md) | Use case describing the European Vaccination Card, a citizen-held portable vaccination record enabling bilateral verification across EU member states via an interoperable trust architecture. |
| [Hajj Pilgrimage VHL Flow](ExampleScenario-UseCaseHajjPilgrimage.md) | Use case describing the sharing of pilgrim health records (International Patient Summary) during Hajj using VHL with WHO GDHCN trust infrastructure for cross-border verification. |
| [Pan-American Highway for Health (PH4H)](ExampleScenario-UseCasePH4H.md) | Use case describing cross-border health record sharing in the Americas using VHL to support continuity of care for internal migrants across overlapping trust networks. |
| [TEFCA Health Information Exchange](ExampleScenario-UseCaseTEFCA.md) | Use case describing how US TEFCA participants (QHINs, providers, payers) can act as VHL Sharers and Receivers using existing TEFCA certificate infrastructure as a trust anchor for VHL exchanges. |
| [WHO GDHCN Trust Establishment](ExampleScenario-UseCaseGDHCN.md) | Use case describing how participating jurisdictions establish trust within the WHO Global Digital Health Certification Network (GDHCN) through PKI material submission and trust list distribution. |

