# Test Plan - Verifiable Health Links v1.0.0-comment

* [**Table of Contents**](toc.md)
* **Test Plan**

## Test Plan

We expect the maturity of the content will improve over time. For now, we summarize high level testing scope and available tools. Comments are welcome.

## Introduction

VHL is an API between four actors: Trust Anchor, VHL Sharer, VHL Holder, and VHL Receiver. The Trust Anchor manages and distributes PKI material to enable digital signature verification across the trust network. The VHL Sharer generates Verifiable Health Links and responds to manifest retrieval requests. The VHL Holder is a person who possesses a VHL and presents it to a VHL Receiver. The VHL Receiver validates the VHL, retrieves the manifest, and accesses health documents from the VHL Sharer.

The testing focuses on the five transactions defined in this profile: Submit PKI Material with DID [ITI-YY1], Retrieve Trust List with DID [ITI-YY2], Generate VHL [ITI-YY3], Provide VHL [ITI-YY4], and Retrieve Manifest [ITI-YY5]. Testing is primarily focused on server-side actor expectations (Trust Anchor and VHL Sharer) where transaction semantics can be validated against conformance criteria, as well as VHL Receiver decoding and verification behavior.

Overall test plan leverages the Examples shown on the [Artifacts Summary](artifacts.md). The [Example Scenarios](artifacts.md#example-example-scenarios) listed illustrate the use cases and interactions defined by this implementation guide. Any applicable resources that are known to have been published by an app or server SHALL conform to the actor and transaction requirements defined in this guide.

This section will be filled in as the IHE-Connectathon need drives the creation of the test plans, test procedures, test tools, and reporting.

### High-level Test Scope

#### Trust Establishment

The Trust Anchor SHALL be tested for its ability to receive and validate PKI material submissions [ITI-YY1] using Decentralized Identifiers (DIDs) conformant to the W3C DID Core 1.0 specification. This includes validating DID Document structure, verification methods, and public key formats (JWK or multibase). The Trust Anchor SHALL also be tested for responding to trust list retrieval requests [ITI-YY2], including support for single DID resolution, bulk DID queries, and filtering by status (active, revoked, expired).

#### VHL Generation and Provision

The VHL Sharer SHALL be tested for its ability to process `$generate-vhl` operation requests [ITI-YY3] from a VHL Holder, including validation of input parameters (sourceIdentifier, exp, flag, label, passcode) and generation of a correctly structured QR code containing an HCERT/CWT-encoded VHL with the HC1: prefix. The VHL Holder's ability to present the VHL to a VHL Receiver [ITI-YY4] via QR code is tested as part of the end-to-end workflow.

#### VHL Decoding and Verification

The VHL Receiver SHALL be tested for its ability to correctly perform the full VHL decoding process [ITI-YY4]: scanning the QR code, verifying the HC1: prefix, Base45 decoding, ZLIB/DEFLATE decompression, CBOR Web Token (CWT) parsing, COSE digital signature verification, CWT claims validation, VHL payload extraction, and VHL payload validation.

#### Manifest Retrieval

The VHL Receiver and VHL Sharer SHALL be tested for the Retrieve Manifest transaction [ITI-YY5]. This includes the VHL Receiver's ability to construct and send a valid FHIR search request on the List resource with appropriate search parameters (_id, code, status, patient.identifier, _include) and SHL parameters (recipient, passcode). The VHL Sharer SHALL be tested for returning a conformant searchset Bundle. Authentication via HTTP Message Signatures (RFC 9421) is required and SHALL be validated.

#### Options Testing

Testing of actor options includes:

* **Sign Manifest Request Option** - VHL Receiver digitally signs manifest requests; VHL Sharer verifies the signature for mutual authentication and non-repudiation.
* **Include DocumentReference Option** - VHL Receiver requests and VHL Sharer returns DocumentReference resources in the manifest response using `_include=List:item`.
* **Verify Document Signature Option** - VHL Receiver verifies digital signatures on retrieved documents using previously obtained PKI material.
* **OAuth with SSRAA Option** - VHL Receiver and VHL Sharer use OAuth 2.0 access tokens as an alternative authentication mechanism for ITI-YY5.
* **Verifiable Credential Option** - VHL Receiver self-issues a JSON-LD LDP-VC (W3C VC Data Model v2) whose `credentialSubject` is the manifest decoded from the QR code, with an embedded `DataIntegrityProof` signed with its trust network key. The VC is sent directly as the HTTP POST body (`Content-Type: application/vc+ld+json`) with FHIR search parameters in the URL. VHL Sharer verifies the `proof.proofValue` using the receiver's public key from the trust network and confirms that `credentialSubject.id` matches the `_id` URL parameter. Testing SHALL include: 
* Correct LDP-VC construction: `@context` = `https://www.w3.org/ns/credentials/v2`, required `type`, `issuer`, `issuanceDate`, `expirationDate`, `credentialSubject`, and `proof` fields
* Correct `proof` element: `type` = `DataIntegrityProof`, valid `cryptosuite` (`ecdsa-2019` or `eddsa-2022`), `proofPurpose` = `assertionMethod`, `verificationMethod` DID URL, and correct `proofValue` computed over the VC document
* Correct `credentialSubject` binding: `id` = manifest URL, `manifest` = VHL payload fields (excluding encryption key), `recipient`, `passcode` (if applicable), `embeddedLengthMax`
* Correct request format: FHIR search parameters in URL query string; VC as `application/vc+ld+json` body
* VHL Sharer acceptance of a valid VC with valid `proof.proofValue` from a receiver whose key is in the trust network
* VHL Sharer rejection of VCs with: invalid `proof.proofValue`, unresolvable `proof.verificationMethod`, expired `expirationDate`, `credentialSubject.id` mismatch with URL `_id`
 

### Unit Test Procedure

Unit Tests in this context is where a SUT is tested against a simulator or validator. A simulator is a implementation of an actor that is designed specifically to test the opposite pair actor. The simulator might be a reference implementation or may be a specially designed test-bench. Where a reference implementation is used the negative tests are harder to simulate. A validator is a implementation that can check conformance. A validator may be a simulator, but may also be a standalone tool used to validate only a message encoding. Some reference implementations may be able to validate to a StructureDefinition profile, but often these do not include sufficient constraints given the overall actor conformance criteria.

**Trust Anchor** – see [TestPlan-TrustAnchor](TestPlan-TestPlan-TrustAnchor.md)

* [ITI-YY1] : On receipt of a DID Document, validate, organize, and sign the trust list, acknowledge
* [ITI-YY2] : On receipt of a Retrieve Trust List Request, the Trust Anchor responds with the DID Documents

**VHL Sharer** – see [TestPlan-VHLSharer](TestPlan-TestPlan-VHLSharer.md)

* [ITI-YY1] : Submit PKI Material with DID – validate DID semantics
* [ITI-YY3] : Generate VHL – given the operation inputs, validate the output
* [ITI-YY5] : Retrieve Manifest – authenticate the receiver and return a conformant searchset Bundle

**VHL Receiver** – see [TestPlan-VHLReceiver](TestPlan-TestPlan-VHLReceiver.md)

* [ITI-YY1] : Submit PKI Material with DID (Optional) – same initiator expectations as VHL Sharer
* [ITI-YY2] : Retrieve Trust List – construct the request and process the response correctly
* [ITI-YY4] : Provided QR code is decoded through the full nine-step HCERT/CWT pipeline
* [ITI-YY5] : Retrieve Manifest – construct and sign the request; process the searchset Bundle

### Integration Test Procedure

Integration Tests in this context is where two SUT of paired actors test against each other. In this case the subset of tests that can be tested is the intersection. Testing only this intersection is necessary but not sufficient. The testing SHALL also include the capability of the client to exercise the test scenarios that this SUT can test, to determine that failure-modes are handled properly by both SUT.

**Integration**

* Establish Trust
* Generate/Provide/Retrieve —-specific keys are available to use

