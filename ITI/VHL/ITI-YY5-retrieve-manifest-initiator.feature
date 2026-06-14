Feature: ITI-YY5 Retrieve Manifest – VHL Receiver Expected Actions
  As a VHL Receiver (Initiator) retrieving the document manifest,
  these scenarios verify the actions the VHL Receiver SHALL take when constructing
  the authenticated request, handling OAuth (SSRAA Option), and processing the response.
  Message format is defined in ITI-YY5-retrieve-manifest-message.feature.

  Background:
    Given the VHL Receiver has decoded and validated a VHL via ITI-YY4
    And the VHL Receiver has extracted the manifest URL from the SHL payload
    And the VHL Receiver has its own private key registered in the trust list

  # ─── Request Construction ────────────────────────────────────────────────────

  @initiator-actions @SHALL
  Scenario: VHL Receiver sends an HTTP POST to the /List/_search endpoint
    When the Retrieve Manifest request is constructed
    Then the request SHALL be HTTP POST to the /List/_search endpoint derived from the manifest URL

  @initiator-actions @SHALL
  Scenario: Request complies with IHE ATNA Profile for transport security
    When the connection to the VHL Sharer is established
    Then the implementation SHALL comply with the IHE ATNA Profile (ITI TF-1: Section 9) for transport security requirements

  # ─── Authentication: HTTP Message Signatures (Option A) ─────────────────────

  @initiator-actions @MAY
  Scenario: VHL Receiver may authenticate using HTTP Message Signatures per RFC 9421
    Given the VHL Receiver supports HTTP Message Signatures
    When the request is assembled
    Then the request MAY include Content-Digest, Signature-Input, and Signature headers per RFC 9421

  @initiator-actions @SHALL
  Scenario: keyid in Signature-Input uniquely identifies the receiver's public key when HTTP signatures are used
    Given the VHL Receiver is authenticating using HTTP Message Signatures
    And the VHL Receiver has a registered public key with id "receiver-key-123"
    When the Signature-Input header is constructed
    Then "keyid" SHALL uniquely identify the receiver's public key in the trust list

  @initiator-actions @SHALL
  Scenario: Signature timestamp is set to the current Unix time when HTTP signatures are used
    Given the VHL Receiver is authenticating using HTTP Message Signatures
    When the "created" parameter of Signature-Input is set
    Then the value SHALL be the current Unix timestamp at time of signing

  # ─── Authentication: OAuth with SSRAA Option (Option B) ─────────────────────

  @initiator-actions @MAY
  Scenario: VHL Receiver may use OAuth client_credentials grant when SSRAA Option is supported
    Given both the VHL Receiver and VHL Sharer support the OAuth with SSRAA Option
    When the VHL Receiver authenticates using OAuth
    Then the grant type SHALL be "client_credentials"
    And the client authentication method SHALL be "private_key_jwt"

  @initiator-actions @SHALL
  Scenario: SSRAA Discovery and Registration are completed before requesting access tokens
    Given the VHL Receiver supports the OAuth with SSRAA Option
    When the VHL Receiver needs to obtain an access token
    Then SSRAA Discovery and Registration SHALL be completed before requesting access tokens

  @initiator-actions @SHALL
  Scenario: VHL Receiver performs UDAP Discovery using the fhirBaseUrl from the VHL payload
    Given the SHL payload contains "extension.fhirBaseUrl"
    When the VHL Receiver initiates SSRAA Discovery
    Then the VHL Receiver SHALL perform UDAP Discovery per Section 2 of the SSRAA IG using the fhirBaseUrl

  @initiator-actions @SHALL
  Scenario: VHL Receiver performs UDAP Dynamic Client Registration
    Given the VHL Receiver has completed UDAP Discovery
    When the VHL Receiver is not yet registered with the VHL Sharer
    Then the VHL Receiver SHALL perform UDAP Dynamic Client Registration per Section 3 of the SSRAA IG

  @initiator-actions @SHALL
  Scenario: JWT client assertion header includes x5c with receiver's X.509 certificate
    Given the VHL Receiver is constructing a JWT client assertion
    When the JWT header is assembled
    Then the header SHALL include "x5c" containing the receiver's X.509 certificate from the trust community PKI

  @initiator-actions @SHALL
  Scenario: JWT client assertion includes all required claims
    Given the VHL Receiver is constructing a JWT client assertion
    When the payload is assembled
    Then the JWT SHALL include "iss", "sub" (same as iss), "aud" (token endpoint), "exp", "iat", and "jti" claims
    And the JWT SHALL include an "extensions" object containing an "hl7-b2b" member per SSRAA IG Section 5.2.1

  @initiator-actions @SHALL
  Scenario: JWT client assertion jti claim is unique to prevent replay
    When the "jti" claim is set
    Then the value SHALL be a unique identifier not used in any prior assertion

  @initiator-actions @SHALL
  Scenario: OAuth token request includes required FHIR scopes
    When the scopes are specified in the token request
    Then the request SHALL include at minimum "system/List.r", "system/DocumentReference.r", and "system/Binary.r"

  @initiator-actions @SHALL
  Scenario: OAuth Bearer token is included in the Authorization header
    Given the VHL Receiver has obtained an access token via the SSRAA Option
    When the Retrieve Manifest request is constructed
    Then the request SHALL include "Authorization: Bearer <access-token>"

  @initiator-actions @MAY
  Scenario: VHL Receiver may cache OAuth access tokens for reuse until expiration
    Given the VHL Receiver has obtained an OAuth access token with a lifetime
    When subsequent Retrieve Manifest requests are needed within that lifetime
    Then the VHL Receiver MAY reuse the access token until its "exp" claim is reached

  # ─── §2:3.YY5.5.5 Trust Network Validation ────────────────────────────────

  @security @SHALL
  Scenario: VHL Receiver authenticates the VHL Sharer's participation in the trust network
    Given the VHL Receiver is about to send a Retrieve Manifest request
    When trust network validation is performed
    Then the VHL Receiver SHALL authenticate the VHL Sharer's participation in the trust network

  # ─── Response Processing ─────────────────────────────────────────────────────

  @initiator-actions @SHALL
  Scenario: VHL Receiver identifies List resources in the response Bundle by search.mode=match
    Given the VHL Sharer has returned a searchset Bundle
    When the VHL Receiver processes the Bundle entries
    Then entries with "search.mode" equal to "match" SHALL be treated as List resources

  @initiator-actions @SHALL
  Scenario: VHL Receiver identifies included DocumentReferences by search.mode=include
    Given the response Bundle contains included DocumentReferences
    When the VHL Receiver processes the Bundle entries
    Then entries with "search.mode" equal to "include" SHALL be treated as DocumentReference resources

  @initiator-actions @SHALL
  Scenario: VHL Receiver retrieves DocumentReferences individually when _include is unsupported by the responder
    Given the response Bundle contains only the List resource despite the _include parameter being sent
    When the VHL Receiver processes the response
    Then the VHL Receiver SHALL retrieve each DocumentReference individually via separate read requests
