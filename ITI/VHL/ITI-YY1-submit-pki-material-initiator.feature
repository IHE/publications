Feature: ITI-YY1 Submit PKI Material – Initiator Expected Actions
  As a VHL Sharer or VHL Receiver (Initiator) submitting PKI material to the Trust Anchor,
  these scenarios verify the actions the initiator SHALL take when generating keys,
  constructing and submitting the DID Document, handling responses, and retaining private keys.
  Message structure conformance is defined in ITI-YY1-submit-pki-material-message.feature.

  Background:
    Given the initiator is a VHL Sharer or VHL Receiver
    And the Trust Anchor endpoint is "https://trust-anchor.example.org/did"


  # ─── Provenance Metadata ────────────────────────────────────────────────────

  @initiator-actions @SHOULD
  Scenario: Submission includes the asserted identity of the submitting entity
    Given the initiator is preparing provenance metadata
    When the submission is assembled
    Then the submission SHOULD include the asserted identity of the submitting entity

  @initiator-actions @SHOULD
  Scenario: Submission includes a proof of authenticity
    Given the initiator supports digital signing
    When the DID Document is finalised
    Then the submission SHOULD include a digital signature or proof establishing authenticity

  @initiator-actions @SHOULD
  Scenario: Submission includes expiry date or revocation reference when the key has a known lifetime
    Given the initiator knows the intended lifetime of the key
    When provenance metadata is assembled
    Then the submission SHOULD include an expiry date or a reference to a revocation mechanism

  # ─── Response Handling ──────────────────────────────────────────────────────

  @initiator-actions @SHALL
  Scenario: Initiator records PKI material acceptance on HTTP 201
    Given a valid DID Document has been submitted
    When the Trust Anchor returns HTTP 201 Created
    Then the initiator SHALL record that the PKI material has been accepted and is available for distribution

  @initiator-actions @SHALL
  Scenario: Initiator corrects DID Document structure and resubmits on HTTP 400
    Given the Trust Anchor returns HTTP 400 Bad Request
    When the initiator handles the error
    Then the initiator SHALL correct the DID Document structure and resubmit

  @initiator-actions @SHALL
  Scenario: Initiator resolves authentication issue before retrying on HTTP 401
    Given the Trust Anchor returns HTTP 401 Unauthorized
    When the initiator handles the error
    Then the initiator SHALL resolve the authentication issue before retrying

  @initiator-actions @SHALL
  Scenario: Initiator resolves authorization issue before retrying on HTTP 403
    Given the Trust Anchor returns HTTP 403 Forbidden
    When the initiator handles the error
    Then the initiator SHALL resolve the authorization issue before retrying

  @initiator-actions @SHALL
  Scenario: Initiator reviews validation failure and resubmits with corrected material on HTTP 422
    Given the Trust Anchor returns HTTP 422 Unprocessable Entity
    When the initiator handles the error
    Then the initiator SHALL review the validation failure details and resubmit with corrected key material

  # ─── Private Key Retention ──────────────────────────────────────────────────

  @initiator-actions @SHALL
  Scenario: Initiator retains private keys securely regardless of submission outcome
    Given the initiator has submitted a DID Document
    When the submission is complete (success or failure)
    Then the initiator SHALL retain the corresponding private keys in secure storage
    And the private keys SHALL NOT be accessible to unauthorised parties

  # ─── §2:3.YY1.5.1 DID Document Integrity ───────────────────────────────────

  @security @SHOULD
  Scenario: Submitting entity signs the DID Document using its own verification method
    Given the submitting entity has a private signing key
    When the DID Document is finalised for submission
    Then the DID Document SHOULD be signed by the submitting entity using its verification method

  @security @SHALL
  Scenario: HTTP submission uses a secure connection
    Given a DID Document is being submitted via HTTP POST
    When the connection is established
    Then the connection SHALL use a secure connection
    And plain HTTP SHALL NOT be used
