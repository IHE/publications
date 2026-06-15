Feature: ITI-YY1 Submit PKI Material – Trust Anchor Expected Actions
  As the Trust Anchor (Responder) receiving DID Document submissions,
  these scenarios verify that the Trust Anchor correctly authenticates submitters,
  catalogs approved submissions, and returns the correct HTTP response codes.
  Message semantics (structure and cryptographic material validation) are defined
  in ITI-YY1-submit-pki-material-message.feature.

  Background:
    Given the Trust Anchor is running at "https://trust-anchor.example.org/did"
    And the Trust Anchor has a registry of pre-authorised trust network participants

  # ─── HTTP Response ───────────────────────────────────────────────────────────

  @responder-actions @SHALL
  Scenario: Trust Anchor returns a response regardless of outcome
    Given a DID Document submission is received
    When the Trust Anchor completes processing
    Then the Trust Anchor SHALL return a response regardless of whether the submission succeeded or failed

  @responder-actions @SHALL
  Scenario: Trust Anchor accepts a fully conformant DID Document with HTTP 201
    Given a conforming DID Document is submitted via HTTP POST
    When the Trust Anchor processes the submission
    Then the Trust Anchor SHALL return HTTP 201 Created

  @responder-actions @SHALL
  Scenario: Trust Anchor returns HTTP 400 for a malformed DID Document
    Given a submitted DID Document is malformed
    When the Trust Anchor processes the submission
    Then the Trust Anchor SHALL return HTTP 400 Bad Request

  @responder-actions @SHALL
  Scenario: Trust Anchor returns HTTP 422 when format is valid but validation fails
    Given a submitted DID Document has valid format but fails validation
    When the Trust Anchor processes the submission
    Then the Trust Anchor SHALL return HTTP 422 Unprocessable Entity

  # ─── DID Document Validation ───────────────────────────────────────────────

  @responder-actions @SHALL
  Scenario: Trust Anchor validates DID Document structure against W3C DID Core
    Given a DID Document submission is received
    When the Trust Anchor processes the submission
    Then the Trust Anchor SHALL verify the DID Document conforms to the W3C DID Core specification

  @responder-actions @SHALL
  Scenario: Trust Anchor verifies cryptographic material is properly formatted
    Given a DID Document submission is received
    When the Trust Anchor validates cryptographic material
    Then the Trust Anchor SHALL validate public keys are properly formatted in JWK
    And the Trust Anchor SHALL validate key types and curves are acceptable per trust framework policy
    And the Trust Anchor SHALL validate key sizes meet minimum security requirements

  @responder-actions @SHALL
  Scenario: Trust Anchor rejects submissions with invalid or malformed cryptographic material
    Given a submitted DID Document contains invalid or malformed cryptographic material
    When the Trust Anchor processes the submission
    Then the Trust Anchor SHALL reject the submission

  @responder-actions @SHALL
  Scenario: Trust Anchor rejects submissions using prohibited algorithms or insufficient key sizes
    Given a submitted DID Document uses prohibited cryptographic algorithms or insufficient key sizes
    When the Trust Anchor processes the submission
    Then the Trust Anchor SHALL reject the submission

  # ─── §2:3.YY1.5.4 DID Document Validation ─────────────────────────────────

  @security @SHALL
  Scenario: Trust Anchor validates cryptographic algorithms are from an approved list
    Given a DID Document submission is received
    When the Trust Anchor validates the DID Document
    Then the Trust Anchor SHALL validate that cryptographic algorithms are from an approved list

  @security @SHALL
  Scenario: Trust Anchor validates verification methods are properly referenced
    Given a DID Document submission is received
    When the Trust Anchor validates the DID Document
    Then the Trust Anchor SHALL validate that verification methods are properly referenced in authentication or assertion arrays

  # ─── Identity and Authentication ────────────────────────────────────────────

  @responder-actions @SHALL
  Scenario: Trust Anchor authenticates the submitting entity via the secure connection
    Given a DID Document submission is received over a secure connection
    When the Trust Anchor verifies the identity of the submitter
    Then the Trust Anchor SHALL authenticate the entity through the secure connection

  @responder-actions @SHALL
  Scenario: Trust Anchor verifies the proof or signature on a signed DID Document
    Given the submitted DID Document carries a proof or digital signature
    When the Trust Anchor verifies the identity of the submitter
    Then the Trust Anchor SHALL verify the proof or signature on the DID Document

  @responder-actions @SHALL
  Scenario: Trust Anchor validates the submitter against pre-registered organisational identifiers
    Given the Trust Anchor has a registry of authorised participants
    When the Trust Anchor verifies the identity of the submitter
    Then the Trust Anchor SHALL validate the submitter against pre-registered organisational identifiers

  @responder-actions @SHALL
  Scenario: Trust Anchor returns HTTP 401 when authentication fails
    Given the submitter has not provided valid authentication credentials
    When the Trust Anchor processes the submission
    Then the Trust Anchor SHALL return HTTP 401 Unauthorized

  @responder-actions @SHALL
  Scenario: Trust Anchor returns HTTP 403 when the entity is not authorised to submit
    Given the submitter is authenticated but not in the list of authorised submitters
    When the Trust Anchor processes the submission
    Then the Trust Anchor SHALL return HTTP 403 Forbidden

  @responder-actions @SHALL
  Scenario: Trust Anchor rejects a submission from an entity not in the trust network
    Given the submitting entity is not a known trust network participant
    When the Trust Anchor attempts to verify identity
    Then the Trust Anchor SHALL reject the submission

  @responder-actions @SHALL
  Scenario: Trust Anchor rejects a submission lacking required provenance information
    Given a submitted DID Document contains no provenance metadata
    When the Trust Anchor processes the submission
    Then the Trust Anchor SHALL reject the submission

  # ─── Cataloging ─────────────────────────────────────────────────────────────

  @responder-actions @SHALL
  Scenario: Trust Anchor catalogs a fully validated DID Document
    Given all validation and authentication checks have passed for a submitted DID Document
    When the Trust Anchor completes processing
    Then the Trust Anchor SHALL store the DID Document in its registry

  @responder-actions @SHALL
  Scenario: Trust Anchor makes the cataloged DID Document available for retrieval
    Given the Trust Anchor has stored a validated DID Document
    When cataloging is complete
    Then the Trust Anchor SHALL make the DID Document accessible via its retrieval endpoint

  # ─── §2:3.YY1.5.5 Revocation and Updates ─────────────────────────────────────────────────

  @responder-actions @SHALL
  Scenario: Trust Anchor supports updating a previously registered DID Document
    Given a DID Document is already registered for a DID
    When the same submitter sends an updated DID Document for that DID
    Then the Trust Anchor SHALL support the update and replace the stored DID Document

  @responder-actions @SHALL
  Scenario: Trust Anchor supports revoking a registered DID Document
    Given a DID Document is present in the registry
    When a valid revocation request is received
    Then the Trust Anchor SHALL mark the DID Document as revoked

  @responder-actions @SHALL
  Scenario: Trust Anchor does not distribute revoked or expired DID Documents
    Given a DID Document in the registry has been revoked or has expired
    When a participant requests that DID Document via the retrieval endpoint
    Then the Trust Anchor SHALL NOT return the revoked or expired DID Document

  @responder-actions @MAY
  Scenario: Trust Anchor may maintain a version history of DID Documents for audit purposes
    Given a DID Document has been updated or revoked
    When an audit query is made
    Then the Trust Anchor MAY provide a history of prior DID Document versions

  # ─── §2:3.YY1.5.1 DID Document Integrity ───────────────────────────────────

  @security @SHALL
  Scenario: Trust Anchor verifies the authenticity of submitted DID Documents
    Given the Trust Anchor has received a DID Document submission
    When the Trust Anchor processes the submission
    Then the Trust Anchor SHALL verify the authenticity of the DID Document

  # ─── §2:3.YY1.5.3 Identity Verification ────────────────────────────────────

  @security @SHALL
  Scenario: Trust Anchor authenticates the identity of every submitting entity
    Given a DID Document submission is received
    When the Trust Anchor evaluates the submission
    Then the Trust Anchor SHALL authenticate the identity of the submitting entity

  @security @MAY
  Scenario: Trust Anchor may authenticate using pre-registered certificates
    Given the Trust Anchor is authenticating a submitter
    When pre-registered certificates are available for that submitter
    Then the Trust Anchor MAY authenticate using those certificates over the secure connection

  @security @MAY
  Scenario: Trust Anchor may use out-of-band identity verification for initial registration
    Given a submitter is registering for the first time and no prior credentials exist
    When the Trust Anchor performs identity verification
    Then the Trust Anchor MAY use out-of-band identity verification
