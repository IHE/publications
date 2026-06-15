Feature: ITI-YY2 Retrieve Trust List – Message Semantics
  Defines the format of the ITI-YY2 request and response messages.
  The mechanism used to retrieve a DID Document is determined by the DID method
  of the DID being resolved. The Trust Anchor SHALL have made available at least
  one endpoint accessible to all participants in the trust network.

  Background:
    Given a Retrieve Trust List exchange between a requester and the Trust Anchor

  # ─── Request Semantics ─────────────────────────────────────────────────────

  @message-semantics @SHALL
  Scenario: Retrieval request uses HTTP GET
    When the request is constructed for retrieval of a DID Document
    Then the request SHALL be an HTTP GET

  @message-semantics @SHALL
  Scenario: Implementations resolve DID Documents according to the applicable DID method
    Given the requester needs to resolve a DID
    When the retrieval mechanism is determined
    Then implementations SHALL resolve DID Documents according to the resolution rules defined by the applicable DID method specification

  # ─── Response: Success ─────────────────────────────────────────────────────

  @message-semantics @SHALL
  Scenario: Successful response is HTTP 200 with one or more DID Documents
    Given the requested DID Document(s) are registered and active
    When the Trust Anchor responds
    Then the response SHALL be HTTP 200 OK
    And the response SHALL include one or more DID Documents

  # ─── Response: Error Codes ─────────────────────────────────────────────────

  @message-semantics @SHALL
  Scenario: Trust Anchor returns HTTP 404 when requested DID is not found
    Given the requested DID is not in the Trust Anchor registry
    When the Trust Anchor responds
    Then the response SHALL be HTTP 404 Not Found

  @message-semantics @SHALL
  Scenario: Trust Anchor returns HTTP 401 when request is not authenticated
    Given the request is not authenticated
    When the Trust Anchor responds
    Then the response SHALL be HTTP 401 Unauthorized

  @message-semantics @SHALL
  Scenario: Trust Anchor returns HTTP 403 when requester is not authorized
    Given the requester is not authorized to retrieve trust material
    When the Trust Anchor responds
    Then the response SHALL be HTTP 403 Forbidden

  # ─── Response: DID Document Content ────────────────────────────────────────

  @message-semantics @SHALL
  Scenario: Each returned DID Document contains the mandatory @context element
    When the response DID Documents are inspected
    Then each SHALL contain "@context" including "https://www.w3.org/ns/did/v1"

  @message-semantics @SHALL
  Scenario: Each returned DID Document contains a valid id element
    When the response DID Documents are inspected
    Then each SHALL contain exactly one "id" element with a valid DID value

  @message-semantics @SHALL
  Scenario: Each returned DID Document contains at least one verification method with key material
    When the response DID Documents are inspected
    Then each SHALL contain a "verificationMethod" array with at least one entry
    And each verification method SHALL include "publicKeyJwk"
    And no "publicKeyJwk" SHALL include the "d" parameter

  @message-semantics @SHALL
  Scenario: Each returned DID Document may contain authentication and assertion methods
    When the response DID Documents are inspected
    Then each DID Document MAY contain "authentication" methods
    And each DID Document MAY contain "assertionMethod" methods
    And each DID Document MAY contain "service" endpoints

  # ─── Response: Proof Element ───────────────────────────────────────────────

  @message-semantics @SHALL
  Scenario: Each returned DID Document contains a proof element
    When the response DID Documents are inspected
    Then each SHALL contain a "proof" element

  @message-semantics @SHALL
  Scenario: Proof element contains all required sub-elements
    When the "proof" element is inspected
    Then it SHALL contain a "type" sub-element
    And it SHALL contain a "created" sub-element with an ISO 8601 datetime
    And it SHALL contain a "verificationMethod" sub-element referencing the key used
    And it SHALL contain a "proofPurpose" sub-element
    And it SHALL contain a "nonce" sub-element to prevent replay attacks
    And it SHALL contain a "jws" sub-element with the detached JSON Web Signature value
