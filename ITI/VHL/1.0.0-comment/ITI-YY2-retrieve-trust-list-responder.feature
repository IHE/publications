Feature: ITI-YY2 Retrieve Trust List – Trust Anchor Expected Actions
  As the Trust Anchor (Responder) serving trust list requests,
  these scenarios verify that the Trust Anchor correctly filters out inactive documents,
  authenticates and authorises requesters, constructs conformant responses,
  and returns appropriate error codes.

  Background:
    Given the Trust Anchor has a registry of cataloged DID Documents
    And the retrieval endpoint is accessible to all trust network participants

  # ─── Request Processing ────────────────────────────────────────────────────

  @responder-actions @SHALL
  Scenario: Trust Anchor authenticates the requesting entity
    Given a retrieval request is received
    When the Trust Anchor processes the request
    Then the Trust Anchor SHALL validate the requesting entity is authorized to retrieve trust material

  @responder-actions @SHALL
  Scenario: Trust Anchor identifies the requested DID Document(s) based on query parameters
    Given a valid and authenticated retrieval request is received
    When the Trust Anchor processes the query
    Then the Trust Anchor SHALL identify the requested DID Document(s) based on query parameters

  # ─── Active Document Filtering ───────────────────────────────────────────────

  @responder-actions @SHALL
  Scenario: Trust Anchor returns only active non-revoked DID Documents
    Given the registry contains active and revoked DID Documents
    When a requester queries for DID Documents
    Then the response SHALL contain only active, non-revoked DID Documents

  @responder-actions @SHALL
  Scenario: Trust Anchor does not return revoked DID Documents in a bulk query
    Given the registry contains a revoked DID Document for "did:example:revoked-001"
    When a requester queries for all DID Documents
    Then the response SHALL NOT include the revoked DID Document

  # ─── Response Construction ─────────────────────────────────────────────────

  @responder-actions @SHALL
  Scenario: Trust Anchor ensures returned DID Documents conform to W3C DID Core
    Given the Trust Anchor is constructing the response
    When it assembles the DID Documents
    Then the Trust Anchor SHALL ensure returned DID Documents conform to W3C DID Core specification
    And the DID Documents SHALL include sufficient verification methods for signature validation

  @responder-actions @SHALL
  Scenario: Trust Anchor includes a proof element with nonce in the response
    Given the Trust Anchor is constructing the response
    When it assembles the proof
    Then the proof SHALL include a nonce to prevent replay attacks

  # ─── Optional Response Signing ───────────────────────────────────────────────

  @responder-actions @MAY
  Scenario: Trust Anchor may sign the response payload for integrity protection
    Given the Trust Anchor supports response signing
    When it assembles a successful Retrieve Trust List response
    Then the Trust Anchor MAY digitally sign the response to ensure integrity

  # ─── Authentication and Authorization ────────────────────────────────────────

  @responder-actions @SHALL
  Scenario: Trust Anchor returns HTTP 401 for an unauthenticated retrieval request
    Given a retrieval request arrives without authentication credentials
    When the Trust Anchor processes the request
    Then the response SHALL be HTTP 401 Unauthorized

  @responder-actions @SHALL
  Scenario: Trust Anchor returns HTTP 403 for a retrieval request from an unauthorised participant
    Given a retrieval request arrives from an authenticated entity
    But the entity is not authorised to retrieve trust material
    When the Trust Anchor processes the request
    Then the response SHALL be HTTP 403 Forbidden

  # ─── Not Found ───────────────────────────────────────────────────────────────

  @responder-actions @SHALL
  Scenario: Trust Anchor returns HTTP 404 when the requested DID is not in the registry
    Given a request for DID "did:example:unknown-999" is received
    And the DID is not present in the registry
    When the Trust Anchor processes the request
    Then the response SHALL be HTTP 404 Not Found

  # ─── §2:3.YY2.5.1 Secure Retrieval ────────────────────────────────────────

  @security @SHALL
  Scenario: All Retrieve Trust List interactions occur over a secure connection
    Given a retrieval request is received
    When the Trust Anchor processes the request
    Then the interaction SHALL occur over a secure connection

  @security @SHOULD
  Scenario: Trust Anchor authenticates requesting entities before serving trust material
    Given a retrieval request is received
    When the Trust Anchor applies access control
    Then the Trust Anchor SHOULD authenticate requesting entities before serving trust material

  # ─── §2:3.YY2.5.4 Revocation ──────────────────────────────────────────────

  @responder-actions @SHALL
  Scenario: Trust Anchor only serves active non-revoked DID Documents
    Given DID Documents in the registry include revoked entries
    When a retrieval request is processed
    Then the Trust Anchor SHALL only serve active, non-revoked DID Documents

  @responder-actions @SHALL
  Scenario: Trust Anchor provides mechanisms for distributing revocation information
    Given a DID Document has been revoked
    When participants need to be informed
    Then the Trust Anchor SHALL provide mechanisms for distributing revocation information

  @responder-actions @SHALL
  Scenario: Trust Anchor supports timely updates when DID Documents are revoked
    Given a DID Document revocation has occurred
    When a retrieval request is made
    Then the Trust Anchor SHALL support timely updates so revoked material is not served

  # ─── §2:3.YY2.5.5 Endpoint Security ───────────────────────────────────────

  @security @SHOULD
  Scenario: Trust Anchor implements rate limiting to prevent abuse
    Given the retrieval endpoint is receiving requests
    When traffic is evaluated
    Then the Trust Anchor SHOULD implement rate limiting to prevent abuse

  @security @SHOULD
  Scenario: Trust Anchor logs all retrieval attempts for audit purposes
    Given a retrieval request has been processed
    When the response is returned
    Then the Trust Anchor SHOULD log the retrieval attempt for audit purposes
