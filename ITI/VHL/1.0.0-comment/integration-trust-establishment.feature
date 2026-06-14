Feature: Integration – Trust Establishment
  End-to-end scenarios testing multi-actor coordination across ITI-YY1
  (Submit PKI Material) and ITI-YY2 (Retrieve Trust List).
  These scenarios test state sequencing and cross-actor dependencies that
  cannot be verified in unit tests (e.g., a DID submitted in YY1 SHALL be
  retrievable via YY2 in the same test session).

  Background:
    Given the Trust Anchor is running at "https://trust-anchor.example.org"
    And the VHL Sharer has a key pair with DID "did:example:vhl-sharer-001"
    And the VHL Receiver has a key pair with DID "did:example:vhl-receiver-001"
    And neither DID is yet registered in the Trust Anchor

  # ─── Group A: PKI Submission (YY1) ──────────────────────────────────────────

  @integration @SHALL
  Scenario: VHL Sharer submits its DID Document and Trust Anchor catalogs it
    Given the VHL Sharer has constructed a conforming DID Document for "did:example:vhl-sharer-001"
    When the VHL Sharer posts the DID Document to the Trust Anchor via ITI-YY1
    Then the Trust Anchor SHALL return HTTP 201 Created
    And the DID Document SHALL be stored in the Trust Anchor registry

  @integration @SHALL
  Scenario: VHL Receiver submits its DID Document and Trust Anchor catalogs it
    Given the VHL Receiver has constructed a conforming DID Document for "did:example:vhl-receiver-001"
    When the VHL Receiver posts the DID Document to the Trust Anchor via ITI-YY1
    Then the Trust Anchor SHALL return HTTP 201 Created
    And the DID Document SHALL be stored in the Trust Anchor registry

  # ─── Group B: Trust List Retrieval by VHL Receiver (YY2) ────────────────────

  @integration @SHALL
  Scenario: VHL Receiver retrieves the VHL Sharer's newly registered DID Document
    Given the VHL Sharer has successfully registered its DID Document (Group A)
    When the VHL Receiver sends a GET request for "did:example:vhl-sharer-001" via ITI-YY2
    Then the Trust Anchor SHALL return HTTP 200 OK
    And the response SHALL contain a DID Document with id "did:example:vhl-sharer-001"
    And the DID Document SHALL include the VHL Sharer's public key material

  @integration @SHALL
  Scenario: VHL Receiver retrieves all active DID Documents and finds both registered DIDs
    Given both the VHL Sharer and VHL Receiver have registered their DID Documents (Group A)
    When the VHL Receiver sends a GET request to retrieve all active DID Documents via ITI-YY2
    Then the response SHALL include DID Documents for both "did:example:vhl-sharer-001" and "did:example:vhl-receiver-001"

  # ─── Group C: VHL Sharer Retrieves Trust List (YY2) ─────────────────────────

  @integration @SHALL
  Scenario: VHL Sharer retrieves the trust list to verify its own registration
    Given the VHL Sharer has registered its DID Document (Group A)
    When the VHL Sharer sends a GET request for "did:example:vhl-sharer-001" via ITI-YY2
    Then the Trust Anchor SHALL return HTTP 200 OK
    And the response SHALL contain the VHL Sharer's own registered DID Document

  @integration @SHALL
  Scenario: VHL Sharer retrieves the VHL Receiver's DID Document to prepare for manifest authentication
    Given the VHL Receiver has registered its DID Document (Group A)
    When the VHL Sharer requests "did:example:vhl-receiver-001" via ITI-YY2
    Then the Trust Anchor SHALL return the VHL Receiver's DID Document
    And the VHL Sharer SHALL be able to extract the VHL Receiver's public key for signature verification

  # ─── Group D: Round-trip Verification ───────────────────────────────────────

  @integration @SHALL
  Scenario: VHL Receiver successfully verifies a VHL Sharer signature using the retrieved key material
    Given the VHL Sharer has registered its signing key via ITI-YY1
    And the VHL Receiver has retrieved the VHL Sharer's DID Document via ITI-YY2
    And the VHL Receiver has cached the VHL Sharer's public key
    When the VHL Receiver receives a VHL signed by the VHL Sharer
    Then the VHL Receiver SHALL successfully verify the COSE signature
    And SHALL accept the VHL as trusted

  @integration @SHALL
  Scenario: VHL Receiver rejects a VHL whose signing key is not in the retrieved trust list
    Given the VHL Receiver has retrieved the trust list and found no entry for "did:example:unknown-999"
    When the VHL Receiver receives a VHL purportedly signed by "did:example:unknown-999"
    Then the VHL Receiver SHALL reject the VHL as untrusted

  # ─── Group E: Revocation Propagation ────────────────────────────────────────

  @integration @SHALL
  Scenario: Trust Anchor revocation prevents VHL Receiver from retrieving the revoked DID Document
    Given the VHL Sharer's DID Document has been registered and then revoked at the Trust Anchor
    When the VHL Receiver requests "did:example:vhl-sharer-001" via ITI-YY2
    Then the Trust Anchor SHALL NOT return the revoked DID Document
    And the response SHALL be HTTP 404 Not Found or an empty collection

  @integration @SHALL
  Scenario: VHL Receiver invalidates its cache upon receiving a revocation notification
    Given the VHL Receiver has cached the VHL Sharer's DID Document
    When the VHL Receiver receives a revocation notification for "did:example:vhl-sharer-001"
    Then the VHL Receiver SHALL immediately remove the entry from its cache
    And any subsequent verification attempt using that key SHALL fail
