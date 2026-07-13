# 2:3.YY2 Retrieve Trust List with DID - Verifiable Health Links v1.0.0-comment

* [**Table of Contents**](toc.md)
* **2:3.YY2 Retrieve Trust List with DID**

## 2:3.YY2 Retrieve Trust List with DID

> **Note on Transaction Optionality**: This transaction is **REQUIRED (R)** for Trust Anchor actors and **OPTIONAL (O)** for VHL Sharer and VHL Receiver actors. Implementations that do not support this transaction must use alternative mechanisms (out of scope for this profile) to retrieve PKI material from the Trust Anchor. Only implementations that claim support for this transaction can participate in IHE Connectathon testing for trust material retrieval. See Volume 1 Section [1:XX.5.1 Trust Network Security](volume-1.md#1xx51-trust-network-security) for details on trust establishment approaches.

### 2:3.YY2.1 Scope

The Retrieve Trust List with DID transaction allows both [VHL Sharer](ActorDefinition-VHLSharer.md)s and [VHL Receiver](ActorDefinition-VHLReceiver.md)s to retrieve trusted public key material from the [Trust Anchor](ActorDefinition-TrustAnchor.md) using Decentralized Identifiers (DIDs).

Retrieved material SHALL be used to determine the trustworthiness of VHL artifacts in accordance with the governing trust framework.

Figure 2:3.YY2.1-1: Retrieve Trust List with DID Interaction Diagram

### 2:3.YY2.2 Actor Roles

| | |
| :--- | :--- |
| VHL Receiver, VHL Sharer | Initiate Retrieve Trust List Request |
| Trust Anchor | Retrieve Trust List Response |

### 2:3.YY2.3 Referenced Standards

* **W3C DID Core 1.0**: [Decentralized Identifiers (DIDs) v1.0](https://www.w3.org/TR/did-core/)
* **RFC 7517**: JSON Web Key (JWK)
* **IHE mCSD**: [Mobile Care Services Discovery](https://profiles.ihe.net/ITI/mCSD/)

### 2:3.YY2.4 Messages

#### 2:3.YY2.4.1 Retrieve Trust List Request Message

##### 2:3.YY2.4.1.1 Trigger Events

A [VHL Sharer](ActorDefinition-VHLSharer.md) or [VHL Receiver](ActorDefinition-VHLReceiver.md), as a participant in the trust network, SHALL be capable of retrieving public key infrastructure (PKI) material from a designated [Trust Anchor](ActorDefinition-TrustAnchor.md).

The retrieved material MAY include:

* Public key certificates and associated trust lists
* Certificate revocation data (e.g., CRLs, OCSP responses)
* Metadata used to: 
* Validate digital signatures on VHLs and related resources
* Establish secure connections
* Decrypt content protected via asymmetric encryption
 

Participants SHOULD cache the received trust list to reduce network and server load.

**Preconditions:**

* The requesting participant knows in advance the endpoint from which to retrieve PKI material, as published or distributed by the Trust Anchor.

The [Trust Anchor](ActorDefinition-TrustAnchor.md) SHALL have made available at least one endpoint (such as an mCSD-compliant endpoint) that is accessible to all participants in the trust network. The requesting participant ([VHL Receiver](ActorDefinition-VHLReceiver.md) or [VHL Sharer](ActorDefinition-VHLSharer.md)) knows in advance the endpoint from which to retrieve DID Documents and PKI material.

The [Trust Anchor](ActorDefinition-TrustAnchor.md) MAY additionally provide individual endpoints per participant, in addition to the common endpoint.

##### 2:3.YY2.4.1.2 Message Semantics

The Retrieve Trust List Request retrieves DID Documents from the [Trust Anchor](ActorDefinition-TrustAnchor.md).

**Request Methods:**

The mechanism used to retrieve a DID Document is determined by the DID method of the DID being resolved. Implementations SHALL resolve DID Documents according to the resolution rules defined by the applicable DID method specification.

##### 2:3.YY2.4.1.3 Expected Actions

**VHL Sharer / VHL Receiver (Requester):**

The requesting actor SHALL:

1. **Determine Retrieval Endpoint**: Identify the[Trust Anchor](ActorDefinition-TrustAnchor.md)endpoint for DID Document retrieval
1. **Construct Request**: Build an HTTP GET request for retrieval of DID Document
1. **Submit Request**: Send the request over a secure connection

#### 2:3.YY2.4.2 Retrieve Trust List Response Message

##### 2:3.YY2.4.2.1 Trigger Events

Upon receipt of Retrieve Trust List Request from a [VHL Sharer](ActorDefinition-VHLSharer.md) or [VHL Receiver](ActorDefinition-VHLReceiver.md), the [Trust Anchor](ActorDefinition-TrustAnchor.md) SHALL organize, sign, and expose the PKI material as part of a trusted, canonical trust list.

This MAY include:

* Public key certificates, trust chains, or JWKS structures
* Revocation data (CRL or OCSP)
* Usage metadata (e.g., key type, scope, intended usage)

The Trust Anchor SHALL only respond with validated and trustworthy material in accordance with the governance policies of the VHL trust framework. This signed trust list enables all participants in the VHL trust network to verify digital signatures and establish secure connections in accordance with the governance policies of the Trust Anchor.

Upon receipt of this response, participants SHALL process the trust list as described in [Receive Trust List](Requirements-ReceiveTrustList.md).

##### 2:3.YY2.4.2.2 Message Semantics

**Success Response:**

```
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@context": [
    "https://www.w3.org/ns/did/v1",
    "https://w3id.org/security/suites/jws-2020/v1"
  ],
  "id": "did:web:trust-anchor.example.org:v1:trustlist",
  "controller": "did:web:trust-anchor.example.org:v1:trustlist",
  "verificationMethod": [
    {
      "id": "did:web:trust-anchor.example.org:v1:trustlist#signing-key-1",
      "type": "JsonWebKey2020",
      "controller": "did:web:trust-anchor.example.org:v1:trustlist",
      "publicKeyJwk": {
        "kty": "EC",
        "kid": "signing-key-1",
        "crv": "P-256",
        "x": "38M1FDts7Oea7urmseiugGW7tWc3mLpJh6rKe7xINZ8",
        "y": "nDQW6XZ7b_u2Sy9slofYLlG03sOEoug3I0aAPQ0exs4"
      }
    },
    {
      "id": "did:example:vhl-sharer-123456#signing-key-2",
      "type": "JsonWebKey2020",
      "controller": "did:web:trust-anchor.example.org:v1:trustlist",
      "publicKeyJwk": {
        "kty": "EC",
        "kid": "signing-key-2",
        "crv": "P-256",
        "x": "38M1FDts7Oea7urmseiugGW7tWc3mLpJh6rKe7xINZ8-Q",
        "y": "nDQW6XZ7b_u2Sy9slofYLlG03sOEoug3I0aAPQ0exs4-"
      }
    }
  ],
  "proof": {
    "type": "JsonWebSignature2020",
    "created": "2025-01-15T12:00:00Z",
    "verificationMethod": "did:web:trust-anchor.example.org:v1:trustlist#signing-DID",
    "proofPurpose": "assertionMethod",
    "nonce": "a3f8c2d1-9b4e-4f7a-b6e2-1c5d8f3a9e2b",
    "jws": "eyJhbGciOiJFUzI1NiIsImI2NCI6ZmFsc2UsImNyaXQiOlsiYjY0Il19..example_signature_value"
  }
}

```

**Error Responses:**

| | |
| :--- | :--- |
| 404 Not Found | Requested DID not found in Trust Anchor registry |
| 401 Unauthorized | Request not authenticated |
| 403 Forbidden | Requester not authorized to retrieve trust material |

**Response Elements:**

The response SHALL include one or more DID Documents, each containing:

| | | |
| :--- | :--- | :--- |
| @context | [1..*] | JSON-LD context |
| id | [1..1] | The DID identifier |
| verificationMethod | [1..*] | Public key material for verification |
| authentication | [0..*] | Methods used for authentication |
| assertionMethod | [0..*] | Methods used for signing/assertions |
| service | [0..*] | Service endpoints |
| proof | [1..1] | Cryptographic proof over the trust list document as defined in[W3C VC Data Model 2.0](https://www.w3.org/TR/vc-data-model-2.0/). The proof SHALL include a`nonce`to prevent replay attacks. |

The `proof` element SHALL contain:

| | | |
| :--- | :--- | :--- |
| type | [1..1] | Proof type (e.g.,`JsonWebSignature2020`) |
| created | [1..1] | ISO 8601 datetime the proof was created |
| verificationMethod | [1..1] | Reference to the key used to create the proof |
| proofPurpose | [1..1] | Purpose of the proof (e.g.,`assertionMethod`) |
| nonce | [1..1] | Unique value to prevent replay attacks; SHALL be included by the Trust Anchor |
| jws | [1..1] | The detached JSON Web Signature value |

##### 2:3.YY2.4.2.3 Expected Actions

Upon receiving a Retrieve Trust List Request, the [Trust Anchor](ActorDefinition-TrustAnchor.md) SHALL:

1. **Authenticate Request**: Validate the requesting entity is authorized to retrieve trust material
1. **Process Query**: Identify the requested DID Document(s) based on query parameters
1. **Filter Results**: Return only active, non-revoked DID Documents
1. **Construct Response**: Format the response according to the requested representation, ensure returned DID Documents conform to W3C DID Core specification and include sufficient verification methods for signature validation
1. **Sign Response**: Digitally sign the response to ensure integrity

**VHL Receiver / VHL Sharer:**

A [VHL Sharer](ActorDefinition-VHLSharer.md) or [VHL Receiver](ActorDefinition-VHLReceiver.md), after receiving PKI material from a [Trust Anchor](ActorDefinition-TrustAnchor.md), SHALL validate and process the trust information for subsequent cryptographic operations.

Participants SHOULD:

* Cache the received trust list or certificate material to reduce network and server load
* Validate digital signatures or trust paths before use in VHL validation or secure channel sessions
* Monitor certificate expiration or revocation status where applicable

Upon receiving the Trust List response, the [VHL Receiver](ActorDefinition-VHLReceiver.md) or [VHL Sharer](ActorDefinition-VHLSharer.md) SHALL:

1. **Validate Response**: Verify the integrity of the response (signature if present)
1. **Parse DID Documents**: Extract each DID Document from the response
1. **Extract Public Keys**: Retrieve public key material from verification methods
1. **Map to Usage**: Associate each verification method with its intended use (authentication, assertion, etc.)
1. **Cache**: Store the DID Documents according to caching policy
1. **Monitor Expiry**: Track any expiration times and refresh cached material as needed
1. **Handle Response**: Process the returned DID Document(s) and extract public key material

### 2:3.YY2.5 Security Considerations

#### 2:3.YY2.5.1 Secure Retrieval

All Retrieve Trust List interactions SHALL occur over a secure connection. The [Trust Anchor](ActorDefinition-TrustAnchor.md) SHOULD authenticate requesting entities before serving trust material.

#### 2:3.YY2.5.2 DID Document Validation

Clients ([VHL Receiver](ActorDefinition-VHLReceiver.md)s and [VHL Sharer](ActorDefinition-VHLSharer.md)s) SHALL:

* Verify DID Documents conform to W3C DID Core specification
* Validate that verification methods contain well-formed public keys
* Check that key types and algorithms are acceptable per trust framework policy
* Verify any signatures or integrity proofs on the response payload

#### 2:3.YY2.5.3 Caching and Freshness

Implementations SHOULD:

* Cache retrieved DID Documents to reduce load on [Trust Anchor](ActorDefinition-TrustAnchor.md)
* Respect any cache-control headers or expiration times
* Implement periodic refresh of cached material
* Immediately invalidate cached DID Documents upon revocation notification

#### 2:3.YY2.5.4 Revocation Checking

The [Trust Anchor](ActorDefinition-TrustAnchor.md) SHALL:

* Only serve active, non-revoked DID Documents
* Provide mechanisms for distributing revocation information
* Support timely updates when DID Documents are revoked

Clients SHOULD:

* Check revocation status before trusting retrieved material
* Implement appropriate revocation checking mechanisms (e.g., periodic polling, push notifications)

#### 2:3.YY2.5.5 Endpoint Security

The [Trust Anchor](ActorDefinition-TrustAnchor.md)'s DID retrieval endpoint SHOULD:

* Implement rate limiting to prevent abuse
* Log all retrieval attempts for audit purposes
* Use authentication to restrict access to authorized participants
* Be publicly resolvable and tamper-resistant

Content profiles MAY define additional constraints, such as:

* Minimum key lengths (e.g., EC P-256 or stronger)
* Permitted cryptographic algorithms
* Retry and timeout behavior
* Maximum cache lifetimes

