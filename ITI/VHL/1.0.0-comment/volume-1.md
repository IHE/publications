# 1:XX Verifiable Health Links (VHL) - Volume 1 - Verifiable Health Links v1.0.0-comment

* [**Table of Contents**](toc.md)
* **1:XX Verifiable Health Links (VHL) - Volume 1**

## 1:XX Verifiable Health Links (VHL) - Volume 1

As individuals move within or across jurisdictional boundaries, they may wish to provide access to clinical or other health-related documents to a defined set of trusted parties who are authorized to access their records. This access may be granted for a single document or for a set of related documents.

The **Verifiable Health Links (VHL)** profile defines a set of protocols and patterns that enable health documents to be shared in a verifiable and auditable manner—both within and across jurisdictions. Central to this profile is the concept of the **VHL**, a signed artifact that an individual (the **VHL Holder**) can use to authorize access to their health records from an issuer (the [VHL Sharer](ActorDefinition-VHLSharer.md)) to a third party (the [VHL Receiver](ActorDefinition-VHLReceiver.md)). The mechanisms by which the VHL is held by the Holder or transmitted to the [VHL Receiver](ActorDefinition-VHLReceiver.md) are out of scope for this profile.

VHL leverages **Public Key Infrastructure (PKI)** to establish trust among actors and to verify the authenticity and integrity of exchanged artifacts.

Within the VHL trust model, both the [VHL Receiver](ActorDefinition-VHLReceiver.md) and the [VHL Sharer](ActorDefinition-VHLSharer.md) are participants in a shared **[trust network](other.md#ihe-technical-frameworks-general-introduction-appendix-d-glossary)**. This network enables:

* Verification of the origin of a health document,
* Validation of any access mechanism (i.e., the VHL itself),
* Authentication of requests that seek to utilize these mechanisms.

The authority to participate in the trust network is governed by each actor's **jurisdiction**, which determines eligibility and onboarding criteria. Verification of this authorization is achieved through PKI, specifically through the validation of credentials issued or endorsed by a **Trust Anchor** ([Trust Anchor](ActorDefinition-TrustAnchor.md)).

Jurisdictions may also impose specific regulatory requirements on the privacy and security of health data exchange. These may include mandatory **consent verification**, **audit logging**, or other compliance controls that impact how VHL-based exchanges are implemented.

As members of a trust network, both the [VHL Receiver](ActorDefinition-VHLReceiver.md) and the [VHL Sharer](ActorDefinition-VHLSharer.md) are expected to submit and retrieve PKI material—typically as signed **Trust Lists**—from the [Trust Anchor](ActorDefinition-TrustAnchor.md). The precise onboarding and credential issuance processes used to establish trust with the [Trust Anchor](ActorDefinition-TrustAnchor.md) are implementation-specific and beyond the scope of this profile.

> **Relationship to SMART® Health Links (SHL):**A VHL **adopts the SMART Health Links payload format** — the `url`, `key`, `flag`, `label`, `exp`, `v`, and `extension` fields defined in the [SMART Health Links specification](https://hl7.org/fhir/uv/smart-health-cards-and-links/links-specification.html) — and reuses the SHL-defined manifest-request parameters (`recipient`, `passcode`, `embeddedLengthMax`). The **fundamental difference is the trust model**: VHL assumes a **pre-established trust relationship** between the [VHL Sharer](ActorDefinition-VHLSharer.md) and the [VHL Receiver](ActorDefinition-VHLReceiver.md), verified via PKI material exchanged through Trust Lists, whereas SHL assumes **no prior trust** and conveys trust at presentation time via keys controlled by the SHL Sharer. See [Appendix A](vhl_vs_shl.md) for a side-by-side comparison.**Terminology used in this IG:**
* **VHL payload** — a concrete instance populated by the [VHL Sharer](ActorDefinition-VHLSharer.md) and carried by a VHL (inside an HCERT/CWT QR code, or inside a signed Verifiable Credential under the VC Enveloped VHL Option). Instance-level references in this IG say "VHL payload".
* **SHL payload format** / **SHL payload structure** — the schema (field names and shapes) that the VHL payload conforms to. Where this IG refers to the inherited schema itself, it uses "SHL payload format".
* **SHL-defined manifest parameters** — `recipient`, `passcode`, `embeddedLengthMax`, etc., as defined by the SHL specification and reused here.
* Actors in this IG are always the [VHL Holder](ActorDefinition-VHLHolder.md), [VHL Sharer](ActorDefinition-VHLSharer.md), and [VHL Receiver](ActorDefinition-VHLReceiver.md) — never "SHL Receiver" or "SHL Sharer" (those terms only appear in the comparison at Appendix A).

## 1:XX.1 Actors, Transactions, and Content Modules

This section defines the actors, transactions, and/or content modules in this profile. Further information about actor and transaction definitions can be found in the IHE Technical Frameworks General Introduction [Appendix A: Actors](https://profiles.ihe.net/GeneralIntro/ch-A.html) and [Appendix B: Transactions](https://profiles.ihe.net/GeneralIntro/ch-B.html).

*  Actors 
* [Trust Anchor](ActorDefinition-TrustAnchor.md)
* [VHL Holder](ActorDefinition-VHLHolder.md)
* [VHL Receiver](ActorDefinition-VHLReceiver.md)
* [VHL Sharer](ActorDefinition-VHLSharer.md)
 
*  Transactions 
*  [Submit PKI Material with DID](ITI-YY1.md)
*  [Retrieve Trust List with DID](ITI-YY2.md)
*  [Generate VHL](ITI-YY3.md) 
*  [Provide VHL](ITI-YY4.md)
*  [Retrieve Manifest](ITI-YY5.md)
 

As a pre-condition to transactions ITI-YY4 and ITI-YY5, the [VHL Receiver](ActorDefinition-VHLReceiver.md) and [VHL Sharer](ActorDefinition-VHLSharer.md) SHALL have established trust relationships enabling mutual authentication and VHL signature verification.

This trust MAY be established through:

* Implementation of the optional Submit PKI Material with DID [ITI-YY1] and Retrieve Trust List with DID [ITI-YY2] transactions, OR
* Alternative jurisdiction-specific PKI exchange mechanisms (out of scope for this profile)

This is illustrated in Figure 1:XX.1-1.

Figure 1:XX.1-1 : Trust Network PKI Exchange

The process of a VHL Holder requesting a VHL for a set of health documents from a [VHL Sharer](ActorDefinition-VHLSharer.md) and subsequently sharing them to a [VHL Receiver](ActorDefinition-VHLReceiver.md) is illustrated in Figure X.X.X.X-2.

Figure 1:XX.1-2: VHL Generation, Provision, and Document Retrieval Flow

Table XX.1-1: VHL Profile - Actors and Transactions

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [Trust Anchor](ActorDefinition-TrustAnchor.md) | [Submit PKI Material with DID](ITI-YY1.md) | Responder | R | ITI TF-2: 3.YY1 |
|   | [Retrieve Trust List with DID](ITI-YY2.md) | Responder | R | ITI TF-2: 3.YY2 |
| [VHL Holder](ActorDefinition-VHLHolder.md) | [Generate VHL](ITI-YY3.md) | Initiator | R | ITI TF-2: 3.YY3 |
|   | [Provide VHL](ITI-YY4.md) | Initiator | R | ITI TF-2: 3.YY4 |
| [VHL Receiver](ActorDefinition-VHLReceiver.md) | [Submit PKI Material with DID](ITI-YY1.md) | Initiator | O | ITI TF-2: 3.YY1 |
|   | [Retrieve Trust List with DID](ITI-YY2.md) | Initiator | O | ITI TF-2: 3.YY2 |
|   | [Provide VHL](ITI-YY4.md) | Responder | R | ITI TF-2: 3.YY4 |
|   | [Retrieve Manifest](ITI-YY5.md) | Initiator | R | ITI TF-2: 3.YY5 |
| [VHL Sharer](ActorDefinition-VHLSharer.md) | [Submit PKI Material with DID](ITI-YY1.md) | Initiator | O | ITI TF-2: 3.YY1 |
|   | [Retrieve Trust List with DID](ITI-YY2.md) | Initiator | O | ITI TF-2: 3.YY2 |
|   | [Generate VHL](ITI-YY3.md) | Responder | R | ITI TF-2: 3.YY3 |
|   | [Retrieve Manifest](ITI-YY5.md) | Responder | R | ITI TF-2: 3.YY5 |

### 1:XX.1.1 Actors

The actors in this profile are described in more detail in the sections below.

#### XX.1.1.X Trust Anchor

An authorized organization in the trust framework that manages and distributes PKI material—such as public key certificates and revocation lists—to participants in the network. It ensures that this material is trustworthy and available, enabling VHL Sharers and VHL Receivers to verify digital signatures and authenticate the origin of shared data.

This actor fulfills the following requirements:

*  **[Retrieve Trust List Response](Requirements-RespondtoRetrieveTrustListRequest.md)** 
*  **[Respond to Submit PKI Material Request](Requirements-RespondtoSubmitPKIMaterialRequest.md)** 

This actor fulfills the following capabilities:

* CapabilityStatement for Trust Anchor Actor in the IHE IT Infrastructure Technical Framework Supplement IHE VHL. An authorized organization in the trust framework that manages and distributes PKI material—such as public key certificates and revocation lists—to participants in the network. It ensures that this material is trustworthy and available, enabling VHL Sharers and VHL Receivers to verify digital signatures and authenticate the origin of shared data.

#### XX.1.1.X VHL Holder

An individual—typically the patient or their delegate—who possesses a Verified Health Link (VHL), a signed data artifact that enables a VHL Receiver to verify its authenticity and access one or more health documents made available by a VHL Sharer.

This actor fulfills the following requirements:

*  **[Request that a VHL authorization mechanism be issued](Requirements-InitiateVHLGenerationRequest.md)** 
*  **[Provide VHL](Requirements-ProvideVHL.md)** 

#### XX.1.1.X VHL Receiver

A system or organization that receives a Verified Health Link (VHL) from a VHL Holder and uses it to retrieve health documents from a VHL Sharer, after verifying the authenticity and integrity of the VHL.

This actor fulfills the following requirements:

*  **[Audit Event - Received Health Data](Requirements-AuditEventReceived.md)** 
*  **[Create Secure Channel](Requirements-CreateSecureChannel.md)** 
*  **[Establish Trust](Requirements-EstablishTrust.md)** 
*  **[Initiate Retrieve Trust List Request](Requirements-InitiateRetrieveTrustListRequest.md)** 
*  **[Initiate Submit PKI Material Request](Requirements-InitiateSubmitPKIMaterialRequest.md)** 
*  **[Receive Trust List](Requirements-ReceiveTrustList.md)** 
*  **[Request VHL Document](Requirements-RequestVHLDocument.md)** 
*  **[Request VHL Documents](Requirements-RequestVHLDocuments.md)** 
*  **[Receive VHL authorization mechanism](Requirements-RespondtoProvideVHL.md)** 
*  **[Verify Document Signature](Requirements-VerifyDocumentSignature.md)** 

#### XX.1.1.X VHL Sharer

The VHL Sharer generates a VHL, provides the VHL to a VHL Holder, and responds to requests from a VHL Sharer to utilize the VHL.

This actor fulfills the following requirements:

*  **[Audit Event - Accessed Health Data](Requirements-AuditEventAccess.md)** 
*  **[Create Secure Channel](Requirements-CreateSecureChannel.md)** 
*  **[Establish Trust](Requirements-EstablishTrust.md)** 
*  **[Initiate Retrieve Trust List Request](Requirements-InitiateRetrieveTrustListRequest.md)** 
*  **[Initiate Submit PKI Material Request](Requirements-InitiateSubmitPKIMaterialRequest.md)** 
*  **[Receive Trust List](Requirements-ReceiveTrustList.md)** 
*  **[Record Access to Health Data](Requirements-RecordAccessToHealthData.md)** 
*  **[Record Consent](Requirements-RecordConsent.md)** 
*  **[Generate a VHL Authorization Mechanism Based on Query Parameters](Requirements-RespondtoGenerateVHLRequest.md)** 

### 1:XX.1.2 Transaction Descriptions

The transactions in this profile are summarized in the sections below.

#### 1:XX.1.2.1 Submit PKI Material with DID [ITI-YY1]

This transaction is used by a [VHL Receiver](ActorDefinition-VHLReceiver.md) or [VHL Sharer](ActorDefinition-VHLSharer.md) to submit PKI material to a [Trust Anchor](ActorDefinition-TrustAnchor.md) using Decentralized Identifiers (DIDs). The submitted material is formatted as DID Documents containing public keys and associated metadata for validation and inclusion in the Trust List.

**Transaction Optionality:**

This transaction is:

* **REQUIRED (R)** for Trust Anchor actors
* **OPTIONAL (O)** for VHL Sharer and VHL Receiver actors

**Alternative Implementations:**

Actors that do not implement this transaction SHALL establish trust relationships through jurisdiction-specific mechanisms that are out of scope for this profile.

For more details see the detailed [transaction description](ITI-YY1.md)

This transaction is captured as the following requirements:

* [Initiate Submit PKI Material Request](Requirements-InitiateSubmitPKIMaterialRequest.md)
* [Respond to Submit PKI Material Request](Requirements-RespondtoSubmitPKIMaterialRequest.md)

#### 1:XX.1.2.2 Retrieve Trust List with DID [ITI-YY2]

This transaction is used by a [VHL Receiver](ActorDefinition-VHLReceiver.md) or [VHL Sharer](ActorDefinition-VHLSharer.md) to retrieve a Trust List from a [Trust Anchor](ActorDefinition-TrustAnchor.md) containing DID Documents with PKI material. The retrieved DID Documents include public keys and metadata necessary for verifying digital signatures and establishing trust relationships. Received key material should be distinguished by the participating jurisdiction, use case context, and key usage.

**Transaction Optionality:**

This transaction is:

* **REQUIRED (R)** for Trust Anchor actors
* **OPTIONAL (O)** for VHL Sharer and VHL Receiver actors

**When to Implement:**

VHL Sharer and VHL Receiver actors SHALL implement this transaction when:

* They do not have pre-established mechanisms to retrieve PKI material from the [Trust Anchor](ActorDefinition-TrustAnchor.md), OR
* They wish to demonstrate interoperability at IHE Connectathons

**Alternative Implementations:**

Actors that do not implement this transaction SHALL retrieve trust material through jurisdiction-specific mechanisms that are out of scope for this profile. Such implementations:

* Cannot participate in IHE Connectathon testing for trust material retrieval
* SHALL document their trust material retrieval mechanisms in their IHE Integration Statement
* Are responsible for obtaining current PKI material for VHL signature verification

For more details see the detailed [transaction description](ITI-YY2.md)

This transaction is captured as the following requirements:

* [Initiate Retrieve Trust List Request](Requirements-InitiateRetrieveTrustListRequest.md)
* [Respond to Retrieve Trust List Request](Requirements-RespondtoRetrieveTrustListRequest.md)

#### 1:XX.1.2.3 Generate VHL [ITI-YY3]

This transaction is used by a [VHL Holder](ActorDefinition-VHLHolder.md) to request that a [VHL Sharer](ActorDefinition-VHLSharer.md) generate a QR code containing a VHL. The QR code is encoded as an HCERT/CWT structure.

A [VHL Sharer](ActorDefinition-VHLSharer.md) MAY:

* Record consent of the individual
* Create audit trail of VHL creation
* Set passcode protection (P flag) with secure hash storage
* Set expiration time for time-limited access
* Set long-term flag (L) for ongoing access

For more details see the detailed [transaction description](ITI-YY3.md)

This transaction is captured as the following requirements:

* [Initiate VHL Generation Request](Requirements-InitiateVHLGenerationRequest.md)
* [Respond to VHL Generation Request](Requirements-RespondtoGenerateVHLRequest.md)

#### 1:XX.1.2.4 Provide VHL [ITI-YY4]

This transaction is initiated by a [VHL Holder](ActorDefinition-VHLHolder.md) to transmit a VHL to a [VHL Receiver](ActorDefinition-VHLReceiver.md) by displaying or providing a QR code for scanning.

**QR Code Transmission:**

The [VHL Holder](ActorDefinition-VHLHolder.md) presents the VHL by:

* Displaying the QR code on their device screen for the [VHL Receiver](ActorDefinition-VHLReceiver.md) to scan, OR
* Providing a printed QR code generated during ITI-YY3

The [VHL Receiver](ActorDefinition-VHLReceiver.md) scans the QR code using a camera-equipped device and processes the HCERT-encoded VHL through a 9-step decoding process:

For more details see the detailed [transaction description](ITI-YY4.md)

This transaction is captured as the following requirements:

* [Provide VHL](Requirements-ProvideVHL.md)
* [Respond to Provide VHL](Requirements-RespondtoProvideVHL.md)

#### 1:XX.1.2.5 Retrieve Manifest [ITI-YY5]

This transaction is initiated by a [VHL Receiver](ActorDefinition-VHLReceiver.md) to retrieve a document manifest from a [VHL Sharer](ActorDefinition-VHLSharer.md) using a previously validated VHL as authorization. The transaction uses standard FHIR search on the List resource, following the same pattern as MHD ITI-66 Find Document Lists.

**Response:**

The [VHL Sharer](ActorDefinition-VHLSharer.md) returns a FHIR Bundle of type "searchset" containing:

* **List resource** with search.mode="match" - references available documents
* **DocumentReference resources** with search.mode="include" (if Include DocumentReference Option supported and `_include` parameter used)

If the [VHL Sharer](ActorDefinition-VHLSharer.md) supports the **Include DocumentReference Option**, it processes the `_include=List:item` parameter and returns both List and DocumentReference resources in a single response, reducing network round trips.

If the [VHL Sharer](ActorDefinition-VHLSharer.md) does NOT support this option, it ignores the `_include` parameter and returns only the List resource. The [VHL Receiver](ActorDefinition-VHLReceiver.md) then retrieves individual DocumentReference resources using separate read requests.

**Capability Statements:**

Client and server requirements are defined in:

* [VHL Receiver Client Capability Statement](CapabilityStatement-VHLReceiverCapabilityStatement.md)
* [VHL Sharer Server Capability Statement](CapabilityStatement-VHLSharerCapabilityStatement.md)

For more details see the detailed [transaction description](ITI-YY5.md)

This transaction is captured as the following requirements:

* [Request VHL Documents](Requirements-RequestVHLDocuments.md)

## 1:XX.2 Actor Options

Options that may be selected for each actor in this implementation guide are listed in Table XX.2-1 below. Dependencies between options when applicable are specified in notes.

Table XX.2-1: Actor Options

| | |
| :--- | :--- |
| [VHL Receiver](ActorDefinition-VHLReceiver.md) | Sign Manifest Request |
| ^ | Include DocumentReference |
| ^ | Verify Document Signature |
| ^ | OAuth with SSRAA |
| ^ | Verifiable Credential |
| [VHL Sharer](ActorDefinition-VHLSharer.md) | Include DocumentReference |
| ^ | Sign Manifest Request |
| ^ | OAuth with SSRAA |
| ^ | Verifiable Credential |
| ^ | VC Enveloped VHL |

### 1:XX.2.1 Sign Manifest Request Option (VHL Receiver)

The Sign Manifest Request Option enables the [VHL Receiver](ActorDefinition-VHLReceiver.md) to digitally sign manifest requests sent to the [VHL Sharer](ActorDefinition-VHLSharer.md) and enables the [VHL Sharer](ActorDefinition-VHLSharer.md) to verify digital signatures on manifest requests from the [VHL Receiver](ActorDefinition-VHLReceiver.md).

This option provides:

* Mutual authentication between VHL Receiver and VHL Sharer
* Non-repudiation of manifest requests
* Protection against request forgery
* Enhanced audit trail

**Complementary Option:** This option is designed to work with the Sign Manifest Request Option (VHL Sharer). If a [VHL Receiver](ActorDefinition-VHLReceiver.md) signs requests, the [VHL Sharer](ActorDefinition-VHLSharer.md) should support signature verification.

See ITI-YY5 Section [2:3.YY5.4.1.3 Authentication Option - HTTP Message Signatures](ITI-YY5.md#23yy5413-authentication-option---http-message-signatures) for detailed signature format.

### 1:XX.2.2 Include DocumentReference Option (VHL Sharer)

The Include DocumentReference Option enables the [VHL Sharer](ActorDefinition-VHLSharer.md) to process the `_include=List:item` parameter in manifest requests and return DocumentReference resources along with the List resource in a single response.

**Benefits:**

* Reduces network round trips for VHL Receiver
* Improves performance for document discovery
* Simplifies workflow for retrieving document metadata

**Implementation Note:** When generating VHLs in ITI-YY3, VHL Sharers supporting this option SHOULD include `_include=List:item` in the manifest URL. VHL Sharers not supporting this option SHOULD NOT include the `_include` parameter in the manifest URL.

See ITI-YY5 Section [2:3.YY5.4.2.2 Message Semantics](ITI-YY5.md#23yy5422-message-semantics) and [2:3.YY5.4.1.7 Expected Actions - VHL Sharer](ITI-YY5.md#23yy5417-expected-actions---vhl-sharer) for detailed behavior.

### 1:XX.2.3 Verify Document Signature Option (VHL Receiver)

In this option the [VHL Receiver](ActorDefinition-VHLReceiver.md), after receipt of a digitally signed document from a [VHL Sharer](ActorDefinition-VHLSharer.md), shall verify the digital signature using previously retrieved PKI material. This key material may or may not be distributed under the same trust network under which the VHL was distributed. This key material may or may not be the same key material that was used to verify the VHL.

See cross-profile considerations for a discussion of the relationship of this option to the IHE Document Signature profile.

This option is captured in the following business requirement:

* [Verify Document Signature](Requirements-VerifyDocumentSignature.md)

### 1:XX.2.4 OAuth with SSRAA Option

The OAuth with SSRAA Option enables the [VHL Receiver](ActorDefinition-VHLReceiver.md) and [VHL Sharer](ActorDefinition-VHLSharer.md) to use OAuth 2.0 access tokens for authentication during the ITI-YY5 Retrieve Manifest transaction, as an alternative to HTTP Message Signatures. This option provides interoperability with systems implementing the [HL7 Security for Scalable Registration, Authentication, and Authorization IG](http://hl7.org/fhir/us/udap-security/) (SSRAA).

**Complementary Option:** Both the [VHL Receiver](ActorDefinition-VHLReceiver.md) and [VHL Sharer](ActorDefinition-VHLSharer.md) SHALL support this option for OAuth-based authentication to be used. If only one actor supports this option, HTTP Message Signatures or other authentication mechanisms defined in ITI-YY5 SHALL be used instead.

See ITI-YY5 Section 2:3.YY5.4.1.4 for detailed OAuth flow and examples.

### 1:XX.2.5 Verifiable Credential Option

The Verifiable Credential Option enables the [VHL Receiver](ActorDefinition-VHLReceiver.md) to self-issue a JSON-LD Verifiable Credential (LDP-VC) per the [W3C Verifiable Credentials Data Model v2](https://www.w3.org/TR/vc-data-model-2.0/) when sending a manifest request in the ITI-YY5 Retrieve Manifest transaction. The VC's `credentialSubject` is the manifest decoded from the QR code, and the VC contains an embedded **DataIntegrityProof** signed with the [VHL Receiver](ActorDefinition-VHLReceiver.md)'s key from the trust network.

This option provides:

* Authentication of the [VHL Receiver](ActorDefinition-VHLReceiver.md) to the [VHL Sharer](ActorDefinition-VHLSharer.md) using a trust network key, without requiring a prior OAuth registration flow
* Cryptographic proof of QR code possession — the manifest content is embedded in the VC `credentialSubject`, binding the request to the specific VHL decoded by the receiver
* Non-repudiation of manifest requests
* An alternative authentication path suitable for deployments that prefer credential-based identity over token-based flows (e.g., those with unlinkability requirements or no central authorization server)

**How It Works:**

When the [VHL Receiver](ActorDefinition-VHLReceiver.md) decodes the QR code (ITI-YY4), it extracts the VHL payload containing the manifest URL and metadata. The [VHL Receiver](ActorDefinition-VHLReceiver.md) constructs a self-issued LDP-VC in which:

* The `credentialSubject` contains the manifest metadata from the VHL payload (excluding the encryption key), with `id` set to the manifest URL; the SHL-defined manifest parameters (`recipient`, `passcode`, `embeddedLengthMax`) are also included in `credentialSubject`
* An embedded **`proof`** element of type `DataIntegrityProof` is included with a `verificationMethod` resolving to the [VHL Receiver](ActorDefinition-VHLReceiver.md)'s key in the trust network, `proofPurpose` = `assertionMethod`, and a `proofValue` signature over the VC document — this is the cryptographic proof of the receiver's identity

The VC (with embedded proof) is sent directly as the HTTP POST body (`Content-Type: application/vc+ld+json`), with FHIR search parameters in the URL query string. No additional HTTP-level signing is required. The [VHL Sharer](ActorDefinition-VHLSharer.md) verifies the `proof.proofValue` using the [VHL Receiver](ActorDefinition-VHLReceiver.md)'s public key from the trust network before processing the request.

**Complementary Option:** Both the [VHL Receiver](ActorDefinition-VHLReceiver.md) and [VHL Sharer](ActorDefinition-VHLSharer.md) SHALL support this option for VC-based authentication to be used.

See ITI-YY5 Section 2:3.YY5.4.1.5 for detailed VC construction, request format, and verification process.

### 1:XX.2.6 VC Enveloped VHL Option (VHL Sharer)

The VC Enveloped VHL Option enables the [VHL Sharer](ActorDefinition-VHLSharer.md) to return the VHL as a signed W3C Verifiable Credential (`application/vc+ld+json`) instead of a QR code in the ITI-YY3 Generate VHL transaction. The VC is subsequently transmitted to the [VHL Receiver](ActorDefinition-VHLReceiver.md) via ITI-YY4 Provide VHL as an alternative carrier to the HCERT/CWT QR code.

This option provides:

* An alternative carrier for the VHL payload, suitable for machine-to-machine transfer and asynchronous delivery where QR presentation is impractical
* A JSON-LD representation compatible with VC-aware ecosystems
* Reuse of the existing trust network — the VC's `DataIntegrityProof` chains to the same trust anchors used for HCERT/CWT verification (no new trust framework introduced)

**How It Works:**

When the caller of `$generate-vhl` sets `format=vc` and the [VHL Sharer](ActorDefinition-VHLSharer.md) supports this option, the [VHL Sharer](ActorDefinition-VHLSharer.md) returns the VHL payload under `credentialSubject` of a VC issued per the [W3C Verifiable Credentials Data Model v2](https://www.w3.org/TR/vc-data-model-2.0/), with an embedded `DataIntegrityProof` (cryptosuite `ecdsa-2019`) signed by the [VHL Sharer](ActorDefinition-VHLSharer.md) using its trust-network key. The same fields otherwise embedded at HCERT claim key 5 (`url`, `key`, `flag`, `label`, `exp`, `v`, `extension`) are carried in `credentialSubject`. If the option is not supported and `format=vc` is requested, the [VHL Sharer](ActorDefinition-VHLSharer.md) SHALL return an OperationOutcome error.

**Naming Note:** This option (a Sharer option carrying the VHL) is distinct from the **Verifiable Credential Option** (a Receiver authentication option at ITI-YY5 where the Receiver self-issues a VC as the manifest request body).

See ITI-YY3 Section [2:3.YY3.4.1.2.1 Output Carrier Options](ITI-YY3.md#output-carrier-options) for VC construction, ITI-YY4 Section [2:3.YY4.4.1.2 Message Semantics](ITI-YY4.md#23yy4412-message-semantics) for transmission, and ITI-YY4 Section [2:3.YY4.4.1.4 Expected Actions - VHL Receiver](ITI-YY4.md#23yy4414-expected-actions---vhl-receiver) for decoding.

## 1:XX.3 Required Actor Groupings

The following actor groupings are required for secure operations within the VHL trust network:

Table XX.3-1: VHL Profile - Required Actor Groupings

| | | | |
| :--- | :--- | :--- | :--- |
| [VHL Receiver](ActorDefinition-VHLReceiver.md) | Required for ITI-YY5 | ITI ATNA / Secure Node or Secure Application | ITI TF-1: 9.1 |
| [VHL Sharer](ActorDefinition-VHLSharer.md) | Required for ITI-YY5 | ITI ATNA / Secure Node or Secure Application | ITI TF-1: 9.1 |
| [VHL Sharer](ActorDefinition-VHLSharer.md) | Required for serving document binaries referenced from`DocumentReference.content.attachment.url` | ITI MHD / Document Responder ([ITI-68](https://profiles.ihe.net/ITI/MHD/ITI-68.html)) | ITI TF-2: 3.68 |
| [VHL Receiver](ActorDefinition-VHLReceiver.md) | Required for retrieving document binaries referenced from`DocumentReference.content.attachment.url` | ITI MHD / Document Consumer ([ITI-68](https://profiles.ihe.net/ITI/MHD/ITI-68.html)) | ITI TF-2: 3.68 |
| [Trust Anchor](ActorDefinition-TrustAnchor.md) | – | None | – |
| [VHL Holder](ActorDefinition-VHLHolder.md) | – | None | – |

Note: The [VHL Receiver](ActorDefinition-VHLReceiver.md) and [VHL Sharer](ActorDefinition-VHLSharer.md) SHALL be grouped with ATNA Secure Node or Secure Application to support the secure channel requirements of the ITI-YY5 Retrieve Manifest transaction.

Note: The [VHL Sharer](ActorDefinition-VHLSharer.md) SHALL be grouped with an MHD Document Responder so that the binary referenced from `DocumentReference.content.attachment.url` can be retrieved via [ITI-68 Retrieve Document](https://profiles.ihe.net/ITI/MHD/ITI-68.html). The [VHL Receiver](ActorDefinition-VHLReceiver.md) SHALL be grouped with an MHD Document Consumer to perform that retrieval. Document binaries are encrypted as JWE per RFC 7516/7518 using the `key` from the VHL payload decoded by the [VHL Receiver](ActorDefinition-VHLReceiver.md) in ITI-YY4; specific JWE algorithms are selected per [Cryptographic Algorithm Selection](#1xx53-cryptographic-algorithm-selection).

## 1:XX.4 Overview

This section shows how the transactions/content modules of the profile are combined to address the use cases.

### 1:XX.4.1 Concepts

A **Verifiable Health Link (VHL)** is a mechanism that enables individuals to share access to health documents in a secure, auditable, and configurable manner. Sharing options may include **limited-time access**, **PIN-protected retrieval**, or **ongoing access** to a longitudinal dataset that may evolve over time. VHLs can be rendered as QR codes or downloaded to a user’s device, supporting patient-mediated data sharing and enhancing interoperability across healthcare systems.

#### 1:XX.4.2 Use Cases

#### 1:XX.4.2.1 Use Case #1: WHO Global Digital Health Certification Network

The World Health Organization (WHO) operates the [Global Digital Health Certification Network (GDHCN)](https://smart.who.int/trust), a trust network for public-sector health jurisdictions. The GDHCN provides the infrastructure for the bilateral verification and utilization of Verifiable Digital Health Certificates across participating jurisdictions.

The GDHCN uses the notion of a **Trust Domain** which is defined by a set of:

* use cases and business processes related to the utilization of Verifiable Digital Health Certificates
* open, interoperable technical specifications that define the applicable Trusted Services and verifiable digital health certificates for the use case
* policy and regulatory standards describing expected behavior of participants for the use case

**How Trust is Established:**

Trust in the GDHCN is established through a Public Key Infrastructure (PKI). Each participating jurisdiction submits its PKI material — including Signing Certificate Authority (SCA) certificates and Document Signer Certificates (DSCs) — to the WHO Trust Anchor through a formal onboarding process. The Trust Anchor publishes this key material in trust lists that other participants can retrieve and use to verify the digital signatures on health certificates.

**DID-Based Trust List Distribution:**

The GDHCN distributes trust lists using [Decentralized Identifiers (DIDs)](https://www.w3.org/TR/did-core/). Each participating jurisdiction's key material is represented as a DID Document containing verification methods with the jurisdiction's public keys. These DID Documents are published as endpoints by the Trust Anchor, analogous to how the [IHE mCSD Profile](https://profiles.ihe.net/ITI/mCSD/) distributes service endpoints for Organizations. This enables participants to discover and retrieve the PKI material needed for signature verification through a standardized, cacheable, and federated mechanism.

**Trust Network Gateway:**

The GDHCN Trust Network Gateway (TNG) provides a federated architecture that enables multiple trust anchors and cross-gateway trust propagation. The TNG supports both an API gateway method and DID-based resolution for trust list distribution, ensuring interoperability across diverse jurisdictional implementations.

The PKI operated by the WHO supports a variety of trust domains, two of which — the Hajj Pilgrimage and the Pan-American Highway for Health — are described below.

![](trust_network.png)

This use case has the following business requirements:

* [Establish Trust](Requirements-EstablishTrust.md)
* [Initiate Submit PKI Material Request](Requirements-InitiateSubmitPKIMaterialRequest.md)
* [Initiate Retrieve Trust List Request](Requirements-InitiateRetrieveTrustListRequest.md)

##### 1:XX.4.2.1.1 Hajj Pilgrimage Use Case Description

During the Hajj pilgrimage, the Kingdom of Saudi Arabia (KSA) hosts approximately two million pilgrims from across the globe as part of a mass gathering event. Temporary hospitals and clinics, comprising over a thousand beds, are established to provide care to the pilgrims over the four-week period of Hajj.

Starting with Hajj 1445 AH (2024 CE), pilgrims from Oman, Malaysia, and Indonesia were able to share their health records utilizing the International Patient Summary (IPS) with verification of health documents provided through the WHO Global Digital Health Certification Network (GDHCN) infrastructure.

Key Features:

* Trust established through WHO GDHCN trust network
* Multi-country interoperability (Oman, Malaysia, Indonesia to KSA)
* IPS-based continuity of care
* Consent captured and enforced through IPS Advanced Directives
* PIN protection for additional security on printed cards
* Support for both physical and digital VHL provisioning

Some of the challenges faced during the pilot implementation, though not necessarily to be taken up in this profile, include:

* while not the main point of security, leveraging the PIN is a weakness, need to enable better options for future consideration (e.g. biometrics, other authorization methods). The **Verifiable Credential Option** (ITI-YY5 Section 2:3.YY5.4.1.5) addresses this by allowing the VHL Receiver to authenticate using a self-issued VC signed with its trust network key, eliminating reliance on a shared PIN for receiver authentication while retaining the passcode as an optional additional factor for the holder.
* in planning for expansion to umrah and general tourism, there will not in general be a health check which presents some process challenges such as not having a encounter point to record consent prior to a visit
* how to scale and automate some of the health checks (e.g. are vaccinations sufficient) using verifiable health documents (e.g. the IPS).

![](hajj-diagram.png)

This use case has the following business requirement:

* [Establish Trust](Requirements-EstablishTrust.md)
* [Create Secure Channel](Requirements-CreateSecureChannel.md)

##### 1:XX.4.2.1.2 Pan-American Highway for Health Use Case Description

In the region of the Americas, "countries identified several priorities for cross-border digital health, including optimizing available human resources through international telehealth, validating digital certificates, ensuring continuity of care, and regional resilience to face health emergencies by sharing data for public health. During the IDB-PAHO co-led event, RELACSIS 4.0.1 a plan was launched to strengthen regional digital health services and resilience, through regional data exchange and policy harmonization. Sixteen countries successfully exchanged digital vaccine certificates (COVID-19, Polio, Measles, and Yellow Fever) and critical clinical information (diagnosis, allergy, and prescription information) using international standards during the 2nd Regional LACPASS Connectathon.2 Regional bodies and network such as the Council of Ministers of Health of Central America and the Dominican Republic (COMISCA), The Caribbean Public Health Agency (CARPHA), and the LAC Digital Health Network (RACSEL) have all identified cross-border data sharing as a priority."
 [footnote](https://ewsdata.rightsindevelopment.org/files/documents/46/IADB-RG-T4546_BBZnmFh.pdf)

The Pan American Health Organization (PAHO) and the InterAmerican Development Bank (IADB) are supporting the development of policies and digital infrastructrue to support this need. One particular priority is to improve the continuity of care for internal migrants within the region, by ensuring individuals have access to and can share their vaccination records and the International Patient Summary.

The Pan-American Highway for Health (PH4H) "aims to provide patients with better healthcare services, regardless of their location. It will also enhance healthcare for those who move temporarily for work or study, as well as for migrants, by enabling them to share their health history, thus improving their employability and access to education. "
 [footnote](https://ewsdata.rightsindevelopment.org/files/documents/46/IADB-RG-T4546_BBZnmFh.pdf)

While there currently there is no single legal framework that broadly enables data sharing across the region, there are sub-regional networks (e.g. COMISCA, CARPHA) that have policies that can be leveraged in the short term while necessary data sharing agreements are developed. Thus, individuals in this region will need to be able to move through overlapping trust networks.

![](PH4H.png)

This use case has the following business requirement:

* [Establish Trust](Requirements-EstablishTrust.md)

#### 1:XX.4.2.2 Use Case #2: EU Vaccination Card

The [European Vaccination Card (EVC)](https://euvabeco.eu/news/european-vaccination-card-evc-a-citizen-held-card-to-foster-informed-decision-making-on-vaccination-and-improve-continuity-of-care-across-the-eu/) is a citizen-held card to foster informed decision-making on vaccination, and improve continuity of care across the EU.

The EVC will allow "Member States to bilaterally verify the authenticity of digital records through an interoperable trust architecture. While similar to the EU Digital COVID Certificate in being a portable vaccination record, the EVC serves a different purpose. Unlike the certificate, which often fulfilled legal or health mandates, the EVC is specifically designed to empower individuals by granting them control over their vaccination information. This empowerment is crucial for ensuring continuity of care for those crossing borders or transitioning between healthcare systems."

The EVC will operate in the context of the European Health Data Spaces that requires detailed information on access the health data to be recorded.

![](ehds_legal.png)

For more information see Regulation (EU) 2025/327 of the European Parliament and of the Council of 11 February 2025 on the European Health Data Space and amending Directive 2011/24/EU and Regulation (EU) 2024/2847. Specifically:

* [ANNEX II - Essential requirements for the harmonised software components of EHR systems and for products for which interoperability with EHR systems has been claimed](https://eur-lex.europa.eu/eli/reg/2025/327/oj#anx_II)
* [Article 9 - Right to obtain information on accessing data](https://eur-lex.europa.eu/eli/reg/2025/327/oj#art_9)

A critical privacy requirement for the EVC is unlinkability: Article 5a(16) of [Regulation (EU) No 910/2014 as amended](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX%3A02014R0910-20241018) **Article 5a(16):** The technical framework of the European Digital Identity Wallet shall:

> (a) not allow providers of electronic attestations of attributes or any other party, after the issuance of the attestation of attributes, to obtain data that allows transactions or user behaviour to be tracked, linked or correlated, or knowledge of transactions or user behaviour to be otherwise obtained, unless explicitly authorised by the user;

> (b) enable privacy preserving techniques which ensure unlinkability, where the attestation of attributes does not require the identification of the user.

The **Verifiable Credential Option** (ITI-YY5 Section 2:3.YY5.4.1.5) is relevant to the EUVAC context: the self-issued VC binds each manifest request cryptographically to the receiver's identity and the specific decoded manifest, ensuring the VHL Sharer can authenticate the receiver without maintaining a persistent session or correlating requests across VHL presentations — supporting the unlinkability requirements above when combined with appropriate key management practices.

This use case has the following business requirement:

* [Record Access To Health Data](Requirements-RecordAccessToHealthData.md)

#### 1:XX.4.2.3 Use Case #3: US Trusted Exchange Framework and Common Agreement (TEFCA)

The [Trusted Exchange Framework and Common Agreement (TEFCA)](https://www.healthit.gov/topic/interoperability/policy/trusted-exchange-framework-and-common-agreement-tefca) is a United States initiative established by the Office of the National Coordinator for Health IT (ONC) and operated by the Sequoia Project as the Recognized Coordinating Entity (RCE). TEFCA provides a single on-ramp for nationwide health information exchange by establishing a common set of principles, terms, and conditions that enable nationwide interoperability.

Under TEFCA, Qualified Health Information Networks (QHINs) serve as the primary exchange intermediaries, facilitating data sharing among Health Information Networks (HINs), healthcare providers, payers, and public health agencies. Each QHIN must meet rigorous security, privacy, and technical requirements to participate in the TEFCA ecosystem.

**Relevance to VHL:**

TEFCA's trust model aligns with the VHL profile's trust network architecture. In the context of VHL:

* QHINs and their participants can act as VHL Sharers and VHL Receivers within the TEFCA trust framework
* TEFCA's credential and certificate management infrastructure can serve as a trust anchor for VHL exchanges
* The individual (patient) retains control over sharing their health records via VHL, consistent with TEFCA's patient access principles

**OAuth with SSRAA Option:**

Organizations already using OAuth with UDAP (via the [HL7 SSRAA IG](http://hl7.org/fhir/us/udap-security/)) can leverage VHL for health record sharing without additional authentication infrastructure. TEFCA participants, for example, can use their existing TEFCA-issued X.509 certificates and UDAP Dynamic Client Registration to authenticate VHL exchanges, enabling seamless interoperability within established national-scale health information networks.

This use case has the following business requirements:

* [Establish Trust](Requirements-EstablishTrust.md)
* [Create Secure Channel](Requirements-CreateSecureChannel.md)
* [Request VHL Documents](Requirements-RequestVHLDocuments.md)

## 1:XX.5 Security Considerations

VHL is a building block that is meant to be used together with added security measures, otherwise it is not suitable for exchange in environments where security and provenance cannot be reliably established by other means.

Key security considerations include:

### 1:XX.5.1 Trust Network Security

* All participants ([VHL Receiver](ActorDefinition-VHLReceiver.md), [VHL Sharer](ActorDefinition-VHLSharer.md)) SHALL establish trust via the [Trust Anchor](ActorDefinition-TrustAnchor.md). ITI-YY1 (Submit PKI Material) and ITI-YY2 (Retrieve Trust List) transactions MAY be used to support this trust establishment.
* PKI material SHALL be validated before use in signature verification or secure channel establishment.
* Certificates and keys should be regularly updated and revocation status checked.

### 1:XX.5.2 Secure Channel Requirements

* ITI-YY5 (Retrieve Manifest) SHALL be conducted over a secure channel as defined by ATNA Authenticate Node [ITI-19].
* Both [VHL Receiver](ActorDefinition-VHLReceiver.md) and [VHL Sharer](ActorDefinition-VHLSharer.md) SHALL present credentials validated against the [Trust Anchor](ActorDefinition-TrustAnchor.md).
* Mutual authentication is required for all document retrieval operations.

### 1:XX.5.3 Cryptographic Algorithm Selection

The transactions in this profile (ITI-YY1 through ITI-YY5) rely on cryptographic primitives for digital signatures, message authentication, and content encryption. This IG does not mandate a single algorithm suite for deployment. Implementers select algorithms consistent with the underlying specifications — for example, RFC 9421 (HTTP Message Signatures), RFC 7515/7516/7518 (JWS/JWE/JWA), RFC 8152 (COSE), W3C Data Integrity (Verifiable Credentials), the HL7 SSRAA IG (OAuth with SSRAA Option), and the WHO SMART Trust specification (HCERT). The preceding list is illustrative, not exhaustive.

**Interoperability baseline:** For the purpose of interoperability testing, implementations SHALL support **RS256** (RSASSA-PKCS1-v1_5 using SHA-256, per RFC 7518) as a common baseline across signature operations where a JWS/JWT algorithm is applicable. This baseline ensures that two independent conformant implementations can always interoperate during testing. It does not preclude support for — or preferred deployment use of — other algorithms (ECDSA families, EdDSA, RSA-PSS, COSE equivalents, or future post-quantum algorithms).

**Deployment considerations:** Implementers SHOULD take into account additional considerations beyond the interoperability baseline when selecting algorithms for production deployments, including but not limited to:

* **Jurisdictional policies and regulatory requirements** (e.g., national cryptographic agency guidance, healthcare-sector rules, data-protection law);
* **Post-quantum / quantum-safe cryptography** as standards mature (e.g., NIST PQC) and migration guidance evolves;
* **Evolving industry guidance** on algorithm deprecation, minimum key strengths, and cryptosuite lifecycle (e.g., updates from IETF, W3C, NIST, ENISA).

Algorithms named in examples, tables, and code blocks throughout this IG are illustrative. Except for the RS256 interoperability baseline stated above, they do not constrain deployment choices. Jurisdictions and trust networks MAY define additional profiles (permitted algorithm lists, minimum key lengths, deprecation schedules) consistent with this guidance.

### 1:XX.5.4 VHL Integrity and Authorization

* VHL signatures SHALL be verified before trusting VHL content.
* VHL expiration timestamps should be enforced.
* Passcodes (if used) should be communicated out-of-band and validated server-side.
* VHL Sharers should implement rate limiting and account lockout for failed passcode attempts.

### 1:XX.5.5 Audit Requirements

* The European Health Data Space (EHDS) requires detailed audit information on data access.
* Provisions 8f) and 12a) outline requirements for auditability of data access.
* VHL Sharers and VHL Receivers should record audit events documenting: 
* VHL generation requests
* VHL provision events
* Document retrieval attempts
* Authentication/authorization failures
 

### 1:XX.5.6 Privacy Considerations

* VHL payloads do not contain PHI - only references to documents.
* Actual health data is transmitted over secure channels (ITI-YY5).
* Consent may be recorded during VHL generation (Record Consent option).
* VHL Holders retain the right to revoke access where supported.

## 1:XX.6 Cross-Profile Considerations

This section is informative, not normative. It is intended to put this profile in context with other profiles. Any required groupings should have already been described above.

### 1:XX.6.1 ATNA - Audit Trail and Node Authentication

The [VHL Receiver](ActorDefinition-VHLReceiver.md) and [VHL Sharer](ActorDefinition-VHLSharer.md) SHALL be grouped with ATNA Secure Node or Secure Application actors to support the secure channel requirements of ITI-YY5. This grouping ensures:

* Mutual authentication via X.509 certificates or other ATNA-supported mechanisms
* Secure channel establishment per ATNA Authenticate Node [ITI-19]
* Audit logging capabilities for security events

### 1:XX.6.2 PCF - Privacy Consent on FHIR

The [IHE Privacy Consent on FHIR (PCF)](https://profiles.ihe.net/ITI/PCF/) profile is the recommended companion for capturing, storing, and enforcing patient consent alongside VHL. When the [VHL Sharer](ActorDefinition-VHLSharer.md) implements the Record Consent option, it acts as a Consent Recorder and initiates Access Consent [ITI-108] transactions to record consent declarations by the [VHL Holder](ActorDefinition-VHLHolder.md).

Recommended groupings:

* **[VHL Holder](ActorDefinition-VHLHolder.md) (or the Holder's client app)** MAY be grouped with a PCF **Consent Creator** so that the Holder authors a `Consent` resource when generating a VHL.
* **[VHL Sharer](ActorDefinition-VHLSharer.md)** MAY be grouped with a PCF **Consent Recipient** so that consents governing a generated folder are persisted and discoverable, and with a PCF **Policy Enforcement Point (PEP)** so that the set of documents returned at [ITI-YY5](ITI-YY5.md) is filtered by the active `Consent.provision` (actor, purpose, period, class, code).

The `$generate-vhl` operation (ITI-YY3) accepts an optional `purposeOfUse` input parameter bound (extensible) to the HL7 v3 [PurposeOfUse](http://terminology.hl7.org/ValueSet/v3-PurposeOfUse) value set. The [VHL Sharer](ActorDefinition-VHLSharer.md) persists this value against the generated folder. When the [VHL Sharer](ActorDefinition-VHLSharer.md) is grouped with a PCF Consent Creator or Consent Recipient, the value populates `Consent.provision.purpose` on any `Consent` created for or bound to the folder. At ITI-YY5, the [VHL Sharer](ActorDefinition-VHLSharer.md) MAY reject manifest requests whose purpose claim (carried by the chosen authentication option — OAuth token, UDAP assertion, or Verifiable Credential) is inconsistent with the purpose recorded at generation time.

### 1:XX.6.3 MHD - Mobile Health Document Sharing

ITI-YY5 (Retrieve Manifest) reuses the FHIR search machinery of [MHD ITI-66 Find Document Lists](https://profiles.ihe.net/ITI/MHD/ITI-66.html): the VHL manifest URL constructed at ITI-YY3 is a FHIR `List` search using the parameters the Document Responder is required to support per ITI-66, and the ITI-YY5 response is an ITI-66 `searchset` Bundle. Binary retrieval is delegated to [MHD ITI-68 Retrieve Document](https://profiles.ihe.net/ITI/MHD/ITI-68.html) per the required grouping in [Section XX.3 Required Actor Groupings](#required-groupings).

### 1:XX.6.4 mCSD - Mobile Care Services Discovery

The [Trust Anchor](ActorDefinition-TrustAnchor.md) may store DID (Decentralized Identifier) as endpoints for Jurisdictions. The mCSD Profile supports querying for Endpoint(s) for Organizations.

### 1:XX.6.5 DSG/DSGj - Document Digital Signature

The Verify Document Signature option enables [VHL Receiver](ActorDefinition-VHLReceiver.md) to verify digital signatures on retrieved documents. This may use:

* DSG (Document Digital Signature) profile for XML-based documents
* DSGj (JSON Document Signature) profile for JSON-based documents

The key material used for document signature verification may or may not be the same as the key material used to verify the VHL itself, and may or may not be distributed under the same trust network.

