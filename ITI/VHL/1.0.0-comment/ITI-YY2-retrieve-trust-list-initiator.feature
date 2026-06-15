Feature: ITI-YY2 Retrieve Trust List – Initiator Expected Actions
  As a VHL Sharer or VHL Receiver (Initiator) retrieving the trust list,
  these scenarios verify the actions the initiator SHALL take when constructing
  requests, processing responses, caching key material, and handling errors.
  Message format is defined in ITI-YY2-retrieve-trust-list-message.feature.

  Background:
    Given the requester is a VHL Sharer or VHL Receiver
    And the Trust Anchor retrieval endpoint is known to the requester

  # ─── Preconditions ──────────────────────────────────────────────────────────

  @initiator-actions @SHALL
  Scenario: Requester identifies the Trust Anchor endpoint before sending the request
    Given the Trust Anchor has published at least one endpoint accessible to trust network participants
    When the requester prepares a Retrieve Trust List request
    Then the requester SHALL have identified the Trust Anchor endpoint in advance

  # ─── Request Construction ────────────────────────────────────────────────────

  @initiator-actions @SHALL
  Scenario: Requester sends the request over a secure connection
    Given the requester has constructed a valid Retrieve Trust List request
    When the requester sends the request
    Then the connection SHALL use a secure connection
    And the request SHALL NOT be sent over plain HTTP

  @initiator-actions @SHALL
  Scenario: Requester constructs an HTTP GET request for DID Document retrieval
    Given the requester needs to retrieve trust material
    When the request is constructed
    Then the request SHALL be an HTTP GET

  # ─── Response Processing ─────────────────────────────────────────────────────

  @initiator-actions @SHALL
  Scenario: Requester validates the response signature before trusting the content
    Given the Trust Anchor has returned a response that includes a proof element
    When the requester processes the response
    Then the requester SHALL verify the response proof before trusting the content

  @initiator-actions @SHALL
  Scenario: Requester validates the proof nonce to prevent replay attacks
    Given the Trust Anchor has returned a response with a proof element
    When the requester validates the proof
    Then the requester SHALL verify the nonce is present and unique

  @initiator-actions @SHALL
  Scenario: Requester validates each returned DID Document against W3C DID Core
    Given the Trust Anchor has returned one or more DID Documents
    When the requester parses the response
    Then each DID Document SHALL be validated against the W3C DID Core specification

  @initiator-actions @SHALL
  Scenario: Requester validates the key material within each returned verification method
    Given the Trust Anchor has returned DID Documents with verification methods
    When the requester extracts public key material
    Then each verification method SHALL contain a well-formed "publicKeyJwk"
    And each key type and algorithm SHALL be acceptable per the trust framework policy

  @initiator-actions @SHALL
  Scenario: Requester maps each verification method to its declared intended use
    Given the Trust Anchor has returned a DID Document with authentication and assertionMethod references
    When the requester processes the verification methods
    Then the requester SHALL associate each method with its declared use (authentication, assertionMethod, keyAgreement, etc.)

  @initiator-actions @SHALL
  Scenario: Requester parses DID Documents and extracts all verification methods
    Given the Trust Anchor has returned one or more DID Documents
    When the requester processes the response
    Then the requester SHALL extract all verification methods from each DID Document
    And SHALL store the public key material for use in signature verification

  # ─── Caching ─────────────────────────────────────────────────────────────────

  @initiator-actions @SHOULD
  Scenario: Requester caches retrieved DID Documents per the applicable caching policy
    Given the Trust Anchor has returned a successful response
    When the requester stores the DID Documents
    Then the requester SHOULD cache the DID Documents according to the applicable caching policy
    And the requester SHOULD respect any cache-control headers or expiration times provided

  @initiator-actions @SHOULD
  Scenario: Requester tracks expiry of cached DID Documents and refreshes before expiry
    Given the requester has cached a DID Document with a known expiry time
    When the expiry time approaches
    Then the requester SHOULD refresh the cached material before it expires

  @initiator-actions @SHOULD
  Scenario: Requester checks revocation status of retrieved DID Documents before trusting them
    Given DID Documents have been retrieved and cached
    When they are applied to trust decisions
    Then the requester SHOULD verify each DID Document has not been revoked before trusting it

  @initiator-actions @SHOULD
  Scenario: Requester immediately invalidates a cached DID Document upon receiving a revocation notification
    Given the requester has a cached DID Document
    When the requester receives a revocation notification for that DID
    Then the requester SHOULD immediately invalidate the cached entry

  @initiator-actions @SHOULD
  Scenario: Requester issues a new retrieval request when the cache reaches its expiry threshold
    Given the requester has cached DID Documents from a prior retrieval
    When the cache reaches its expiry threshold
    Then the requester SHOULD issue a new Retrieve Trust List request to refresh the material

  # ─── Error Handling ──────────────────────────────────────────────────────────

  @initiator-actions @SHALL
  Scenario: Requester does not treat an absent DID as trusted material on HTTP 404
    Given the requester requests DID "did:example:unknown-999"
    When the Trust Anchor returns HTTP 404 Not Found
    Then the requester SHALL NOT treat the absent DID as trusted material
    And the requester SHOULD inform the operator or retry with a different endpoint

  @initiator-actions @SHALL
  Scenario: Requester does not process DID Documents from an unauthenticated response on HTTP 401
    Given the requester has not provided authentication credentials
    When the Trust Anchor returns HTTP 401 Unauthorized
    Then the requester SHALL NOT process any DID Documents from that response
    And the requester SHOULD attempt to authenticate before retrying

  @initiator-actions @SHALL
  Scenario: Requester does not process DID Documents from an unauthorised response on HTTP 403
    Given the requester is authenticated but not authorised to retrieve trust material
    When the Trust Anchor returns HTTP 403 Forbidden
    Then the requester SHALL NOT process any DID Documents from that response
