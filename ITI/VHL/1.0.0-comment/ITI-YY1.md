# 2:3.YY1 Submit PKI Material with DID - Verifiable Health Links v1.0.0-comment

* [**Table of Contents**](toc.md)
* **2:3.YY1 Submit PKI Material with DID**

## 2:3.YY1 Submit PKI Material with DID

> **Note on Transaction Optionality**: This transaction is **REQUIRED (R)** for Trust Anchor actors and **OPTIONAL (O)** for VHL Sharer and VHL Receiver actors. Implementations that do not support this transaction must use alternative mechanisms (out of scope for this profile) to establish trust relationships with the Trust Anchor. Only implementations that claim support for this transaction can participate in IHE Connectathon testing for trust establishment. See Volume 1 Section [1:XX.5.1 Trust Network Security](volume-1.md#1xx51-trust-network-security) for details on trust establishment approaches.

### 2:3.YY1.1 Scope

The Submit PKI Material with DID transaction enables entities within a trust network—specifically, [VHL Sharer](ActorDefinition-VHLSharer.md)s and [VHL Receiver](ActorDefinition-VHLReceiver.md)s—to submit their public key material to a designated [Trust Anchor](ActorDefinition-TrustAnchor.md) using Decentralized Identifiers (DIDs). This transaction uses DID Documents conforming to the W3C DID Core specification to package and transmit cryptographic key material. The [Trust Anchor](ActorDefinition-TrustAnchor.md) validates, catalogs, and makes this material available for retrieval, enabling participants to verify digital signatures and establish secure communications within the VHL ecosystem.

### 2:3.YY1.2 Actor Roles

| | |
| :--- | :--- |
| [VHL Receiver](ActorDefinition-VHLReceiver.md),[VHL Sharer](ActorDefinition-VHLSharer.md) | Initiate Submit PKI Material Request |
| [Trust Anchor](ActorDefinition-TrustAnchor.md) | Respond to Submit PKI Material Request |

### 2:3.YY1.3 Referenced Standards

* **W3C DID Core 1.0**: [Decentralized Identifiers (DIDs) v1.0](https://www.w3.org/TR/did-core/)
* **RFC 7517**: JSON Web Key (JWK)

### 2:3.YY1.4 Messages

Figure 3:YY1.4-1: Submit PKI Material with DID Interaction Diagram

#### 2:3.YY1.4.1 Submit PKI Material Request Message

##### 2:3.YY1.4.1.1 Trigger Events

When a [VHL Sharer](ActorDefinition-VHLSharer.md) or [VHL Receiver](ActorDefinition-VHLReceiver.md) generates a new public-private key pair for use within the VHL trust network, they SHALL submit the corresponding public key material to the [Trust Anchor](ActorDefinition-TrustAnchor.md) for validation and inclusion in the trust list.

The submission MAY include metadata to support categorization of key usage (e.g., digital signatures, encryption, secure channels) and business or operational context.

**VHL Sharer / VHL Receiver (Submitter):**

The submitting actor:

1. **Generates Key Pair**: Generate one or more cryptographic key pairs suitable for the intended use (signing, encryption, authentication)
1. **Constructs DID Document**: Create a DID Document containing:
* A unique DID identifier for the entity
* Verification methods with public key material in JWK format

1. **Submits to Trust Anchor**: Sends the DID Document to the[Trust Anchor](ActorDefinition-TrustAnchor.md)via the designated submission pathway

##### 2:3.YY1.4.1.2 Message Semantics

PKI material SHALL be submitted to the [Trust Anchor](ActorDefinition-TrustAnchor.md) using DID Documents formatted according to the [W3C DID Core specification](https://www.w3.org/TR/did-core/).

**DID Document Structure**

The DID Document SHALL be formatted as a JSON document containing:

* A unique DID identifier for the submitting entity
* One or more verification methods containing public key material
* Service endpoints where the entity can be reached
* Authentication and assertion methods as appropriate

**Required DID Document Elements:**

| | | |
| :--- | :--- | :--- |
| @context | [1..*] | JSON-LD context, SHALL include "https://www.w3.org/ns/did/v1" |
| id | [1..1] | The DID for the submitting entity (e.g., "did:example:123456789abcdefghi") |
| verificationMethod | [1..*] | Array of verification methods containing public key material |

**Verification Method Structure:**

Each verification method SHALL include:

| | | |
| :--- | :--- | :--- |
| id | [1..1] | Unique identifier for this verification method (e.g., "did:example:123#keys-1") |
| type | [1..1] | Cryptographic suite type (e.g., "JsonWebKey2020", "EcdsaSecp256k1VerificationKey2019") |
| controller | [1..1] | DID that controls this verification method |
| publicKeyJwk | [0..1] | Public key in JWK format (RFC 7517) |

**Example DID Document:**

```
{
  "@context": [
    "https://www.w3.org/ns/did/v1",
    "https://w3id.org/security/suites/jws-2020/v1"
  ],
  "id": "did:example:vhl-sharer-123456",
  "verificationMethod": [{
    "id": "did:example:vhl-sharer-123456#signing-key-1",
    "type": "JsonWebKey2020",
    "controller": "did:example:vhl-sharer-123456",
    "publicKeyJwk": {
      "kty": "EC",
      "crv": "P-256",
      "x": "38M1FDts7Oea7urmseiugGW7tWc3mLpJh6rKe7xINZ8",
      "y": "nDQW6XZ7b_u2Sy9slofYLlG03sOEoug3I0aAPQ0exs4"
    }
  }]
}

```

**Submission Pathways**

The DID Document SHALL be submitted to the [Trust Anchor](ActorDefinition-TrustAnchor.md) via one of the following pathways (as determined by the implementing jurisdiction):

* **Direct HTTP POST**: Submit the DID Document directly to the [Trust Anchor](ActorDefinition-TrustAnchor.md)'s designated endpoint over a secure connection 

```
POST [trust-anchor-base]/did
Content-Type: application/did+json

```

 
* **Indirect Publication**: Publish the DID Document at a well-known URL under the control of the submitting organization and notify the [Trust Anchor](ActorDefinition-TrustAnchor.md) of the location
* **Offline Submission**: Submit the DID Document on secure physical media during a verified in-person encounter with formal identity attestation

**Required Metadata**

Submissions SHOULD include sufficient **provenance metadata** to support validation by the [Trust Anchor](ActorDefinition-TrustAnchor.md):

* The asserted identity of the submitting entity
* The intended usage scope of the key(s) (specified via authentication, assertionMethod, keyAgreement, etc.)
* An expiry date or revocation mechanism (if applicable)
* Digital signature or proof establishing the authenticity of the submission

##### 2:3.YY1.4.1.3 Expected Actions

**Trust Anchor (Receiver):**

Upon receipt of public key material from a [VHL Sharer](ActorDefinition-VHLSharer.md) or [VHL Receiver](ActorDefinition-VHLReceiver.md), the [Trust Anchor](ActorDefinition-TrustAnchor.md) SHALL validate, organize, sign, and expose the PKI material as part of a trusted, canonical trust list.

Upon receiving a DID Document submission, the [Trust Anchor](ActorDefinition-TrustAnchor.md) SHALL:

1. **Validate DID Document Structure**: Verify the DID Document conforms to W3C DID Core specification
1. **Verify Cryptographic Material**: Validate that:
* Public keys are properly formatted (JWK)
* Key types and curves are acceptable per trust framework policy
* Key sizes meet minimum security requirements

1. **Verify Identity**: Authenticate the submitting entity's identity through:
* secure connection
* Verification of proof/signature on the DID Document
* Validation against pre-registered organizational identifiers

1. **Catalog DID Document**: Store the validated DID Document in the Trust Anchor's registry
1. **Make Available for Retrieval**: Ensure the DID Document is accessible via the retrieval endpoint(s)

**Rejection Criteria**

The [Trust Anchor](ActorDefinition-TrustAnchor.md) SHALL reject submissions that:

* Do not conform to W3C DID Core specification
* Contain invalid or malformed cryptographic material
* Cannot be authenticated to a known trust network participant
* Use prohibited cryptographic algorithms or insufficient key sizes
* Lack required metadata or provenance information

#### 2:3.YY1.4.2 Submit PKI Material Response Message

##### 2:3.YY1.4.2.1 Trigger Events

The [Trust Anchor](ActorDefinition-TrustAnchor.md) sends a Submit PKI Material Response Message upon completing the processing of a Submit PKI Material Request Message. A response SHALL be returned regardless of whether the submission succeeded or failed.

##### 2:3.YY1.4.2.2 Message Semantics

The response message format is determined by the implementing jurisdiction of the [Trust Anchor](ActorDefinition-TrustAnchor.md).

**Success Response:**

On successful submission and validation, the [Trust Anchor](ActorDefinition-TrustAnchor.md) SHALL return:

* HTTP 201 Created (for HTTP POST submissions)

**Error Response:**

On failure, the [Trust Anchor](ActorDefinition-TrustAnchor.md) SHALL return an appropriate error response:

* HTTP 400 Bad Request: Malformed DID Document
* HTTP 401 Unauthorized: Authentication failed
* HTTP 403 Forbidden: Entity not authorized to submit
* HTTP 422 Unprocessable Entity: Valid format but validation failed

##### 2:3.YY1.4.2.3 Expected Actions

Upon receiving the response, the submitting actor ([VHL Sharer](ActorDefinition-VHLSharer.md) or [VHL Receiver](ActorDefinition-VHLReceiver.md)) SHALL:

1. **Handle Success**: On receipt of a success response, the submitting actor SHALL record that PKI material has been accepted by the[Trust Anchor](ActorDefinition-TrustAnchor.md)and is available for distribution to trust network participants.
1. **Handle Errors**: On receipt of an error response, the submitting actor SHALL inspect the error code and take corrective action as appropriate:
* For HTTP 400, correct the DID Document structure and resubmit
* For HTTP 401 or 403, resolve the authentication or authorization issue before retrying
* For HTTP 422, review the validation failure details and resubmit with corrected key material or metadata

1. **Retain Private Keys**: Regardless of the response, the submitting actor SHALL continue to securely maintain the private key(s) corresponding to any submitted public key material.

### 2:3.YY1.5 Security Considerations

The secure and verifiable exchange of PKI material via DID Documents is foundational to the operation of a Verified Health Link (VHL) trust network. Any compromise in the integrity, authenticity, or provenance of this material undermines the ability of network participants to verify digital signatures, authenticate service endpoints, or enforce trust relationships.

#### 2:3.YY1.5.1 DID Document Integrity

* DID Documents SHOULD be signed by the submitting entity using a verification method
* The [Trust Anchor](ActorDefinition-TrustAnchor.md) SHALL verify the authenticity of submitted DID Documents
* Submissions over HTTP SHALL use secure connections

#### 2:3.YY1.5.2 Key Material Security

* Private keys SHALL never be included in DID Documents (only public keys)
* Submitting entities SHALL securely store private keys with appropriate access controls
* Key material SHOULD meet minimum cryptographic strength requirements (e.g., EC P-256 or stronger)

#### 2:3.YY1.5.3 Identity Verification

* The [Trust Anchor](ActorDefinition-TrustAnchor.md) SHALL authenticate the identity of submitting entities
* Authentication mechanisms MAY include: 
* Secure connection with pre-registered certificates
* Signed proof-of-control over the DID
* Out-of-band identity verification for initial registration
 

#### 2:3.YY1.5.4 DID Document Validation

The [Trust Anchor](ActorDefinition-TrustAnchor.md) SHALL validate that:

* DID Documents conform to W3C DID Core specification
* Cryptographic algorithms are from an approved list
* Key sizes meet minimum security requirements
* Verification methods are properly referenced in authentication/assertion arrays

#### 2:3.YY1.5.5 Revocation and Updates

* The [Trust Anchor](ActorDefinition-TrustAnchor.md) SHALL support mechanisms for updating or revoking DID Documents
* Revoked or expired DID Documents SHALL NOT be distributed to participants
* The [Trust Anchor](ActorDefinition-TrustAnchor.md) MAY maintain a history of DID Document versions for audit purposes

Jurisdictions MAY define additional security controls, such as specific cryptographic algorithm requirements, certificate chaining policies, offline verification workflows, or restrictions on submission endpoints.

