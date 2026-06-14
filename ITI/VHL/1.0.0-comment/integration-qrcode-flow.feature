Feature: Integration – QR Code Generation and Validation Flow
  End-to-end scenarios testing multi-actor coordination across ITI-YY3
  (Generate VHL), ITI-YY4 (Provide VHL), and ITI-YY5 (Retrieve Manifest).
  These scenarios test pipeline state where the output of one transaction
  feeds the input of the next, which cannot be verified in unit tests.

  Background:
    Given the VHL Sharer is running at "https://vhl-sharer.example.org"
    And the VHL Sharer has registered its signing key with the Trust Anchor (via ITI-YY1)
    And the VHL Receiver has retrieved the trust list (via ITI-YY2)
    And the VHL Holder has a patient identifier "urn:oid:2.16.840.1.113883.2.4.6.3|PASSPORT123"

  # ─── Group A: VHL Generation (YY3) ──────────────────────────────────────────

  @integration @SHALL
  Scenario: VHL Holder requests a VHL and VHL Sharer returns a QR code with a valid HCERT
    Given the VHL Holder sends a $generate-vhl request to the VHL Sharer
    When the VHL Sharer processes the request via ITI-YY3
    Then the response SHALL be HTTP 200 with a FHIR Parameters resource
    And the "qrcode" Binary SHALL contain a valid HCERT beginning with "HC1:"
    And the CWT SHALL be signed by the VHL Sharer's registered key

  @integration @SHALL
  Scenario: Generated QR code SHL payload url points to a retrievable manifest endpoint
    Given the VHL Sharer has generated a QR code
    When the SHL payload is extracted from the CWT
    Then the "url" field SHALL point to "https://vhl-sharer.example.org/List/_search" (derived endpoint)
    And the "url" SHALL include the generated folder ID as the "_id" parameter

  @integration @SHALL
  Scenario: VHL Holder stores the plaintext passcode after requesting a passcode-protected VHL
    Given the VHL Holder includes "passcode=secretpin" in the $generate-vhl request
    When the VHL Sharer returns the QR code
    Then the VHL Holder SHALL securely store "secretpin" for out-of-band sharing

  # ─── Group B: QR Code Presentation and Decoding (YY4) ───────────────────────

  @integration @SHALL
  Scenario: VHL Receiver decodes the QR code generated in Group A and extracts the SHL payload
    Given the VHL Holder has received the QR code from Group A
    When the VHL Receiver scans and decodes the QR code via ITI-YY4
    Then the VHL Receiver SHALL successfully complete all 9 decode steps
    And SHALL extract a valid SHL payload containing "url" and "key" fields

  @integration @SHALL
  Scenario: VHL Receiver verifies the COSE signature using the trust list retrieved via ITI-YY2
    Given the VHL Receiver has decoded the CWT from the QR code
    When COSE signature verification is performed
    Then the VHL Receiver SHALL retrieve the VHL Sharer's DSC from its cached trust list
    And SHALL verify the signature successfully

  @integration @SHALL
  Scenario: Decoded manifest URL from QR code matches the URL used in the subsequent ITI-YY5 request
    Given the VHL Receiver has decoded the SHL payload
    When the VHL Receiver prepares the ITI-YY5 request
    Then the manifest URL from the SHL payload "url" field SHALL be used as the ITI-YY5 endpoint

  @integration @SHALL
  Scenario: VHL Receiver obtains the passcode from the VHL Holder and prepares the ITI-YY5 request
    Given the SHL payload "flag" contains "P"
    When the VHL Receiver processes the decoded payload
    Then the VHL Receiver SHALL prompt for the passcode before constructing the ITI-YY5 request
    And the passcode obtained from the VHL Holder SHALL be included in the request body

  # ─── Group C: Manifest Retrieval (YY5) ───────────────────────────────────────

  @integration @SHALL
  Scenario: VHL Receiver uses the decoded folder ID and manifest URL to retrieve the document manifest
    Given the VHL Receiver has the folder ID and manifest URL from the decoded SHL payload
    When the VHL Receiver sends the HTTP POST to /List/_search via ITI-YY5
    Then the VHL Sharer SHALL return HTTP 200 with a FHIR searchset Bundle
    And the Bundle SHALL contain the List resource for the generated folder ID

  @integration @SHALL
  Scenario: VHL Sharer authenticates the VHL Receiver using the trust list obtained via ITI-YY1 and ITI-YY2
    Given the VHL Receiver has signed the ITI-YY5 request with its registered private key
    When the VHL Sharer verifies the HTTP Message Signature
    Then the VHL Sharer SHALL retrieve the VHL Receiver's public key from its local trust list
    And SHALL successfully verify the signature

  @integration @SHALL
  Scenario: Correct passcode in ITI-YY5 request results in HTTP 200 manifest response
    Given the VHL requires a passcode and the VHL Receiver obtained it from the VHL Holder
    When the VHL Receiver includes the correct passcode in the ITI-YY5 request body
    Then the VHL Sharer SHALL validate the passcode and return HTTP 200 with the manifest Bundle

  @integration @SHALL
  Scenario: Incorrect passcode in ITI-YY5 request results in HTTP 422
    Given the VHL requires a passcode but the VHL Receiver provides a wrong passcode
    When the VHL Receiver sends the ITI-YY5 request
    Then the VHL Sharer SHALL return HTTP 422 Unprocessable Entity

  # ─── Group D: Full End-to-End Flow ───────────────────────────────────────────

  @integration @SHALL
  Scenario: Complete flow from VHL generation to document manifest retrieval succeeds
    Given all actors are configured with valid trust relationships established via ITI-YY1 and ITI-YY2
    When the VHL Holder requests a VHL via ITI-YY3
    And the VHL Holder presents the QR code to the VHL Receiver via ITI-YY4
    And the VHL Receiver sends an authenticated manifest request via ITI-YY5
    Then the VHL Receiver SHALL receive HTTP 200 with a searchset Bundle containing the document manifest
    And the Bundle SHALL reference the patient's health documents

  @integration @SHALL
  Scenario: Complete flow with passcode succeeds end-to-end
    Given all actors are configured with trust and the VHL Holder requests a passcode-protected VHL
    When the VHL Holder presents the QR code and shares the passcode out-of-band
    And the VHL Receiver completes the full ITI-YY4 decode and ITI-YY5 manifest retrieval
    Then the VHL Receiver SHALL successfully receive the document manifest

  # ─── Group E: Expired and Revoked VHL Rejection ──────────────────────────────

  @integration @SHALL
  Scenario: VHL Receiver rejects an expired QR code during ITI-YY4 decoding
    Given the VHL Sharer generated a QR code with exp=<past_timestamp>
    When the VHL Receiver attempts to decode it via ITI-YY4
    Then the VHL Receiver SHALL reject the VHL at CWT expiry validation
    And SHALL NOT proceed to ITI-YY5

  @integration @SHALL
  Scenario: VHL Receiver receives HTTP 403 when the VHL is revoked at the VHL Sharer before manifest retrieval
    Given the VHL Receiver has a valid decoded SHL payload pointing to folder ID "abc123"
    And the VHL Sharer has revoked the VHL with folder ID "abc123" after QR code generation
    When the VHL Receiver sends the ITI-YY5 request
    Then the VHL Sharer SHALL return HTTP 403 Forbidden
    And the response SHALL include a FHIR OperationOutcome indicating the VHL has been revoked
